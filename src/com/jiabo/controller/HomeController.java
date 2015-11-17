package com.jiabo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSONObject;
import com.jiabo.model.Filestorage;
import com.jiabo.services.BaseServices;

@Controller
public class HomeController extends BaseController {

	@Autowired
	private BaseServices services;

	@RequestMapping("/home")
	public String home() {
		return "home/index";
	}

	@RequestMapping("/")
	public String index() {
		return "base/index";
	}

	@RequestMapping("/upload/photo")
	@ResponseBody
	public String upload(
			@RequestParam(value = "imgFile", required = false) MultipartFile file,
			HttpServletRequest request) {
		Filestorage fs = services.uploadPhoto(file);
		JSONObject obj=new JSONObject();
		obj.put("error", 0);
		obj.put("url", fs.getPath());
		return obj.toJSONString();
	}
}
