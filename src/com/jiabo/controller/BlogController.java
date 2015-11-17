package com.jiabo.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.jiabo.dao.BaseDAO;
import com.jiabo.model.Blog;

@Controller
public class BlogController {

	@Autowired
	private BaseDAO dao;

	@RequestMapping("/blog")
	public String index() {
		return "blog/index";
	}

	@RequestMapping("/blog/category/{type}")
	public String category(@PathVariable Integer type,
			HttpServletRequest request) {
		List<Blog> list = dao.selectList("selectByType", type, Blog.class);
		request.setAttribute("list", list);
		return "blog/blogItem";
	}

	@RequestMapping("/blog/{id}")
	public String blog(@PathVariable Integer id, HttpServletRequest request) {
		Blog blog = dao.selectOne("selectById", id, Blog.class);
		request.setAttribute("blog", blog);
		return "blog/context";
	}

	@RequestMapping("/blog/save")
	public String save(Blog blog) {
		blog.setUpdatetime(new Date());
		if (blog.getContext() == null || "".equals(blog.getContext().trim()))
			return index();
		if (blog.getId() == null) {
			dao.insertObject("insert", blog);
		} else {
			dao.updateById("updateById", blog);
		}
		return index();
	}

	@RequestMapping("/blog/json/{id}")
	@ResponseBody
	public void blogJson(@PathVariable Integer id, HttpServletResponse response) {
		Blog blog = dao.selectOne("selectById", id, Blog.class);
		String str = JSON.toJSONString(blog);
		try {
			response.getWriter().write(str);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
