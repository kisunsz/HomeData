function blogClick(type){
	var lis=$(".nav-stacked").find("li");
	lis.removeClass("active");
	lis.eq(type-1).addClass("active");
	$(".blog").html("正在查询，请稍等...");
	$.get(base+"/blog/category/"+type,function(data){
		$(".blog").html(data);
	})
}

function newBlog(){
	$("input[name=id]").val("");
	$("input[name=title]").val("");
	$("input[name=type][value=3]").attr("checked",true);
	editor.html("");
	$('#blogEditor').modal({
	  keyboard: false,
	  backdrop:false
	})
}

$(function(){
	$('#myModal').on('hidden.bs.modal', function (e) {
 	 	$("form").submit();
	});
	blogClick(1);
})

function editBlog(id){
	$.getJSON(base+"/blog/json/"+id,function(data){
		$("input[name=id]").val(data.id);
		$("input[name=title]").val(data.title);
		$("input[name=type][value="+data.type+"]").attr("checked",true);
		//$("#editor").text(data.context);
		editor.html(data.context);
		$('#blogEditor').modal({
		  keyboard: false
		})
	})
}
