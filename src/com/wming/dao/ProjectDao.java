package com.wming.dao;

import com.wming.bean.Project;
import com.wming.mapper.ProjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by ming on 2015/7/10.
 */

@Repository
public class ProjectDao {

    @Autowired
    private ProjectMapper projectMapper;

    public List selectAll(){
        return projectMapper.selectAll();
    }

    public void add(Project project){
        projectMapper.add(project);
    }

    public void update(Project project){
        projectMapper.updateById(project);
    }

    public void deleteById(int id){
        projectMapper.deleteById(id);
    }

    public Project selectById(int id){
        return projectMapper.selectById(id);
    }
}
