package com.jiabo.services;

import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.io.IOUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.jiabo.dao.BaseDAO;
import com.jiabo.model.DoubanMovie;
import com.jiabo.util.Const;
import com.jiabo.util.HttpClientUtil;
import com.jiabo.util.ToolKit;

@Service
public class DoubanServices {

	@Autowired
	private BaseDAO dao;

	@Autowired
	private FileStorageServices fsServices;
	
	public JSONObject queryByName(String name) {
		String url = Const.DOUBAN_SEARCH;
		try {
			url = url + URLEncoder.encode(name, "utf-8");
			byte[] bs = IOUtils.toByteArray(new URL(url));
			String str = new String(bs, "utf-8");
			System.out.println(str);
			JSONObject obj = JSON.parseObject(str);
			JSONArray ary = obj.getJSONArray("subjects");
			if (ary == null || ary.size() == 0)
				return null;
			obj = ary.getJSONObject(0);
		//	obj = obj.getJSONObject("images");
			//String photo = obj.getString("large");
			return obj;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public DoubanMovie queryMovie(Integer id) {
		DoubanMovie movie = dao.selectOne("selectById", id, DoubanMovie.class);
		if (movie == null)
			movie = createMovie(id);
		return movie;
	}

	private DoubanMovie createMovie(Integer id) {
		DoubanMovie movie = new DoubanMovie();
		movie.setId(id);
		getBaseInfo(movie);
		getPhotos(movie);
		dao.insertObject("insert", movie);
		return movie;
	}

	private void getPhotos(DoubanMovie movie) {
		String urlStr = "http://movie.douban.com/subject/" + movie.getId()
				+ "/all_photos";
		List<String> photos = new ArrayList<String>();
		try {
			Document document = Jsoup.parse(HttpClientUtil.getHtml(urlStr));
			Elements list = document.select(".article .mod");
			for (Iterator<Element> it = list.iterator(); it.hasNext();) {
				Element div = it.next();
				Elements imgs = div.select("img");
				for (Iterator<Element> it2 = imgs.iterator(); it2.hasNext();) {
					Element img = it2.next();
					photos.add(img.attr("src"));
				}
			}
			for (String photo : photos) {
				if (photo == null || !photo.contains("albumicon"))
					continue;
				fsServices.createAndSavePhoto(photo, movie.getId());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private DoubanMovie getBaseInfo(DoubanMovie movie) {
		String url = Const.DOUBAN_MOVIE + movie.getId() + Const.DOUBAN_KEY;
		String str = ToolKit.readUrl(url);
		System.out.println(str);
		if (str == null)
			throw new RuntimeException("无法获取豆瓣数据");
		JSONObject obj = JSON.parseObject(str);
	//	JSONObject rating = obj.getJSONObject("rating");
		movie.setRating(obj.getString("average"));

		movie.setAlt(obj.getString("alt"));

		JSONArray genres = obj.getJSONArray("genres");
		movie.setGenres(parseAryToStr(genres));

		JSONArray countries = obj.getJSONArray("countries");
		movie.setCountries(parseAryToStr(countries));

		JSONArray casts = obj.getJSONArray("casts");
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < casts.size(); i++) {
			JSONObject o = casts.getJSONObject(i);
			sb.append(o.getString("name"));
			if (i != casts.size() - 1)
				sb.append(",");
		}
		movie.setCasts(sb.toString());

		movie.setYear(obj.getString("year"));
		movie.setSummary(obj.getString("summary"));
		return movie;
	}

	private String parseAryToStr(JSONArray ary) {
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < ary.size(); i++) {
			sb.append(ary.get(i));
			if (i != ary.size() - 1)
				sb.append(",");
		}
		return sb.toString();
	}
}
