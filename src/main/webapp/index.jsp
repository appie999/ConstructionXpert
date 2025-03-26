
<jsp:include page="header.jsp" />


<div class="content-wrapper">
    <div class="page-header">
        <h3 class="page-title">
                <span class="page-title-icon bg-gradient-primary text-white me-2">
                  <i class="mdi mdi-home"></i>
                </span> Dashboard
        </h3>
        <nav aria-label="breadcrumb">
            <ul class="breadcrumb">
                <li class="breadcrumb-item active" aria-current="page">
                    <span></span>Overview <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                </li>
            </ul>
        </nav>
    </div>
    <div class="row">
        <div class="col-md-4 stretch-card grid-margin">
            <div class="card bg-gradient-danger card-img-holder text-white">
                <div class="card-body">
                    <img src="assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image" />
                    <h4 class="font-weight-normal mb-3">Weekly Sales <i class="mdi mdi-chart-line mdi-24px float-end"></i>
                    </h4>
                    <h2 class="mb-5">$ 15,0000</h2>
                    <h6 class="card-text">Increased by 60%</h6>
                </div>
            </div>
        </div>
        <div class="col-md-4 stretch-card grid-margin">
            <div class="card bg-gradient-info card-img-holder text-white">
                <div class="card-body">
                    <img src="assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image" />
                    <h4 class="font-weight-normal mb-3">Weekly Orders <i class="mdi mdi-bookmark-outline mdi-24px float-end"></i>
                    </h4>
                    <h2 class="mb-5">45,6334</h2>
                    <h6 class="card-text">Decreased by 10%</h6>
                </div>
            </div>
        </div>
        <div class="col-md-4 stretch-card grid-margin">
            <div class="card bg-gradient-success card-img-holder text-white">
                <div class="card-body">
                    <img src="assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image" />
                    <h4 class="font-weight-normal mb-3">Visitors Online <i class="mdi mdi-diamond mdi-24px float-end"></i>
                    </h4>
                    <h2 class="mb-5">95,5741</h2>
                    <h6 class="card-text">Increased by 5%</h6>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-7 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <div class="clearfix">
                        <h4 class="card-title float-start">Visit And Sales Statistics</h4>
                        <div id="visit-sale-chart-legend" class="rounded-legend legend-horizontal legend-top-right float-end"></div>
                    </div>
                    <canvas id="visit-sale-chart" class="mt-4"></canvas>
                </div>
            </div>
        </div>
        <div class="col-md-5 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Traffic Sources</h4>
                    <div class="doughnutjs-wrapper d-flex justify-content-center">
                        <canvas id="traffic-chart"></canvas>
                    </div>
                    <div id="traffic-chart-legend" class="rounded-legend legend-vertical legend-bottom-left pt-4"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-12 grid-margin">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Recent Tickets</h4>
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                            <tr>
                                <th> Assignee </th>
                                <th> Subject </th>
                                <th> Status </th>
                                <th> Last Update </th>
                                <th> Tracking ID </th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    <img src="assets/images/faces/face1.jpg" class="me-2" alt="image"> David Grey
                                </td>
                                <td> Fund is not recieved </td>
                                <td>
                                    <label class="badge badge-gradient-success">DONE</label>
                                </td>
                                <td> Dec 5, 2017 </td>
                                <td> WD-12345 </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="assets/images/faces/face2.jpg" class="me-2" alt="image"> Stella Johnson
                                </td>
                                <td> High loading time </td>
                                <td>
                                    <label class="badge badge-gradient-warning">PROGRESS</label>
                                </td>
                                <td> Dec 12, 2017 </td>
                                <td> WD-12346 </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="assets/images/faces/face3.jpg" class="me-2" alt="image"> Marina Michel
                                </td>
                                <td> Website down for one week </td>
                                <td>
                                    <label class="badge badge-gradient-info">ON HOLD</label>
                                </td>
                                <td> Dec 16, 2017 </td>
                                <td> WD-12347 </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="assets/images/faces/face4.jpg" class="me-2" alt="image"> John Doe
                                </td>
                                <td> Loosing control on server </td>
                                <td>
                                    <label class="badge badge-gradient-danger">REJECTED</label>
                                </td>
                                <td> Dec 3, 2017 </td>
                                <td> WD-12348 </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp" />




























