<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="minanonihongo.model.*"%>
<%@ page import="minanonihongo.service.*"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="vi">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>HaiLDX - Tiếng Nhật cho mọi người</title>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>
	<div id="application">
		<div class="site-main">
			<div class="full-container block-all-courses">
				<div class="haijp-banner">
					<div>
						<a href="" target="_blank"> <img
							src="${contextPath}/resources/public/img/baderimg2.png"
							style="display: inline;">
						</a>
					</div>
					<div>
						<a href="" target="_blank"> <img
							src="${contextPath}/resources/public/img/baderimg2.png"
							style="display: inline;">
						</a>
					</div>
				</div>
				<script>
					$('.haijp-banner').slick({
						dots : false,
						infinite : true,
						speed : 300,
						fade : false,
						autoplay : true,
						arrows : false,
						cssEase : 'linear'
					});
				</script>
				<div class="center-container">
					<h2 class="course-header">
						<span class="green-text see-more-course">Danh sách bài học
							thú vị</span>
					</h2>
					<div class="preview-course-container">
						<c:forEach items="${course}" var="c">
							<h3 class="head-title">
								<c:if test="${c.courseId == 'COURSELVN6'}">
									<span class="head-title-left">Bảng chữ cái Tiếng Nhật</span>
									<a href="${contextPath}/khoa-hoc/Bang-chu-cai"> <span
										class="see-more">Xem thêm&nbsp;<span>››</span></span></a>
								</c:if>

								<c:if test="${c.courseId != 'COURSELVN6' }">Khóa ${c.courseName}
							<a href="${contextPath}/khoa-hoc/${c.courseName}"> <span
										class="see-more">Xem thêm&nbsp;<span>››</span></span></a>
								</c:if>
							</h3>
							<div class="courses-linear">
								<c:forEach items="${c.courseIlms}" var="ci" varStatus="id">
									<c:if test="${id.index < 3 }">
										<div class="grid-item-course">
											<a href="${contextPath}/khoa-hoc/${c.courseName}"><img
												src="${contextPath}/reponsitory/${c.courseName}/img/${ci.getLocaFileImg()}"
												data-src="${contextPath}/reponsitory/${c.courseName}/img/${ci.getLocaFileImg()}"
												class="lazyload course-thumbnail"></a>
											<div class="course-detail">
												<a href="${contextPath}/khoa-hoc/${c.courseName}"
													class="name"><b style="-webkit-box-orient: vertical;">${ci.lessonName}</b></a> <img
													src=""><span
													class="arthor"></span>
											</div>
										</div>
									</c:if>
								</c:forEach>
							</div>
							<br>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="go-top">
		<i class="fa fa-sort-asc"></i>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>