package com.cesi.controllers;

import com.cesi.beans.Produit;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class Test1 extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String langue = request.getParameter("lang");
        String prix = request.getParameter("price");
        String message = "Transmission de variables : OK ! Langue : " + langue + ", prix : " + prix;
        request.setAttribute("test", message);

        ArrayList<Produit> listeProduits = new ArrayList<>();

        listeProduits.add(new Produit("Orange", "Ceci est une orange", 0.5f));
        listeProduits.add(new Produit("Fraise", "Ceci est une fraise", 1f));
        listeProduits.add(new Produit("Banane", "Ceci est une banane", 0.65f));
        listeProduits.add(new Produit("Cerise", "Ceci est une cerise", 0.3f));

        request.setAttribute("listeProduits", listeProduits);

        this.getServletContext().getRequestDispatcher("/WEB-INF/test2.jsp").forward(request, response);
    }
}