<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="fr">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <title>ConstructionXpert - Accueil</title>--%>

<%--    <!-- Bootstrap CSS -->--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <!-- Font Awesome -->--%>
<%--    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">--%>
<%--    <!-- Custom CSS -->--%>
<%--    <style>--%>
<%--        :root {--%>
<%--            --primary-color: #2c3e50;--%>
<%--            --secondary-color: #3498db;--%>
<%--            --background-color: #f5f5f5;--%>
<%--            --text-color: #333;--%>
<%--        }--%>

<%--        body {--%>
<%--            background: url(https://assets.zyrosite.com/cdn-cgi/image/format=auto,w=1920,fit=crop/YNqJlBKl1qurbrQ2/poster-1-YNqJj2ZgvqhRgabN.jpeg) no-repeat center center/cover;--%>
<%--            color: white;--%>
<%--            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;--%>
<%--            display: flex;--%>
<%--            flex-direction: column;--%>
<%--            min-height: 100vh;--%>
<%--            text-align: center;--%>
<%--        }--%>

<%--        .navbar {--%>
<%--            background-color: var(--primary-color);--%>
<%--            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);--%>
<%--        }--%>

<%--        .navbar-brand {--%>
<%--            font-weight: 700;--%>
<%--            color: white !important;--%>
<%--            font-size: 1.5em; /* Make the text bigger */--%>
<%--        }--%>

<%--        .hero {--%>
<%--            display: flex;--%>
<%--            flex-direction: column;--%>
<%--            justify-content: center;--%>
<%--            align-items: center;--%>
<%--            min-height: 100vh;--%>
<%--            text-align: center;--%>
<%--            position: relative;--%>
<%--            width: 100%;--%>
<%--        }--%>

<%--        .hero::before {--%>
<%--            content: "";--%>
<%--            position: absolute;--%>
<%--            top: 0;--%>
<%--            left: 0;--%>
<%--            width: 100%;--%>
<%--            height: 100%;--%>
<%--            background: rgba(0, 0, 0, 0.6);--%>
<%--        }--%>

<%--        .hero-content {--%>
<%--            position: relative;--%>
<%--            z-index: 2;--%>
<%--        }--%>

<%--        .hero-content h1 { /* Added style for the main heading */--%>
<%--            font-size: 4em; /* Make the heading bigger */--%>
<%--            margin-bottom: 0.5em;--%>
<%--        }--%>

<%--        .hero-content p { /* Added style for the paragraph */--%>
<%--            font-size: 1.5em; /* Make the paragraph bigger */--%>
<%--            margin-bottom: 1em;--%>
<%--        }--%>

<%--        .btn-primary {--%>
<%--            background-color: yellow;--%>
<%--            border-color: yellow;--%>
<%--            color: black;--%>
<%--        }--%>

<%--        .btn-primary:hover {--%>
<%--            background-color: #ffcc00;--%>
<%--            border-color: #ffcc00;--%>
<%--        }--%>

<%--        .footer {--%>
<%--            background-color: var(--primary-color);--%>
<%--            color: white;--%>
<%--            text-align: center;--%>
<%--            padding: 15px 0;--%>
<%--            margin-top: auto;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>

<%--<!-- Navigation -->--%>
<%--<nav class="navbar navbar-expand-lg navbar-dark">--%>
<%--    <div class="container">--%>
<%--        <a class="navbar-brand" href="#">--%>
<%--            ConstructionXpert--%>
<%--        </a>--%>
<%--        <div class="ms-auto">--%>

<%--        </div>--%>
<%--    </div>--%>
<%--</nav>--%>

<%--<div class="hero">--%>
<%--    <div class="hero-content">--%>
<%--        <h1>Bienvenue sur ConstructionXpert</h1>--%>
<%--        <p>Gérez efficacement vos projets de construction avec notre plateforme intuitive.</p>--%>
<%--        <a href="projet/ajouter.jsp" class="btn btn-primary btn-lg mt-3">commencer</a>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<footer class="footer">--%>
<%--    <div class="container">--%>
<%--        <span>© 2025 ConstructionXpert - Tous droits réservés</span>--%>
<%--    </div>--%>
<%--</footer>--%>

<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>--%>
<%--</body>--%>
<%--</html>--%>