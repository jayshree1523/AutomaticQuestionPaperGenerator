package com.online_examination.servlet;

import com.mycompany.online_examination.Connectionprovider;
import com.online_examination.dao.AddQuestionDao;
import com.online_examination.dao.GeneratePaperDao;
import com.online_examination.entities.AddQuestion;
import com.online_examination.entities.GeneratePaper;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GeneratePaperServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String Iname = request.getParameter("Iname");
            String exam = request.getParameter("exam");
            String className = request.getParameter("className");
            String subjectName = request.getParameter("subjectName");
            String longInstructions = request.getParameter("longInstructions");
            String shortInstructions = request.getParameter("shortInstructions");
            String oneInstructions = request.getParameter("oneInstructions");
            int longQues = Integer.parseInt(request.getParameter("longQues"));
            int shortQues = Integer.parseInt(request.getParameter("shortQues"));
            int oneWordQues = Integer.parseInt(request.getParameter("oneWordQues"));
           
//            int startTime = (request.getParameter("startTime"));
            String totalTime = request.getParameter("totalTime");
            int totalMarks = Integer.parseInt(request.getParameter("totalMarks"));
            int totalQues = Integer.parseInt(request.getParameter("totalQues"));
//            String DateTime = request.getParameter("DateTime");
            
            out.println(Iname);
            
            GeneratePaper gp = new GeneratePaper(Iname, exam, className, subjectName, longInstructions,shortInstructions,oneInstructions,longQues,shortQues,oneWordQues,totalTime,totalMarks,totalQues);
            GeneratePaperDao gpdao = new GeneratePaperDao(Connectionprovider.getConnection());
            if (gpdao.savePaper(gp)) {
                out.println("Successfull");
                response.sendRedirect("printPaper.jsp");
            } else {
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
