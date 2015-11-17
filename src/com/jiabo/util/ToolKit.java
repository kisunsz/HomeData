package com.jiabo.util;

import java.io.File;
import java.net.URL;

import org.apache.commons.io.IOUtils;

public class ToolKit {

	public static boolean isPhoto(File file) {
		if (file == null)
			return false;
		if (file.isDirectory())
			return false;
		String name = file.getName();
		if (name == null)
			return false;
		return name.endsWith(".jpg") || name.endsWith(".jpeg")
				|| name.endsWith(".png") || name.endsWith(".gif");
	}

	public static boolean isVideo(File file) {
		if (file == null)
			return false;
		if (file.isDirectory())
			return false;
		String name = file.getName();
		if (name == null)
			return false;
		return name.endsWith(".avi") || name.endsWith(".mkv")
				|| name.endsWith(".mp4") || name.endsWith(".rmvb");
	}

	public static String readUrl(String urlStr) {
		try {
			URL url = new URL(urlStr);
			byte[] bs = IOUtils.toByteArray(url);
			return new String(bs, "utf-8");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;

	}

	public static String getFileExt(String fileName) {
		if (fileName == null || "".equals(fileName.trim()))
			return null;
		return fileName.substring(fileName.lastIndexOf(".") + 1);
	}

}
