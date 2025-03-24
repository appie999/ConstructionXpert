package com.constraction.constructionxpert.controller;

import com.constraction.constructionxpert.dao.RessourceDao;
import com.constraction.constructionxpert.model.Ressource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/ressource")
public class RessourceServlet extends HttpServlet {

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
            case "afficher":
                try {
                    getListRessource(req,resp);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "afficherById":
                try {
                    getRessource(req , resp);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            default:
                    RequestDispatcher rd = req.getRequestDispatcher("ressource/afficher.jsp");
                    break;
        }
    }

    private void ajouterRessource(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        int quantite = Integer.parseInt(req.getParameter("quantite"));
        String nom = req.getParameter("nom");
        String type = req.getParameter("type");
        String informationsDuFournissour = req.getParameter("informationsDuFournissour");
        String unite = req.getParameter("unite");
        Ressource ressource = new Ressource(quantite , nom , type , informationsDuFournissour , unite);
        RessourceDao ressourceDao = new RessourceDao();
        ressourceDao.CreateRessource(ressource);
        resp.sendRedirect(req.getContextPath() + "/ressource?action=afficher");
    }

    private void modifierRessource(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        int quantite = Integer.parseInt(req.getParameter("quantite"));
        String nom = req.getParameter("nom");
        String type = req.getParameter("type");
        String informationsDuFournissour = req.getParameter("informationsDuFournissour");
        String unite = req.getParameter("unite");
        Ressource ressource = new Ressource(quantite , nom , type , informationsDuFournissour , unite);
        RessourceDao ressourceDao = new RessourceDao();
        ressourceDao.UpdateRessource(ressource);
        resp.sendRedirect(req.getContextPath() + "/ressource?action=afficher");
    }

    private void supprimerRessource(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        RessourceDao ressourceDao = new RessourceDao();
        ressourceDao.DeleteRessource(id);
        resp.sendRedirect(req.getContextPath() + "/ressource?action=afficher");
    }

    private void getListRessource(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
      RessourceDao ressourceDao = new RessourceDao();
      List<Ressource> ressources = ressourceDao.GetAllRessources();
      req.setAttribute("ressources", ressources);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("ressource/afficher.jsp");
        dispatcher.forward(req, resp);
    }

    private void getRessource(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        int ressourceid = Integer.parseInt(req.getParameter("id"));
        RessourceDao ressourceDao = new RessourceDao();
        Ressource ressource = new Ressource();
        ressourceDao.GetRessourceById(ressourceid);
        req.setAttribute("ressource", ressource);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("ressource/afficher.jsp");
        dispatcher.forward(req,resp);
    }
}
