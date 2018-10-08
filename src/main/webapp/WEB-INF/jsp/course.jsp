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
<title>HaiLDX - Website học tiếng Nhật online số 1 tại Việt Nam
</title>
<jsp:include page="header.jsp"></jsp:include>
<div class="main">
	<div class="main-center main-course">
		<c:if test="${courseIlm.getCourse().getCourseName() eq 'Alphabet'}">
			<c:set value="Bảng chữ cái" var="courseName"></c:set>
		</c:if>
		<c:if test="${courseIlm.getCourse().getCourseName() ne 'Alphabet'}">
			<c:set value="${courseIlm.getCourse().getCourseName()}"
				var="courseName"></c:set>
		</c:if>
		<div class="main-left">
			<h2 class="course-detail-title">
				Khóa học : <a><b> <c:out value="${courseName}"></c:out></b> </a>
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
						các quyền trong Messenger ngay cả khi ứng dụng của bạn chưa được
						phê duyệt để sử dụng các quyền đó, mặc dù trong trường hợp này,
						bạn chỉ có thể nhắn tin cho quản trị viên ứng dụng. Bạn cũng có
						thể tạo mã trang cho các trang bạn không sở hữu bằng Đăng nhập
						Facebook.</div>
					<div id="facebook-comment-content" class="tab-pane fade"></div>
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
					<c:forEach items="${courseIlmTypeList}" var="courseIlmType"
						varStatus="index">
						<c:set value="${courseIlmType.getCourseIlmTypeId()}" var="nh"></c:set>
						<%
							String course = (String) pageContext.getAttribute("nh");
								String courseName = (String) pageContext.getAttribute("courseName");
						%>
						<div class="panel panel-default">
							<div class="panel-heading" role="tab">
								<a class="collapsed" role="button" data-toggle="collapse"
									data-parent="#accordion" href="#collapse-01${index.index}"
									aria-expanded="false"> <strong>${courseIlmType.getCourseIlmTypeName()}
								</strong>
								</a>
							</div>
							<div id="collapse-01${index.index}"
								class="panel-collapse collapse " role="tabpanel">
								<div class="panel-body">
									<ul class="scroll-items">
										<%
											List<CourseIlm> courseList = (List<CourseIlm>) request.getAttribute(course);
												CourseIlmService courseIlmService = new CourseIlmService();
												for (CourseIlm courseIlm : courseList) {
										%>
										<li class="lesson-item"><a
											class="lesson-item-click lesson-item" id="lesson-item"
											href="javascript:void(0);"
											data-id="<%=courseIlm.getCourseIlmId()%>"
											url="${contextPath}/khoa-hoc/<%=courseIlmService.toUrlFriendly(courseName) %>/<%=courseIlm.getCourseIlmId().substring(courseIlm.getCourseIlmId().length()-3, courseIlm.getCourseIlmId().length())%>-<%=courseIlmService.toUrlFriendly(courseIlm.getLessonName()) %>"
											style="padding-right: 70px;"><%=courseIlm.getLessonName()%></a></li>

										<%
											// 										if(courseIlm.getExams() != null)
													for (Exam exam : courseIlm.getExams()) {
										%>
										<li class="test-item" id="<%=courseIlm.getLessonName()%>"><a
											onclick="showCourseDetail(this.id)" class="test-item"
											id="test-item"
											href="${contextPath}/khoa-hoc/<%=courseIlmService.toUrlFriendly(courseName) %>/t<%=exam.getExamId().substring(exam.getExamId().length()-3, exam.getExamId().length())%>-<%=courseIlmService.toUrlFriendly(exam.getExamName()) %>"
											style="padding-right: 70px;"><%=courseIlm.getLessonName()%></a></li>
										<%
											}

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
<script>
	$(".lesson-item-click").click(function(e) {
		e.preventDefault();
		var id = $(this).attr("data-id");
		var url = $(this).attr("url") + "?id=" + id;
		$.ajax({
			url : url,
			success : function(result) {
				console.log(result);
				$('.cover-container').val('s');

			},
			error : function(e) {
				alert("Sorry! Dữ liệu lỗi.");
			}
		});
	});
</script>
<div class="go-top">
	<i class="fa fa-sort-asc"></i>
</div>
</div>
</body>
</html>