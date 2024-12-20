<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.example.demo9.Module" %>
<%
    Module module = (Module) request.getAttribute("module1");
    String error = (String) request.getAttribute("error");
%>
<html>
<head>
    <title>Formulaire</title>

    <link href="bootstrap-5.3.3-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <script src="bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>


</head>
<body>
<p class="espace"></p>
<jsp:include page="NavBar.jsp"></jsp:include>
<% if (error != null) { %>
<p style="color: red;"><%= error %></p>
<% } %>

<div class="card text-white ">
    <div class="col-md-6 col-xm-12 col-sm-6 col-md-offset-3" >
    <div class="card-header bg-primary mb-3" >Simulation</div>
    <div class="card-body">
        <form method="POST" action="/demo9_war_exploded/hello">
        <div class="form-group">
            <label style="color: #0dcaf0" class="control-label" > Montant</label>
            <input  class="form-control" type="text" name="montant" placeholder="Saisir un montant" VALUE="<%= (module != null) ? module.getMontant() : ""%>">
        </div>
            <div class="form-group">
                <label class="control-label" > Taux</label>
                <input  class="form-control" type="text" name="taux" placeholder="Saisir un taux" VALUE="<%= (module != null) ? module.getTaux() : ""%>">
            </div>
            <div class="form-group">
                <label class="control-label" > Duree</label>
                <input class="form-control" type="text" name="duree" placeholder="Saisir un duree" VALUE="<%= (module != null) ? module.getDuree() : ""%>">
            </div>
            <button style="margin-top: 10px" type="submit" class="btn btn-danger">calculer</button>
        </form>

    </div>
    <div style=" padding: 10px; margin-left: 10px; margin-right: 10px; margin-top: 10px; margin-bottom: 10px; color: black ; background-color: lightblue; ">
        <% if (module != null) { %>
        <p>Résultat: <%= module.getResul() %></p>
        <% } else { %>
        <p>Pas de résultat disponible. Veuillez remplir le formulaire.</p>
        <% } %>
    </div>
</div>
</div>

</body>
</html>
