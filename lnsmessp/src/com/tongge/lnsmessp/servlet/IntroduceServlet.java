package com.tongge.lnsmessp.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tongge.lnsmessp.action.PolicyAction;
import com.tongge.lnsmessp.common.Constant;

/**
 * Servlet implementation class IntroduceServlet
 */
public class IntroduceServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public IntroduceServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding(Constant.CHARSET);
        PolicyAction paction = (PolicyAction) SpringBeanFactory.getAction("policy");
        if ("show".equals(request.getParameter("method"))) {
            paction.show(request, response);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/content/introduce/index.jsp");
            dispatcher.forward(request, response);
            return;
        } else if ("file".equals(request.getParameter("method"))) {
            // paction.file(request, response);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/content/introduce/file.jsp");
            dispatcher.forward(request, response);
            return;
        }

    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException {
        // TODO Auto-generated method stub
    }

}
