package com.constraction.constructionxpert.controller;

import com.constraction.constructionxpert.dao.TacheDao;
import com.constraction.constructionxpert.model.Tache;
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
import java.util.ArrayList;
import java.util.List;

@WebServlet("/tache")
public class TacheServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("tache.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        switch (action) {
            case "ajouter":
                try {
                    ajouterTache(req,resp);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "modifier":
                try {
                    modifierTache(req,resp);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "supprimer":
                try {
                    supprimerTache(req,resp);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "getAllTaches":
                try {
                    getAllTaches(req,resp);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "getTacheById":
                try {
                    getTache(req,resp);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            default:
                break;
        }
    }

    private void ajouterTache(HttpServletRequest req, HttpServletResponse resp) throws SQLException {
        int id = Integer.parseInt(req.getParameter("id"));
        String description = req.getParameter("description");
        String ressource = req.getParameter("ressource");
        String status = req.getParameter("status");
        Date dateDeDebut = Date.valueOf(LocalDate.parse(req.getParameter("dateDeDebut")));
        Date dateDeFin = Date.valueOf(LocalDate.parse(req.getParameter("dateDeFin")));
        Tache tache = new Tache(id , description , ressource , status , dateDeDebut , dateDeFin);
        TacheDao tacheDao = new TacheDao();
        tacheDao.CreateTache(tache);
    }

    private void modifierTache(HttpServletRequest req, HttpServletResponse resp) throws SQLException {
        int id = Integer.parseInt(req.getParameter("id"));
        String description = req.getParameter("description");
        String ressource = req.getParameter("ressource");
        String status = req.getParameter("status");
        Date dateDeDebut = Date.valueOf(LocalDate.parse(req.getParameter("dateDeDebut")));
        Date dateDeFin = Date.valueOf(LocalDate.parse(req.getParameter("dateDeFin")));
        Tache tache = new Tache(id, description , ressource , status , dateDeDebut , dateDeFin);
        TacheDao tacheDao = new TacheDao();
        tacheDao.UpdateTache(tache);
    }

    private void supprimerTache(HttpServletRequest req, HttpServletResponse resp) throws SQLException {
        int id = Integer.parseInt(req.getParameter("id"));
        TacheDao tacheDao = new TacheDao();
        tacheDao.DeleteTache(id);
    }

    private void getAllTaches(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        TacheDao tacheDao = new TacheDao();
        List<Tache> taches = new ArrayList<>();
        req.setAttribute("taches", taches);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("tache/afficher.jsp");
        dispatcher.forward(req,resp);
        System.out.println(taches);

    }

    private void getTache(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        int tacheid = Integer.parseInt(req.getParameter("tacheid"));
        TacheDao tacheDao = new TacheDao();
        Tache tache = tacheDao.GetTache(tacheid);
        req.setAttribute("tache", tache);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("tache/afficher.jsp");
        dispatcher.forward(req,resp);
    }

}
