<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modifier un Projet</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            max-width: 700px;
            margin-top: 50px;
        }
        .card {
            border-radius: 10px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }
        .card-header {
            background-color: #007bff;
            color: white;
            font-size: 20px;
            text-align: center;
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<section id="sidebar_section">
    <jsp:include page="../header.jsp" />
</section>
<div class="container">
    <div class="card">
        <div class="card-header">Modifier le Projet</div>
        <div class="card-body">
            <form action="projet" method="post" onsubmit="return confirm('Confirmez-vous la modification ?');">
                <input type="hidden" name="action" value="modifier">
                <input type="hidden" name="id" value="${projetsById.id}">

                <div class="mb-3">
                    <label for="nom" class="form-label">Nom du Projet</label>
                    <input type="text" class="form-control" id="nom" name="nomduprojet" value="${projetsById.nomduprojet}" required>
                </div>

                <div class="mb-3">
                    <label for="datededebut" class="form-label">Date de Début</label>
                    <input type="date" class="form-control" id="datededebut" name="datededebut" value="${projetsById.datededebut}" required>
                </div>

                <div class="mb-3">
                    <label for="datefin" class="form-label">Date de Fin</label>
                    <input type="date" class="form-control" id="datefin" name="datefin" value="${formattedDateFin}" required>
                </div>

                <div class="mb-3">
                    <label for="description" class="form-label">Description</label>
                    <textarea class="form-control" id="description" name="description" rows="3" required>${projetsById.description}</textarea>
                </div>

                <div class="mb-3">
                    <label for="budget" class="form-label">Budget</label>
                    <input type="number" step="0.01" class="form-control" id="budget" name="budget" value="${projetsById.budget}" required>
                </div>

                <div class="d-flex justify-content-between">
                    <a href="projet?action=afficher" class="btn btn-secondary">Annuler</a>
                    <button type="submit" class="btn btn-primary">Mettre à jour</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
