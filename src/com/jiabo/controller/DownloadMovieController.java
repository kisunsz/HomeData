package com.jiabo.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jiabo.bean.BtQueue;
import com.jiabo.services.ScannerMovieServices;
import com.jiabo.util.EscapeUnescapeUtil;

@Controller
public class DownloadMovieController {

	@RequestMapping("/download")
	public String index() {
		return "download/index";
	}

	@RequestMapping("/download/search")
	public String search(HttpServletRequest request, String query) {
		try {
			query = URLDecoder.decode(query, "utf-8");
			query = new String(query.getBytes("iso8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		BtQueue queue = new BtQueue();
		new ScannerMovieServices(queue).scanner(query);
		request.setAttribute("map", queue.geResult());
		request.setAttribute("nameMap", queue.getUrlNameMap());
		return "download/search";
	}

	@RequestMapping("/download/download")
	public void download(String url, HttpServletResponse response) {
		try {
			url = EscapeUnescapeUtil.unescape(url);
			url = new String(url.getBytes("iso8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		ScannerMovieServices.download(url, response);
	}

	@RequestMapping("/download/downloadCloud")
	@ResponseBody
	public void downloadCloud(String url, HttpServletResponse response) {
		try {
			url = EscapeUnescapeUtil.unescape(url);
			url = new String(url.getBytes("iso8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		try {
			response.getWriter().write(ScannerMovieServices.downloadCloud(url));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
