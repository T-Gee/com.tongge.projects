package com.tongge.lnsmessp.dao;

import java.util.List;

import com.tongge.lnsmessp.entities.ServicesdetailEntity;

public interface ServicesdetailsDAO {

    int addObjects(String typeImg, String introduce, String business);

    List<ServicesdetailEntity> infoList();

}
