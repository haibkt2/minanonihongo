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
							src="${contextPath}/resources/public/img/baderimg1.png"
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
					<div class="student-feedback-title">
						<h1 class="green-text">Nơi học tập - chia sẽ Tiếng Nhật</h1>
						<br>
						<h3 class="green-text">của những người đam mê Tiếng Nhật</h3>
					</div>
					<br>
					<div class="preview-course-container">
						<h3 class="head-title">Danh sách bài học</h3>
						<div class="courses-linear">
							<c:forEach items="${course}" var="c">
								<c:forEach items="${c.courseIlms}" var="ci" varStatus="id">
									<c:if test="${id.index eq 0 }">
										<div class="grid-item-course">
											<a href="${contextPath}/khoa-hoc/${c.courseName}"><img
												src="${contextPath}/reponsitory/${c.courseName}/img/${ci.getLocaFileImg()}"
												data-src="${contextPath}/reponsitory/${c.courseName}/img/${ci.getLocaFileImg()}"
												class="lazyload course-thumbnail"></a>
											<div class="course-detail">
												<a href="${contextPath}/khoa-hoc/${c.courseName}"
													class="name"><b style="-webkit-box-orient: vertical;">
														<c:if test="${c.courseId == 'COURSELVN6'}"> Bảng chữ cái </c:if>
														<c:if test="${c.courseId != 'COURSELVN6' }">Khóa ${c.courseName}</c:if>
												</b></a> <img src=""><span class="arthor"></span>
											</div>
										</div>
									</c:if>
								</c:forEach>
							</c:forEach>
							<br>
						</div>
						<br>
						<div id="fb-root"></div>
						<script>
							(function(d, s, id) {
								var js, fjs = d.getElementsByTagName(s)[0];
								if (d.getElementById(id))
									return;
								js = d.createElement(s);
								js.id = id;
								js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.2&appId=2272220076356331&autoLogAppEvents=1';
								fjs.parentNode.insertBefore(js, fjs);
							}(document, 'script', 'facebook-jssdk'));
						</script>
						<div class="fb-comments" data-href="https://localhost:8888/"
							data-width="890" data-numposts="1"></div>
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