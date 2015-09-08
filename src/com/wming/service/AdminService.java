package com.wming.service;

import com.wming.bean.Admin;
import com.wming.dao.AdminDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by ming on 2015/7/8.
 * 后台管理服务层
 */

@Service
public class AdminService {
    @Autowired
    private AdminDao adminDao;

    public void updateById(Admin admin) {
        adminDao.updateById(admin);
    }

    public Admin login(String name, String password) {
        return adminDao.login(name, password);
    }

    public Admin selectById(int id){
        return adminDao.selectById(id);
    }

}
