<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.util.List" %>
<%@ page import="com.constraction.constructionxpert.model.Projet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
    NumberFormat nf = NumberFormat.getCurrencyInstance(Locale.FRANCE);
    List<Projet> projets = (List<Projet>) request.getAttribute("projets");
%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des Projets - ConstructionXpert</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        :root {
            --primary-color: #2c3e50;
            --secondary-color: #3498db;
            --accent-color: #e74c3c;
            --background-color: #f5f5f5;
            --text-color: #333;
        }

        body {
            background-image: url('https://assets.zyrosite.com/cdn-cgi/image/format=auto,w=1920,fit=crop/YNqJlBKl1qurbrQ2/poster-1-YNqJj2ZgvqhRgabN.jpeg');
            background-size: cover;
            background-attachment: fixed;
            color: var(--text-color);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .navbar {
            background-color: var(--primary-color);
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .navbar-brand {
            font-weight: 700;
            color: white !important;
        }

        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            background-color: rgba(255, 255, 255, 0.9);
        }

        .card-header {
            background-color: var(--secondary-color);
            color: white;
            border-radius: 10px 10px 0 0 !important;
            padding: 15px;
        }

        .table thead th {
            background-color: var(--secondary-color);
            color: white;
        }

        .btn-primary {
            background-color: var(--secondary-color);
            border-color: var(--secondary-color);
        }


         body {
             display: flex;
             min-height: 100vh;
             margin: 0;
         }
        .sidebar {
            width: 240px;
            background-color: #000000;
            color: #fff;
            padding: 20px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
            position: fixed;
            bottom: 0;
            top: 0;
        }
        .sidebar .navbar-brand {
            color: #fff;
            font-size: 1.5rem;
            font-weight: bold;
            margin-bottom: 20px;
            display: block;
        }
        .sidebar .nav-link {
            color: #fff;
            padding: 10px 15px;
            margin: 5px 0;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
            display: flex;
            align-items: center;
        }
        .sidebar .nav-link:hover {
            background-color: rgba(255, 255, 255, 0.1);
            color: #f8f9fa;
        }
        .sidebar .nav-link i {
            margin-right: 10px;
            font-size: 1.2rem;
        }

    </style>
</head>
<body>
<section id="sidebar_section">
    <jsp:include page="../header.jsp" />
</section>

<div class="container">
    <div class="card">
        <div class="card-header">
            <h5 class="mb-0"><i class="fas fa-project-diagram me-2"></i> Gestion des Projets</h5>
        </div>
        <div class="card-body">
            <a href="?action=new" class="btn btn-primary mb-3">
                <i class="fas fa-plus-circle me-2"></i>Nouveau Projet
            </a>
            <% if (projets == null || projets.isEmpty()) { %>
            <div class="alert alert-info">
                <i class="fas fa-info-circle me-2"></i> Aucun projet n'a été trouvé.
            </div>
            <% } else { %>
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Nom</th>
                    <th>Date de Début</th>
                    <th>Date de Fin</th>
                    <th>Budget</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <% for (Projet projet : projets) { %>
                <tr>
                    <td><%= projet.getProjetid() %></td>
                    <td><strong><%= projet.getNom() %></strong></td>
                    <td><%= sdf.format(projet.getDateDeDebut()) %></td>
                    <td><%= sdf.format(projet.getDateDeFin()) %></td>
                    <td><%= nf.format(projet.getBudget()) %></td>
                    <td>
                        <a href="?action=afficherbyID&id=<%= projet.getProjetid() %>" class="btn btn-sm btn-info">
                            <i class="fas fa-edit"></i>
                        </a>
                        <a href="#" onclick="confirmDelete(<%= projet.getProjetid() %>)" class="btn btn-sm btn-danger">
                            <i class="fas fa-trash-alt"></i>
                        </a>
                    </td>
                </tr>
                <% } %>
                </tbody>
            </table>
            <% } %>
        </div>
    </div>
</div>

<script>
    function confirmDelete(id) {
        if (confirm("Êtes-vous sûr de vouloir supprimer ce projet ?")) {
            window.location.href = "projet?action=supprimer&id=" + id;
        }
    }
</script>
</body>
</html>
