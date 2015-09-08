package com.wming.servlet;

import com.wming.bean.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by ming on 2015/7/1.
 */
@WebFilter(filterName = "FilterLogin")
public class FilterLogin implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;
        HttpSession session = request.getSession(true);

        //获取登陆对象
        User user = (User) session.getAttribute("user");
        System.out.println("------"+user);
        //获取路径
        String url = request.getRequestURI();
//        System.out.println("*****"+url);
        if (user == null || "".equals(user)) {
            if ((!url.contains("login") && !url.contains("index"))){
                System.out.println("************"+request.getContextPath());
                response.sendRedirect(request.getContextPath()+"/index.form");
            }
        }

        chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
