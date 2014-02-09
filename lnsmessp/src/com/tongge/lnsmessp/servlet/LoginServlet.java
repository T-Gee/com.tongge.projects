package com.tongge.lnsmessp.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tongge.lnsmessp.dao.UserDAO;
import com.tongge.lnsmessp.dao.impl.UserDAOImpl;
import com.tongge.lnsmessp.entities.UserEntity;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private UserDAO userDAO = new UserDAOImpl();


    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String op = request.getParameter("op");
        if("logout".equals(op)){
            request.getSession().removeAttribute("CurrentUser");
            response.sendRedirect(request.getContextPath() + "/index.jsp");
            return ;
        }
        this.doPost(request, response);
    }

    

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        try {// check 唯一性
            UserEntity user = userDAO.getUserByName(username);
            if (user != null) {
                // 用户存在，进行校验
                if (!password.equals(user.getPassword())) {
                    request.setAttribute("msg", "<font class='msg'>密码错误</font>");
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/login/index.jsp");
                    dispatcher.forward(request, response);
                    return;
                }
            } else {
                // 用户不存在
                request.setAttribute("msg", "<font class='msg'>用户不存在</font>");
                RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/login/index.jsp?op=login");
                dispatcher.forward(request, response);
                return;
            }
            request.getSession(true).setAttribute("CurrentUser", user);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/VIP.do?method=center&kind=" + user.getKind());
            dispatcher.forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

}
