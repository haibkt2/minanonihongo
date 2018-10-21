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
</head>
<body>
	<div class="heading-box">
		<h2 class="blog-heading">
			Văn hóa <span style="color: #588d3f;">Nhật Bản</span>
		</h2>
		<span class="prefix-title">Chuyên mục&nbsp;</span> <select
			id="selectpicker" class="selectpicker"
			onchange="location = this.value;">
			<option value="${contextPath}/van-hoa-nhat-ban/ki-thi-jlpt">Kì
				thi JLPT</option>
			<option value="${contextPath}/van-hoa-nhat-ban/van-hoa-nhat-ban">Văn
				hóa Nhật Bản</option>
			<option
				value="${contextPath}/van-hoa-nhat-ban/truyen-co-tich-nhat-ban">Truyện
				cổ tích Nhật Bản</option>
			<option
				value="${contextPath}/van-hoa-nhat-ban/kinh-nghiem-hoc-tieng-nhat-online">Kinh
				Nghiệm học tiếng Nhật</option>
		</select>
	</div>
</body>
</html>