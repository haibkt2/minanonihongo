<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="minanonihongo.model.*"%>
<%@ page import="minanonihongo.service.*"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
</head>
<body>
<div class="main-left">
	<h2 class="course-detail-title">
		Khóa học : <a><b><c:if
					test="${courseIlm.getCourse().getCourseName() eq 'Alphabet'}">
					<c:set value="Bảng chữ cái Tiếng Nhật" var="courseName"></c:set>
					<c:out value="${courseName}"></c:out>
				</c:if> <c:if test="${courseIlm.getCourse().getCourseName() ne 'Alphabet'}">
					<c:out value="${courseIlm.getCourse().getCourseName()}"></c:out>
				</c:if> </b> </a>
	</h2>
	<div class="course-heading">
		<span>Giới thiệu lộ trình - phương pháp học</span>
	</div>
	<div class="cover-container">
		<!-- 			introduction -->
		${courseIlm.getIntroduce() }

		<!-- end introduction -->
		<a class="movie-play"> <img
			src="${contextPath}/resources/img/${courseIlm.getCourse().getCourseName()}.jpg" />
			<br> <span class="play-icon-btn"> <i
				class="zmdi zmdi-play"></i>
		</span>
		</a>
		<div id="iframe-video" style="display: none;">
			<video width="100%" height="395" controls id="myVideo">
				<source src="${contextPath}/reponsitory/Video-N5/Bai1.mp4"
					type="video/mp4">
				<!-- 						<source src="movie.ogg" type="video/ogg"> -->
				<!-- 						Your browser does not support the video tag. -->
			</video>
		</div>
		<script type="text/javascript">
			var vid = document.getElementById("myVideo");
			// sự kiện click vào chạy video
			$('.movie-play').on('click', function(ev) {
				$(".movie-play").css("display", "none");
				$("#iframe-video").css("display", "block");
				vid.play();
				ev.preventDefault();
			});
		</script>
	</div>
	<div class="comment-container">
		<ul class="nav nav-pills comment-tab">
			<li class="li-tab user-tab active"><a data-toggle="pill"
				href="#user-comment-content">Ý kiến học viên</a></li>
			<li class="li-tab facebook-tab"><a data-toggle="pill"
				href="#facebook-comment-content">Bình luận bằng facebook</a></li>
		</ul>
		<div class="tab-content">
			<div id="user-comment-content" class="tab-pane fade in active">
				Cần có mã Trang để bắt đầu sử dụng API. Mã trang này sẽ có tất cả
				các quyền trong Messenger ngay cả khi ứng dụng của bạn chưa được phê
				duyệt để sử dụng các quyền đó, mặc dù trong trường hợp này, bạn chỉ
				có thể nhắn tin cho quản trị viên ứng dụng. Bạn cũng có thể tạo mã
				trang cho các trang bạn không sở hữu bằng Đăng nhập Facebook.</div>
			<div id="facebook-comment-content" class="tab-pane fade"></div>
		</div>
	</div>
</div>
<script src="${contextPath}/resources/js/lazyload.min.js"></script>
<script type="text/javascript">
	var lastFingerprint = 0;
</script>
<script src="${contextPath}/resources/js/vue.min.js"></script>
<script src="${contextPath}/resources/js/components.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>