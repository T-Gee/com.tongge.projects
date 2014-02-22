package com.tongge.lnsmessp.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tongge.lnsmessp.action.CompnayAction;
import com.tongge.lnsmessp.action.PersonAction;
import com.tongge.lnsmessp.action.ServicesAction;
import com.tongge.lnsmessp.common.Constant;
import com.tongge.lnsmessp.dao.UserDAO;
import com.tongge.lnsmessp.dao.impl.UserDAOImpl;
import com.tongge.lnsmessp.entities.UserEntity;
import com.tongge.tools.UUIDGenerator;
import com.tongge.tools.common.lang.StringUtils;

/**
 * Servlet implementation class VIPServlet
 */
public class VIPServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private UserDAO userDAO = new UserDAOImpl();

    private CompnayAction compnay = new CompnayAction();

    private ServicesAction services = new ServicesAction();

    private PersonAction person = new PersonAction();

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
        request.setCharacterEncoding(Constant.CHARSET);
        UserEntity currentuser = (UserEntity) request.getSession().getAttribute("CurrentUser");
        if ("center".equals(request.getParameter("method"))) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/vip/index.jsp");
            dispatcher.forward(request, response);
            return;
        } else if ("toUpdPwd".equals(request.getParameter("method"))) {
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

        if ("compnay".equals(currentuser.getKind())) {
            forCompnay(currentuser, request, response);
        } else if ("services".equals(currentuser.getKind())) {
            forServices(currentuser, request, response);
        }

    }

    private void forServices(UserEntity currentuser, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if ("servicesSelect".equals(request.getParameter("method"))) {
            services.servicesSelect(request,response);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/vip/index.jsp");
            dispatcher.forward(request, response);
            return;
        } else if ("servicesStatusChange".equals(request.getParameter("method"))) {
            // compnay.busiApply(request, response);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/vip/index.jsp");
            dispatcher.forward(request, response);
            return;
        } else if ("toProvideServcies".equals(request.getParameter("method"))) {
            // compnay.busiQuery(request, response);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/vip/index.jsp");
            dispatcher.forward(request, response);
            return;
        } else if ("provideServices".equals(request.getParameter("method"))) {
            compnay.provideServices(request, response);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/vip/index.jsp");
            dispatcher.forward(request, response);
            return;
        }else if ("forProvideServiceInfo".equals(request.getParameter("method"))) {
            // compnay.busiQuery(request, response);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/vip/index.jsp");
            dispatcher.forward(request, response);
            return;
        }else if ("forProvideServiceInfodo".equals(request.getParameter("method"))) {
            // compnay.busiQuery(request, response);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/vip/index.jsp");
            dispatcher.forward(request, response);
            return;
        } else if ("toUpdAccount".equals(request.getParameter("method"))) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/vip/index.jsp");
            dispatcher.forward(request, response);
            return;
        } else if ("updAccount".equals(request.getParameter("method"))) {
            UserEntity user = new UserEntity();
            user.setId(UUIDGenerator.getUUID());
            user.setTitle(StringUtils.nvl(request.getParameter("title"), user.getUsername()));
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
            userDAO.updUser(user);

            RequestDispatcher dispatcher = request.getRequestDispatcher("VIP.do?method=updAccount");
            dispatcher.forward(request, response);
            return;
        }
    }

    private void forCompnay(UserEntity currentuser, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if ("toBusiApply".equals(request.getParameter("method"))) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/vip/index.jsp");
            dispatcher.forward(request, response);
            return;
        } else if ("busiApply".equals(request.getParameter("method"))) {
            compnay.busiApply(request, response);
            RequestDispatcher dispatcher = request.getRequestDispatcher("VIP.do?method=compnayBusiQuery");
            dispatcher.forward(request, response);
            return;
        } else if ("compnayBusiQuery".equals(request.getParameter("method"))) {
            compnay.busiQuery(request, response);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/vip/index.jsp");
            dispatcher.forward(request, response);
            return;
        } else if ("reommendedList".equals(request.getParameter("method"))) {
            services.query(request, response);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/vip/index.jsp");
            dispatcher.forward(request, response);
            return;
        } else if ("forEnterInfo".equals(request.getParameter("method"))) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/vip/index.jsp");
            dispatcher.forward(request, response);
            return;
        } else if ("forEnterInfodo".equals(request.getParameter("method"))) {
            compnay.saveCompnayDetails(request, response);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/vip/index.jsp");
            dispatcher.forward(request, response);
            return;
        } else if ("infolist".equals(request.getParameter("method"))) {
            compnay.infoList(request, response);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/vip/index.jsp");
            dispatcher.forward(request, response);
            return;
        } else if ("toUpdAccount".equals(request.getParameter("method"))) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/vip/index.jsp");
            dispatcher.forward(request, response);
            return;
        } else if ("updAccount".equals(request.getParameter("method"))) {
            UserEntity user = new UserEntity();
            user.setId(UUIDGenerator.getUUID());
            user.setTitle(StringUtils.nvl(request.getParameter("title"), user.getUsername()));
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
            userDAO.updUser(user);

            RequestDispatcher dispatcher = request.getRequestDispatcher("VIP.do?method=updAccount");
            dispatcher.forward(request, response);
            return;
        }

    }

}
