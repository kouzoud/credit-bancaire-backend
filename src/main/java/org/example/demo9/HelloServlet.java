package org.example.demo9;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import metier.Metier;

@WebServlet(urlPatterns = "/hello")
public class HelloServlet extends HttpServlet {
    private String message;
    @Override
    public void init() {
//        message = "Hello World!";
    }
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setAttribute("module", new Module());
    request.getRequestDispatcher("/formulaire.jsp").forward(request,response);
    }
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        try {
            // Récupérer les paramètres et gérer les champs vides
            String montantStr = request.getParameter("montant");
            String dureeStr = request.getParameter("duree");
            String tauxStr = request.getParameter("taux");

            if (montantStr == null || montantStr.trim().isEmpty() ||
                    dureeStr == null || dureeStr.trim().isEmpty() ||
                    tauxStr == null || tauxStr.trim().isEmpty()) {
                throw new IllegalArgumentException("Tous les champs doivent être remplis !");
            }

            // Conversion des valeurs
            double montant = Double.parseDouble(montantStr.trim());
            double duree = Double.parseDouble(dureeStr.trim());
            double taux = Double.parseDouble(tauxStr.trim());

            // Création et initialisation de l'objet Module
            Module module = new Module();
            module.setMontant(montant);
            module.setDuree(duree);
            module.setTaux(taux);

            // Calcul du résultat via Metier
            Metier metier = new Metier();
            module.setResul(metier.mertie(montant, duree, taux));

            // Attachement de l'attribut pour la JSP
            request.setAttribute("module1", module);
        } catch (Exception e) {
            // Gestion des erreurs et définition d'un message pour la JSP
            request.setAttribute("error", "Erreur : " + e.getMessage());
            request.setAttribute("module1", null);
        }

        // Redirection vers la JSP
        request.getRequestDispatcher("/formulaire.jsp").forward(request, response);}
    @Override
    public void destroy() {
    }
}