package com.wming.service;

import com.wming.dao.CompanyProjectDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by ming on 2015/7/16.
 */
@Service
public class CompanyProjectService {

    @Autowired
    public CompanyProjectDao projectDao;

    public List selectById(int id){
        return projectDao.selectById(id);
    }

    public void add(int id1,int id2){
        projectDao.add(id1,id2);
    }
}
