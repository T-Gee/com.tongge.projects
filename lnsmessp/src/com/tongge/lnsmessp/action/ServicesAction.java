package com.tongge.lnsmessp.action;

import java.sql.SQLException;
import java.util.List;

import javax.print.attribute.standard.Severity;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tongge.lnsmessp.dao.ServiceApplyDAO;
import com.tongge.lnsmessp.dao.UserDAO;
import com.tongge.lnsmessp.dao.impl.ServiceApplyDAOImpl;
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
//        try {
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
            request.setAttribute("entities", entities);
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
        
    }

}
