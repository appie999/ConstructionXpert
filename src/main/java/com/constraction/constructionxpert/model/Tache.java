package com.constraction.constructionxpert.model;

import java.sql.Date;

public class Tache {
    private int tacheid , projetid;
    private String description , ressource , status ;
    private Date dateDeDebut , dateDeFin ;

    public Tache(int tacheid, int projetid, String description, String ressource, String status, Date dateDeDebut, Date dateDeFin) {
        this.tacheid = tacheid;
        this.projetid = projetid;
        this.description = description;
        this.ressource = ressource;
        this.status = status;
        this.dateDeDebut = dateDeDebut;
        this.dateDeFin = dateDeFin;
    }

    public Tache() {

    }

    public int getTacheid() {
        return tacheid;
    }

    public void setTacheid(int tacheid) {
        this.tacheid = tacheid;
    }

    public int getProjetid() {
        return projetid;
    }

    public void setProjetid(int projetid) {
        this.projetid = projetid;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getRessource() {
        return ressource;
    }

    public void setRessource(String ressource) {
        this.ressource = ressource;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
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
