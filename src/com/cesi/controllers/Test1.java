package com.cesi.controllers;

import com.cesi.beans.Produit;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Test1 extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String langue = request.getParameter("lang");
        String prix = request.getParameter("price");
        String message = "Transmission de variables : OK ! Langue : " + langue + ", prix : " + prix;
        request.setAttribute("test", message);

        Produit produit = new Produit();
        produit.setNom("Caisse");
        produit.setDescription("Ceci est une caisse");
        produit.setPrixAchat(10);

        request.setAttribute("produit", produit);

        this.getServletContext().getRequestDispatcher("/WEB-INF/test.jsp").forward(request, response);
    }
}