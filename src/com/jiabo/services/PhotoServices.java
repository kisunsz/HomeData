package com.jiabo.services;

import java.util.Date;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.jiabo.bean.ZImgResult;
import com.jiabo.dao.BaseDAO;
import com.jiabo.model.Photo;

@Service
public class PhotoServices extends BaseServices {

	public void uploadPhoto(MultipartFile[] files, Integer galleryid) {
		for (MultipartFile file : files) {
			try {
				Photo photo = createPhoto(file, galleryid);
				ZImgResult result = zImgService.upload(
						file.getInputStream(),
						file.getOriginalFilename()
								.substring(
										file.getOriginalFilename().lastIndexOf(
												".") + 1));
				if (result.isSuccess()) {
					photo.setPhoto(result.getMd5());
				}
				dao.insertObject(BaseDAO.SQL_INSERT, photo);
			} catch (Exception e) {
				e.printStackTrace();
				continue;
			}
		}
	}

	private Photo createPhoto(MultipartFile file, Integer galleryid) {
		Photo photo = new Photo();
		photo.setGalleryid(galleryid);
		photo.setTitle(file.getOriginalFilename());
		photo.setUpdatetime(new Date());
		return photo;
	}
}
