/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.ipn.cecyt9.anicare.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mx.edu.ipn.cecyt9.anicare.utils.Conexion;

/**
 *
 * @author Alumno
 */
public class Registro extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
            //Declarar variables
        String user;
        String apPat;
        String apMat;
        String nombre;
        String email;
        String pass;
        
        try 
        {
            user = request.getParameter("usuario");
            apPat = request.getParameter("apPat");
            apMat = request.getParameter("apMat");
            nombre = request.getParameter("Nombre");
            email = request.getParameter("email");
            pass = request.getParameter("pass");
            
            Conexion conecta = new Conexion();
            Connection con = conecta.obtener();
            PreparedStatement pstat =  null;
            
            //Sentencia SQL para insertar valores
            String query = "INSERT INTO tbUsrDueño (dñUser, dñNombre, dñApePat, dñApeMat, dñPassword) values(?, ?, ?, ?, ?)";
            
//            Statement st = con.createStatement();
//            ResultSet rs = st.executeQuery(query);

            pstat = con.prepareStatement(query);
            pstat.setString(1, user);
            pstat.setString(2, nombre);
            pstat.setString(3, apPat);
            pstat.setString(4, apMat);
            pstat.setString(5, pass);
            pstat.executeUpdate();
            
            
        } 
        catch (ClassNotFoundException | SQLException e) 
        {
            
        }
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
