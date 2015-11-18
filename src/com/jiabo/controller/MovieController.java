package com.jiabo.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jiabo.dao.BaseDAO;
import com.jiabo.model.DoubanMovie;
import com.jiabo.model.Img;
import com.jiabo.model.Movie;
import com.jiabo.services.DoubanServices;
import com.jiabo.services.MovieServices;

@Controller
public class MovieController extends BaseController {
	@Autowired
	private BaseDAO dao;

	@Autowired
	private MovieServices movieServices;

	@Autowired
	private DoubanServices doubanServices;

	@RequestMapping("/movie")
	public String index(HttpServletRequest request) {
		List<Movie> list = movieServices.getMovie();
		request.setAttribute("movieList", list);
		return "movie/index";
	}

	@RequestMapping("/movie/scanner")
	public String scanner() {
		movieServices.scanner(true);
		return "redirect:/movie";
	}

	@RequestMapping("/movie/rename")
	public String rename() {
		movieServices.renameMoive();
		return "redirect:/movie";
	}

	@RequestMapping("/movie/{id}")
	public String movie(HttpServletRequest request, @PathVariable Integer id) {
		Movie movie = dao.selectOne("selectById", id, Movie.class);
		if (movie == null)
			throw new RuntimeException("当前电影未找到");
		DoubanMovie douban = doubanServices.queryMovie(movie.getDoubanid());
		request.setAttribute("movie", movie);
		request.setAttribute("photos",
				dao.selectList("selectByLinkId", douban.getId(), Img.class));
		request.setAttribute("doubanMovie", douban);
		return "movie/detail";
	}

	@RequestMapping("/movie/video/{id}")
	@ResponseBody
	public void video(@PathVariable Integer id, HttpServletRequest req,
			HttpServletResponse resp) {
		Movie movie = dao.selectOne("selectById", id, Movie.class);
		resp.reset();
		long pos = 0;
		OutputStream os = null;
		FileInputStream is = null;
		try {
			File f = new File(movie.getPath());
			is = new FileInputStream(f);
			long fSize = f.length();
			byte xx[] = new byte[4096];
			resp.setHeader("Accept-Ranges", "bytes");
			resp.setHeader("Content-Length", fSize + "");
			resp.setContentType("application.x-msdownload");
			resp.setHeader("Content-Disposition", "attachment;filename="
					+ movie.getName());
			if (req.getHeader("Range") != null) {
				// 若客户端传来Range，说明之前下载了一部分，设置206状态(SC_PARTIAL_CONTENT)
				resp.setStatus(HttpServletResponse.SC_PARTIAL_CONTENT);
				pos = Long.parseLong(req.getHeader("Range")
						.replaceAll("bytes=", "").replaceAll("-", ""));
			}
			if (pos != 0) {
				String contentRange = new StringBuffer("bytes ")
						.append(new Long(pos).toString()).append("-")
						.append(new Long(fSize - 1).toString()).append("/")
						.append(new Long(fSize).toString()).toString();
				resp.setHeader("Content-Range", contentRange);
				System.out.println("Content-Range=" + contentRange);
				// 略过已经传输过的字节
				is.skip(pos);
			}
			os = resp.getOutputStream();
			boolean all = false;
			while (!all) {
				int n = is.read(xx);
				if (n != -1) {
					os.write(xx, 0, n);
				} else {
					all = true;
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
			return;
		} finally {
			if (is != null)
				try {
					is.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			if (os != null)
				try {
					os.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
	}

}
