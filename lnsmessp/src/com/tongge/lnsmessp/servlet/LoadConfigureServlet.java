package com.tongge.lnsmessp.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import com.tongge.lnsmessp.common.Constant;

/**
 * Servlet implementation class LoadConfigureServlet
 */
public class LoadConfigureServlet extends HttpServlet {
    public static void main(String[] args) throws ServletException {
        LoadConfigureServlet o = new LoadConfigureServlet();
        o.init(null);
    }

    private static final long serialVersionUID = 1L;

    private String path = "config.properties";

    private Properties prop = new Properties();

    /**
     * @see Servlet#init(ServletConfig)
     */
    public void init(ServletConfig config) throws ServletException {
        try {
            prop.load(new FileInputStream(new File(config.getServletContext().getRealPath("") + "/WEB-INF/classes/"
                    + path)));
            System.out.println(Constant.FILE_SERVER_PATH = prop.getProperty("FILE_SERVER"));
            System.out.println(Constant.CONTEXT_ROOT = prop.getProperty("CONTEXT_ROOT"));
            System.out.println(Constant.DOMAIN = prop.getProperty("DOMAIN"));

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    public void setPath(String path) {
        this.path = path;
    }

}
