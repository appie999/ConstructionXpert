package com.sportflow.constructionxpert.model;

public class RessourceTache {
    private int tacheRessourceId;
    private int tacheId;
    private int resourceId;
    private int quantiteNeeded;


    public RessourceTache(int tacheRessourceId, int tacheId, int resourceId, int quantiteNeeded) {
        this.tacheRessourceId = tacheRessourceId;
        this.tacheId = tacheId;
        this.resourceId = resourceId;
        this.quantiteNeeded = quantiteNeeded;
    }


    public int getTacheRessourceId() {
        return tacheRessourceId;
    }

    public void setTacheRessourceId(int tacheRessourceId) {
        this.tacheRessourceId = tacheRessourceId;
    }

    public int getTacheId() {
        return tacheId;
    }

    public void setTacheId(int tacheId) {
        this.tacheId = tacheId;
    }

    public int getResourceId() {
        return resourceId;
    }

    public void setResourceId(int resourceId) {
        this.resourceId = resourceId;
    }

    public int getQuantiteNeeded() {
        return quantiteNeeded;
    }

    public void setQuantiteNeeded(int quantiteNeeded) {
        this.quantiteNeeded = quantiteNeeded;
    }
}
