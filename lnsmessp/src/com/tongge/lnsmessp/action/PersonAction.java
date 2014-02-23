package com.tongge.lnsmessp.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tongge.lnsmessp.dao.CompnayServicesPrefDAO;
import com.tongge.lnsmessp.dao.CompnaydetailsDAO;
import com.tongge.lnsmessp.dao.impl.CompnayServicesPrefDAOImpl;
import com.tongge.lnsmessp.dao.impl.CompnaydetailsDAOImpl;
import com.tongge.lnsmessp.entities.UserEntity;
import com.tongge.tools.common.lang.StringUtils;

public class PersonAction extends BaseAction {
    private CompnayServicesPrefDAO cspDAO = new CompnayServicesPrefDAOImpl();
    private CompnaydetailsDAO compnaydetailsDAO = new CompnaydetailsDAOImpl();

    public void allotCompnayAccepct(HttpServletRequest request, HttpServletResponse response) {

        String busicode = request.getParameter("compnayId");
        String servicesId = request.getParameter("servicesId");
        UserEntity currentUser = (UserEntity) request.getSession().getAttribute("CurrentUser");
        if(cspDAO.isFP(busicode)){
            cspDAO.update(currentUser.getId(), busicode, servicesId);
        }else{
            cspDAO.save(currentUser.getId(), busicode, servicesId);
        }
        compnaydetailsDAO.fp(busicode,servicesId);
    }

}
