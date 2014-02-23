package com.tongge.lnsmessp.dao;

public interface CompnayServicesPrefDAO {

    int save(String id, String compnayId, String servicesId);

    boolean isFP(String busicode);

    int update(String id, String busicode, String servicesId);

}
