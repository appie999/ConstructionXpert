<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ConstructionXpert - Liste des Projets</title>

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
            transition: transform 0.3s ease;
            margin-bottom: 20px;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card-header {
            background-color: var(--secondary-color);
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

        .btn-danger {
            background-color: var(--accent-color);
            border-color: var(--accent-color);
        }

        .btn-danger:hover {
            background-color: #c0392b;
            border-color: #c0392b;
        }

        .table {
            border-collapse: separate;
            border-spacing: 0;
            width: 100%;
            border-radius: 10px;
            overflow: hidden;
        }

        .table thead th {
            background-color: var(--secondary-color);
            color: white;
            border: none;
        }

        .table tbody tr:nth-child(even) {
            background-color: rgba(52, 152, 219, 0.1);
        }

        .table tbody tr:hover {
            background-color: rgba(52, 152, 219, 0.2);
        }

        .page-title {
            color: var(--primary-color);
            font-weight: 700;
            margin-bottom: 30px;
            border-bottom: 3px solid var(--secondary-color);
            padding-bottom: 10px;
            display: inline-block;
        }

        .action-btn {
            width: 38px;
            height: 38px;
            border-radius: 50%;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            margin: 0 3px;
        }

        .footer {
            background-color: var(--primary-color);
            color: white;
            text-align: center;
            padding: 15px 0;
            margin-top: 20px;
        }

        @media (max-width: 768px) {
            .table-responsive {
                overflow-x: auto;
            }

            .action-btn {
                width: 32px;
                height: 32px;
                font-size: 0.8em;
            }
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
        <div class="col-md-8">
            <h1 class="page-title">Gestion des Projets</h1>
        </div>
        <div class="col-md-4 text-end">
            <a href="projet?action=afficherFormAjouter" class="btn btn-primary">
                <i class="fas fa-plus-circle me-1"></i> Nouveau Projet
            </a>
        </div>
    </div>

    <!-- Project List -->
    <div class="card">
        <div class="card-header d-flex justify-content-between align-items-center">
            <h5 class="mb-0"><i class="fas fa-list me-2"></i> Liste des Projets</h5>
            <span class="badge bg-primary rounded-pill">${projets.size()} projet(s)</span>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nom</th>
                        <th>Description</th>
                        <th>Date de début</th>
                        <th>Date de fin</th>
                        <th>Budget</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="projet" items="${projets}">
                        <tr>
                            <td>${projet.id}</td>
                            <td>${projet.nom}</td>
                            <td>
                                <c:choose>
                                    <c:when test="${projet.description.length() > 50}">
                                        ${projet.description.substring(0, 50)}...
                                    </c:when>
                                    <c:otherwise>
                                        ${projet.description}
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td><fmt:formatDate value="${projet.dateDeDebut}" pattern="dd/MM/yyyy" /></td>
                            <td><fmt:formatDate value="${projet.dateDeFin}" pattern="dd/MM/yyyy" /></td>
                            <td><fmt:formatNumber value="${projet.budget}" type="currency" currencySymbol="€" /></td>
                            <td>
                                <a href="projet?action=afficherbyId&projetId=${projet.id}" class="btn btn-sm btn-info action-btn">
                                    <i class="fas fa-edit"></i>
                                </a>
                                <button type="button" class="btn btn-sm btn-danger action-btn"
                                        data-bs-toggle="modal" data-bs-target="#deleteModal${projet.id}">
                                    <i class="fas fa-trash"></i>
                                </button>

                                <!-- Delete Confirmation Modal -->
                                <div class="modal fade" id="deleteModal${projet.id}" tabindex="-1" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header bg-danger text-white">
                                                <h5 class="modal-title">Confirmation de suppression</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                Êtes-vous sûr de vouloir supprimer le projet <strong>${projet.nom}</strong> ?
                                                Cette action est irréversible.
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
                                                <a href="projet?action=supprimer&projetid=${projet.id}" class="btn btn-danger">Supprimer</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                    <c:if test="${empty projets}">
                        <tr>
                            <td colspan="7" class="text-center py-4">
                                <i class="fas fa-folder-open fa-3x text-muted mb-3"></i>
                                <p class="text-muted">Aucun projet trouvé. Cliquez sur "Nouveau Projet" pour en ajouter un.</p>
                            </td>
                        </tr>
                    </c:if>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="footer mt-auto py-3">
    <div class="container">
        <span>© 2025 ConstructionXpert - Tous droits réservés</span>
    </div>
</footer>

<!-- Bootstrap JS Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>