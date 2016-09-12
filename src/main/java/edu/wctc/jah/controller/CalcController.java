/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.wctc.jah.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import edu.wctc.jah.model.GeoShape;
import edu.wctc.jah.model.AreaCalculator;
import edu.wctc.jah.model.ShapeDecider;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author jhedding
 */
@WebServlet(name = "CalcController", urlPatterns = {"/calcthis"})
public class CalcController extends HttpServlet {
    
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
        
        String shape = request.getParameter("shape");
        GeoShape gShape = new ShapeDecider().whichShape(shape);
       
        switch (gShape) {
            case RECTANGLE: 
                String rWidth = request.getParameter("rWidth");
                String rLength = request.getParameter("rLength");
                String area = new AreaCalculator().calcRect(rWidth, rLength);
                request.setAttribute("rectArea", area);
                RequestDispatcher view = request.getRequestDispatcher("/RectangleResponse.jsp");
                view.forward(request, response);
            break;
            
            case RECTANGLE2: 
                String rWidth2 = request.getParameter("rWidth2");
                String rLength2 = request.getParameter("rLength2");
                String area2 = new AreaCalculator().calcRect(rWidth2, rLength2);
                request.setAttribute("rectArea2", area2);
                RequestDispatcher view2 = request.getRequestDispatcher("/index.jsp");
                view2.forward(request, response);
            break;
            
            case CIRCLE: 
                String radius = request.getParameter("radius");
                String circArea = new AreaCalculator().calcCirc(radius);
                request.setAttribute("circArea", circArea);
                RequestDispatcher view3 = request.getRequestDispatcher("/index.jsp");
                view3.forward(request, response);
            break;
            
            case TRIANGLE: 
                String tBase = request.getParameter("tBase");
                String tHeight = request.getParameter("tHeight");
                String areaTri = new AreaCalculator().calcTri(tBase, tHeight);
                request.setAttribute("triArea", areaTri);
                RequestDispatcher view4 = request.getRequestDispatcher("/index.jsp");
                view4.forward(request, response);
            break;
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
