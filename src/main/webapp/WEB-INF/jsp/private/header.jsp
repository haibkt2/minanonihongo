<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>HaiLDX - Tiếng Nhật cho mọi người.</title>
<link rel="icon" href="${contextPath}/resources/public/img/fav.png" />
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link rel="stylesheet"
	href="${contextPath}/resources/private/css/styles.css">
<link rel="stylesheet"
	href="${contextPath}/resources/private/css/ionicons.min.css">
<link rel="stylesheet"
	href="${contextPath}/resources/private/css/AdminLTE.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body>
	<header class="main-header">
		<a href="${contextPath}/admin" class="logo"> <span class="logo-mini"><b>HLDX</b></span>
			<span class="logo-lg"><b>Minanonihongo</b></span>
		</a>
		<nav class="navbar navbar-static-top">
			<a href="#" class="sidebar-toggle" data-toggle="push-menu"
				role="button"> <span class="sr-only"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
			</a>
			<div class="navbar-custom-menu">
				<ul class="nav navbar-nav">
					<li class="user user-menu"><a href="${contextPath}/tai-khoan/thong-tin-ca-nhan" > 
<!-- 						<img class="user-image" -->
<%-- 										src="${contextPath}/reponsitory/Avatar/<c:if test="${user.avatar == null}">img-df.png</c:if><c:if test="${user.avatar != null}">${user.avatar }</c:if>" /> --%>
							<span class="hidden-xs">${user.name}</span>
					</a></li>
				</ul>
			</div>
		</nav>
	</header>
	<!-- jQuery 3 -->
	<script src="${contextPath}/resources/private/js/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="${contextPath}/resources/private/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="${contextPath}/resources/private/js/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="${contextPath}/resources/private/js/adminlte.min.js"></script>
</body>