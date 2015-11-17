<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML >
<html>
<head>
<base href="<%=basePath%>">

<title>TV</title>

<jsp:include page="../base/head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="css/movie.css"/>
</head>

<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<a type="button" class="btn btn-info pull-right"
					href="tv/scanner">扫描电视剧</a>
			</div>
		</div>
		<c:forEach var="tv" items="${tvList}" varStatus="s">
			<div class="movieDiv">
				<a class="movie" href="tv/${tv.id}" title="${tv.name }">
					<b> <i></i> <c:if test="${empty tv.photo}">
							<img class="preview" src="<%=path%>image/default.jpg" width="122"
								height="165">
						</c:if> <c:if test="${!empty tv.photo}">
							<img class="preview" src="${tv.photo}"
								width="122" height="165">
						</c:if>
				</b> <span>${tv.name}</span>
				</a>
			</div>
		</c:forEach>
	</div>
</body>
</html>
