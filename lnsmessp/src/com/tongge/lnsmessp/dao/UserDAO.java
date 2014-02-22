package com.tongge.lnsmessp.dao;

import java.sql.SQLException;
import java.util.List;

import com.tongge.lnsmessp.entities.UserEntity;

public interface UserDAO {

    UserEntity getUserByName(String username) throws SQLException;

    int addUser(UserEntity user) throws SQLException;

    List<UserEntity> getUserByType(String string) throws SQLException;

    void updPwd(String id, String newPwd);

    List<UserEntity> getUserByServicesType(String flag) throws SQLException;

    int updUser(UserEntity user);


}
