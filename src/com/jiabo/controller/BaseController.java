package com.jiabo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;

@Controller
public class BaseController {


	@ExceptionHandler(RuntimeException.class)
	public String operateExp(RuntimeException ex, HttpServletRequest request) {
		//System.out.println("this is for test");
		ex.printStackTrace();
		// mod.addAttribute("err", ex.getMessage());
		// //ExceptionHandler处理异常时，Model，是不能用的，否则会不起作用，这里用了HttpServletRequest
		request.setAttribute("error", ex.getMessage());
		return "base/error";
	}

	
}
