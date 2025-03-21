package com.constraction.constructionxpert.controller;

import com.constraction.constructionxpert.dao.ProjetDao;
import com.constraction.constructionxpert.model.Projet;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

@WebServlet("/projet")
public class projetServlat extends HttpServlet {

    private ProjetDao projetDao;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String action = req.getParameter("action");
        switch (action) {
            case "list":
                try {
                    getAllProjets(req, resp);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "view":
                try {
                    getProjet(req, resp);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        if (action == null) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Action parameter is missing.");
            return;
        }
        switch (action) {
            case "ajouterProjet":
                try {
                    ajouterProjet(req, resp);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "modifierProjet":
                try {
                    modifierProjet(req, resp);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "supprimerProjet":
                try {
                    supprimerProjet(req, resp);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            default:
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("afficher.jsp");
                dispatcher.forward(req, resp);
                break;
        }
    }
    private void ajouterProjet(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
        String nom = req.getParameter("nom");
        String description = req.getParameter("description");
        Date dateDeDebut = Date.valueOf(LocalDate.parse(req.getParameter("dateDeDebut")));
        Date dateDeFin = Date.valueOf(LocalDate.parse(req.getParameter("dateDeFin")));
        double budget = Double.parseDouble(req.getParameter("budget"));
        Projet projet = new Projet(nom, description, budget, dateDeDebut, dateDeFin);
        ProjetDao projetDao = new ProjetDao();
        projetDao.CreateProjet(projet);
        resp.sendRedirect("projet?action=list" );

    }

    // Method to update a project
    private void modifierProjet(HttpServletRequest req, HttpServletResponse resp) throws SQLException {
        int id = Integer.parseInt(req.getParameter("id"));
        String nom = req.getParameter("nom");
        String description = req.getParameter("description");
        Date dateDeDebut = Date.valueOf(LocalDate.parse(req.getParameter("dateDeDebut")));
        Date dateDeFin = Date.valueOf(LocalDate.parse(req.getParameter("dateDeFin")));
        double budget = Double.parseDouble(req.getParameter("budget"));
        Projet projet = new Projet(id, nom, description, budget, dateDeDebut, dateDeFin);
        ProjetDao projetDao = new ProjetDao();
        projetDao.UpdateProjet(projet);
    }

    private void supprimerProjet(HttpServletRequest req, HttpServletResponse resp) throws SQLException {
        int id = Integer.parseInt(req.getParameter("id"));
        ProjetDao projetDao = new ProjetDao();
        projetDao.DeleteProjet(id);
    }
    private void getAllProjets(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        ProjetDao projetDao = new ProjetDao();
        List<Projet> projets = projetDao.GetAllProjets();  // Fetch all projects
        req.setAttribute("projets", projets);  // Set the list of projects as a request attribute
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/afficher.jsp");
        dispatcher.forward(req, resp);  // Forward the request to afficher.jsp
        System.out.println(projets);
    }

    // Method to get a single project (optional)
    private void getProjet(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        ProjetDao projetDao = new ProjetDao();
        Projet projet = projetDao.GetProjet(id);

        req.setAttribute("projet", projet);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/afficher.jsp");
        dispatcher.forward(req, resp);
        System.out.println(projet);
    }


}
