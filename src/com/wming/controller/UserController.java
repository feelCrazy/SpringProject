package com.wming.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wming.bean.User;
import com.wming.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by ming on 2015/6/29.
 * 控制层
 */

@Controller
public class UserController {

    @Autowired
    private UserService userService;


    //测试
    @RequestMapping("/index")
    public String index() {

//        return "/user/update";
//        return "/user/login";
        return "/main/main";
    }

    @RequestMapping("/index1")
    public String index1() {
        return "/main/mainsss";
    }

    @RequestMapping("/selectAll")
    public String selectAll(Integer pageNum, Model model) {
        if (pageNum == null) {
            pageNum = 1;
        }
        PageHelper.startPage(pageNum, 5);
        List userList = userService.selectAll();

        PageInfo pageInfo = new PageInfo(userList);

        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("userList", userList);

        return "/backstage/backPersonList";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(String email, String password, HttpSession session) {
        User user = userService.login(email, password);

        if (user != null) {
            session.setAttribute("user", user);
            return "/user/userMain";
        } else {
            return "/user/login";
        }
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addUser(User user, Model model, HttpSession session, String kap) {

        String code = (String) session.getAttribute("code");


        if (code.equals(kap)) {
            userService.addUser(user);
            return "/user/login";
        } else {
            return "/main/main";
        }
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(User user, int idNum) {
        user.setId(idNum);
        userService.updateById(user);
        return "user/first";
    }


    @RequestMapping("/show1")
    public String show1() {
        return "/user/update";
    }


    @RequestMapping("/delete")
    public String deleteById(int id) {
        userService.deleteById(id);

        return "forward:/selectAll.form";
    }


    @RequestMapping("/first")
    public String first() {
        return "/user/first";
    }

}
