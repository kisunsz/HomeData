$(function() {
	$(".search").on("click", function() {
		$(".result").html("<div>正在加载，请稍等。。。</div>");
		var query = encodeURI($(".searchText").val(), "UTF-8");
		$.getJSON(basePath + "/download/search?query=" + query, function(data) {
			$(".result").html(data);
		});
	});
});

