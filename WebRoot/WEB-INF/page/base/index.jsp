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

<title>HomeData</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!-- <link rel="stylesheet" type="text/css" href="styles.css"> -->
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="<%=path%>/css/bootstrap.min.css" />

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="<%=path%>/css/bootstrap-theme.min.css" />

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="<%=path%>/js/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="<%=path%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/nav.js"></script>
</head>

<body>
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand"
				onclick="navClick(this,'<c:url value="/"/>home');return false;"
				href="#">HOME</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a
					onclick="navClick(this,'<c:url value="/"/>movie');return false;"
					href="#">电影<span class="sr-only">(current)</span></a></li>
				<li><a
					onclick="navClick(this,'<c:url value="/"/>tv');return false;"
					href="#">电视剧<span class="sr-only">(current)</span></a></li>
				<li><a
					onclick="navClick(this,'<c:url value="/"/>photo');return false;"
					href="#">照片</a></li>
				<li><a
					onclick="navClick(this,'<c:url value="/"/>cost');return false;"
					href="#">收支</a></li>
				<li><a
					onclick="navClick(this,'<c:url value="/"/>download');return false;"
					href="#">下载电影</a></li>
				<li><a
					onclick="navClick(this,'<c:url value="/"/>blog');return false;"
					href="#">博客</a></li>
				<!--  <li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Dropdown <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">Separated link</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">One more separated link</a></li>
					</ul></li>-->
			</ul>
			<form class="navbar-form navbar-right" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
		</div>
		<!-- /.navbar-collapse -->
	</div>

		<!-- /.container-fluid -->
		<iframe id="content" style="border:0;width:100%;height:auto;" scrolling="yes" 
			src="home"></iframe>
	</nav>
</body>
</html>
