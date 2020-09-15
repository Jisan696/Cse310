/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package server;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Asus
 */
public class OperationServlet extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            String level = request.getParameter("level");
            String op = request.getParameter("addoperation");
            //Getting the data from user through the form
            if (op.trim().equals("addplan")) {
                if (level.trim().equals("Beginner")) {
                    int reps = Integer.parseInt(request.getParameter("reps"));
                    int sets = Integer.parseInt(request.getParameter("sets"));
                    String type = request.getParameter("type");
                    //sending the data to the Beginner class
                    Beginner beginner = new Beginner(reps, sets, type);
                    BeginnerDatabase addBeginner = new BeginnerDatabase(ConnectionPro.getConnection());

                    if (addBeginner.saveData(beginner)) {
                        response.sendRedirect("/cs310/admin/admin.jsp");
                    }
                }

                if (level.trim().equals("Medium")) {
                    int reps = Integer.parseInt(request.getParameter("reps"));
                    int sets = Integer.parseInt(request.getParameter("sets"));
                    String type = request.getParameter("type");

                    Medium medium = new Medium(reps, sets, type);
                    MediumDatabase addMedium = new MediumDatabase(ConnectionPro.getConnection());

                    if (addMedium.saveData(medium)) {
                        response.sendRedirect("/cs310/admin/admin.jsp");
                    }
                }

                if (level.trim().equals("Intense")) {
                    int reps = Integer.parseInt(request.getParameter("reps"));
                    int sets = Integer.parseInt(request.getParameter("sets"));
                    String type = request.getParameter("type");

                    Intense intense = new Intense(reps, sets, type);
                    IntenseDatabase addIntense = new IntenseDatabase(ConnectionPro.getConnection());

                    if (addIntense.saveData(intense)) {
                        response.sendRedirect("/cs310/admin/admin.jsp");
                    }
                }
            }
            else if(op.trim().equals("addeq")){
                String name = request.getParameter("eqName");
                int amount = Integer.parseInt(request.getParameter("eqAmount"));
                
                Equipment equipment = new Equipment(name,amount);
                EquipmentDatabase addeq = new EquipmentDatabase(ConnectionPro.getConnection());
                
                if(addeq.saveData(equipment)){
                    response.sendRedirect("/cs310/admin/admin.jsp");
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
