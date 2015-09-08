package com.wming.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wming.bean.Personinfo;
import com.wming.service.PersonInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by ming on 2015/7/7.
 * 控制层
 */

@Controller
public class PersonController {

    @Autowired
    private PersonInfoService personInfoService;

    @RequestMapping("/personInfo/personList")
    public String selectById(Integer id, Integer pageNum, Model model) {

        if (pageNum == null) {
            pageNum = 1;
        }

        PageHelper.startPage(pageNum, 5);
        List list = personInfoService.selectById(id);

        if (list.size() == 0) {
            return "/company/block";
        } else {
            PageInfo pageInfo = new PageInfo(list);
            Personinfo personinfo = (Personinfo) list.get(0);
            model.addAttribute("userList", personinfo.getUserList());
            model.addAttribute("pageInfo", pageInfo);
            return "/company/personList";
        }

    }


    @RequestMapping(value = "/job/addUser")
    public String addUser(Integer id, Integer id1, Integer id2) {
        personInfoService.add(id, id1, id2);

//        System.out.println("+" + id + "--" + id1 + "==" + id2);
        return "/job/findjob";
    }


    @RequestMapping("/person/selectU")
    public String selectByUserId(Integer id, Integer pageNum, Model model) {
        if (pageNum == null) {
            pageNum = 1;
        }

//        System.out.println("*******" + id);
        PageHelper.startPage(pageNum, 5);
        List list = personInfoService.selectByUserId(id);

//        System.out.println(list.size()+"********");

        if (list.size() == 0) {
            return "/user/block";
        } else {

            Personinfo personinfo = (Personinfo) list.get(0);

//            System.out.println("********"+personinfo.getUserList().size());

            PageInfo pageInfo = new PageInfo(list);
            model.addAttribute("list", personinfo.getJobList());
//            model.addAttribute("list",list);
            model.addAttribute("pageInfo", pageInfo);
            model.addAttribute("personinfo",personinfo);
            return "/user/jobInfo";
        }

    }


    @RequestMapping("/person/delete")
    public String deleteById(Integer id) {
        System.out.println("++++++++++"+id);
        personInfoService.deleteById(id);
        return "/user/jobInfo";
    }

}
