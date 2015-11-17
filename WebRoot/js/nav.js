function navClick(obj,url){
	$(".navbar-nav li").removeClass("active");
	$(obj).parent().addClass("active");
	$("#content").attr("src",url);
}


$(function(){
	$("#content").height($(document).height()-50);
})