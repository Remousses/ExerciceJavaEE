package com.cesi.controllers;

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

        this.getServletContext().getRequestDispatcher("/WEB-INF/test.jsp").forward(request, response);
    }
}