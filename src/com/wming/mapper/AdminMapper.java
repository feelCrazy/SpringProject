package com.wming.mapper;

import com.wming.bean.Admin;

public interface AdminMapper {

    //修改信息
    void updateById(Admin admin);

    Admin selectLogin(String name,String password);

    Admin selectById(int id);

}