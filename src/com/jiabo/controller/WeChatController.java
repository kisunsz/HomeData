package com.jiabo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class WeChatController {
	@RequestMapping("/WeChat")
	@ResponseBody
	public void index() {

	}
}
