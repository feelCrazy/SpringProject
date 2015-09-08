package com.wming.service;

import com.wming.bean.Job;
import com.wming.dao.JobDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by ming on 2015/7/2.
 */

@Service
public class JobService {

    @Autowired
    private JobDao jobDao;

    //一对多关联查询
    public List selectById(int id) {
        return jobDao.selectById(id);
    }



    public void addJob(Job job){
        jobDao.addJob(job);
    }


    public void deleteById(int id){
        jobDao.deleteById(id);
    }

    public List selectAll(){
        return jobDao.selectAll();
    }
}
