<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>login</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="<%=basePath%>/js/jquery.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/login.js"></script>
<script type="text/javascript">
	
</script>
</head>

<body>
	<div class="container">
		<c:if test="${!empty msg }">
			<div class="alert alert-danger" role="alert">${msg}</div>
		</c:if>
		<form action="<%=path%>/login" method="post">
			<input type="hidden" name="url" value=${url }/>
			<div class="form-group">
				<label for="exampleInputEmail1">Email address</label> <input
					name="email" type="email" class="form-control"
					id="exampleInputEmail1" placeholder="Email">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Password</label> <input
					name="password" type="password" class="form-control"
					id="exampleInputPassword1" placeholder="Password">
			</div>
			<button type="submit" class="btn btn-default">登录</button>
		</form>
	</div>
</body>
</html>
