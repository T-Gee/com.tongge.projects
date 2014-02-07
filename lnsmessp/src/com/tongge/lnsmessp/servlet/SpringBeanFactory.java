package com.tongge.lnsmessp.servlet;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import com.tongge.lnsmessp.action.BaseAction;
import com.tongge.lnsmessp.action.LoginAction;

/**
 * Servlet implementation class SpringBeanFactory
 */
@WebServlet("/SpringBeanFactory")
public class SpringBeanFactory extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	public static Map<String,BaseAction> context = new HashMap<String,BaseAction>();
	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		context.put("login", new LoginAction());
	}
	public static BaseAction getAction(String name){
		return context.get(name);
	}

}
