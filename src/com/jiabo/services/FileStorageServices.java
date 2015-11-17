package com.jiabo.services;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.jiabo.dao.BaseDAO;
import com.jiabo.model.Filestorage;
import com.jiabo.util.Const;
import com.jiabo.util.HttpClientUtil;

@Service
public class FileStorageServices {

	@Autowired
	private BaseDAO dao;

	public Filestorage createFileStorage(String path, String name, int type,
			Integer linkId) {
		if (path != null)
			path = path.replace("\\", "/");
		Filestorage fs = new Filestorage();
		fs.setIsdir(Const.FILE);
		fs.setName(name);
		fs.setPath(path);
		fs.setType(type);
		fs.setLinkid(linkId);
		dao.insertObject("insert", fs);
		return fs;
	}
	
	

	public Filestorage createAndSavePhoto(MultipartFile file, Integer linkId,String dir) {
		Filestorage fs = createFileStorage(null, null, Const.FILE_PHOTO, linkId);
		String name = fs.getId() + ".jpg" ;
		String urlPath = "/"+dir+"/" + name;
		String path = Const.basePath + urlPath;
		try {
			File targetFile = new File(path);
			if (!targetFile.exists())
				targetFile.mkdirs();
			file.transferTo(targetFile);
			fs.setPath(path);
			fs.setName(name);
			dao.updateById("updateById", fs);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return fs;
	}

	public Filestorage createAndSavePhoto(String fileType, InputStream stream,
			Integer linkId) {
		Filestorage fs = createFileStorage(null, null, Const.FILE_PHOTO, linkId);
		String name = fs.getId() + "." + fileType;
		String urlPath = "/image/" + name;
		String path = Const.basePath + urlPath;
		try {
			IOUtils.copy(stream, new FileOutputStream(path));
			fs.setPath(urlPath);
			fs.setName(name);
			dao.updateById("updateById", fs);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return fs;
	}

	public Filestorage createAndSavePhoto(String url, Integer LinkId) {
		InputStream stream = HttpClientUtil.getInputStream(url);
		String fileType = url.substring(url.lastIndexOf(".") + 1);
		return createAndSavePhoto(fileType, stream, LinkId);
	}

}
