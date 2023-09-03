
package com.online_examination.servlet;

import com.mycompany.online_examination.Connectionprovider;
import com.online_examination.dao.AddQuestionDao;
import com.online_examination.dao.UserDao;
import com.online_examination.entities.AddQuestion;
import com.online_examination.entities.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AddQuestionServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String className = request.getParameter("className");
            String subjectName = request.getParameter("subjectName");
            String qusetion = request.getParameter("qusetion");
            String qtype = request.getParameter("qtype");
            int marks = Integer.parseInt(request.getParameter("marks"));
            
            
           AddQuestion adq = new AddQuestion(className, subjectName, qusetion, qtype, marks);
           AddQuestionDao adao = new AddQuestionDao(Connectionprovider.getConnection());
           if(adao.saveQues(adq)){
               out.println("Successfull");
           }
           else{
               out.println("Error");
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
