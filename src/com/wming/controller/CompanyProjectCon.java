package com.wming.controller;

import com.wming.bean.CompanyProject;
import com.wming.service.CompanyProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by ming on 2015/7/16.
 */
@Controller
public class CompanyProjectCon {

    @Autowired
    private CompanyProjectService projectService;

    @RequestMapping("/company/project/select")
    public String selectById(Integer id, Model model) {

        List list = projectService.selectById(id);

        if (list.size() > 0) {

            CompanyProject companyProject = (CompanyProject) list.get(0);
            List projectList = companyProject.getProjects();
            model.addAttribute("projectList", projectList);
            return "/company/companyProject";
        } else {
            return "/company/block1";
        }
    }

    @RequestMapping("/company/projectAdd")
    public String add(Integer id1, Integer id2) {
        projectService.add(id1, id2);

        return "/company/success";
    }


}
