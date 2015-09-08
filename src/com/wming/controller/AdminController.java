package com.wming.controller;

import com.wming.bean.Admin;
import com.wming.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

/**
 * Created by ming on 2015/7/8.
 * 后台管理控制层
 */
@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;

    @RequestMapping("/admin/show")
    public String index() {
        return "/backstage/backLogin";
    }

    @RequestMapping(value = "admin/login", method = RequestMethod.POST)
    public String login(String name, String password, HttpSession session) {

        Admin admin = adminService.login(name, password);
        if (admin != null) {
            session.setAttribute("admin", admin);
            return "/backstage/backstageMain";
        } else {
            return "/backstage/backLogin";
        }
    }

    @RequestMapping("/admin/update")
    public String updateById(Admin admin, Integer idNum) {
//        System.out.println("----"+idNum);
        admin.setId(idNum);
        adminService.updateById(admin);
        return "/backstage/backUpdate";
    }

    @RequestMapping("/admin/info")
    public String selectById(int idNum, Model model) {
        Admin admin = adminService.selectById(idNum);
        model.addAttribute("admin", admin);
        return "/backstage/backUpdate";
    }

    @RequestMapping("/admin/index")
    public String index1() {
        return "/backstage/index";
    }

    @RequestMapping("/admin/index2")
    public String index2() {
        return "/backstage/index1";
    }

}
