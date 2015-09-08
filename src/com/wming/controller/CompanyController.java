package com.wming.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wming.bean.CompanyUser;
import com.wming.service.CompanyService;
import com.wming.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by ming on 2015/7/1.
 * 企业用户控制层
 */
@Controller
public class CompanyController {

    @Autowired
    private CompanyService companyService;
    @Autowired
    private JobService jobService;

    @RequestMapping(value = "/company/login", method = RequestMethod.POST)
    public String login(String email, String password, HttpSession session) {
        CompanyUser companyUser = companyService.login(email, password);
        if (companyUser != null) {
            session.setAttribute("companyUser", companyUser);
            return "/company/companyMain";
        } else {
            return "/main/main";
        }
    }

    @RequestMapping(value = "/company/add", method = RequestMethod.POST)
    public String add(CompanyUser companyUser, HttpSession session) {
        Date date = new Date();
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String date1 = sf.format(date);
        companyUser.setDate(sf.format(date));
        companyService.addCompanyUser(companyUser);
        session.setAttribute("companyUser", companyUser);
        return "/company/login";
    }

    @RequestMapping(value = "/company/update", method = RequestMethod.POST)
    public String update(CompanyUser companyUser, int idNum) {
        companyUser.setId(idNum);
        companyService.updateById(companyUser);

        return "";
    }

    @RequestMapping("/company/show2")
    public String show2() {
        return "/company/companyJobAdd";
    }

    @RequestMapping("company/main")
    public String main() {
        return "/company/companyLogin";
    }

    @RequestMapping("/job/list")
    public String showJobInfo(int userId, Model model, Integer pageNum) {
        if (pageNum == null) {
            pageNum = 1;
        }
        PageHelper.startPage(pageNum, 5);
        List jobList = jobService.selectById(userId);
        PageInfo pageInfo = new PageInfo(jobList);
        if (jobList.size() == 0) {
            return "/company/block";

        } else {
            model.addAttribute("pageInfo", pageInfo);
            model.addAttribute("jobList", jobList);

            return "/company/companyJobList";
        }
    }

    @RequestMapping("/company/all")
    public String selectAll(Integer pageNum, Model model) {
        if (pageNum == null) {
            pageNum = 1;
        }
        PageHelper.startPage(pageNum, 5);
        List companyList = companyService.selectAll();
        PageInfo pageInfo = new PageInfo(companyList);

        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("companyList", companyList);

        return "/backstage/backCompanyList";
    }

    @RequestMapping("/company/deleteById")
    public String selectById(Integer id) {
        companyService.deleteById(id);
        return "redirect:/company/all.form";
    }

    @RequestMapping("company/first")
    public String first() {
        return "company/first";
    }

}
