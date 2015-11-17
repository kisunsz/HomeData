<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:forEach var="info" items="${infoList}">
	<div class="row">
		<div class="col-md-4">
				<img src="${info.images.large}"  alt=""
					class="img-thumbnail">
		</div>
		<div class="col-md-8">
			<p>${info.title}</p>
			<p>${info.summary}</p>
		</div>
	</div>
</c:forEach>
