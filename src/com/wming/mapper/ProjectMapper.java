package com.wming.mapper;

import com.wming.bean.Project;

import java.util.List;

public interface ProjectMapper {

    List selectAll();

    void add(Project project);

   void deleteById(int id);

    void updateById(Project project);

    Project selectById(int id);

}