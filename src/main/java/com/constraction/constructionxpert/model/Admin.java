package com.constraction.constructionxpert.model;

public class Admin {
    private String nomComplet , username , password , email ;

    public Admin(String nomComplet, String username, String password, String email) {
        this.nomComplet = nomComplet;
        this.username = username;
        this.password = password;
        this.email = email;
    }

    public String getNomComplet() {
        return nomComplet;
    }

    public void setNomComplet(String nomComplet) {
        this.nomComplet = nomComplet;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
