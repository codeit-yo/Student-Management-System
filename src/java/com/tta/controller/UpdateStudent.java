
package com.tta.controller;

import com.tta.model.StudentQuery;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class UpdateStudent extends HttpServlet {
        
    int sid, score;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            //getting request parameter
            sid = Integer.parseInt(request.getParameter("sid"));
            score = Integer.parseInt(request.getParameter("score"));
            
            //update student in DB
            int r = StudentQuery.update(sid, score);
            
            //check record updated
            if(r == 1){
                out.print("Student record updated");
                request.getRequestDispatcher("display.jsp").include(request, response);
            }//if ends
            else{
                out.print("Something wrong. can not update record");
                request.getRequestDispatcher("update.jsp").include(request, response);
            }//else ends
            
        }//try ends
    }//processRequest ends

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

}//class ends
