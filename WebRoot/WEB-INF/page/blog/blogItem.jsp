
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String
path = request.getContextPath();
String basePath =
request.getScheme() +
"://"
+ request.getServerName() + ":" +
request.getServerPort()
+ path +
"/";
%>
<div class="list-group">
	<c:forEach var="blog" items="${list}" varStatus="s">
		<c:if test="${s.index%4==0}">
			<a href="<%=path%>/blog/${blog.id}" target="view"
				class="list-group-item list-group-item-success">
				${blog.title}
				<span onclick="editBlog(${blog.id});return false;" class="badge">编辑
				</span>
			</a>
		</c:if>
		<c:if test="${s.index%4==1}">
			<a href="<%=path%>/blog/${blog.id}" target="view"
				class="list-group-item list-group-item-info">
				${blog.title}
				<span onclick="editBlog(${blog.id});return false;" class="badge">编辑
				</span>
			</a>
		</c:if>
		<c:if test="${s.index%4==2}">
			<a href="<%=path%>/blog/${blog.id}" target="view"
				class="list-group-item list-group-item-warning">
				${blog.title}
				<span onclick="editBlog(${blog.id});return false;" class="badge">编辑
				</span>
			</a>
		</c:if>
		<c:if test="${s.index%4==3}">
			<a href="<%=path%>/blog/${blog.id}" target="view"
				class="list-group-item list-group-item-danger">
				${blog.title}
				<span onclick="editBlog(${blog.id});return false;" class="badge">编辑
				</span>
			</a>
		</c:if>
	</c:forEach>
</div>
