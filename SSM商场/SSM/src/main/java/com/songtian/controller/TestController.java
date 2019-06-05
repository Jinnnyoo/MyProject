package com.songtian.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.songtian.entity.User;
import com.songtian.service.UserService;

@Controller
@RequestMapping("/")
public class TestController {
	
	//事务
	@Autowired
	private UserService userService;
	
	
    //父级映射为"/"，子级映射也为"/"，就是网页端的默认页面	
	@RequestMapping("/")
	public String index() {
		System.out.println("执行");
		return "login";
	}
	
	
	//登录页面
	@RequestMapping("/login")
	public String login(String name,String pwd,HttpServletRequest request) {
		String url = "login";
		User user =  userService.selectByName(name);
		if(user != null) {
			if(user.getPwd().equals(pwd)) {
				url = "index";
			}else {
				request.setAttribute("msg", "密码错误");
			}
		}else {
			request.setAttribute("msg", "用户不存在");
		}
		
		
		return url;
	}

}
