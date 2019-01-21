package com.cesi.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TestServlet extends HttpServlet {
    private int compteur = 0;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int compteurInterne = 0;
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<meta charset=\"utf-8\" />");
        out.println("<title>Test</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<p>Compteur : " + compteur  + "</p>");
        out.println("<p>Compteur interne : " + compteurInterne  + "</p>");
        out.println("</body>");
        out.println("</html>");

        compteur++;
        compteurInterne++;
    }
}