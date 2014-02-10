package com.tongge.lnsmessp.dao;

import java.util.List;

import com.tongge.lnsmessp.entities.BusiapplyEntity;

public interface BusiapplyDAO {

    int addEntity(BusiapplyEntity entity);

    List<BusiapplyEntity> queryObjectsByTitleOrigin(String title, int origin);

}
