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
	<div class="main">
		<div class="main-center">
			<div class="main-left">
				<div class="blog-detail-container">
					<h2 class="blog-detail-title">${fun.courseFunTitle}</h2>
					<span class="blog-detail-info"><i class="fa fa-user"></i>
						Người đăng : &nbsp; &nbsp; <i
						class="fa fa-calendar-check-o"></i> ${fun.updateDate} &nbsp;
						&nbsp; Lượt xem : ${fun.viewCourseFun}</span>
					<div class="blog-social-like">
						<iframe
							src="https://www.facebook.com/plugins/like.php?href=https%3A%2F%2Flocalhost%3A8888%2Fvui-tieng-nhat%2F${fun.getCourseBgId().substring(4)}-${sv.toUrlFriendly(fun.getCourseFunTitle())}&width=450&layout=standard&action=like&size=small&show_faces=true&share=true&height=80&appId=2272220076356331"
							width="450" height="30" style="border: none; overflow: hidden"
							scrolling="no" frameborder="0" allowTransparency="true"
							allow="encrypted-media"></iframe>
					</div>
					<div class="blog-detail-content">
						<img class="blog-detail-thumb"
							src="${contextPath}/reponsitory/course-fun/${sv.toUrlFriendly(fun.courseFunType.courseFunTypeName)}/${fun.courseFunImg}"
							alt="${fun.courseFunTitle}"> <br> <br>
						<div class="main-content">${fun.courseFunContent}</div>
					</div>

					<div class="comment-container fb-comments">
						<div class="comment-heading">
							<span>Bình luận của học viên</span>
						</div>
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
						<div class="fb-comments"
							data-href="https://localhost:8888/van-hoa-nhat-ban/${fun.getCourseBgId().substring(4)}-${sv.toUrlFriendly(fun.getCourseFunTitle())}"
							data-width="700" data-numposts="1"></div>
					</div>

				</div>
			</div>
			<jsp:include page="cFunRight.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>