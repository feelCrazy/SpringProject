package com.wming.dao;

import com.wming.bean.Admin;
import com.wming.mapper.AdminMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Created by ming on 2015/7/8.
 * 后台持久层
 */

@Repository
public class AdminDao {
    @Autowired
    private AdminMapper adminMapper;

    public void updateById(Admin admin) {
        adminMapper.updateById(admin);
    }

    public Admin login(String name, String password) {
        return adminMapper.selectLogin(name, password);
    }

    public Admin selectById(int id){
        return adminMapper.selectById(id);
    }
}
