package com.jiabo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.jiabo.dao.BaseDAO;
import com.jiabo.model.Gallery;
import com.jiabo.model.Photo;
import com.jiabo.services.PhotoServices;

@Controller
public class PhotoController {

	@Autowired
	private BaseDAO dao;

	@Autowired
	private PhotoServices services;

	@RequestMapping("/photo")
	public String index(HttpServletRequest request) {
		List<Gallery> list = dao.selectList("selectAll", null, Gallery.class);
		request.setAttribute("galleryList", list);
		return "photo/index";
	}

	@RequestMapping("/photo/upload")
	public String upload(
			@RequestParam(value = "Filedata", required = false) MultipartFile[] files,
			HttpServletRequest request, Integer gallery) {
		services.uploadPhoto(files, gallery);
		return index(request);
	}

	@RequestMapping("/photo/gallery/save")
	public String save(Gallery gallery, HttpServletRequest request) {
		dao.insertObject("insert", gallery);
		return index(request);
	}

	@RequestMapping("/photo/gallery/{id}")
	public String gallery(@PathVariable Integer id, HttpServletRequest request) {
		List<Photo> photos = dao.selectList("selectByGalleryId", id,
				Photo.class);
		request.setAttribute("photoList", photos);
		return "photo/photo";
	}

}
