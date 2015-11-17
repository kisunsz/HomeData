package com.jiabo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.jiabo.model.Filestorage;

@Service
public class BaseServices {

	@Autowired
	private FileStorageServices fsServices;

	public Filestorage uploadPhoto(MultipartFile file) {
		Filestorage fs = fsServices.createAndSavePhoto(file, null,"upload");
		return fs;
	}
}
