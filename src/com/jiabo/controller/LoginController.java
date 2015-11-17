package com.jiabo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jiabo.dao.BaseDAO;
import com.jiabo.model.User;

@Controller
public class LoginController {

	@Autowired
	private BaseDAO dao;

	@RequestMapping("/login")
	public String login(User user, String url, HttpServletRequest request) {
		if (user.getEmail() == null) {
			return loginError(request, "email不能为空");
		}
		System.out.println(request);
		User dbUser = dao.selectOne("login", user, User.class);
		if (dbUser != null)
			return loginSuccess(request, url, dbUser);
		return loginError(request, "用户名或密码错误");
	}

	private String loginError(HttpServletRequest request, String error) {
		request.setAttribute("msg", error);
		return "/base/login";
	}

	private String loginSuccess(HttpServletRequest request, String url,
			User user) {
		request.getSession().setAttribute("user", user);
		return "redirect:" + url;
	}
}
