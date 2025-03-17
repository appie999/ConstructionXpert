package com.sportflow.constructionxpert.dao;

import com.sportflow.constructionxpert.model.Projet;

public class ProjetDao {

    public void CreateProjet(Projet projet) {
        String sql = "insert into projet values(?,?,?,?,?,?,?,?)";
    }
}
