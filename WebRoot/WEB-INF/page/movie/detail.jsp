
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://"
+ request.getServerName() + ":" + request.getServerPort()
+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

			<title>My JSP 'detail.jsp' starting page</title>

			<meta http-equiv="pragma" content="no-cache">
				<meta http-equiv="cache-control" content="no-cache">
					<meta http-equiv="expires" content="0">
						<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
							<meta http-equiv="description" content="This is my page">
								<jsp:include page="../base/head.jsp" />
								<script src="<%=path%>/js/movie.js"></script>
								<script type="text/javascript">
									var base='<%=path%>';
								</script>

								<style type="text/css">
									.photos {
									margin: 10px 0;
									}

									.photos img {
									position: relative;
									display: block;
									margin: 5px 5px;
									float: left;
									}
								</style>
	</head>
	<body>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-2">
					<img src="<%=path %>${movie.photo.path}" alt="...">
				</div>
				<div class="col-md-10">
					<h1>${movie.name}</h1>
					<h4>主演：${doubanMovie.casts }</h4>
					<h4>
						评分：
						<span class="label label-warning">${doubanMovie.rating }</span>
					</h4>
					<h4>类型：${doubanMovie.genres }</h4>
					<h4>国家：${doubanMovie.countries }</h4>
					<h4>年份：${doubanMovie.year }</h4>
					<h4>
						豆瓣连接:
						<a href="${doubanMovie.alt }" target="_black">
							${doubanMovie.alt }</a>
					</h4>
					<h4>
						简介：
						<div class="alert alert-info" role="alert">
							<strong>${doubanMovie.summary}</strong>
						</div>
					</h4>
					<div class="btn-group">
						<a onclick="runCmd('${filestorage.path}');return false;" href="#"
							class="btn btn-primary" role="button">本地播放</a>
						<button type="button" class="btn btn-info"
							onclick="playVideo('${movie.filestorageid}')" data-target="#myModal">在线播放</button>
						<a href="movie/video/${movie.id}" class="btn btn-default" role="button">下载电影</a>
					</div>
				</div>
			</div>
			<div class="modal fade" id="video" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<jsp:include page="video.jsp"></jsp:include>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12 photos">
					<c:forEach var="photo" items="${photos}" varStatus="s">
						<img alt="" src="<%=basePath%>${photo.path}">
					</c:forEach>
				</div>
			</div>
		</div>
	</body>
</html>
