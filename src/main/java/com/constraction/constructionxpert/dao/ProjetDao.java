package com.constraction.constructionxpert.dao;

import com.constraction.constructionxpert.config.ConstrDB;
import com.constraction.constructionxpert.model.Projet;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProjetDao {

    public void CreateProjet(Projet projet) {
        String sql = "insert into projets(nom , description , date_de_debut , date_de_fin , budget) values(?,?,?,?,?)";
        try (
                Connection conn = ConstrDB.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
        ){

            ps.setString(1, projet.getNom());
            ps.setString(2, projet.getDescription());
            ps.setDate(3, projet.getDateDeDebut());
            ps.setDate(4, projet.getDateDeFin());
            ps.setDouble(5, projet.getBudget());
            ps.executeUpdate();
        }
        catch (SQLException e){
            e.printStackTrace();
        }
    }

    public Projet getProjet(int id) {
        String sql = "SELECT * FROM projets WHERE projet_id = ?";
        Projet projet = new Projet();
        try (
                Connection connection = ConstrDB.getConnection();
                PreparedStatement ps = connection.prepareStatement(sql);
        ){
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                projet.setProjetid(rs.getInt("projet_id"));
                projet.setNom(rs.getString("nom"));
                projet.setDescription(rs.getString("description"));
                projet.setDateDeDebut(rs.getDate("date_de_debut"));
                projet.setDateDeFin(rs.getDate("date_de_fin"));
                projet.setBudget(rs.getDouble("budget"));

            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        return projet;
    }
    public List<Projet> GetAllProjets() {
        List<Projet> projets = new ArrayList<>();
        String sql = "SELECT * FROM projets";
        try (
                Connection connection = ConstrDB.getConnection();
                PreparedStatement ps = connection.prepareStatement(sql);
        ) {

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Projet projet = new Projet();
                projet.setProjetid(rs.getInt("projet_id"));
                projet.setNom(rs.getString("nom"));
                projet.setDescription(rs.getString("description"));
                projet.setDateDeDebut(rs.getDate("date_de_debut"));
                projet.setDateDeFin(rs.getDate("date_de_fin"));
                projet.setBudget(rs.getDouble("budget"));
                projets.add(projet);
                System.out.println(projets);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return projets;
    }


    public void UpdateProjet(Projet projet) throws SQLException {


        String sql = "update projets set nom=? , description =? , date_de_debut =? , date_de_fin =? , budget =? where projet_id = ?";
        Connection connection = ConstrDB.getConnection();
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1, projet.getNom());
        ps.setString(2, projet.getDescription());
        ps.setDate(3, projet.getDateDeDebut());
        ps.setDate( 4, projet.getDateDeFin());
        ps.setDouble(5, projet.getBudget());
        ps.setInt(6, projet.getProjetid());
        ps.executeUpdate();
    }

    public boolean DeleteProjet(int id) throws SQLException {
        String sql = "delete from projets where projet_id = ?";
        Connection connection = ConstrDB.getConnection();
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, id);
        ps.executeUpdate();
        return false;
    }
}
