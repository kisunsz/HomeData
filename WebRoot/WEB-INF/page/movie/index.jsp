
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

<title>movie</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<jsp:include page="../base/head.jsp" />
<script src="<%=basePath%>/js/movie.js"></script>
<link rel="stylesheet" type="text/css" href="css/movie.css"/>
<script type="text/javascript">
	var base='<%=path%>';
</script>
<!-- <link rel="stylesheet" type="text/css" href="styles.css"> -->

</head>

<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<a type="button" class="btn btn-info pull-right"
					href="movie/rename">修正电影名</a>
				<a type="button" class="btn btn-info pull-right"
					href="movie/scanner">扫描电影</a>
			</div>
		</div>
		<c:forEach var="movie" items="${movieList}" varStatus="s">
			<div class="movieDiv">
				<a class="movie" href="movie/${movie.id}" title="${movie.name}">
					<b> <i></i> <c:if test="${empty movie.photo}">
							<img class="preview" src="<%=path%>image/default.jpg" width="122"
								height="165">
						</c:if> <c:if test="${!empty movie.photo}">
							<img class="preview" src="http://jiabo.asuscomm.com:12346/${movie.photo}?p=0"
								width="122" height="165">
						</c:if>
				</b> <span>${movie.name}</span>
				</a>
			</div>
		</c:forEach>
	</div>
</body>
</html>
