package com.tongge.lnsmessp.dao;

import java.util.List;

import com.tongge.lnsmessp.entities.ServiceapplyEntity;

public interface ServiceApplyDAO {

    int addEntity(ServiceapplyEntity entity);

    List<ServiceapplyEntity> getByTitle(String flag);

}
