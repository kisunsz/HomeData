package com.jiabo.bean;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class BtQueue {

	private LinkedList<String> movieUrl = new LinkedList<String>();

	private Map<String, List<BTBean>> map = new HashMap<String, List<BTBean>>();
	private Map<String, String> urlNameMap = new HashMap<String, String>();

	public BtQueue() {

	}

	public synchronized void push(String url) {
		movieUrl.push(url);
	}

	public synchronized String poll() {
		return movieUrl.poll();
	}

	public synchronized void addBTBean(String key, BTBean bean) {
		List<BTBean> list = map.get(key);
		if (list == null) {
			list = new ArrayList<BTBean>();
			map.put(key, list);
		}
		list.add(bean);
	}

	public boolean isEmpty() {
		return movieUrl.isEmpty();
	}

	public synchronized void addUrlNamePair(String url, String name) {
		urlNameMap.put(url, name);
	}

	public Map<String, List<BTBean>> geResult() {
		return map;
	}

	public Map<String, String> getUrlNameMap() {
		return urlNameMap;
	}

}
