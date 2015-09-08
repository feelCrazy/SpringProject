package com.wming.service;

import com.wming.bean.User;
import com.wming.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by ming on 2015/6/29.
 * service类
 */

@Service
public class UserService {

    @Autowired
    private UserDao userDao;

    public User login(String email ,String password){
        return userDao.login(email,password);
    }

    public void addUser(User user){
        userDao.addUser(user);
    }

    public void deleteById(int id){
        userDao.deleteById(id);
    }

    public void updateById(User user){
        userDao.updateById(user);
    }

    public List selectAll(){
        return userDao.selectAll();
    }
}
