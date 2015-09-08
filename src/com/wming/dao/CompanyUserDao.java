package com.wming.dao;

import com.wming.bean.CompanyUser;
import com.wming.mapper.CompanyUserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by ming on 2015/7/1.
 * 企业用户持久层
 */
@Repository
public class CompanyUserDao {

    @Autowired
    private CompanyUserMapper userMapper;

    //企业用户登录判断
    public CompanyUser login(String email,String password){

        return  userMapper.selectLogin(email,password);
    }

    //企业用户注册
    public void addCompanyUser(CompanyUser companyUser){
        userMapper.addUser(companyUser);
    }

    //企业用户更新
    public void updateById(CompanyUser companyUser){
        userMapper.update(companyUser);
    }

    //删除
    public void deleteById(int id){
        userMapper.deleteById(id);
    }

    //查找所有
    public List selectAll(){
        return userMapper.selectAll();
    }

}
