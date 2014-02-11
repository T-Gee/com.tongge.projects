package com.tongge.lnsmessp.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.apache.tomcat.util.http.fileupload.DefaultFileItem;
import org.apache.tomcat.util.http.fileupload.DiskFileUpload;
import org.apache.tomcat.util.http.fileupload.FileUploadException;

import com.tongge.lnsmessp.common.Constant;

/**
 * Servlet implementation class FileUploadServlet
 */
public class FileUploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public FileUploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println();
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    @SuppressWarnings({ "unchecked", "unused" })
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException {
        response.setContentType("text/html;charset=utf8");
        PrintWriter out = response.getWriter();
        DiskFileUpload fu = new DiskFileUpload();
        try {
            List<DefaultFileItem> fileItems = fu.parseRequest(request);
            for (int i = 0; i < fileItems.size(); i++) {
                DefaultFileItem item = fileItems.get(i);
                if (item.isFormField()) {
                    continue;
                }
                OutputStream os = item.getOutputStream();
                File img = new File(Constant.FILE_SERVER_PATH + "/" + item.getName());
                FileOutputStream outputStream = FileUtils.openOutputStream(img);
                IOUtils.write(IOUtils.toByteArray(item.getInputStream()), outputStream);
                outputStream.close();
            }
        } catch (FileUploadException e) {
            e.printStackTrace();
        }
        ServletInputStream inputStream = request.getInputStream();
        System.out.println();
    }
}
