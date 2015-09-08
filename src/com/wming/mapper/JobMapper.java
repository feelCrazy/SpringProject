package com.wming.mapper;

import com.wming.bean.Job;

import java.util.List;

/**
 * job sql映射接口
 */
public interface JobMapper {


    //一对多关联查询测试
   List selectById(int id);

   //添加
   void addJob(Job job);

   //删除
   void deleteById(int id);

   //查找全部
   List selectAll();



}