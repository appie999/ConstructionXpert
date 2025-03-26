<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Construction</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/vendors/font-awesome/css/font-awesome.min.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/vendors/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/assets/images/favicon.png" />
</head>
<body>
<div class="container-scroller">
    <div class="row p-0 m-0 proBanner" id="proBanner">
        <div class="col-md-12 p-0 m-0">
            <div class="card-body card-body-padding d-flex align-items-center justify-content-between">
                <div class="ps-lg-3">

                </div>
                <div class="d-flex align-items-center justify-content-between">
                    <a href="https://www.bootstrapdash.com/product/purple-bootstrap-admin-template/"><i class="mdi mdi-home me-3 text-white"></i></a>
                    <button id="bannerClose" class="btn border-0 p-0">
                        <i class="mdi mdi-close text-white mr-0"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-start">
<%--            <a class="navbar-brand brand-logo" href="${pageContext.request.contextPath}/projet?action=getAllProjets"><img src="${pageContext.request.contextPath}/resources/assets/images/logo.svg" alt="logo" /></a>--%>
            <a class="navbar-brand brand-logo-mini" href="${pageContext.request.contextPath}/projet?action=getAllProjets"><img src="${pageContext.request.contextPath}/resources/assets/images/logo-mini.svg" alt="logo" /></a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-stretch">
            <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                <span class="mdi mdi-menu"></span>
            </button>

    </nav>
    <div class="container-fluid page-body-wrapper">
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
            <ul class="nav">

                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/projet?action=getAllProjets">
                        <span class="menu-title" href="header.jsp">Dashboard</span>
                        <i class="mdi mdi-home menu-icon"></i>
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" data-bs-toggle="collapse" href="#tables" aria-expanded="false" aria-controls="tables">
                        <span class="menu-title">Projets</span>
                        <i class="mdi mdi-table-large menu-icon"></i>
                    </a>
                    <div class="collapse" id="tables">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/projet/ajouter.jsp">Ajouter Projet</a>
                                <a class="nav-link" href="${pageContext.request.contextPath}/projet?action=getAllProjets">Afficher Projet</a>
                            </li>
                        </ul>
                    </div>
                </li>
<%--                <li class="nav-item">--%>

<%--                    <div class="collapse" id="auth">--%>
<%--                        <ul class="nav flex-column sub-menu">--%>
<%--                            <li class="nav-item">--%>
<%--                                <a class="nav-link" href="pages/samples/blank-page.html"> Blank Page </a>--%>
<%--                            </li>--%>
<%--                            <li class="nav-item">--%>
<%--                                <a class="nav-link" href="pages/samples/login.html"> Login </a>--%>
<%--                            </li>--%>
<%--                            <li class="nav-item">--%>
<%--                                <a class="nav-link" href="pages/samples/register.html"> Register </a>--%>
<%--                            </li>--%>
<%--                            <li class="nav-item">--%>
<%--                                <a class="nav-link" href="pages/samples/error-404.html"> 404 </a>--%>
<%--                            </li>--%>
<%--                            <li class="nav-item">--%>
<%--                                <a class="nav-link" href="pages/samples/error-500.html"> 500 </a>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
<%--                </li>--%>
            </ul>
        </nav>
        <div class="main-panel">


























<%--<nav class="sidebar">--%>
<%--    <a class="navbar-brand" href="#">XpertConstruction</a>--%>
<%--    <ul class="nav flex-column">--%>
<%--        <li class="nav-item">--%>
<%--            <a class="nav-link" href="/index.jsp">--%>
<%--                <i class="fas fa-home"></i>--%>
<%--                Accueil--%>
<%--            </a>--%>
<%--        </li>--%>
<%--        <li class="nav-item">--%>
<%--            <a class="nav-link" href="./projet/ajouter.jsp">--%>
<%--                <i class="fas fa-plus"></i>--%>
<%--                Ajouter Projet--%>
<%--            </a>--%>
<%--        </li>--%>
<%--        <li class="nav-item">--%>
<%--            <a class="nav-link" href="${pageContext.request.contextPath}/projet?action=getAllProjets">--%>
<%--                <i class="fas fa-list"></i>--%>
<%--                Liste des Projets--%>
<%--            </a>--%>
<%--        </li>--%>
<%--        <li class="nav-item">--%>
<%--            <a class="nav-link" href="./ressource/ajouter.jsp">--%>
<%--                <i class="fas fa-tools"></i>--%>
<%--                Ajouter Ressource--%>
<%--            </a>--%>
<%--        </li>--%>
<%--        <li class="nav-item">--%>
<%--            <a class="nav-link" href="./ressource/afficher.jsp">--%>
<%--                <i class="fas fa-th-list"></i>--%>
<%--                Liste des Ressources--%>
<%--            </a>--%>
<%--        </li>--%>
<%--        <li class="nav-item">--%>
<%--            <a class="nav-link" href="./tache/ajouter.jsp">--%>
<%--                <i class="fas fa-tasks"></i>--%>
<%--                Ajouter Tâche--%>
<%--            </a>--%>
<%--        </li>--%>
<%--        <li class="nav-item">--%>
<%--            <a class="nav-link" href="./tache/afficher.jsp">--%>
<%--                <i class="fas fa-eye"></i>--%>
<%--                Afficher les Tâches--%>
<%--            </a>--%>
<%--        </li>--%>
<%--    </ul>--%>
<%--</nav>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>--%>
<%--<script>--%>
<%--    function changeLinkColor(className) {--%>
<%--        const links = document.querySelectorAll('.sidebar .nav-link');--%>
<%--        links.forEach(link => {--%>
<%--            link.classList.remove('custom-link-color-1', 'custom-link-color-2', 'custom-link-color-3');--%>
<%--            link.classList.add(className);--%>
<%--        });--%>
<%--    }--%>
<%--</script>--%>