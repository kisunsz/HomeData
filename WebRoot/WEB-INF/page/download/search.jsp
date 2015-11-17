<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<c:forEach var="movie" items="${map}">
	<div class="panel panel-info">
		<div class="panel-heading">
			<h3 class="panel-title">${nameMap[movie.key]}</h3>
		</div>
		<div class="panel-body">
			<ul class="list-group">
				<c:forEach var="bt" items="${movie.value}">
					<li class="list-group-item">
						<h4>
							${bt.fileName}
							<div class="pull-right" role="group" aria-label="">
								<a style="display: inline-block" title="下载"
									class="btn btn-success"
									href="<%=path%>/download/download?url=${bt.downloadUrl}"><span
									class="glyphicon glyphicon-arrow-down"></span></a><a
									onclick="downloadCloud(this);return false;"
									style="display: inline-block; margin: 0 10px 0 10px"
									title="下载到云端，并启用迅雷下载" class="btn btn-info"
									url="<%=path%>/download/downloadCloud?url=${bt.downloadUrl}"
									target="view"> <span
									class="glyphicon glyphicon-cloud-download"></span></a>
							</div>
						</h4>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
</c:forEach>
