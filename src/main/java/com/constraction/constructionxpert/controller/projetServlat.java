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

@WebServlet("/projet")
public class projetServlat extends HttpServlet {

    private ProjetDao projetDao;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        switch (action) {
            case "ajouterProjet":
                try {
                    ajouterProjet(req,resp);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "modifierProjet":
                try {
                    modifierProjet(req,resp);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "supprimerProjet":
                try {
                    supprimerProjet(req,resp);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
                default:
                    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/projet/afficher.jsp");
                    dispatcher.forward(req, resp);
                    break;
        }
    }

    private void ajouterProjet(HttpServletRequest req, HttpServletResponse resp) throws SQLException {
        String nom = req.getParameter("nom");
        String description = req.getParameter("description");
        Date dateDeDebut = Date.valueOf(LocalDate.parse(req.getParameter("dateDeDebut")));
        Date dateDeFin = Date.valueOf(LocalDate.parse(req.getParameter("dateDeFin")));
        double budget = Double.parseDouble(req.getParameter("budget"));
        Projet projet = new Projet(nom,description,budget,dateDeDebut,dateDeFin);
        ProjetDao projetDao = new ProjetDao();
        projetDao.CreateProjet(projet);
    }

    private void modifierProjet(HttpServletRequest req, HttpServletResponse resp) throws SQLException {
        int id = Integer.parseInt(req.getParameter("id"));
        String nom = req.getParameter("nom");
        String description = req.getParameter("description");
        Date dateDeDebut = Date.valueOf(LocalDate.parse(req.getParameter("dateDeDebut")));
        Date dateDeFin = Date.valueOf(LocalDate.parse(req.getParameter("dateDeFin")));
        double budget = Double.parseDouble(req.getParameter("budget"));
        Projet projet = new Projet(id , nom , description , budget , dateDeDebut, dateDeFin );
        ProjetDao projetDao = new ProjetDao();
        projetDao.UpdateProjet(projet);

    }

    private void supprimerProjet(HttpServletRequest req, HttpServletResponse resp) throws SQLException {
        int id = Integer.parseInt(req.getParameter("id"));
        ProjetDao projetDao = new ProjetDao();
        projetDao.DeleteProjet(id);
    }
}
