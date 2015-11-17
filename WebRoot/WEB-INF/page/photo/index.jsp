
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

<!DOCTYPE HTML>
<html>
	<head>
		<base href="<%=basePath%>">
			<title>相册</title>
			<meta http-equiv="pragma" content="no-cache" />
			<meta http-equiv="cache-control" content="no-cache" />
			<meta http-equiv="expires" content="0" />
			<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
			<meta http-equiv="description" content="This is my page" />
			<jsp:include page="../base/head.jsp" />
			<script>
				var base='<%=path %>';
			</script>
	</head>

</head>
	<body>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<jsp:include page="upload.jsp"></jsp:include>
					<button type="button" data-toggle="modal" data-target="#galleryEditor"
						class="btn btn-info pull-right">添加相册</button>
					<div class="modal fade" id="galleryEditor" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel">
						<div class="modal-dialog modal-lg" role="document">
							<form action="<%=path%>/photo/gallery/save" method="post">
								<input type="hidden" name="id" id="id"></input>
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;
											</span>
										</button>
										<h4 class="modal-title" id="myModalLabel">添加相册</h4>
									</div>
									<div class="modal-body">
										<div class="form-group">
											<label for="exampleInputEmail1">标题</label>
											<input type="text" class="form-control" id="title"
												name="title" placeholder="title">
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">关闭</button>
										<button type="submit" class="btn btn-primary">保存</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<c:forEach var="gallery" items="${galleryList}" varStatus="s">
				<c:if test="${s.index%4==0}">
					<div class="row">
				</c:if>
				<div class="col-sm-6 col-md-3">
					<div class="thumbnail">
						<a href="photo/gallery/${gallery.id}">
							<c:if test="${empty gallery.filestorageid}">
								<img src="<%=path%>/image/default.jpg" alt="..." />
							</c:if>
							<c:if test="${!empty gallery.filestorageid}">
								<img src="<%=path%>/photo/${gallery.filestorageid}.jpg" alt="..." />
							</c:if>
						</a>
						<div class="caption">
							<center>
								<h3>${gallery.title}</h3>
							</center>
						</div>
					</div>
				</div>
				<c:if test="${s.index%4==3}">
		</div>
	</c:if>
	</c:forEach>
	</div>
	</body>
</html>

</html>
