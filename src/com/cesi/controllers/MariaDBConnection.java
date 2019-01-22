package com.cesi.controllers;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

public class MariaDBConnection extends HttpServlet {// JDBC driver name and database URL
    private static final String JDBC_DRIVER = "org.mariadb.jdbc.Driver";
    private static final String DB_URL = "jdbc:mysql://localhost:3306/javasql";

    //  Database credentials
    private static final String USER = "root";
    private static final String PASSWORD = "admin";

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection connection = null;
        Statement statement = null;
        ResultSet resultset = null;
        try {
            Class.forName(JDBC_DRIVER);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            connection = DriverManager.getConnection(
                    DB_URL, USER, PASSWORD);
            statement = connection.createStatement();
            resultset = statement.executeQuery("select id, name, description, prixAchat, marge from products") ;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (statement != null) {
                    statement.close();
                }

                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        request.setAttribute("mariaDBQuery", resultset);
        this.getServletContext().getRequestDispatcher("/WEB-INF/javaSQL.jsp").forward(request, response);
    }
}
