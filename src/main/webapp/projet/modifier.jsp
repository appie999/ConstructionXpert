<%@ page import="com.constraction.constructionxpert.model.Projet" %>
<jsp:include page="../header.jsp" />

<%
    Projet projet = (Projet) request.getAttribute("projet");

%>

<div class="content-wrapper">
    <div class="row">
        <div class="col-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Modifier Le Projet</h4>
                    <form class="forms-sample" action="${pageContext.request.contextPath}/projet?action=modifierProjet" method="post">
                        <input type="hidden" name="id" value="<%= projet.getProjetid() %>">
                        <div class="form-group">
                            <label for="exampleInputName1">Nom</label>
                            <input type="text" class="form-control" name="nom" id="exampleInputName1" value="<%= projet.getNom() %>">
                        </div>
                        <div class="form-group">
                            <label for="exampleTextarea1">Description</label>
                            <textarea class="form-control" name="description" id="exampleTextarea1" rows="4"><%= projet.getDescription() %></textarea>
                        </div>
                        <div class="form-group">
                            <label >Date de debut</label>
                            <input type="date" class="form-control" name="dateDeDebut" value="<%= projet.getDateDeDebut() %>">
                        </div>
                        <div class="form-group">
                            <label >Date de fin</label>
                            <input type="date" class="form-control" name="dateDeFin" value="<%= projet.getDateDeFin() %>">
                        </div>
                        <div class="form-group">
                            <label >Budget</label>
                            <input type="number" class="form-control" name="budget" value="<%= projet.getBudget() %>">
                        </div>
                        <button type="submit" class="btn btn-gradient-primary me-2">Submit</button>
                        <button class="btn btn-light">Cancel</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../footer.jsp" />






































<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="fr">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <title>ConstructionXpert - Ajouter un Projet</title>--%>

<%--    <!-- Bootstrap CSS -->--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <!-- Font Awesome -->--%>
<%--    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">--%>
<%--    <!-- Custom CSS -->--%>
<%--    <style>--%>
<%--        :root {--%>
<%--            --primary-color: #2c3e50;--%>
<%--            --secondary-color: #3498db;--%>
<%--            --accent-color: #e74c3c;--%>
<%--            --background-color: #f5f5f5;--%>
<%--            --text-color: #333;--%>
<%--        }--%>

<%--        body {--%>
<%--            background-image: url('https://assets.zyrosite.com/cdn-cgi/image/format=auto,w=1920,fit=crop/YNqJlBKl1qurbrQ2/poster-1-YNqJj2ZgvqhRgabN.jpeg');--%>
<%--            background-size: cover;--%>
<%--            background-repeat: no-repeat;--%>
<%--            background-attachment: fixed;--%>
<%--            background-position: center center;--%>
<%--            color: var(--text-color);--%>
<%--            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;--%>
<%--        }--%>

<%--        .sidebar {--%>
<%--            position: fixed;--%>
<%--            top: 0;--%>
<%--            left: 0;--%>
<%--            height: 100%;--%>
<%--            width: 250px;--%>
<%--            background-color: rgba(44, 62, 80, 0.9);--%>
<%--            padding-top: 20px;--%>
<%--            transition: all 0.3s;--%>
<%--            z-index: 1000;--%>
<%--        }--%>

<%--        .sidebar .navbar-brand {--%>
<%--            color: white;--%>
<%--            padding: 10px 15px;--%>
<%--            font-size: 1.5rem;--%>
<%--            display: block;--%>
<%--        }--%>

<%--        .sidebar .nav-link {--%>
<%--            color: rgba(255,255,255,0.7);--%>
<%--            padding: 10px 15px;--%>
<%--            transition: background-color 0.3s;--%>
<%--        }--%>

<%--        .sidebar .nav-link:hover {--%>
<%--            background-color: rgba(255,255,255,0.1);--%>
<%--            color: white;--%>
<%--        }--%>

<%--        .container {--%>
<%--            margin-left: 250px;--%>
<%--            padding: 20px;--%>
<%--        }--%>

<%--        .card {--%>
<%--            border: none;--%>
<%--            border-radius: 10px;--%>
<%--            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);--%>
<%--            margin-bottom: 20px;--%>
<%--            background-color: rgba(255, 255, 255, 0.9);--%>
<%--        }--%>

<%--        .card-header {--%>
<%--            background-color: var(--secondary-color);--%>
<%--            color: white;--%>
<%--            border-radius: 10px 10px 0 0 !important;--%>
<%--            padding: 15px;--%>
<%--        }--%>

