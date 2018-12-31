<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="minanonihongo.model.*"%>
<%@ page import="minanonihongo.service.*"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="sv" class="minanonihongo.service.Common" />
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="vi">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>HaiLDX - Tiếng Nhật cho mọi người</title>
</head>
<body>
	<div class="main-right" style="padding-bottom: 30px;">
		<div class="list-group list-category">
			<span class="list-group-item item-heading">Chuyên mục</span>
			<c:forEach items="${funt}" var="funt">
				<a href="${contextPath}/vui-tieng-nhat/chuyen-muc/${funt.courseFunTypeId}-${sv.toUrlFriendly(funt.courseFunTypeName)}"
					class="list-group-item ${funt.courseFunTypeName}">${funt.courseFunTypeName}</a>
			</c:forEach>
		</div>
		<h3 class="related-title">Thú vị nhất</h3>

		<c:forEach items="${funmn}" var="fun">
			<div class="related-news-item">
				<a
					href="${contextPath}/vui-tieng-nhat/${fun.getCourseBgId().substring(4)}-${sv.toUrlFriendly(fun.getCourseFunTitle())}">
					<img class="lazyload"
					src="${contextPath}/reponsitory/course-fun/${fun.courseFunImg}"
					data-src="${contextPath}/reponsitory/course-fun/${fun.courseFunImg}">
				</a><a href="${contextPath}/vui-tieng-nhat/${fun.getCourseBgId().substring(4)}-${sv.toUrlFriendly(fun.courseFunTitle)}"
								title="${fun.courseFunTitle}">
								<div class="title">${fun.courseFunTitle}</div>
					</a>  <span class="brief">${fun.courseFunTitle} </span>
			</div>
		</c:forEach>
	</div>
</body>
</body>
</html>