
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page
language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://"
+ request.getServerName() + ":" + request.getServerPort()
+ path + "/";
%>
<html>
	<head>
		<title>Home</title>
		<jsp:include page="../base/head.jsp" />
		<script type="text/javascript" src="<%=path%>/js/search.js"></script>
		<script type="text/javascript">
			var base = "<%=path%>";
		</script>
		<style type="text/css">

		</style>
	</head>
	<body>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<form class="form-inline">
						<div class="form-group">
							<div class="input-group">
								<input style="width: 500px;" type="text" class="form-control"
									id="search" placeholder="search">
							</div>
						</div>
						<a type="button" class="searchBtn btn btn-primary">Search</a>
					</form>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-md-offset-3 result"></div>
			</div>
		</div>
	</body>
</html>
