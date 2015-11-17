
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath =
request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!-- <link rel="stylesheet" type="text/css" href="styles.css"> -->
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="<%=path%>/css/bootstrap.min.css" />

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="<%=path%>/css/bootstrap-theme.min.css" />

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="<%=path%>/js/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="<%=path%>/js/bootstrap.min.js"></script>
