package com.wming.service;

import com.wming.dao.PersonInfoDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by ming on 2015/7/7.
 */

@Service
public class PersonInfoService {

    @Autowired
    private PersonInfoDao personInfoDao;


    public List selectById(int id) {

        return personInfoDao.selectById(id);
    }

    public void add(int id, int id1, int id2) {
        personInfoDao.add(id, id1, id2);
    }

    public List selectByUserId(int id) {
        return personInfoDao.selectByUserId(id);
    }

    public void deleteById(int id){
        personInfoDao.deleteById(id);
    }
}
