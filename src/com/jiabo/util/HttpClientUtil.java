package com.jiabo.util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.HttpMethod;
import org.apache.commons.httpclient.methods.GetMethod;

/**
 * java 伪装成浏览器向网站发起请求
 *需要 commons.httpclient.jar和 commons-logging.jar
 */

/**
 * @author 鲁炬
 * 
 */
public class HttpClientUtil {

	public static HttpClient getClient() {
		HttpClient client = new HttpClient();
		return client;
	}

	public static String getHtml(String url) throws HttpException, IOException {
		return getHtml(url, 80, null, null, 0, null);
	}

	public static String getHtml(String url, int port, String encoding,
			String proxyHost, int proxyPort, String cookie)
			throws HttpException, IOException {
		HttpClient httpClient = getClient();
		String rest = null;
		if (proxyHost != null && proxyPort != 0)
			httpClient.getHostConfiguration().setProxy(proxyHost, proxyPort);
		HttpMethod method = new GetMethod(url);
		if (cookie != null && !"".equals(cookie.trim())) {
			method.addRequestHeader("Cookie", cookie);
		}
		method.addRequestHeader("User-Agent",
				"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727");
		// Mozilla/5.0 (Windows NT 6.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1
		httpClient.executeMethod(method);

		// 根据http头解析正确的字符集
		String header = method.getResponseHeader("Content-Type").getValue();
		if (header.contains("charset=")) {
			encoding = header.substring(
					header.indexOf("charset=") + "charset=".length(),
					header.length());
		}
		if (encoding == null)
			encoding = "UTF-8";
		rest = new String(method.getResponseBody(), encoding);
		method.releaseConnection();
		return rest;
	}

	public static InputStream getInputStream(String url) {
		HttpClient httpClient = getClient();
		HttpMethod method = new GetMethod(url);
		method.addRequestHeader("User-Agent",
				"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727");
		try {
			httpClient.executeMethod(method);
		} catch (HttpException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		// 根据http头解析正确的字符集
		InputStream stream = null;
		try {
			stream = method.getResponseBodyAsStream();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return stream;
	}

	public static void main(String[] args) throws HttpException, IOException {
		String url = "http://blog.csdn.net/xmlrequest/article/details/11519503";
		System.out.println(getHtml(url));
	}
}