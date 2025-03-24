package com.constraction.constructionxpert.dao;

import com.constraction.constructionxpert.config.ConstrDB;
import com.constraction.constructionxpert.model.Projet;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProjetDao {

    public void CreateProjet(Projet projet) throws SQLException {
        String sql = "insert into projets(nom , description , date_de_debut , date_de_fin , budget) values(?,?,?,?,?)";
        try (Connection conn = ConstrDB.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);) {

            ps.setString(1, projet.getNom());
            ps.setString(2, projet.getDescription());
            ps.setDate(3, projet.getDateDeDebut());
            ps.setDate(4, projet.getDateDeFin());
            ps.setDouble(5, projet.getBudget());
            ps.executeUpdate();
        }
    }

    public Projet getProjet(int id) throws SQLException {
        String sql = "SELECT * FROM projets WHERE id = ?";
        try (Connection connection = ConstrDB.getConnection();
             PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    Projet projet = new Projet();
                    projet.setProjetid(rs.getInt("id"));
                    projet.setNom(rs.getString("nom"));
                    projet.setDescription(rs.getString("description"));
                    projet.setDateDeDebut(rs.getDate("date_de_debut"));
                    projet.setDateDeFin(rs.getDate("date_de_fin"));
                    projet.setBudget(rs.getDouble("budget"));
                    return projet;
                }
            }
        }
        return null;
    }
    public List<Projet> GetAllProjets() throws SQLException {
        List<Projet> projets = new ArrayList<>();
        String sql = "SELECT * FROM projets";
        try (Connection connection = ConstrDB.getConnection();
             Statement ps = connection.createStatement();
             ResultSet rs = ps.executeQuery(
                     sql)) {

            while (rs.next()) {
                Projet projet = new Projet();
                projet.setNom(rs.getString("nom"));
                projet.setDescription(rs.getString("description"));
                projet.setDateDeDebut(rs.getDate("date_de_debut"));
                projet.setDateDeFin(rs.getDate("date_de_fin"));
                projet.setBudget(rs.getDouble("budget"));
                projets.add(projet);
            }
        } catch (SQLException e) {
            throw new SQLException("Error fetching all projects", e);
        }
        return projets;
    }


    public void UpdateProjet(Projet projet) throws SQLException {
        String sql = "update projet set nom =? , Descreption =? , DateDeDebut =? , DateDeFin =? , Budget =? where id = ?";
        Connection connection = ConstrDB.getConnection();
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1, projet.getNom());
        ps.setString(2, projet.getDescription());
        ps.setDate(3, projet.getDateDeDebut());
        ps.setDate( 4, projet.getDateDeFin());
        ps.setDouble(5, projet.getBudget());
        ps.executeUpdate();
    }

    public boolean DeleteProjet(int id) throws SQLException {
        String sql = "delete from projets where id = ?";
        Connection connection = ConstrDB.getConnection();
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, id);
        ps.executeUpdate();
        return false;
    }
}
