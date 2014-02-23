package com.tongge.lnsmessp.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import com.tongge.lnsmessp.entities.UserEntity;

/**
 * Servlet Filter implementation class SessiontimeoutFilter
 */
public class SessiontimeoutFilter implements Filter {

    /**
     * Default constructor. 
     */
    public SessiontimeoutFilter() {
        // TODO Auto-generated constructor stub
    }

    /**
     * @see Filter#destroy()
     */
    public void destroy() {
        // TODO Auto-generated method stub
    }

    /**
     * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
     */
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException,
            ServletException {
        UserEntity currentuser = (UserEntity) ((HttpServletRequest) request).getSession().getAttribute("CurrentUser");
        String uri = ((HttpServletRequest) request).getRequestURI();
        if (uri.indexOf("VIP.do") > -1 && currentuser == null) {
            request.setAttribute("msg", "<font class='msg'>Session过期，请重新登录！</font>");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/org/login/index.jsp");
            dispatcher.forward(request, response);
            return;
        }
        chain.doFilter(request, response);
     }

    /**
     * @see Filter#init(FilterConfig)
     */
    public void init(FilterConfig fConfig) throws ServletException {
        // TODO Auto-generated method stub
    }

}
