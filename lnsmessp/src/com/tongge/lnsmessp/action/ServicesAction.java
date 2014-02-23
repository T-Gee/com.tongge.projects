package com.tongge.lnsmessp.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tongge.lnsmessp.dao.ServiceApplyDAO;
import com.tongge.lnsmessp.dao.ServicesdetailsDAO;
import com.tongge.lnsmessp.dao.UserDAO;
import com.tongge.lnsmessp.dao.impl.ServiceApplyDAOImpl;
import com.tongge.lnsmessp.dao.impl.ServicesdetailsDAOImpl;
import com.tongge.lnsmessp.dao.impl.UserDAOImpl;
import com.tongge.lnsmessp.entities.ServiceapplyEntity;
import com.tongge.lnsmessp.entities.ServicesdetailEntity;
import com.tongge.lnsmessp.entities.UserEntity;

public class ServicesAction extends BaseAction {

    UserDAO usedao = new UserDAOImpl();
    ServiceApplyDAO serviceapplydao = new ServiceApplyDAOImpl();

    public void query(HttpServletRequest request, HttpServletResponse response) {
        String flag = request.getParameter("flag");
        try {
            if ("0".equals(flag)) {
                flag = "政策服务";
            } else if ("1".equals(flag)) {
                flag = "金融服务";
            } else if ("2".equals(flag)) {
                flag = "科技服务";
            } else if ("3".equals(flag)) {
                flag = "商务服务";
            } else if ("4".equals(flag)) {
                flag = "其他服务";
            }
            List<UserEntity> entities = usedao.getUserByServicesType(flag);
            request.setAttribute("entities", entities);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void servicesSelect(HttpServletRequest request, HttpServletResponse response) {
        String flag = request.getParameter("flag");
        // try {
        if ("0".equals(flag)) {
            flag = "政策服务";
        } else if ("1".equals(flag)) {
            flag = "金融服务";
        } else if ("2".equals(flag)) {
            flag = "科技服务";
        } else if ("3".equals(flag)) {
            flag = "商务服务";
        } else if ("4".equals(flag)) {
            flag = "其他服务";
        }
        List<ServiceapplyEntity> entities = serviceapplydao.getByTitle(flag);
        Map<String, ServiceapplyEntity> map = new HashMap<String, ServiceapplyEntity>();
        for (int i = 0; i < entities.size(); i++) {
            ServiceapplyEntity key = entities.get(i);
            ServiceapplyEntity value = map.get(key.getUserid());
            if (value == null) {
                map.put(key.getUserid(), key);
            } else {
                value.setShortTitle(value.getShortTitle() + "," + key.getShortTitle());
            }

        }
        request.setAttribute("entities", new ArrayList(map.values()));
        // } catch (SQLException e) {
        // e.printStackTrace();
        // }

    }

    public void provideServices(HttpServletRequest request, HttpServletResponse response) {
        UserEntity currentuser = (UserEntity) request.getSession().getAttribute("CurrentUser");
        String[] shortTitles = request.getParameterValues("shortTitle");
        for (int i = 0; i < shortTitles.length - 1; i++) {
            ServiceapplyEntity entity = new ServiceapplyEntity();
            entity.setUserid(currentuser.getId());
            entity.setTitle(request.getParameter("title"));
            entity.setShortTitle(shortTitles[i]);
            entity.setContacts(request.getParameter("contacts"));
            entity.setContactMobile(request.getParameter("contactMobile"));
            entity.setDescription(request.getParameter("description"));
            serviceApplyDAO.addEntity(entity);
        }

    }

    private ServiceApplyDAO serviceApplyDAO = new ServiceApplyDAOImpl();
    private ServicesdetailsDAO servicesdetailsDAO = new ServicesdetailsDAOImpl();

    public void provideServiceInfo(HttpServletRequest request, HttpServletResponse response) {
        List<ServicesdetailEntity> entities = servicesdetailsDAO.infoList();
        String typeImg = request.getParameter("liulan");
        String introduce = request.getParameter("txt");
        String business = request.getParameter("txt1");
        UserEntity currentuser = (UserEntity) request.getSession().getAttribute("CurrentUser");
        typeImg = typeImg.substring(typeImg.lastIndexOf("\\"));
        if (!entities.isEmpty()) {
            servicesdetailsDAO.updObjects(entities.get(0).getId(), typeImg, introduce, business);
        } else {
            servicesdetailsDAO.addObjects(typeImg, introduce, business, currentuser.getId());
        }

    }

    public void queryServicedetail(HttpServletRequest request, HttpServletResponse response) {
        List<ServicesdetailEntity> entities = servicesdetailsDAO.infoList();
        if (!entities.isEmpty()) {
            request.setAttribute("entity", entities.get(0));
        }

    }

    public void queryByID(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        ServicesdetailEntity entity = servicesdetailsDAO.queryByID(id);
        request.setAttribute("entity", entity);
    }

}
