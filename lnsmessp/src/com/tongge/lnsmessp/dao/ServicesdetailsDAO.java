package com.tongge.lnsmessp.dao;

import java.util.List;

import com.tongge.lnsmessp.entities.ServicesdetailEntity;

public interface ServicesdetailsDAO {

    List<ServicesdetailEntity> infoList();

    ServicesdetailEntity queryEntity();

    int updObjects(int id, String typeImg, String introduce, String business);

    ServicesdetailEntity queryByID(String id);

    int addObjects(String typeImg, String introduce, String business, String serviceid);

}
