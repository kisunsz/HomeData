package com.jiabo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController extends BaseController {

	@RequestMapping("/home")
	public String home() {
		return "home/index";
	}

	@RequestMapping("/")
	public String index() {
		return "base/index";
	}
}
