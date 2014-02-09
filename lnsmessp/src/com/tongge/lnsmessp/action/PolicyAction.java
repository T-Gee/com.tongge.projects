package com.tongge.lnsmessp.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tongge.lnsmessp.dao.PolicyFileDAO;
import com.tongge.lnsmessp.dao.impl.PolicyFileDAOImpl;
import com.tongge.lnsmessp.entities.PolicyFileEntity;

public class PolicyAction extends BaseAction {
    
    private PolicyFileDAO dao = new PolicyFileDAOImpl();

//    private static String FOLDER = "/policy";

    public void show(HttpServletRequest request, HttpServletResponse response) {
//        File folder = new File(Constant.FILE_SERVER_PATH + FOLDER);
//        if(folder.exists()){
//            folder.listFiles();
//        }
        List<PolicyFileEntity> fileList = dao.getFileList();
        List<String> doms = new ArrayList<String>();
        for (int i = 0; i < fileList.size(); i++) {
            doms.add(fileList.get(i).toDOMString());
        }
        request.setAttribute("filelist",doms);
    }

    public void file(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        PolicyFileEntity file = dao.getFileDetailById(id);
        file.setContent(file.getContent().replaceAll("\r\n", "<br/>").replaceAll(" ", "&nbsp;"));
        request.setAttribute("file",file);
        
    }
}
