function del(id){
	$("#hidden").val(id);
	var action=$("form").attr("action");
	$("form").attr(action+"/del").submit();
}

function update(){
	$("form").submit();
}

function updateRule(url){
	$.post(url,function(data){
		$(".modal-content").html(data);
		$("#myModal").modal();
	})
	
}

function newRule(){
	$("form").find("input").val("");
	$("#myModal").modal();
}


