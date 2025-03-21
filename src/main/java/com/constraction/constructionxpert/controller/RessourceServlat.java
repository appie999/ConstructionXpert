package com.constraction.constructionxpert.controller;

import com.constraction.constructionxpert.dao.RessourceDao;
import com.constraction.constructionxpert.model.Ressource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/ressource")
public class RessourceServlat extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        switch (action) {
            case "ajouter":
                try {
                    ajouterRessource(req,resp);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "modifier":
                try {
                    modifierRessource(req,resp);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "supprimer":
                try {
                    supprimerRessource(req,resp);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
                default:
                    break;
        }
    }

    private void ajouterRessource(HttpServletRequest req, HttpServletResponse resp) throws SQLException {
        int quantite = Integer.parseInt(req.getParameter("quantite"));
        String nom = req.getParameter("nom");
        String type = req.getParameter("type");
        String informationsDuFournissour = req.getParameter("informationsDuFournissour");
        String unite = req.getParameter("unite");
        Ressource ressource = new Ressource(quantite , nom , type , informationsDuFournissour , unite);
        RessourceDao ressourceDao = new RessourceDao();
        ressourceDao.CreateRessource(ressource);
    }

    private void modifierRessource(HttpServletRequest req, HttpServletResponse resp) throws SQLException {
        int quantite = Integer.parseInt(req.getParameter("quantite"));
        String nom = req.getParameter("nom");
        String type = req.getParameter("type");
        String informationsDuFournissour = req.getParameter("informationsDuFournissour");
        String unite = req.getParameter("unite");
        Ressource ressource = new Ressource(quantite , nom , type , informationsDuFournissour , unite);
        RessourceDao ressourceDao = new RessourceDao();
        ressourceDao.UpdateRessource(ressource);
    }

    private void supprimerRessource(HttpServletRequest req, HttpServletResponse resp) throws SQLException {
        int id = Integer.parseInt(req.getParameter("id"));
        RessourceDao ressourceDao = new RessourceDao();
        ressourceDao.DeleteRessource(id);
    }
}
