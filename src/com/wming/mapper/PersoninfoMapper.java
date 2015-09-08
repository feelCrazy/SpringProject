package com.wming.mapper;

import java.util.List;

public interface PersoninfoMapper {

    //查找根据id
    List selectById(int id);

    //添加
    void add(int id,int id1,int id2);

    List selectByUserId(int id);

    void deleteById(int id);


}