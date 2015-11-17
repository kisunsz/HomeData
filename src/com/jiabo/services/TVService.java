package com.jiabo.services;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;
import com.jiabo.dao.BaseDAO;
import com.jiabo.model.Tv;
import com.jiabo.util.Const;

@Service
public class TVService {
	@Autowired
	private DoubanServices doubanServices;

	@Autowired
	private BaseDAO dao;

	public void scannerTV() {
		String path = Const.basePath + "/video/电视剧/";
		File file = new File(path);
		if (!file.isDirectory())
			return;
		File[] files = file.listFiles();
		for (File f : files) {
			Tv tv = new Tv();
			tv.setName(f.getName());
			tv.setPath(f.getPath());
			JSONObject obj = doubanServices.queryByName(f.getName());
			System.out.println(obj);
			if (obj != null) {
				tv.setDoubanid(obj.getInteger("id"));
				JSONObject images = obj.getJSONObject("images");
				if (images != null) {
					tv.setPhoto(images.getString("large"));
				}
			}
			dao.insertObject("insert", tv);
		}
	}
}
