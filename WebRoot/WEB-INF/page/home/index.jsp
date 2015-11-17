
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

			<title>My JSP 'index.jsp' starting page</title>

			<meta http-equiv="pragma" content="no-cache">
				<meta http-equiv="cache-control" content="no-cache">
					<meta http-equiv="expires" content="0">
						<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
							<meta http-equiv="description" content="This is my page">
								<jsp:include page="../base/head.jsp" />
	</head>

	<body>
		<div class="container-fluid">
			<div class="jumbotron">
				<h1>JIA BO ROOM</h1>
				<p>包括了电影，照片等各种资源</p>

			</div>
			<div class="row-fluid">
				<div class="col-md-12"></div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">最近添加</div>
				<div class="panel-body">Panel footer</div>
				<table class="table">
				</table>
			</div>
		</div>
	</body>
</html>
