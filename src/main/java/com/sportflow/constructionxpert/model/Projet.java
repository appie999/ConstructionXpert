package com.sportflow.constructionxpert.model;

import java.util.Date;

public class Projet {
    private int projetid;
    private String nom , description ;
    private Date dateDeDebut , dateDeFin ;
    private double budget;

    public Projet(int projetid, String nom, String description, double budget, Date dateDeDebut, Date dateDeFin) {
        this.projetid = projetid;
        this.nom = nom;
        this.description = description;
        this.budget = budget;
        this.dateDeDebut = dateDeDebut;
        this.dateDeFin = dateDeFin;
    }

    public Projet(String nom, String description, double budget, Date dateDeDebut, Date dateDeFin) {
        this.nom = nom;
        this.description = description;
        this.budget = budget;
        this.dateDeDebut = dateDeDebut;
        this.dateDeFin = dateDeFin;
    }

    public int getProjetid() {
        return projetid;
    }

    public void setProjetid(int projetid) {
        this.projetid = projetid;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getBudget() {
        return budget;
    }

    public void setBudget(double budget) {
        this.budget = budget;
    }

    public Date getDateDeDebut() {
        return dateDeDebut;
    }

    public void setDateDeDebut(Date dateDeDebut) {
        this.dateDeDebut = dateDeDebut;
    }

    public Date getDateDeFin() {
        return dateDeFin;
    }

    public void setDateDeFin(Date dateDeFin) {
        this.dateDeFin = dateDeFin;
    }
}
