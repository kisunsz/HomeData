
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String
path = request.getContextPath();
String basePath = request.getScheme() +
"://"
+ request.getServerName() + ":" + request.getServerPort()
+ path +
"/";
%>

<!DOCTYPE HTML>
<html>
	<head>
		<base href="<%=basePath%>">
			<title>照片</title>
			<meta http-equiv="pragma" content="no-cache" />
			<meta http-equiv="cache-control" content="no-cache" />
			<meta http-equiv="expires" content="0" />
			<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
			<meta http-equiv="description" content="This is my page" />
			<!-- <link rel="stylesheet" type="text/css" href="styles.css"> -->
			<!-- 新 Bootstrap 核心 CSS 文件 -->
			<link rel="stylesheet" href="css/demo.css" />
			<link rel="stylesheet" href="css/normalize.css" />
			<link rel="stylesheet" href="css/component.css" />
			<link rel="stylesheet" href="css/photo.css" />
			<jsp:include page="../base/head.jsp" />
			<script src="<%=path%>/js/photo.js"></script>

			<link rel="stylesheet" href="css/smoothslides.theme.css" />
			<script type="text/javascript" src="<%=path%>/js/smoothslides.js"></script>

			<script>
				var base='<%=path%>';
			</script>
	</head>

</head>
	<body>
		<div class="container-fluid">
			<div class="photo row">
				<div class="col-md-3 left-title">
					<h3></h3>
					<p></p>
					<button type="button" class="btn btn-lg prev">
						<span class="glyphicon glyphicon-backward"></span>
					</button>
					<button type="button" class="btn btn-lg autoPlay">
						<span class="glyphicon glyphicon-pause"></span>
					</button>
					<button type="button" class="btn btn-lg next">
						<span class="glyphicon glyphicon-forward"></span>
					</button>
				</div>
				<div class="col-md-7">
					<div class="smoothslide">
					</div>
				</div>
				<div class="col-md-1 right-title">

				</div>

			</div>
			<div class="grid">
				<c:forEach var="p" items="${photoList}" varStatus="s">
					<div class="grid-item">
						<figure class="effect-chico">
							<img index="${s.index}" title="${p.title}" date="${p.updatetime}"
								src="
								<%=path%>/photo/${p.zipfilestorageid}.jpg" alt="<%=path%>/photo/${p.filestorageid}.jpg" />
							<figcaption>
								<h2></h2>
								<p>
									<span>${p.title}</span>
								</p>
								<a href="">View more</a>
							</figcaption>
						</figure>
					</div>
				</c:forEach>
			</div>
		</div>
	</body>
</html>

</html>
