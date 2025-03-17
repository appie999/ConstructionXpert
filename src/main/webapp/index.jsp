<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Tableau de Bord</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="dashboard-bg">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="#">ConstructionXpert</a>
        <a class="btn btn-danger" href="LogoutServlet">Déconnexion</a>
    </div>
</nav>

<div class="container text-white text-center mt-5">
    <h3>Bienvenue, Administrateur</h3>
    <div class="row mt-4">
        <div class="col-md-4">
            <a href="listProjects.jsp" class="btn btn-primary btn-lg w-100 p-3">📁 Gérer les Projets</a>
        </div>
        <div class="col-md-4">
            <a href="listTasks.jsp" class="btn btn-secondary btn-lg w-100 p-3">📝 Gérer les Tâches</a>
        </div>
        <div class="col-md-4">
            <a href="listResources.jsp" class="btn btn-success btn-lg w-100 p-3">🔧 Gérer les Ressources</a>
        </div>
    </div>
</div>
</body>
</html>
