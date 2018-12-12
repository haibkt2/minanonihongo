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
					<h2 class="blog-detail-title">${post.postTitle}</h2>
					<span class="blog-detail-info"><i class="fa fa-user"></i>
						Người đăng : ${post.user.name}&nbsp; &nbsp; <i
						class="fa fa-calendar-check-o"></i> ${post.updateDate} &nbsp;
						&nbsp; Lượt xem : ${post.viewPost}</span>
					<div class="blog-social-like">
						<iframe
							src="https://www.facebook.com/plugins/like.php?href=https%3A%2F%2Flocalhost%3A8888%2Fvan-hoa-nhat-ban%2F${post.postTitle}&width=450&layout=standard&action=like&size=small&show_faces=true&share=true&height=80&appId=2272220076356331"
							width="450" height="30" style="border: none; overflow: hidden"
							scrolling="no" frameborder="0" allowTransparency="true"
							allow="encrypted-media"></iframe>
					</div>
					<div class="blog-detail-content">
						<img class="blog-detail-thumb"
							src="http://dungmori.com/cdn/blog/default/1544488489_1271535_f72125.jpeg"
							alt="Nhật Bản đất nước kì lạ - P1"> <br> <br>
						<div class="main-content">${post.postContent}</div>
					</div>

					<div class="comment-container fb-comments">
						<div class="comment-heading">
							<span>Bình luận của học viên</span>
						</div>
						<div data-width="100%"
							data-href="http://dungmori.com/bai-viet/103-nhat-ban-dat-nuoc-ki-la-p1"
							data-numposts="8"
							class="fb-comments fb_iframe_widget fb_iframe_widget_fluid_desktop"
							fb-xfbml-state="rendered"
							fb-iframe-plugin-query="app_id=1548366118800829&amp;container_width=712&amp;height=100&amp;href=http%3A%2F%2Fdungmori.com%2Fbai-viet%2F103-nhat-ban-dat-nuoc-ki-la-p1&amp;locale=vi_VN&amp;numposts=8&amp;sdk=joey&amp;version=v2.11"
							style="width: 100%;">
							<span style="vertical-align: bottom; width: 100%; height: 178px;"><iframe
									name="fe7bdf36d9f54" width="1000px" height="100px"
									frameborder="0" allowtransparency="true" allowfullscreen="true"
									scrolling="no" allow="encrypted-media"
									title="fb:comments Facebook Social Plugin"
									src="https://www.facebook.com/v2.11/plugins/comments.php?app_id=1548366118800829&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter%2Fr%2FLviKjJ9cymB.js%3Fversion%3D43%23cb%3Df1020ad5e9131f%26domain%3Ddungmori.com%26origin%3Dhttp%253A%252F%252Fdungmori.com%252Ff33d2fbcc1ab584%26relation%3Dparent.parent&amp;container_width=712&amp;height=100&amp;href=http%3A%2F%2Fdungmori.com%2Fbai-viet%2F103-nhat-ban-dat-nuoc-ki-la-p1&amp;locale=vi_VN&amp;numposts=8&amp;sdk=joey&amp;version=v2.11"
									style="border: none; visibility: visible; width: 100%; height: 178px;"
									class=""></iframe></span>
						</div>
					</div>

				</div>
			</div>
			<jsp:include page="postRight.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>