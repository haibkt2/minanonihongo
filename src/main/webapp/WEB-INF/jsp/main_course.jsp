<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
</head>
<h2 class="course-detail-title">
	<a href="#">Khóa học <b id="course-name"></b></a>&nbsp;<i
		class="zmdi zmdi-caret-right"></i>&nbsp;<b id="course-heading"></b>
</h2>
<p style="width: 100%; float: left; margin: 5px 0 0px;">
	<i class="zmdi zmdi-time-countdown"></i> <b id="total-number-test"></b> <i>Lượt xem</i>
</p>
<div class="cover-container" id="cover-container">
	<div class="document" id="document">
	</div>
	<div class="introduce" id="introduce"></div>
	<br> <a class="movie-play"> <img id="videoImg"
		src="" /> <br> <span class="play-icon-btn"> <i
			class="zmdi zmdi-play"></i>
	</span>
	</a>
	<div id="iframe-video" style="display: none;">
		<video width="100%" height="395" controls id="cVideo">
			<source src="" type="video/mp4" id="srVideo">
			<!-- 						<source src="movie.ogg" type="video/ogg"> -->
			<!-- 						Your browser does not support the video tag. -->
		</video>
	</div>
	<script type="text/javascript">
		var vid = document.getElementById("cVideo");
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
			Cần có mã Trang để bắt đầu sử dụng API. Mã trang này sẽ có tất cả các
			quyền trong Messenger ngay cả khi ứng dụng của bạn chưa được phê
			duyệt để sử dụng các quyền đó, mặc dù trong trường hợp này, bạn chỉ
			có thể nhắn tin cho quản trị viên ứng dụng. Bạn cũng có thể tạo mã
			trang cho các trang bạn không sở hữu bằng Đăng nhập Facebook.</div>
		<div id="facebook-comment-content" class="tab-pane fade"></div>
	</div>
</div>