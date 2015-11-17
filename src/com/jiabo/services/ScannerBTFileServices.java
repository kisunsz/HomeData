package com.jiabo.services;

import java.util.Iterator;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.jiabo.bean.BTBean;
import com.jiabo.bean.BtQueue;
import com.jiabo.util.EscapeUnescapeUtil;
import com.jiabo.util.HttpClientUtil;

public class ScannerBTFileServices implements Runnable {
	private BtQueue queue;
	private String url;

	public ScannerBTFileServices(BtQueue queue, String url) {
		this.queue = queue;
		this.url = url;
	}

	@Override
	public void run() {
		queryMovieBTFile();
	}

	private void queryMovieBTFile() {
		try {
			System.out.println(Thread.currentThread().getName()+":START");
			Document doc = Jsoup.parse(HttpClientUtil.getInputStream(url),
					null, ScannerMovieServices.baseUrl);
			Elements eles = doc.select(".torrent");
			for (Iterator<Element> it = eles.iterator(); it.hasNext();) {
				Element ele = it.next();
				Element a = ele.parent();
				String downUrl = a.attr("href");
				String fileName = ele.text();
				System.out.println("downLoad: " + ScannerMovieServices.baseUrl
						+ downUrl);
				BTBean bean = new BTBean();
				String downloadUrl = ScannerMovieServices.baseUrl + downUrl;
				bean.setDownloadUrl(EscapeUnescapeUtil.escape(downloadUrl));
				bean.setFileName(fileName);
				queue.addBTBean(url, bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
