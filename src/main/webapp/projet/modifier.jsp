<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ConstructionXpert - Modifier un Projet</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        :root {
            --primary-color: #2c3e50;
            --secondary-color: #3498db;
            --accent-color: #e74c3c;
            --background-color: #f5f5f5;
            --text-color: #333;
        }

        body {
            background-color: var(--background-color);
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
            margin-bottom: 20px;
        }

        .card-header {
            background-color: #f39c12;
            color: white;
            border-radius: 10px 10px 0 0 !important;
            padding: 15px;
        }

        .btn-primary {
            background-color: var(--secondary-color);
            border-color: var(--secondary-color);
        }

        .btn-primary:hover {
            background-color: #2980b9;
            border-color: #2980b9;
        }

        .btn-secondary {
            background-color: #95a5a6;
            border-color: #95a5a6;
        }

        .btn-secondary:hover {
            background-color: #7f8c8d;
            border-color: #7f8c8d;
        }

        .form-control:focus {
            border-color: var(--secondary-color);
            box-shadow: 0 0 0 0.25rem rgba(52, 152, 219, 0.25);
        }

        .page-title {
            color: var(--primary-color);
            font-weight: 700;
            margin-bottom: 30px;
            border-bottom: 3px solid #f39c12;
            padding-bottom: 10px;
            display: inline-block;
        }

        .footer {
            background-color: var(--primary-color);
            color: white;
            text-align: center;
            padding: 15px 0;
            margin-top: 20px;
        }

        .form-label {
            font-weight: 500;
            color: #2c3e50;
        }

        .input-group-text {
            background-color: #f39c12;
            color: white;
            border-color: #f39c12;
        }

        .project-id-badge {
            background-color: #f39c12;
            color: white;
            font-size: 1rem;
            padding: 0.5rem 1rem;
            border-radius: 2rem;
            margin-left: 1rem;
        }
    </style>
</head>
<body>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark mb-4">
    <div class="container">
        <a class="navbar-brand" href="#">
            <i class="fas fa-building me-2"></i>
            ConstructionXpert
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="projet?action=afficherAll">
                        <i class="fas fa-project-diagram me-1"></i> Projets
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="fas fa-tasks me-1"></i> Tâches
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="fas fa-users me-1"></i> Équipe
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="fas fa-cog me-1"></i> Paramètres
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <!-- Header -->
    <div class="row mb-4">
        <div class="col-12">
            <h1 class="page-title">
                Modifier le Projet
                <span class="project-id-badge">
                        <i class="fas fa-hashtag"></i> ${projet.id}
                    </span>
            </h1>
        </div>
    </div>

    <!-- Edit Project Form -->
    <div class="card">
        <div class="card-header">
            <h5 class="mb-0"><i class="fas fa-edit me-2"></i> Formulaire de modification</h5>
        </div>
        <div class="card-body">
            <form id="editProjetForm" action="projet?action=modifier" method="post">
                <input type="hidden" name="projetid" value="${projet.id}">

                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="nom" class="form-label">Nom du projet</label>
                        <input type="text" class="form-control" id="nom" name="nom" value="${projet.nom}" required>
                        <div class="form-text">Donnez un nom clair et descriptif à votre projet.</div>
                    </div>
                    <div class="col-md-6">
                        <label for="budget" class="form-label">Budget</label>
                        <div class="input-group">
                            <span class="input-group-text">€</span>
                            <input type="number" class="form-control" id="budget" name="budget" step="0.01" min="0" value="${projet.budget}" required>
                        </div>
                        <div class="form-text">Le budget total alloué au projet.</div>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="dateDeDebut" class="form-label">Date de début</label>
                        <input type="date" class="form-control" id="dateDeDebut" name="dateDeDebut"
                               value="<fmt:formatDate value="${projet.dateDeDebut}" pattern="yyyy-MM-dd" />" required>
                    </div>
                    <div class="col-md-6">
                        <label for="dateDeFin" class="form-label">Date de fin</label>
                        <input type="date" class="form-control" id="dateDeFin" name="dateDeFin"
                               value="<fmt:formatDate value="${projet.dateDeFin}" pattern="yyyy-MM-dd" />" required>
                    </div>
                </div>