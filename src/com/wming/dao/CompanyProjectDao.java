package com.wming.dao;

import com.wming.mapper.CompanyprojectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by ming on 2015/7/16.
 */
@Repository
public class CompanyProjectDao {
    @Autowired
    private CompanyprojectMapper mapper;

    public List selectById(int id){
        return mapper.selectById(id);
    }

    public void add(int id1,int id2){
        mapper.add(id1,id2);
    }

}
