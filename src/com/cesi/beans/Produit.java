package com.cesi.beans;

public class Produit {
    private String nom;
    private String description;
    private float prixAchat;
    private boolean remy;

    public Produit(){
        super();
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

    public float getPrixAchat() {
        return prixAchat;
    }

    public void setPrixAchat(float prixAchat) {
        this.prixAchat = prixAchat;
    }

    public boolean getRemy() {
        return remy;
    }

    public void setRemy(boolean remy) {
        this.remy = remy;
    }
}
