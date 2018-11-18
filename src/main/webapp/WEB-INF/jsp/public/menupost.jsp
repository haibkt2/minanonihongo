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
<jsp:include page="header.jsp"></jsp:include>
<script src="${contextPath}/resources/public/js/pagination.js"></script>	
	</head>
	<body>
	<div class="main-right" style="padding-bottom: 30px;">
		<div class="list-group list-category">
			<span class="list-group-item item-heading">Chuyên mục</span>
			<c:forEach items="${postt}" var="postt">
				<a
					href="${contextPath}/van-hoa-nhat-ban/chuyen-muc/${postt.getPostTypeId()}-${postt.getPostTypeName()}"
					class="list-group-item ${postt.getPostTypeName()}">${postt.getPostTypeName()}</a>
			</c:forEach>
		</div>
		<h3 class="related-title">Bài viết đọc nhiều</h3>
		<c:forEach items="${postmn}" var="post">
			<div class="related-news-item">
				<a
					href="${contextPath}/van-hoa-nhat-ban/${post.getPostId().substring(4)}-${sv.toUrlFriendly(post.getPostTitle())}">
					<img class="lazyload"
					src="${contextPath}/reponsitory/post/${post.getPostImg()}"
					data-src="${contextPath}/reponsitory/post/${post.getPostImg()}">
				</a> <a
					href="${contextPath}/van-hoa-nhat-ban/${post.getPostId().substring(4)}-${sv.toUrlFriendly(post.getPostTitle())}"
					title="${post.getPostTitle()}">
					<div class="title">${post.getPostTitle()}</div> <span class="info">
						&nbsp; &nbsp; <i class="fa fa-calendar-check-o"></i>${post.getUpdateDate()}
						&nbsp; &nbsp; Lượt xem : ${post.getViewPost()}
				</span>
				</a>
			</div>
		</c:forEach>
	</div>
</body>
</html>