package com.wming.dao;

import com.wming.mapper.PersoninfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by ming on 2015/7/7.
 */

@Repository
public class PersonInfoDao {

    @Autowired
    private PersoninfoMapper personinfoMapper;

    public List selectById(int id) {
        return personinfoMapper.selectById(id);
    }

    public void add(int id,int id1,int id2){
        personinfoMapper.add(id,id1,id2);
    }

    public List selectByUserId(int id){
      return personinfoMapper.selectByUserId(id);
    }

    public void deleteById(int id){
        personinfoMapper.deleteById(id);
    }
}
