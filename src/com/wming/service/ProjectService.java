package com.wming.service;

import com.wming.bean.Project;
import com.wming.dao.ProjectDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by ming on 2015/7/10.
 */
@Service
public class ProjectService {

    @Autowired
    private ProjectDao projectDao;

    public List selectAll(){
        return projectDao.selectAll();
    }

    public void add(Project project){
        projectDao.add(project);
    }

    public void update(Project project){
        projectDao.update(project);
    }

    public void deleteById(int id){
        projectDao.deleteById(id);
    }

    public Project selectById(int id){
        return projectDao.selectById(id);
    }

}
