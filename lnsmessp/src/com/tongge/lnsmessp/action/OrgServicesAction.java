package com.tongge.lnsmessp.action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tongge.lnsmessp.dao.UserDAO;
import com.tongge.lnsmessp.dao.impl.UserDAOImpl;
import com.tongge.lnsmessp.entities.UserEntity;

public class OrgServicesAction extends BaseAction {
    private UserDAO dao = new UserDAOImpl();

    public void showdoms(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        List<UserEntity> userlist = dao.getUserByType("services");
        List<String> doms = new ArrayList<String>();
        for (int i = 0; i < userlist.size(); i++) {
            doms.add(userlist.get(i).toDOMString());
        }
        try {
            response.getWriter().print(doms.toString().substring(1, doms.toString().length() - 1));
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

}
