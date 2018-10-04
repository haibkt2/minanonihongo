<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="minanonihongo.model.*"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<title>HaiLDX - Website học tiếng Nhật online số 1 tại Việt Nam
</title>
<jsp:include page="header.jsp"></jsp:include>
<div class="main">
	<div class="main-center main-course">
		<div class="main-left">
			<h2 class="course-detail-title">
				Khóa học <a><b>Bảng chữ cái</b></a>
			</h2>
			<div class="course-heading">
				<span>Clip giới thiệu lộ trình học</span>
			</div>
			<div class="cover-container">
				<a class="movie-play"> <img
					src="${contextPath}/resources/img/bang-chu-cai.jpg" /> <br> <span
					class="play-icon-btn"> <i class="zmdi zmdi-play"></i>
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
						các quyền trong Messenger ngay cả khi ứng dụng của bạn chưa được
						phê duyệt để sử dụng các quyền đó, mặc dù trong trường hợp này,
						bạn chỉ có thể nhắn tin cho quản trị viên ứng dụng. Bạn cũng có
						thể tạo mã trang cho các trang bạn không sở hữu bằng Đăng nhập
						Facebook.
						<comments meid="26954" avatar="1524118281_332747130_7aedaa_ad98c6"
							tbid="8" tbname="course" num-posts="15" background="#fff"
							ref="comment"> </comments>
					</div>
					<div id="facebook-comment-content" class="tab-pane fade">
						<comment-fb
							url="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi"></comment-fb>
					</div>
				</div>
			</div>
		</div>
		<div class="main-right">
			<div class="course-info-container course-info-status-pc">
				<div class="buy-item">
					<div class=""></div>
				</div>
			</div>
			<div class="numberOfDay"></div>
			<div class="course-list-container">
				<div class="block-title">Tiến trình học</div>
				<div class="panel-group" id="accordion" role="tablist"
					aria-multiselectable="true">
					<c:forEach items="${courseIlmTypeList}" var="courseIlmType">
						<c:set value="${courseIlmType.getCourseIlmTypeId()}" var="nh"></c:set>
						<%
							String course = (String) pageContext.getAttribute("nh");
						%>
						<div class="panel panel-default">
							<div class="panel-heading" role="tab">
								<a class="collapsed" role="button" data-toggle="collapse"
									data-parent="#accordion" href="#collapse-${nh}"
									aria-expanded="false"> <strong>${courseIlmType.getCourseIlmTypeName()}
								</strong>
								</a>
							</div>
							<div id="collapse-${courseIlmType.getCourseIlmTypeId()}"
								class="panel-collapse collapse " role="tabpanel">
								<div class="panel-body">
									<ul class="scroll-items">
										<%
											List<CourseIlm> courseList = (List<CourseIlm>) request.getAttribute(course);
												for (CourseIlm courseIlm : courseList) {
										%>
										<li class="lesson-item-15"><a href=""
											style="padding-right: 70px;"><%=courseIlm.getLessonName()%></a></li>
										<%
											}
										%>
									</ul>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(".fancybox").fancybox().trigger('click');
</script>
<div class="go-top">
	<i class="fa fa-sort-asc"></i>
</div>
<script src="${contextPath}/resources/js/lazyload.min.js"></script>
<script type="text/javascript">
	window.addEventListener("load", function(event) {
		lazyload();
	});
</script>
<script type="text/javascript">
	var lastFingerprint = 0;
</script>
<script type="text/javascript">
	var lastFingerprint = 1284817130;
	var lastBrowser = "Chrome";
	var lastOS = "Windows";
	$.get(window.location.origin + "/api/user/tracking-online");
	setInterval(function() {
		$.get(window.location.origin + "/api/user/tracking-online");
	}, 15000);
</script>
<script src="${contextPath}/resources/js/vue.min.js"></script>
<script type="text/javascript">
	var enableFIV = false;
</script>
<script src="${contextPath}/resources/js/components.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</div>
</body>
</html>