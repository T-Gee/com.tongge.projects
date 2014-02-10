package com.tongge.lnsmessp.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tongge.lnsmessp.dao.BusiapplyDAO;
import com.tongge.lnsmessp.dao.impl.BusiapplyDAOImpl;
import com.tongge.lnsmessp.entities.BusiapplyEntity;
import com.tongge.lnsmessp.entities.UserEntity;
import com.tongge.tools.common.lang.StringUtils;

public class CompnayAction extends BaseAction {

    private BusiapplyDAO dao = new BusiapplyDAOImpl();

    public void busiApply(HttpServletRequest request, HttpServletResponse response) {
        UserEntity currentuser = (UserEntity) request.getSession().getAttribute("CurrentUser");
        BusiapplyEntity entity = new BusiapplyEntity();
        entity.setUserid(currentuser.getId());
        entity.setTitle(request.getParameter("title"));
        entity.setShortTitle(StringUtils.join(request.getParameterValues("shortTitle"), ","));
        entity.setContacts(request.getParameter("contacts"));
        entity.setContactMobile(request.getParameter("contactMobile"));
        entity.setDescription(request.getParameter("description"));
        dao.addEntity(entity);
    }

    public void busiQuery(HttpServletRequest request, HttpServletResponse response) {
        String title = request.getParameter("title");
        int origin = Integer.parseInt(StringUtils.nvl(request.getParameter("origin"),"-1"));
        request.setAttribute("entities",dao.queryObjectsByTitleOrigin(title, origin));
    }

}
