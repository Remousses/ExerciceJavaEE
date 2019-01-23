package com.cesi.beans;

public class Utilisateur {

    private String email;
    private String motDePasse;
    private String nom;
    private String codePostal;

    public Utilisateur() {
        super();
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public void setMotDePasse(String motDePasse) {
        this.motDePasse = motDePasse;
    }

    public String getMotDePasse() {
        return motDePasse;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getNom() {
        return nom;
    }

    public String getCodePostal() { return codePostal; }

    public void setCodePostal(String codePostal) { this.codePostal = codePostal; }
}
