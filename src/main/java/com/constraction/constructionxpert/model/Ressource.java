package com.constraction.constructionxpert.model;

public class Ressource {
    private int ressourceid , quantite;
    private String nom , type  , informationsDuFournissour , unit;

    public Ressource(int ressourceid, int quantite, String nom, String type, String informationsDuFournissour, String unit) {
        this.ressourceid = ressourceid;
        this.quantite = quantite;
        this.nom = nom;
        this.type = type;
        this.informationsDuFournissour = informationsDuFournissour;
        this.unit = unit;
    }

    public Ressource() {

    }

    public int getRessourceid() {
        return ressourceid;
    }

    public void setRessourceid(int ressourceid) {
        this.ressourceid = ressourceid;
    }

    public int getQuantite() {
        return quantite;
    }

    public void setQuantite(int quantite) {
        this.quantite = quantite;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getInformationsDuFournissour() {
        return this.informationsDuFournissour;
    }

    public void setInformationsDuFournissour(String informationsDuFournissour) {
        this.informationsDuFournissour = informationsDuFournissour;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }
}
