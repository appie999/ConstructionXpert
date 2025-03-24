<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.constructionxpert.model.Projet" %>
<%
    Projet projet = (Projet) request.getAttribute("projet");
%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ConstructionXpert - Modifier un Projet</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
    <div class="container">
        <a class="navbar-brand" href="#">
            <i class="fas fa-building me-2"></i> ConstructionXpert
        </a>
    </div>
</nav>
<div class="container">
    <h1>Modifier le Projet <span class="badge bg-warning">#<%= projet.getProjetid() %></span></h1>
    <div class="card">
        <div class="card-header">Formulaire de modification</div>
        <div class="card-body">
            <form action="modifierProjet" method="post">
                <input type="hidden" name="projetid" value="<%= projet.getProjetid() %>">
                <div class="mb-3">
                    <label class="form-label">Nom du projet</label>
                    <input type="text" class="form-control" name="nom" value="<%= projet.getNom() %>" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Budget</label>
                    <input type="number" class="form-control" name="budget" step="0.01" min="0" value="<%= projet.getBudget() %>" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Date de début</label>
                    <input type="date" class="form-control" name="dateDeDebut" value="<%= projet.getDateDeDebut() %>" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Date de fin</label>
                    <input type="date" class="form-control" name="dateDeFin" value="<%= projet.getDateDeFin() %>" required>
                </div>
                <button type="submit" class="btn btn-primary">Modifier</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
