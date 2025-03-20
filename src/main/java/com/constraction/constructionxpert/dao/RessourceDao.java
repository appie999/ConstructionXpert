package com.constraction.constructionxpert.dao;

import com.constraction.constructionxpert.config.ConstrDB;
import com.constraction.constructionxpert.model.Ressource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RessourceDao {

    public void CreateRessource(Ressource r) throws SQLException {
        String sql = "insert into ressources values(?,?,?,?,?)";
        Connection connection = ConstrDB.getConnection();
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1,r.getNom());
        ps.setString(2,r.getType());
        ps.setString(3,r.getInformationsDuFournissour());
        ps.setString(4,r.getUnit());
        ps.setInt(5,r.getQuantite());
        ps.executeUpdate();
    }
    public void UpdateRessource(Ressource r) throws SQLException {
        String sql = "update ressources set nom=? , type=? , informationsDuFournissour=? , unit=? , quantite=? where id=? ";
        Connection connection = ConstrDB.getConnection();
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1,r.getNom());
        ps.setString(2,r.getType());
        ps.setString(3,r.getInformationsDuFournissour());
        ps.setString(4,r.getUnit());
        ps.setInt(5,r.getQuantite());
        ps.executeUpdate();
    }

    public void DeleteRessource(Ressource r) throws SQLException {
        String sql = "delete from ressources where id=?";
        Connection connection = ConstrDB.getConnection();
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1,r.getRessourceid());
        ps.executeUpdate();
    }
    public Ressource GetRessourceById(int id) throws SQLException {
        String sql = "select * from ressources where id=?";
        Connection connection = ConstrDB.getConnection();
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setInt(1,id);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            Ressource ressource = new Ressource();
            ressource.setNom(rs.getString("nom"));
            ressource.setType(rs.getString("type"));
            ressource.setInformationsDuFournissour(rs.getString("informationsdufournissour"));
            ressource.setUnit(rs.getString("unit"));
            ressource.setQuantite(rs.getInt("quantite"));
            return ressource;
        }
        return null;
    }

    public List<Ressource> GetAllRessources() throws SQLException {
        String sql = "select * from ressources";
        Connection connection = ConstrDB.getConnection();
        PreparedStatement ps = connection.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        List<Ressource> ressources = new ArrayList<Ressource>();
        while (rs.next()) {
            Ressource ressource = new Ressource();
            ressource.setNom(rs.getString("nom"));
            ressource.setType(rs.getString("type"));
            ressource.setInformationsDuFournissour("informations_Du_Fournissour");
            ressource.setUnit(rs.getString("unit"));
            ressource.setQuantite(rs.getInt("quantite"));
            ressources.add(ressource);
        }
        return ressources;
    }


}
