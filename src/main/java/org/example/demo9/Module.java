package org.example.demo9;

public class Module {
    private  double Montant=123;
    private double Duree=123;
    private double taux=123;
    private double resul=123;

    public Module() {
        this.Montant = 1000.0; // 1000 DH
        this.taux = 5.0;       // 5%
        this.Duree = 12;
    }

    public Module(double montant, double duree, double taux, double resul) {
        Montant = montant;
        Duree = duree;
        this.taux = taux;
        this.resul = resul;
    }

    public double getMontant() {
        return Montant;
    }

    public void setMontant(double montant) {
        Montant = montant;
    }

    public double getDuree() {
        return Duree;
    }

    public void setDuree(double duree) {
        Duree = duree;
    }

    public double getTaux() {
        return taux;
    }

    public void setTaux(double taux) {
        this.taux = taux;
    }

    public double getResul() {
        return resul;
    }

    public void setResul(double resul) {
        this.resul = resul;
    }


}
