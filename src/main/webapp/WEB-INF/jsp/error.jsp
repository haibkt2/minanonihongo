<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<title>404 - Không tìm thấy trang yêu cầu</title>

<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/css/styles.css">

<link rel="icon" href="${contextPath}/resources/img/fav.png" />
</head>
<body>
	<div id="application">

		<div class="main">
			<div class="main-center">
				<div class="error-image">
					<img src="${contextPath}/resources/img/404.png" />
					<h2>Nội dung này không tồn tại</h2>
					<h5>
						Trang bạn yêu cầu không thể hiển thị ngay bây giờ. <br /> Có thể
						trang này tạm thời không khả dụng, liên kết bạn nhấp vào có thể bị
						hỏng <br /> hoặc hết hạn hoặc có thể bạn không có quyền xem trang
						này.
					</h5>
				</div>

			</div>
		</div>
	</div>
</body>
</html>
