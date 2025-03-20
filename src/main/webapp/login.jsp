<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ConstructionXpert - Login</title>

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
            background-color: var(--background-color);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            justify-content: center;
            align-items: center;
            /* Add background image to the body */
            background: url(https://assets.zyrosite.com/cdn-cgi/image/format=auto,w=1920,fit=crop/YNqJlBKl1qurbrQ2/poster-1-YNqJj2ZgvqhRgabN.jpeg) no-repeat center center/cover;
        }

        .login-container {
            /* Orange Background Color */
            background-color: rgba(255, 217, 143, 0.8); /* Semi-transparent orange background */
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2); /* Slightly stronger shadow */
            padding: 30px;
            width: 400px;
            text-align: center;
        }

        .login-container h2 {
            margin-bottom: 20px;
            color: var(--primary-color);
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            text-align: left;
            margin-bottom: 5px;
            color: var(--text-color);
        }

        .form-group input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }

        .btn-primary {
            /* Black Button */
            background-color: #000;
            border-color: #000;
            color: #fff;
            padding: 12px 20px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .btn-primary:hover {
            /* Yellow Hover */
            background-color: yellow;
            border-color: yellow;
            color: black; /* Change text color to black for better visibility */
        }

        .error-message {
            color: red;
            margin-top: 10px;
        }
    </style>
</head>
<body>

<div class="login-container">
    <h2>Connexion</h2>
    <form action="index" method="post">  <!-- Replace with your login processing JSP -->
        <div class="form-group">
            <label for="username">Nom d'utilisateur:</label>
            <input type="text" id="username" name="username" required>
        </div>
        <div class="form-group">
            <label for="password">Mot de passe:</label>
            <input type="password" id="password" name="password" required>
        </div>
        <%
            String errorMessage = (String) session.getAttribute("errorMessage"); // Retrieve error message from session
            if (errorMessage != null && !errorMessage.isEmpty()) {
        %>
        <div class="error-message"><%= errorMessage %></div>
        <%
                session.removeAttribute("errorMessage");  // Clear the error message after displaying it
            }
        %>
        <button type="submit" class="btn btn-primary">Se Connecter</button>
    </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>