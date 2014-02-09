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
import com.tongge.tools.common.lang.StringUtils;

/**
 * Servlet implementation class VIPServlet
 */
public class VIPServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private UserDAO userDAO = new UserDAOImpl();

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException {
//        String kind = ((UserEntity)request.getSession().getAttribute("CurrentUser")).getKind();
        if ("center".equals(request.getParameter("method"))) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/vip/index.jsp");
            dispatcher.forward(request, response);
            return;
        } else if ("toUpdPwd".equals(request.getParameter("method"))) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/vip/index.jsp");
            dispatcher.forward(request, response);
            return;
        } else if ("toBusiApply".equals(request.getParameter("method"))) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/vip/index.jsp");
            dispatcher.forward(request, response);
            return;
        } else if ("compnayBusiQuery".equals(request.getParameter("method"))) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/vip/index.jsp");
            dispatcher.forward(request, response);
            return;
        } else if ("reommendedList".equals(request.getParameter("method"))) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/vip/index.jsp");
            dispatcher.forward(request, response);
            return;
        } else if ("forEnterInfo".equals(request.getParameter("method"))) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/vip/index.jsp");
            dispatcher.forward(request, response);
            return;
        } else if ("forEnterInfoList".equals(request.getParameter("method"))) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/vip/index.jsp");
            dispatcher.forward(request, response);
            return;
        } else if ("updAccount".equals(request.getParameter("method"))) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/vip/index.jsp");
            dispatcher.forward(request, response);
            return;
        } else if ("updPwd".equals(request.getParameter("method"))) {
            request.removeAttribute("msg");
            String origPwd = request.getParameter("origPwd");
            String newPwd = request.getParameter("newPwd");
            if (newPwd == null) {
                request.setAttribute("msg", "新的密码不能为空");
            } else if (newPwd.length() <= 6) {
                request.setAttribute("msg", "新的密码不能小于六位");
            }
            UserEntity currentuser = (UserEntity) request.getSession().getAttribute("CurrentUser");
            try {
                UserEntity loaduser = userDAO.getUserByName(currentuser.getUsername());
                if (!loaduser.getPassword().equals(origPwd)) {
                    request.setAttribute("msg", "原始密码不正确");
                } else {
                    userDAO.updPwd(loaduser.getId(), newPwd);
                    currentuser.setPassword(newPwd);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
            if (!StringUtils.isBlank((String) request.getAttribute("msg"))) {
                RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/vip/updPwd/index.jsp");
                dispatcher.forward(request, response);
            } else {
                RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/vip/person.jsp");
                dispatcher.forward(request, response);
            }
            return;
        }
    }

}
