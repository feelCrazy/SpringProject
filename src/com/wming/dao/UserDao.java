package com.wming.dao;

import com.wming.bean.User;
import com.wming.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by ming on 2015/6/29.
 * dao层
 */

@Repository
public class UserDao {

    @Autowired
    private UserMapper userMapper;

    //登录判断
    public User login(String email,String password){

        return userMapper.selectLogin(email,password);
        }

    //添加用户
    public void addUser(User user){

        userMapper.addUser(user);
    }

    //删除用户
    public void deleteById(int id){
        userMapper.deleteById(id);
    }

    //修改数据
    public void updateById(User user){
        userMapper.updateById(user);
    }

    public List selectAll(){
//        PageHelper.startPage(1,5);
        return userMapper.selectAll();
    }
}
