package com.tongge.lnsmessp.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tongge.lnsmessp.action.OrgServicesAction;
import com.tongge.lnsmessp.action.ServicesAction;
import com.tongge.lnsmessp.common.Constant;

/**
 * Servlet implementation class OrgServicesServlet
 */
public class OrgServicesServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding(Constant.CHARSET);
        OrgServicesAction action = (OrgServicesAction) SpringBeanFactory.getAction("orgServices");
        if ("showdoms".equals(request.getParameter("method"))) {
            try {
                action.showdoms(request, response);
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            return;
        } else if ("showdetails".equals(request.getParameter("method"))) {
            services.queryByID(request, response);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/services/introduce/index.jsp");
            dispatcher.forward(request, response);
        }
    }
    private ServicesAction services = new ServicesAction();
    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException {
        System.out.println();
    }

}
