package com.jiabo.services;

import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jiabo.bean.ZImgResult;
import com.jiabo.dao.BaseDAO;
import com.jiabo.model.Img;

@Service
public class BaseServices {

	@Autowired
	protected ZImgService zImgService;

	@Autowired
	protected BaseDAO dao;

	protected void storeImgByUrl(String url, int imgType, int linkId) {
		try {
			ZImgResult result = store2ZImgByUrl(url);
			if (result.isSuccess())
				createAndSaveImg(result.getMd5(), imgType, linkId);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected ZImgResult store2ZImgByUrl(String url)
			throws MalformedURLException {
		ZImgResult result = new ZImgResult();
		try {
			URL u = new URL(url);
			InputStream stream = u.openConnection().getInputStream();
			result = zImgService.upload(stream,
					url.substring(url.lastIndexOf(".") + 1));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	private Img createAndSaveImg(String md5, int imgType, int linkId) {
		Img img = new Img();
		img.setLinkid(linkId);
		img.setMd5(md5);
		img.setType(imgType);
		dao.insertObject(BaseDAO.SQL_INSERT, img);
		return img;
	}

}
