
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String
path = request.getContextPath();
String basePath =
request.getScheme() +
"://"
+ request.getServerName() + ":" +
request.getServerPort()
+ path +
"/";
%>
<script src="<%=path%>/uploadify/jquery.uploadify.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="<%=path%>/uploadify/uploadify.css" />
<button type="button" data-toggle="modal" onclick="uploadPhoto()"
	class="btn btn-info pull-right">上传照片</button>
<div class="modal fade" id="uploadPhoto" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<form class="form-horizontal">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;
						</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">上传照片</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label for="exampleInputEmail1">请选择相册</label>
						<select id="gallery" name="gallery" class="form-control">
							<c:forEach var="g" items="${galleryList}">
								<option value="${g.id}">${g.title}</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<center>
							<div id="queue"></div>
							<input id="file_upload" class="pull-right" name="file_upload"
								type="file" multiple="true">
							</input>
						</center>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>

<script type="text/javascript">
	$(function() {
	$('#file_upload').uploadify({
	'swf' :
	'<%=path %>'+'/uploadify/uploadify.swf',
	'uploader' :
	'<%=path
	%>'+'/photo/upload',
	'buttonText':'上传',
	'onUploadStart' : function(file) {
	$("#file_upload").uploadify("settings", "formData", {'gallery':$("#gallery").val()});
	}
	});
	});
	
	function uploadPhoto(){
		$('#uploadPhoto').modal({
		  keyboard: false,
		  backdrop:false
		})
	}
</script>