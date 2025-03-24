<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ConstructionXpert - Accueil</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        :root {
            --primary-color: #2c3e50;
            --secondary-color: #3498db;
            --background-color: #f5f5f5;
            --text-color: #333;
        }

        body {
            background: url(https://assets.zyrosite.com/cdn-cgi/image/format=auto,w=1920,fit=crop/YNqJlBKl1qurbrQ2/poster-1-YNqJj2ZgvqhRgabN.jpeg) no-repeat center center/cover;
            color: white;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            text-align: center;
        }

        .navbar {
            background-color: var(--primary-color);
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .navbar-brand {
            font-weight: 700;
            color: white !important;
            font-size: 1.5em; /* Make the text bigger */
        }

        .hero {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            text-align: center;
            position: relative;
            width: 100%;
        }

        .hero::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.6);
        }

        .hero-content {
            position: relative;
            z-index: 2;
        }

        .hero-content h1 { /* Added style for the main heading */
            font-size: 4em; /* Make the heading bigger */
            margin-bottom: 0.5em;
        }

        .hero-content p { /* Added style for the paragraph */
            font-size: 1.5em; /* Make the paragraph bigger */
            margin-bottom: 1em;
        }

        .btn-primary {
            background-color: yellow;
            border-color: yellow;
            color: black;
        }

        .btn-primary:hover {
            background-color: #ffcc00;
            border-color: #ffcc00;
        }

        .footer {
            background-color: var(--primary-color);
            color: white;
            text-align: center;
            padding: 15px 0;
            margin-top: auto;
        }
    </style>
</head>
<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand" href="#">
            ConstructionXpert
        </a>
        <div class="ms-auto">

        </div>
    </div>
</nav>

<!-- Hero Section -->
<div class="hero">
    <div class="hero-content">
        <h1>Bienvenue sur ConstructionXpert</h1>
        <p>Gérez efficacement vos projets de construction avec notre plateforme intuitive.</p>
        <a href="login" class="btn btn-primary btn-lg mt-3">Log In</a>
    </div>
</div>

<!-- Footer -->
<footer class="footer">
    <div class="container">
        <span>© 2025 ConstructionXpert - Tous droits réservés</span>
    </div>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>