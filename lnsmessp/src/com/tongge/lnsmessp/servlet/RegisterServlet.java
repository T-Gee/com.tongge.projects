package com.tongge.lnsmessp.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tongge.lnsmessp.dao.UserDAO;
import com.tongge.lnsmessp.dao.impl.UserDAOImpl;
import com.tongge.lnsmessp.entities.UserEntity;
import com.tongge.supportdb.JDBCUtils;
import com.tongge.tools.UUIDGenerator;
import com.tongge.tools.common.lang.StringUtils;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
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
        request.removeAttribute("msg");

        UserEntity user = new UserEntity();
        user.setId(UUIDGenerator.getUUID());
        user.setUsername(StringUtils.nvl(request.getParameter("username"), ""));
        user.setTitle(StringUtils.nvl(request.getParameter("title"), user.getUsername()));
        user.setPassword(StringUtils.nvl(request.getParameter("password"), ""));
        user.setKind(StringUtils.nvl(request.getParameter("kind"), ""));
        user.setShortTitle(StringUtils.nvl(request.getParameter("shortTitle"), ""));
        user.setSpecialService(StringUtils.nvl(request.getParameter("specialService"), ""));
        user.setAuthor(Double.parseDouble(StringUtils.nvl(request.getParameter("Author"), "0")));
        user.setOrigin(StringUtils.nvl(request.getParameter("origin"), ""));
        user.setCompanyAddress(StringUtils.nvl(request.getParameter("companyAddress"), ""));
        user.setOfficeCompany(StringUtils.nvl(request.getParameter("officeCompany"), ""));
        user.setCompanyNumber(Integer.parseInt(StringUtils.nvl(request.getParameter("companyNumber"), "0")));
        user.setServicesType(StringUtils.nvl(request.getParameter("servicesType"), ""));
        user.setRespectiveIndustries(StringUtils.nvl(request.getParameter("respectiveIndustries"), ""));
        user.setCompanyLeader(StringUtils.nvl(request.getParameter("companyLeader"), ""));
        try {
//            if(!user.getUsername().matches("^[a-zA-Z].[a-zA-Z0-9_].{5,17}&")){
//                //  用户不合法，不能新增
//                request.setAttribute("msg", "<font class='msg'>（用户必须6~18个字符，可使用字母、数字、下划线，需以字母开头）</font>");
//                RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/register/index.jsp?kind="
//                        + user.getKind());
//                dispatcher.forward(request, response);
//                return;
//            }
            // check 唯一性
            UserEntity loaduser = userDAO.getUserByName(user.getUsername());
            if (loaduser != null) {
                //  用户存在，不能新增
                request.setAttribute("msg", "<font class='msg'>（用户存在，不能新增）</font>");
                RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/register/index.jsp?kind="
                        + user.getKind());
                dispatcher.forward(request, response);
                return;
            }

            userDAO.addUser(user);
            request.getSession(true).setAttribute("CurrentUser", user);
        } catch (Exception e) {
            throw new ServletException(e);
        }
        response.sendRedirect(request.getContextPath() + "/index.jsp");
    }

}
