package com.tongge.lnsmessp.dao;

import java.util.List;

import com.tongge.lnsmessp.entities.PolicyFileEntity;

public interface PolicyFileDAO {

    List<PolicyFileEntity> getFileList();

    PolicyFileEntity getFileDetailById(String id);

}
