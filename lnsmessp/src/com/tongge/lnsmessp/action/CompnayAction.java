package com.tongge.lnsmessp.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tongge.lnsmessp.dao.BusiapplyDAO;
import com.tongge.lnsmessp.dao.CompnaydetailsDAO;
import com.tongge.lnsmessp.dao.ServiceApplyDAO;
import com.tongge.lnsmessp.dao.ServicesdetailsDAO;
import com.tongge.lnsmessp.dao.impl.BusiapplyDAOImpl;
import com.tongge.lnsmessp.dao.impl.CompnaydetailsDAOImpl;
import com.tongge.lnsmessp.dao.impl.ServiceApplyDAOImpl;
import com.tongge.lnsmessp.dao.impl.ServicesdetailsDAOImpl;
import com.tongge.lnsmessp.entities.BusiapplyEntity;
import com.tongge.lnsmessp.entities.CompnaydetailEntity;
import com.tongge.lnsmessp.entities.ServiceapplyEntity;
import com.tongge.lnsmessp.entities.UserEntity;
import com.tongge.tools.common.lang.StringUtils;

public class CompnayAction extends BaseAction {

    private BusiapplyDAO busiApplyDAO = new BusiapplyDAOImpl();

    private CompnaydetailsDAO compnaydetailsDAO = new CompnaydetailsDAOImpl();

    public void busiApply(HttpServletRequest request, HttpServletResponse response) {
        UserEntity currentuser = (UserEntity) request.getSession().getAttribute("CurrentUser");
        String[] shortTitles = request.getParameterValues("shortTitle");
        ;
        // for (int i = 0; i < shortTitles.length-1; i++) {
        BusiapplyEntity entity = new BusiapplyEntity();
        entity.setUserid(currentuser.getId());
        entity.setTitle(request.getParameter("title"));
        // entity.setShortTitle(shortTitles[i]);
        entity.setShortTitle(StringUtils.join(shortTitles, ","));

        entity.setContacts(request.getParameter("contacts"));
        entity.setContactMobile(request.getParameter("contactMobile"));
        entity.setDescription(request.getParameter("description"));
        busiApplyDAO.addEntity(entity);
        // }
    }

    public void busiQuery(HttpServletRequest request, HttpServletResponse response) {
        String title = request.getParameter("title");
        int origin = Integer.parseInt(StringUtils.nvl(request.getParameter("origin"), "-1"));
        request.setAttribute("entities", busiApplyDAO.queryObjectsByTitleOrigin(title, origin));
    }

    public void saveCompnayDetails(HttpServletRequest request, HttpServletResponse response) {
        String typeImg = request.getParameter("liulan");
        typeImg = typeImg.substring(typeImg.lastIndexOf("\\"));
        String introduce = request.getParameter("introduce");
        String business = request.getParameter("business");
        compnaydetailsDAO.addObjects(typeImg, introduce, business);

    }

    public void infoList(HttpServletRequest request, HttpServletResponse response) {
        List<CompnaydetailEntity> entities = compnaydetailsDAO.infoList();

        request.setAttribute("entities", entities);

    }

    public void busiApplyQuery(HttpServletRequest request, HttpServletResponse response) {
        List<BusiapplyEntity> entities = busiApplyDAO.queryObjectsByTitleOrigin(null, -1);
        request.setAttribute("entities", entities);
    }
    public void busiApplyQueryById(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        BusiapplyEntity entity = busiApplyDAO.queryObjectsById(id);
        request.setAttribute("entity", entity);
    }

}
