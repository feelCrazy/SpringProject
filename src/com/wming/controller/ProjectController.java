package com.wming.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wming.bean.Project;
import com.wming.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by ming on 2015/7/10.
 */
@Controller
public class ProjectController {

    @Autowired
    private ProjectService projectService;

    @RequestMapping("/project/selectAll")
    public String selectAll(Integer pageNum, Model model) {
        if (pageNum == null) {
            pageNum = 1;
        }

        System.out.println("+++/**"+pageNum);
        PageHelper.startPage(pageNum, 5);
        List projectList = projectService.selectAll();
        PageInfo pageInfo = new PageInfo(projectList);

        model.addAttribute("projectList", projectList);
        model.addAttribute("pageInfo", pageInfo);
        return "/company/project";
    }


    @RequestMapping("/project/add")
    public String add(Project project) {
        projectService.add(project);
        return "/project/success";
    }

    @RequestMapping("/project/delete")
    public String deleteById(Integer id) {
        projectService.deleteById(id);
        return "redirect:/backProject/all.form";
    }


    @RequestMapping("/project/update")
    public String update(Integer idNum, Project project) {
        project.setId(idNum);
        projectService.update(project);
        return "project/projectList";
    }

    @RequestMapping("/backProject/all")
    public String backSelectAll(Integer pageNum, Model model) {
        if (pageNum == null) {
            pageNum = 1;
        }
        PageHelper.startPage(pageNum, 5);
        List list = projectService.selectAll();
        PageInfo pageInfo = new PageInfo(list);
        model.addAttribute("list", list);
        model.addAttribute("pageInfo", pageInfo);

        return "project/projectList";
    }


    @RequestMapping("/project/up")
    public String up(Integer idNum, Model model) {
        Project project = projectService.selectById(idNum);
//        session.setAttribute("project",project);
        model.addAttribute("project", project);
        return "/project/projectupdate";
    }

    @RequestMapping("project/addInfo")
    public String projectAdd() {
        return "/project/projectAdd";
    }

}
