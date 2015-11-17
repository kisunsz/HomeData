<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<p id="objAPlayer"></p>
<script type="text/javascript">
	var startTips = "请点击播放按钮开始演示。"

	if (navigator.mimeTypes["application/x-thunder-aplayer"] != null) {
		objAPlayer.innerHTML = '<embed id="APlayer" type="application/x-thunder-aplayer" width="416" height="239" clsid="{A9332148-C691-4B9D-91FC-B9C461DBE9DD}" Event_OnStateChanged="OnStateChanged" Event_OnOpenSucceeded="OnOpenSucceeded" Event_OnDownloadCodec="OnDownloadCodec"</embed>';
		txtTime.innerHTML = startTips;
	} else {
		try {
			var thePlayer = new ActiveXObject("APlayer3.Player");
			delete thePlayer;
			objAPlayer.innerHTML = '<object id="APlayer" width="416" height="239" classid="CLSID:A9332148-C691-4B9D-91FC-B9C461DBE9DD" VIEWASTEXT></object>';
			txtTime.innerHTML = startTips;
		} catch (e1) {
			objAPlayer.innerHTML = "无法演示, APlayer 未安装! </br>请下载 <a href='http://aplayer.open.xunlei.com/APlayerSDK.zip'>APlayerSDK</a> 解压后，使用其中的 install.bat 安装。</br></br></br>";
			btnPlay.style.display = "none";
			btnStop.style.display = "none";
		}
	}

	var EventUtil = {
		addHandler : function(element, type, handler) {
			if (element.addEventListener) {
				element.addEventListener(type, handler, false);
			} else {
				element.attachEvent("on" + type, handler);
			}
		},

		removeHandler : function(element, type, handler) {
			if (element.removeEventListener) {
				element.removeEventListener(type, handler, false);
			} else {
				element.detachEvent("on" + type, handler);
			}
		}
	};

	var player = null;
	var position = null;
	var duration = null;

	var loadhandler = function() {
		// play();
	}

	var unloadhandler = function() {
		if (player != null) {
			player.Close();
		}
	}

	EventUtil.addHandler(window, "load", loadhandler);
	EventUtil.addHandler(window, "unload", unloadhandler);

	function play() {
		player = document.getElementById("APlayer");

		if (player != null) {
			if (player.GetState() == 0) {

				player.setConfig(201, "3");

				txtTime.innerHTML = "正在打开..."
				player
						.open("http://f1.flv.kankan.xunlei.com/data/cdn_transfer/demo.hflv");
			}
		}
	}

	function stop() {
		if (player != null) {
			if (player.GetState() != 0) {
				player.Close();
			}
		}
	}

	function MillisecondToText(ms) {
		var s = ms / 1000;
		ms = ms % 1000;
		var h = s / 3600;
		s = s % 3600;
		var m = s / 60;
		s = s % 60;

		h = Math.floor(h);
		m = Math.floor(m);
		s = Math.floor(s);

		var text = "";
		if (h > 0 && h < 10)
			text = "0" + h + ":";

		if (m >= 0 && m < 10)
			text = text + "0" + m + ":";
		else
			text = text + m + ":";

		if (s >= 0 && s < 10)
			text = text + "0" + s;
		else
			text = text + s;
		return text;
	}

	function OnStateChanged(oldState, newState) {
	}

	function OnOpenSucceeded() {
		var nDuration = player.GetDuration();
		duration = MillisecondToText(nDuration);
	}

	function OnDownloadCodec(strCodecPath) {
		alert("缺少解码器:" + strCodecPath + ", 请下载完整解码包解压出该解码器补全");
		player.SetConfig(19, "1");
	}

	function UpdateTime() {
		if (player != null) {
			if (player.GetState() == 5) {
				position = player.GetPosition();
				position = MillisecondToText(position);
				var p = player.GetBufferProgress();

				if (p == -1)
					txtTime.innerHTML = position + "/" + duration;
				else
					txtTime.innerHTML = position + "/" + duration + " (正在缓冲..."
							+ p + "%)";
			} else {
				var nResult = player.GetConfig(7);
				if (nResult != 0 && nResult != 1)
					txtTime.innerHTML = "播放失败, 错误码 = " + nResult;
				else
					txtTime.innerHTML = "";
			}
		}
		setTimeout(function() {
			UpdateTime();
		}, 1000);
	}

	UpdateTime();
</script>

