package com.jiabo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jiabo.dao.BaseDAO;
import com.jiabo.model.Tv;
import com.jiabo.services.TVService;

@Controller
public class TVController {

	@Autowired
	private TVService tvService;
	@Autowired
	private BaseDAO dao;

	@RequestMapping("/tv")
	public String index(HttpServletRequest request) {
		List<Tv> list = dao.selectList("selectAll", null, Tv.class);
		request.setAttribute("tvList", list);
		return "tv/index";
	}

	@RequestMapping("/tv/scanner")
	public String scanner() {
		tvService.scannerTV();
		return "redirect:/tv";
	}
}
