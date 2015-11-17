function query(id) {
	var url = basePath + "movie/query/" + id;
	var movieName = $("#" + id).find("input").val();
	$.post(url, {
		movieName : movieName
	}, function(data) {
		$("#" + id).find("div").append(data);
	});
}

function runCmd(path) {
	path=encodeURI("video/电影/蝙蝠侠：黑暗骑士.mp4");
	window.open("file:///192.168.2.63/"+path);
}

function playVideo(id) {
	$.getJSON(base + "/movie/play/" + id, function(data) {
		$("#video").modal();
		player = document.getElementById("Player_FF");
		if (player != null) {
			if (player.GetState() == 0) {
				player.setConfig(201, "3");
				txtTime.innerHTML = "正在打开...";
				player.open(data.path);
			}
		}
	});
}

$(function() {
	$(".photos1").find("img").hover(function() {
		$(this).animate({
			left : '-=50px',
			top : '-=50px',
			height : '+=50px',
			width : '+=100px'
		});
	}, function() {
		$(this).animate({
			left : '+=50px',
			top : '+=50px',
			height : '-=50px',
			width : '-=100px'
		});
	});

});
