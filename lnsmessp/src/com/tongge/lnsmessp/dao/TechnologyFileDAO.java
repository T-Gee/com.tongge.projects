package com.tongge.lnsmessp.dao;

import java.util.List;

import com.tongge.lnsmessp.entities.TechnologyFileEntity;

public interface TechnologyFileDAO {

    List<TechnologyFileEntity> getFileList();

    TechnologyFileEntity getFileDetailById(String id);

}
