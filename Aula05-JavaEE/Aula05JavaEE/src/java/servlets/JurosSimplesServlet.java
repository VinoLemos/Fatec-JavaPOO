/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Fatec
 */
@WebServlet(name = "JurosSimplesServlet", urlPatterns = {"/juros-simples.html"})
public class JurosSimplesServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            Double capital = 0.0;
            Double juros = 0.0;
            Integer meses = 0;
            String error = null;
  
            try {
                capital = Double.valueOf(request.getParameter("capital"));
                juros = Double.valueOf(request.getParameter("juros"));
                meses = Integer.valueOf(request.getParameter("meses"));
                
            } catch (Exception e) {
               error = e.getMessage();
            }
            
           
                    
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet JurosSimplesServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Cálculo de Juros Simples</h1>");
            out.println("<h4><a href='index.html'>Voltar</a></h4>");
            out.println("<hr/>");
            out.println("<form>");
            out.println("<input type='number' name='capital' value='"+capital+"'/>");
            out.println("<input type='number' name='juros' value='"+juros+"'/>");
            out.println("<input type='number' name='meses' value='"+meses+"'/>");
            out.println("<input type='submit' value='Calcular'/>");
            out.println("</form>");
            out.println("</hr>");
            if(error != null) {
             out.println("<span>Informe os valores</span>");
            } else {
             out.println("<h2> Juros Simples: " +  capital * (juros/100) * meses +  "</h2>");
            }
            
            out.println("</body>");
            out.println("</html>");
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
