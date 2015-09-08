package com.wming.service;

import com.wming.bean.CompanyUser;
import com.wming.dao.CompanyUserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by ming on 2015/7/1.
 * 企业用户服务层
 */
@Service
public class CompanyService {

    @Autowired
    private CompanyUserDao companyUserDao;

    public CompanyUser login(String email,String password){

        return companyUserDao.login(email,password);
    }

    public void addCompanyUser(CompanyUser companyUser){
        companyUserDao.addCompanyUser(companyUser);
    }

    public void updateById(CompanyUser companyUser){
        companyUserDao.updateById(companyUser);
    }

    public List selectAll(){
        return companyUserDao.selectAll();
    }

    public void deleteById(int id){
        companyUserDao.deleteById(id);
    }
}
