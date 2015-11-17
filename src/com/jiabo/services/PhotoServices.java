package com.jiabo.services;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.jiabo.dao.BaseDAO;
import com.jiabo.model.Filestorage;
import com.jiabo.model.Photo;
import com.jiabo.util.Const;
import com.jiabo.util.ImageZipUtil;

@Service
public class PhotoServices {

	@Autowired
	private BaseDAO dao;

	@Autowired
	private FileStorageServices fsServices;

	public void uploadPhoto(MultipartFile[] files, Integer galleryid) {
		for (MultipartFile file : files) {
			Filestorage fs = fsServices.createAndSavePhoto(file, null,"photo");
			Photo photo = new Photo();
			photo.setFilestorageid(fs.getId());
			photo.setGalleryid(galleryid);
			photo.setUpdatetime(new Date());
			photo.setTitle(fs.getName());
			Filestorage zip = fsServices.createFileStorage(null, null, Const.FILE_PHOTO, null);
			photo.setZipfilestorageid(zip.getId());
			String zipPath=Const.basePath+"/photo/"+zip.getId()+".jpg";
			ImageZipUtil.zip(fs.getPath(),zipPath);
			zip.setPath(zipPath);
			zip.setName(zip.getId()+".jpg");
			dao.insertObject("insert", photo);
			dao.updateById("updateById", zip);
		}
	}
}
