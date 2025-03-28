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
public class projetServlet extends HttpServlet {

    private ProjetDao projetDao;

    @Override
    public void init() throws ServletException {
        super.init();
        projetDao = new ProjetDao();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String action = req.getParameter("action");
        if (action == null) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Action parameter is missing.");
            return;
        }
        switch (action) {
            case "ajouter":
                ajouter(req, resp);
                break;
            case "ajouterProjet":
                ajouterProjet(req, resp);
                break;
            case "modifier":
                modifier(req, resp);
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
            case  "getAllProjets":
                try {
                    getAllProjets(req,resp);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            case "getProjet":
                try {
                    getProjet(req,resp);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
            default:
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("projet/afficher.jsp");
                dispatcher.forward(req, resp);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);

    }

    private void ajouter (HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException
    {
        RequestDispatcher rd = req.getRequestDispatcher("/projet/ajouter.jsp");
        rd.forward(req, resp);
    }

    private void ajouterProjet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException
    {

        String nom = req.getParameter("nom");
        String description = req.getParameter("description");
        Date dateDeDebut = Date.valueOf(LocalDate.parse(req.getParameter("dateDeDebut")));
        Date dateDeFin = Date.valueOf(LocalDate.parse(req.getParameter("dateDeFin")));
        double budget = Double.parseDouble(req.getParameter("budget"));
        Projet projet = new Projet(nom, description, budget, dateDeDebut, dateDeFin);
        ProjetDao projetDao = new ProjetDao();
        projetDao.CreateProjet(projet);
        System.out.println(projetDao);
        System.out.println("project created");
        resp.sendRedirect(req.getContextPath() + "/projet?action=getAllProjets" );
    }

    private void modifier ( HttpServletRequest req, HttpServletResponse resp )
            throws ServletException, IOException
    {

        int porjetId = Integer.parseInt(req.getParameter("id"));

        Projet projet = projetDao.getProjet(porjetId);

        req.setAttribute("projet", projet);

        RequestDispatcher rd = req.getRequestDispatcher("/projet/modifier.jsp");
        rd.forward(req, resp);

    }

    private void modifierProjet(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String nom = req.getParameter("nom");
        String description = req.getParameter("description");
        Date dateDeDebut = Date.valueOf(LocalDate.parse(req.getParameter("dateDeDebut")));
        Date dateDeFin = Date.valueOf(LocalDate.parse(req.getParameter("dateDeFin")));
        double budget = Double.parseDouble(req.getParameter("budget"));
        Projet projet = new Projet(id, nom, description, budget, dateDeDebut, dateDeFin);
        ProjetDao projetDao = new ProjetDao();
        projetDao.UpdateProjet(projet);
        resp.sendRedirect(req.getContextPath() + "/projet?action=getAllProjets" );
    }

    private void supprimerProjet(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        ProjetDao projetDao = new ProjetDao();
        projetDao.DeleteProjet(id);
        resp.sendRedirect(req.getContextPath() + "/projet?action=getAllProjets" );
    }

    private void getAllProjets(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        ProjetDao projetDao = new ProjetDao();
        List<Projet> projets = projetDao.GetAllProjets();
        req.setAttribute("projets", projets);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/projet/afficher.jsp");
        dispatcher.forward(req, resp);

    }

    private void getProjet(HttpServletRequest req, HttpServletResponse resp) throws SQLException {
        int id = Integer.parseInt(req.getParameter("id"));
        ProjetDao projetDao = new ProjetDao();
        Projet projet = projetDao.getProjet(id);
        req.setAttribute("projet", projet);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("projet/afficher.jsp");
    }
}
