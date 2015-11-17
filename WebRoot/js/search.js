$(function() {
	$(".searchBtn").on("click", function() {
		$(".result").html("正在查询，请稍等...");
		var query = $("#search").val();
		query = encodeURI(query);
		$.get(base + "/download/search?query=" + query, function(data) {
			$(".result").html(data);
		})
	});
	$("body").on("keyup", function() {
		if (event.keyCode == "13") {
			$('.searchBtn').click();
		}
	});
	$("form").on("keydown", function(e) {
		var e = e || event;
		var keyNum = e.which || e.keyCode;
		return keyNum == 13 ? false : true;
	})
});

function downloadCloud(obj) {
	$.getJSON($(obj).attr("url"), function(data) {
		alert(data);
	});
}

