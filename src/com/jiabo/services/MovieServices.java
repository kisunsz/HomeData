package com.jiabo.services;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.jiabo.dao.BaseDAO;
import com.jiabo.model.Filestorage;
import com.jiabo.model.Movie;
import com.jiabo.util.Const;
import com.jiabo.util.ToolKit;

@Service
public class MovieServices {

	@Autowired
	private BaseDAO dao;

	@Autowired
	private FileStorageServices fsServices;

	public List<Movie> getMovie() {
		List<Movie> list = dao.selectList("selectAll", null, Movie.class);
		return list;
	}

	public void renameMoive() {
		File dir = new File(Const.basePath + "video/电影");
		File[] files = dir.listFiles();
		rename(files);
	}

	public void scanner(boolean adding) {
		if (!adding)
			deleteMovie();
		File dir = new File(Const.basePath + "video/电影");
		File[] files = dir.listFiles();
		List<File> fList = new ArrayList<File>();
		for (File f : files) {
			fList.add(f);
		}
		if (adding) {
			deleteNoExist(fList);
			filterExistMovie(fList);
		}

		for (File movieFile : fList) {
			if (movieFile.isDirectory()) {
				handleDirMovie(movieFile);
			} else {
				handleMovie(movieFile);
			}
		}
	}

	private void rename(File[] files) {
		List<Pattern> list = new ArrayList<Pattern>();
		for (int i = 2001; i < 2017; i++) {
			list.add(Pattern.compile("(\\S*)\\." + i + "\\.\\S*"));
		}
		for (File f : files) {
			renameByReg(list, f);
		}
	}

	private void renameByReg(List<Pattern> patterns, File f) {
		for (Pattern p : patterns) {
			String name = f.getName();
			Matcher m = p.matcher(name);
			if (m.find()) {
				String newName = m.group(1);
				if (f.isDirectory()) {
					f.renameTo(new File(Const.basePath + "video/电影/" + newName));
				} else {
					String ext = name.substring(name.lastIndexOf("."));
					f.renameTo(new File(Const.basePath + "video/电影/" + newName
							+ ext));
				}

			}
		}
	}

	public static boolean isChinese(char c) {

		Character.UnicodeBlock ub = Character.UnicodeBlock.of(c);

		if (ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS

		|| ub == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS

		|| ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A

		|| ub == Character.UnicodeBlock.GENERAL_PUNCTUATION

		|| ub == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION

		|| ub == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS) {

			return true;

		}

		return false;

	}

	private void deleteNoExist(List<File> fList) {
		List<Movie> list = getMovie();
		for (Iterator<Movie> it = list.iterator(); it.hasNext();) {
			Movie movie = it.next();
			File f = findInList(fList, movie);
			if (f == null) {
				if (movie.getPhoto() != null)
					dao.deleteById("deleteById", movie.getPhoto());
				dao.deleteById("deleteById", movie);
			}
		}
	}

	private File findInList(List<File> list, Movie movie) {
		for (File file : list) {
			if (file.getName().startsWith(movie.getName()))
				return file;
		}
		return null;
	}

	private void filterExistMovie(List<File> fList) {
		List<Movie> list = getMovie();
		for (Iterator<File> it = fList.iterator(); it.hasNext();) {
			File file = it.next();
			for (Movie m : list) {
				if (file.isDirectory()) {
					if (m.getName().equals(file.getName())) {
						it.remove();
						break;
					}
				} else {
					String name = file.getName().substring(0,
							file.getName().lastIndexOf("."));
					System.out.println(name);
					if (name.equals(m.getName())) {
						it.remove();
						break;
					}
				}
			}
		}
	}

	private void handleMovie(File movieFile) {
		if (!ToolKit.isVideo(movieFile))
			return;
		Movie movie = createMovie(movieFile);
		queryByDouban(movie);
		dao.insertObject("insert", movie);
	}

	private void queryByDouban(Movie movie) {
		String url = Const.DOUBAN_SEARCH;
		try {
			url = url + URLEncoder.encode(movie.getName(), "utf-8");
			byte[] bs = IOUtils.toByteArray(new URL(url));
			String str = new String(bs, "utf-8");
			System.out.println(str);
			JSONObject obj = JSON.parseObject(str);
			if (movie.getPhoto() != null)
				return;
			JSONArray ary = obj.getJSONArray("subjects");
			if (ary == null || ary.size() == 0)
				return;
			obj = ary.getJSONObject(0);
			movie.setDoubanid(obj.getInteger("id"));
			obj = obj.getJSONObject("images");
			String photo = obj.getString("large");
			Filestorage fs = fsServices.createAndSavePhoto(photo, null);
			movie.setPhoto(fs);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private Movie createMovie(File movieFile) {
		Movie movie = new Movie();
		Filestorage fs = fsServices.createFileStorage(movieFile.getPath(),
				movieFile.getName(), Const.FILE_MOVIE, null);
		String name = movieFile.getName().substring(0,
				movieFile.getName().lastIndexOf("."));
		movie.setName(name);
		movie.setFilestorageid(fs.getId());
		return movie;
	}

	private void handleDirMovie(File movieFile) {
		Movie movie = new Movie();
		movie.setName(movieFile.getName());
		File video = null;
		File[] movieFileList = movieFile.listFiles();
		for (File file : movieFileList) {
			if (file.isDirectory())
				continue;
			if (ToolKit.isVideo(file)
					&& (video == null || file.length() > video.length()))
				video = file;
		}
		if (video == null)
			return;

		Filestorage fs = fsServices.createFileStorage(video.getPath(),
				video.getName(), Const.FILE_PHOTO, null);
		movie.setFilestorageid(fs.getId());
		queryByDouban(movie);
		dao.insertObject("insert", movie);
	}

	private void deleteMovie() {
		dao.deleteAll("deleteAll", Filestorage.class);
		dao.deleteAll("deleteAll", Movie.class);
	}

	public String readNFO(File file) {
		try {
			String content = IOUtils.toString(new FileInputStream(file));
			Pattern reg = Pattern.compile("http://www.imdb.com/title/*/");
			Matcher m = reg.matcher(content);
			if (m.find()) {
				String url = m.group();
				return url;
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}
