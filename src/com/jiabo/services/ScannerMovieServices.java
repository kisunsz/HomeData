package com.jiabo.services;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.params.HttpMethodParams;
import org.apache.commons.io.IOUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.jiabo.bean.BtQueue;
import com.jiabo.util.Const;
import com.jiabo.util.HttpClientUtil;

public class ScannerMovieServices {

	public static String baseUrl = "http://www.bttiantang.com";

	private BtQueue queue;

	public ScannerMovieServices(BtQueue queue) {
		this.queue = queue;
	}

	public void scanner(String query) {
		queryMovie(query);
		final AtomicInteger num = new AtomicInteger(0);
		ThreadPoolExecutor executor = new ThreadPoolExecutor(10, 10, 0,
				TimeUnit.SECONDS, new LinkedBlockingQueue<Runnable>()) {
			@Override
			protected void beforeExecute(Thread t, Runnable r) {
				num.incrementAndGet();
			}

			@Override
			protected void afterExecute(Runnable r, Throwable t) {
				num.decrementAndGet();
			}

		};
		while (!queue.isEmpty()) {
			executor.execute(new ScannerBTFileServices(queue, queue.poll()));
		}
		do {
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		} while (num.get() != 0);
		System.out.println("query finished");
	}

	private void queryMovie(String query) {
		query = encodeChinese(query);
		String url = "http://www.bttiantang.com/s.php?q="
				+ query
				+ "&sitesearch=www.bttiantang.com&domains=bttiantang.com&hl=zh-CN&ie=UTF-8&oe=UTF-8";
		try {
			Document dom = Jsoup.parse(HttpClientUtil.getInputStream(url),
					null, baseUrl);
			Elements eles = dom.select(".mb").select(".item");
			for (Iterator<Element> it = eles.iterator(); it.hasNext();) {
				Element ele = it.next();
				Element a = ele.select(".tt").select("a").first();
				if (a == null)
					continue;
				String uri = a.attr("href");
				String name = ele.html();
				System.out.println("MOVIE: " + baseUrl + uri);
				queue.push(baseUrl + uri);
				queue.addUrlNamePair(baseUrl + uri, name);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private String encodeChinese(String query) {
		try {
			query = URLEncoder.encode(query, "utf-8");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		return query;
	}

	public static void download(String downUrl, HttpServletResponse response) {
		if (downUrl == null)
			return;
		String url = handleUrl(downUrl);
		try {
			PostMethod postMethod = getPostMethod(url);
			downloadFileResponseHandle(response, postMethod);
			postMethod.releaseConnection();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private static void downloadFileResponseHandle(
			HttpServletResponse response, PostMethod postMethod)
			throws UnsupportedEncodingException, IOException {
		System.out.println(postMethod.getStatusLine());
		Header size = postMethod.getResponseHeader("Content-Length");
		String fileName = getFileName(postMethod);
		response.setHeader("Content-Disposition", "attachment;filename="
				+ new String(fileName.getBytes(), "iso-8859-1"));
		response.setHeader("Content-Length", size.getValue());
		System.out.println(fileName);
		InputStream stream = postMethod.getResponseBodyAsStream();
		IOUtils.copy(stream, response.getOutputStream());
	}

	private static String getFileName(PostMethod postMethod) {
		Header head = postMethod.getResponseHeader("Content-Disposition");
		String fileName = "" + System.currentTimeMillis() + ".torrent";
		if (head != null) {
			String content = head.getValue();
			System.out.println(content);
			String[] token = content.split("\"");
			if (token.length > 1) {
				fileName = token[1];
			}
		}
		return fileName;
	}

	private static PostMethod getPostMethod(String url) throws IOException {
		Document dom = Jsoup.parse(HttpClientUtil.getInputStream(url), null,
				baseUrl);
		Element form = dom.select("form").first();
		String u = baseUrl + form.attr("action");
		HttpClient client = new HttpClient();
		String action = null;
		String id = null;
		String uhash = null;

		for (Iterator<Element> it = form.select("input").iterator(); it
				.hasNext();) {
			Element ele = it.next();
			String name = ele.attr("name");
			if ("action".equals(name))
				action = ele.attr("value");
			if ("id".equals(name))
				id = ele.attr("value");
			if ("uhash".equals(name))
				uhash = ele.attr("value");

		}
		PostMethod postMethod = new PostMethod(u);
		postMethod.getParams().setParameter(
				HttpMethodParams.HTTP_ELEMENT_CHARSET, "UTF-8");
		// 填入各个表单域的值
		NameValuePair[] data = { new NameValuePair("action", action),
				new NameValuePair("id", id), new NameValuePair("uhash", uhash) };
		// 将表单的值放入postMethod中
		postMethod.setRequestBody(data);
		// 执行postMethod
		try {
			client.executeMethod(postMethod);
		} catch (HttpException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return postMethod;
	}

	private static String handleUrl(String downUrl) {
		String url = null;
		try {
			String[] token = downUrl.split("\\?");
			String[] token2 = token[1].split("\\&");
			token2[0] = "n="
					+ URLEncoder.encode(token2[0].substring(2), "utf-8");
			url = token[0] + "?";
			for (String st : token2) {
				url += st + "&";
			}
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		return url;
	}

	public static String downloadCloud(String downUrl) {
		if (downUrl == null)
			return "{result:1}";
		String url = handleUrl(downUrl);
		try {
			PostMethod postMethod = getPostMethod(url);
			String fileName = getFileName(postMethod);
			String path = Const.basePath + "/bt/" + fileName;
			FileOutputStream fos = new FileOutputStream(path);
			IOUtils.copy(postMethod.getResponseBodyAsStream(), fos);
			fos.flush();
			fos.close();
			postMethod.releaseConnection();
			return getPyexecute(path, "d:/video/电影/");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "{result:1}";
	}

	private static String getPyexecute(String btFile, String stroage) {
		try {
			stroage = URLEncoder.encode(stroage, "utf-8");
			btFile = URLEncoder.encode(btFile, "utf-8");
			GetMethod m = new GetMethod("http://127.0.0.1:8000/xl/?path="
					+ stroage + "&file=" + btFile);
			HttpClient client = new HttpClient();
			client.executeMethod(m);
			m.releaseConnection();
			return new String(m.getResponseBody());
		} catch (HttpException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "{result:1}";
	}

	public static void main(String[] args) {
	}

}
