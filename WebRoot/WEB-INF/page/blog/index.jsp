
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath =
request.getScheme() + "://"
+ request.getServerName() + ":" +
request.getServerPort()
+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

			<title>博客</title>

			<meta http-equiv="pragma" content="no-cache" />
			<meta http-equiv="cache-control" content="no-cache" />
			<meta http-equiv="expires" content="0" />
			<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
			<meta http-equiv="description" content="This is my page" />
			<jsp:include page="../base/head.jsp" />
			<script src="<%=path%>/js/blog.js"></script>
			<script>
				var base='<%=path %>';
			</script>
	</head>

	<body style="background-color:#f6f9fa">
		<div class="container-fluid" style="margin:20px 0 0 0">
			<div class="row">
				<div class="col-md-2">
					<ul class="nav nav-pills nav-stacked">
						<li role="presentation" class="active">
							<a href="#" onclick="blogClick(1);return false;">IT那些事</a>
						</li>
						<li role="presentation">
							<a href="#" onclick="blogClick(2);return false;">生活</a>
						</li>
						<li role="presentation">
							<a href="#" onclick="blogClick(3);return false;">心情</a>
						</li>
					</ul>
					<jsp:include page="editor.jsp" />
				</div>
				<div class="col-md-6">

					<div class="row">
						<div class="col-md-12 blog">
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
