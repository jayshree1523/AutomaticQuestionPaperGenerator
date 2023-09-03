/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.online_examination.servlet;

import com.online_examination.entities.User;
import com.mycompany.online_examination.Connectionprovider;
import com.online_examination.dao.UserDao;
import com.online_examination.entities.Message;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Home
 */
public class LoginServlet2 extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String userEmail = request.getParameter("user_email");
            String userPassword = request.getParameter("user_password");
            UserDao dao = new UserDao(Connectionprovider.getConnection());
            User u = dao.getUserByEmailAndPassword(userEmail, userPassword);
            HttpSession s = request.getSession();
            if (u == null) {
//                Message msg = new Message("Invalid details ! try again", "error", "alert-danger");
//               out.println(msg);
//                s.setAttribute("msg", "Invalid Details");
                response.sendRedirect("login_page.jsp");
            } else {
                s.setAttribute("currentUser", u);
                if(u.getProfileType().equals("Teacher")){
                response.sendRedirect("profile.jsp");
                }
                else if(u.getProfileType().equals("Student")){
                response.sendRedirect("student.jsp");
                }
                else{
                    out.println("We have not identify user type..");
                }
            }

        }
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
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
