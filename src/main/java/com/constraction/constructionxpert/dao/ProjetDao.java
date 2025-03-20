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
       PreparedStatement ps = conn.prepareStatement(sql);
       ResultSet rs = ps.executeQuery()) {
           while (rs.next()) {

               ps.setString(1, projet.getNom());
               ps.setString(2, projet.getDescription());
               ps.setDate(3,projet.getDateDeDebut());
               ps.setDate(4,projet.getDateDeFin());
               ps.setDouble(5, projet.getBudget());
               ps.executeUpdate();
           }

       };
    }

    public Projet GetProjet(int id) throws SQLException {
        String sql = "select * from projets where id = ?";
        Connection connection = ConstrDB.getConnection();
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        if(rs.next()) {
            Projet projet = new Projet();
            projet.setProjetid(rs.getInt(1));
            projet.setNom(rs.getString(2));
            projet.setDescription(rs.getString(3));
            projet.setDateDeDebut(rs.getDate(4));
            projet.setDateDeFin(rs.getDate(5));
            projet.setBudget(rs.getDouble(6));
            return projet;
        }
        return null;
    }
    public List<Projet> GetAllProjet() throws SQLException {
        List<Projet> projets = new ArrayList<Projet>();
        String sql = "select * from projets";
        Connection connection = ConstrDB.getConnection();
        Statement ps = connection.createStatement();
        ResultSet rs = ps.executeQuery(sql);
        while(rs.next()) {
            Projet projet = new Projet();
            projet.setProjetid(rs.getInt(1));
            projet.setNom(rs.getString(2));
            projet.setDescription(rs.getString(3));
            projet.setDateDeDebut(rs.getDate(4));
            projet.setDateDeFin(rs.getDate(5));
            projet.setBudget(rs.getDouble(6));
            projets.add(projet);
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

    public void DeleteProjet(int id) throws SQLException {
        String sql = "delete from projets where id = ?";
        Connection connection = ConstrDB.getConnection();
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1, id);
        ps.executeUpdate();
    }
}