<%--        .page-title {--%>
<%--            color: rgb(255, 244, 0);--%>
<%--            font-weight: 700;--%>
<%--            margin-bottom: 30px;--%>
<%--            border-bottom: 3px solid var(--secondary-color);--%>
<%--            padding-bottom: 10px;--%>
<%--            display: inline-block;--%>
<%--        }--%>

<%--        .footer {--%>
<%--            background-color: rgba(44, 62, 80, 0.9);--%>
<%--            color: white;--%>
<%--            text-align: center;--%>
<%--            padding: 15px 0;--%>
<%--            margin-top: 20px;--%>
<%--        }--%>

<%--        @media (max-width: 768px) {--%>
<%--            .sidebar {--%>
<%--                width: 100%;--%>
<%--                height: auto;--%>
<%--                position: relative;--%>
<%--            }--%>

<%--            .container {--%>
<%--                margin-left: 0;--%>
<%--            }--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>

<%--<section id="sidebar_section">--%>
<%--    <jsp:include page="../header.jsp" />--%>
<%--</section>--%>

<%--<div class="container">--%>
<%--    <div class="row mb-4">--%>
<%--        <div class="col-12">--%>
<%--            <h1 class="page-title">Ajouter un Projet</h1>--%>
<%--        </div>--%>
<%--    </div>--%>

<%--    <div class="card">--%>
<%--        <div class="card-header">--%>
<%--            <h5 class="mb-0"><i class="fas fa-plus-circle me-2"></i> Formulaire d'ajout de projet</h5>--%>
<%--        </div>--%>
<%--        <div class="card-body">--%>
<%--            <form id="projetForm" action="${pageContext.request.contextPath}/ProjetController" method="post">--%>
<%--                <div class="row mb-3">--%>
<%--                    <div class="col-md-6">--%>
<%--                        <label for="nom" class="form-label">Nom du projet</label>--%>
<%--                        <input type="text" class="form-control" id="nom" name="nom"--%>
<%--                               placeholder="Entrez le nom du projet"--%>
<%--                               maxlength="100"--%>
<%--                               required>--%>
<%--                        <div class="form-text">Donnez un nom clair et descriptif à votre projet.</div>--%>
<%--                    </div>--%>
<%--                    <div class="col-md-6">--%>
<%--                        <label for="budget" class="form-label">Budget</label>--%>
<%--                        <div class="input-group">--%>
<%--                            <span class="input-group-text">$</span>--%>
<%--                            <input type="number" class="form-control" id="budget" name="budget"--%>
<%--                                   step="0.01" min="0" max="1000000000"--%>
<%--                                   placeholder="0.00"--%>
<%--                                   required>--%>
<%--                        </div>--%>
<%--                        <div class="form-text">Le budget total alloué au projet.</div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="row mb-3">--%>
<%--                    <div class="col-md-6">--%>
<%--                        <label for="dateDeDebut" class="form-label">Date de début</label>--%>
<%--                        <input type="date" class="form-control" id="dateDeDebut" name="date_de_debut"--%>
<%--                               required>--%>
<%--                    </div>--%>
<%--                    <div class="col-md-6">--%>
<%--                        <label for="dateDeFin" class="form-label">Date de fin</label>--%>
<%--                        <input type="date" class="form-control" id="dateDeFin" name="date_de_fin"--%>
<%--                               required>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="mb-4">--%>
<%--                    <label for="description" class="form-label">Description</label>--%>
<%--                    <textarea class="form-control" id="description" name="description"--%>
<%--                              rows="5"--%>
<%--                              maxlength="500"--%>
<%--                              placeholder="Décrivez les objectifs et les détails du projet"--%>
<%--                              required></textarea>--%>
<%--                    <div class="form-text">Décrivez les objectifs et les détails du projet.</div>--%>
<%--                </div>--%>
<%--                <div class="d-flex justify-content-between">--%>
<%--                    <a href="${pageContext.request.contextPath}/ProjetController?action=getAllProjets" class="btn btn-secondary">--%>
<%--                        <i class="fas fa-arrow-left me-1"></i> Retour à la liste--%>
<%--                    </a>--%>
<%--                    <button type="submit" name="action" value="ajouterProjet" class="btn btn-primary">--%>
<%--                        <i class="fas fa-save me-1"></i> Enregistrer le projet--%>
<%--                    </button>--%>
<%--                </div>--%>
<%--            </form>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<%--&lt;%&ndash;<footer class="footer mt-auto py-3">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <div class="container">&ndash;%&gt;--%>
<%--&lt;%&ndash;        <span>© 2025 ConstructionXpert - Tous droits réservés</span>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</footer>&ndash;%&gt;--%>

<%--&lt;%&ndash;<script>&ndash;%&gt;--%>
<%--&lt;%&ndash;    // Client-side form validation&ndash;%&gt;--%>
<%--&lt;%&ndash;    document.getElementById('projetForm').addEventListener('submit', function(event) {&ndash;%&gt;--%>
<%--&lt;%&ndash;        const dateDebut = new Date(document.getElementById('dateDeDebut').value);&ndash;%&gt;--%>
<%--&lt;%&ndash;        const dateFin = new Date(document.getElementById('dateDeFin').value);&ndash;%&gt;--%>

<%--&lt;%&ndash;        if (dateFin <= dateDebut) {&ndash;%&gt;--%>
<%--&lt;%&ndash;            event.preventDefault();&ndash;%&gt;--%>
<%--&lt;%&ndash;            alert('La date de fin doit être postérieure à la date de début.');&ndash;%&gt;--%>
<%--&lt;%&ndash;        }&ndash;%&gt;--%>
<%--&lt;%&ndash;    });&ndash;%&gt;--%>
<%--&lt;%&ndash;</script>&ndash;%&gt;--%>

<%--&lt;%&ndash;<!-- Bootstrap JS Bundle with Popper -->&ndash;%&gt;--%>
<%--&lt;%&ndash;<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>&ndash;%&gt;--%>
<%--&lt;%&ndash;</body>&ndash;%&gt;--%>
<%--&lt;%&ndash;</html>&ndash;%&gt;--%>









<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Modifier un Projet</title>--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <style>--%>
<%--        body {--%>
<%--            background-color: #f8f9fa;--%>
<%--        }--%>
<%--        .container {--%>
<%--            max-width: 700px;--%>
<%--            margin-top: 50px;--%>
<%--        }--%>
<%--        .card {--%>
<%--            border-radius: 10px;--%>
<%--            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);--%>
<%--        }--%>
<%--        .card-header {--%>
<%--            background-color: #007bff;--%>
<%--            color: white;--%>
<%--            font-size: 20px;--%>
<%--            text-align: center;--%>
<%--        }--%>
<%--        .btn-primary {--%>
<%--            background-color: #007bff;--%>
<%--            border: none;--%>
<%--        }--%>
<%--        .btn-primary:hover {--%>
<%--            background-color: #0056b3;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<section id="sidebar_section">--%>
<%--    <jsp:include page="../header.jsp" />--%>
<%--</section>--%>
<%--<div class="container">--%>
<%--    <div class="card">--%>
<%--        <div class="card-header">Modifier le Projet</div>--%>
<%--        <div class="card-body">--%>
<%--            <form action="projet" method="post" onsubmit="return confirm('Confirmez-vous la modification ?');">--%>
<%--                <input type="hidden" name="action" value="modifier">--%>
<%--                <input type="hidden" name="id" value="${projetsById.id}">--%>

<%--                <div class="mb-3">--%>
<%--                    <label for="nom" class="form-label">Nom du Projet</label>--%>
<%--                    <input type="text" class="form-control" id="nom" name="nomduprojet" value="${projetsById.nomduprojet}" required>--%>
<%--                </div>--%>

<%--                <div class="mb-3">--%>
<%--                    <label for="datededebut" class="form-label">Date de Début</label>--%>
<%--                    <input type="date" class="form-control" id="datededebut" name="datededebut" value="${projetsById.datededebut}" required>--%>
<%--                </div>--%>

<%--                <div class="mb-3">--%>
<%--                    <label for="datefin" class="form-label">Date de Fin</label>--%>
<%--                    <input type="date" class="form-control" id="datefin" name="datefin" value="${formattedDateFin}" required>--%>
<%--                </div>--%>

<%--                <div class="mb-3">--%>
<%--                    <label for="description" class="form-label">Description</label>--%>
<%--                    <textarea class="form-control" id="description" name="description" rows="3" required>${projetsById.description}</textarea>--%>
<%--                </div>--%>

<%--                <div class="mb-3">--%>
<%--                    <label for="budget" class="form-label">Budget</label>--%>
<%--                    <input type="number" step="0.01" class="form-control" id="budget" name="budget" value="${projetsById.budget}" required>--%>
<%--                </div>--%>

<%--                <div class="d-flex justify-content-between">--%>
<%--                    <a href="projet?action=afficher" class="btn btn-secondary">Annuler</a>--%>
<%--                    <button type="submit" class="btn btn-primary">Mettre à jour</button>--%>
<%--                </div>--%>
<%--            </form>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>--%>
<%--</body>--%>
<%--</html>--%>
