package com.constraction.constructionxpert.dao;

import com.constraction.constructionxpert.config.ConstrDB;
import com.constraction.constructionxpert.model.Tache;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TacheDao {

    public void CreateTache(Tache tache) throws SQLException {
        String sql = "INSERT INTO taches VALUES (?,?,?,?,?,?)";
        Connection connection = ConstrDB.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setInt(1,tache.getTacheid());
        preparedStatement.setInt(2,tache.getProjetid());
        preparedStatement.setString(3,tache.getDescription());
        preparedStatement.setDate(4,tache.getDateDeDebut());
        preparedStatement.setDate(5,tache.getDateDeFin());
        preparedStatement.setString(6,tache.getStatus());
        preparedStatement.executeUpdate();
    }

    public void UpdateTache(Tache tache) throws SQLException {
        String sql ="update tache set Tacheid=? , projetid=? , description=? , ressource=? , status=? , dateDeDebut=? , dateDeFin=? where tacheid=?";
        Connection connection = ConstrDB.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setInt(1,tache.getProjetid());
        preparedStatement.setString(2,tache.getDescription());
        preparedStatement.setString(3,tache.getRessource());
        preparedStatement.setDate(4,tache.getDateDeDebut());
        preparedStatement.setDate(5,tache.getDateDeFin());
        preparedStatement.setString(6,tache.getStatus());
        preparedStatement.setInt(7,tache.getTacheid());
        preparedStatement.executeUpdate();
    }

    public void DeleteTache(int tacheid) throws SQLException {
        String sql = "delete from taches where tacheid=?";
        Connection connection = ConstrDB.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setInt(1,tacheid);
        preparedStatement.executeUpdate();
    }

    public Tache GetTache(int tacheid) throws SQLException {
        String sql = "select * from taches where tacheid=?";
        Connection connection = ConstrDB.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setInt(1,tacheid);
        ResultSet resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
            Tache tache = new Tache();
            tache.setProjetid(resultSet.getInt("projetid"));
            tache.setDescription(resultSet.getString("description"));
            tache.setDateDeDebut(resultSet.getDate("dateDeDebut"));
            tache.setDateDeFin(resultSet.getDate("dateDeFin"));
            tache.setStatus(resultSet.getString("status"));
            tache.setRessource(resultSet.getString("ressource"));
            return tache;
        }
        return null;
    }

    public List<Tache> GetAllTache() throws SQLException {
        String sql = "select * from taches";
        Connection connection = ConstrDB.getConnection();
        Statement ps = connection.createStatement();
        ResultSet rs = ps.executeQuery(sql);
        List<Tache> taches = new ArrayList<>();
        while (rs.next()) {
            Tache tache = new Tache();
            tache.setProjetid(rs.getInt("projetid"));
            tache.setDescription(rs.getString("description"));
            tache.setDateDeDebut(rs.getDate("dateDeDebut"));
            tache.setDateDeFin(rs.getDate("dateDeFin"));
            tache.setStatus(rs.getString("status"));
            tache.setRessource(rs.getString("ressource"));
            taches.add(tache);
        }
        return taches;
    }
}
