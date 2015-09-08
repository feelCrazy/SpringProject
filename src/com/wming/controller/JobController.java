package com.wming.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wming.bean.Job;
import com.wming.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by ming on 2015/7/2.
 * job控制层
 */
@Controller
public class JobController {
    @Autowired
    private JobService jobService;

    @RequestMapping("seTest")
    public String show() {
        return "/job/test";
    }

    @RequestMapping(value = "/job/add", method = RequestMethod.POST)
    public String addJob(Job job, int comId) {
        job.setCompanyId(comId);
        jobService.addJob(job);
        return "/company/companyJobAdd";
    }

    @RequestMapping(value = "/job/delete")
    public String deleteById(Integer id) {
        jobService.deleteById(id);
//        System.out.println("++++"+id);
        return "company/companyJobList";
    }

    //
   /* @RequestMapping("/job/listAll")
    public String showJobInfo(Integer id, Model model, Integer pageNum) {
        if (pageNum == null) {
            pageNum = 1;
        }
        PageHelper.startPage(pageNum, 5);
        List jobList = jobService.selectById(id);
        PageInfo pageInfo = new PageInfo(jobList);
        if (jobList.size() == 0) {
            return "/company/block";

        } else {
            model.addAttribute("pageInfo", pageInfo);
            model.addAttribute("jobList", jobList);

            return "/company/companyJobList";
        }
    }*/





    @RequestMapping("/job/selectAll")
    public String selectAll(Integer pageNum, Model model) {

        if (pageNum == null) {
            pageNum = 1;
        }
        PageHelper.startPage(pageNum, 5);
        List jobList = jobService.selectAll();
        PageInfo pageInfo = new PageInfo(jobList);
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("jobList", jobList);
        return "/job/findjob";
    }

    @RequestMapping("/job/BackSelectAll")
    public String backSelectAll(Integer pageNum, Model model) {
        if (pageNum == null) {
            pageNum = 1;
        }
        PageHelper.startPage(pageNum, 5);
        List jobList = jobService.selectAll();
        PageInfo pageInfo = new PageInfo(jobList);
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("jobList", jobList);
        return "/backstage/backJobList";
    }

}
