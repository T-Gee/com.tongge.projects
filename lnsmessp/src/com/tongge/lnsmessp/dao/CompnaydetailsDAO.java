package com.tongge.lnsmessp.dao;

import java.util.List;

import com.tongge.lnsmessp.entities.CompnaydetailEntity;

public interface CompnaydetailsDAO {

    int addObjects(String typeImg, String introduce, String business);

    List<CompnaydetailEntity> infoList();

    int fp(String compnayId, String servicesId);


}
