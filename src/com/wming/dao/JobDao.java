package com.wming.dao;

import com.wming.bean.Job;
import com.wming.mapper.JobMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by ming on 2015/7/2.
 */

@Repository
public class JobDao {

    @Autowired
    private JobMapper jobMapper;

    //测试
    public List selectById(int id) {
        return jobMapper.selectById(id);
    }

    //添加
    public void addJob(Job job){
        jobMapper.addJob(job);
    }

    //删除
    public void deleteById(int id){
        jobMapper.deleteById(id);
    }

    //浏览
    public List selectAll(){
        return jobMapper.selectAll();
    }
}
