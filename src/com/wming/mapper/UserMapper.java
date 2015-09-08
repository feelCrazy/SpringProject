package com.wming.mapper;

import com.wming.bean.User;

import java.util.List;

/**
 * SQL映射接口
 */

public interface UserMapper {

    User selectLogin(String email,String password);

    void addUser(User user);

    List showMessage();

    void deleteById(int id);

    void updateById(User user);

    List selectAll();



}