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
<c:if test="${courseIlm.getCourse().getCourseName() eq 'Alphabet'}">
	<c:set value="Bảng chữ cái" var="courseName"></c:set>
</c:if>
<c:if test="${courseIlm.getCourse().getCourseName() ne 'Alphabet'}">
	<c:set value="${courseIlm.getCourse().getCourseName()}"
		var="courseName"></c:set>
</c:if>
<h2 class="course-detail-title">
	<a href="#">Khóa học <c:out value="${courseName}"></c:out></a>&nbsp;<i
		class="zmdi zmdi-caret-right"></i>&nbsp;<b id="course-heading">${courseIlm.getLessonName()}</b>
</h2>
<p style="width: 100%; float: left; margin: 5px 0 0px;">
	<i class="zmdi zmdi-time-countdown"></i> <b id="total-number-test">${courseIlm.getCourseGlobal().getTotalNumber()}</b>
	<i id="view-down">Lượt xem</i>
</p>
<div class="cover-container" id="cover-container">
	<c:if test="${not empty courseIlm.getCourse().getDocuments()}">
		<div class="document" id="document">
			<i class="zmdi zmdi-dns">&nbsp;</i><strong>Tài liệu học cho
				khóa hoc <c:out value="${courseName}"></c:out> :
			</strong>
			<c:forEach items="${courseIlm.getCourse().getDocuments()}" var="doc">
				<a href="${contextPath}/downloadFile?file=${doc.getLocaFileDoc()}"
					id="file-doc">${doc.getLocaFileDoc()}</a>
				<br>
			</c:forEach>
		</div>
		<br>
	</c:if>
	<div class="introduce" id="introduce">${courseIlm.getIntroduce() }</div>
	<br>
	<c:if test="${courseIlm.getLocaFileCourse() != null}">
		<a class="movie-play"> <img id="videoImg"
			src="${contextPath}/resources/img/${courseIlm.getCourse().getCourseName()}" />
			<br> <span class="play-icon-btn"> <i
				class="zmdi zmdi-play"></i>
		</span>
		</a>
		<div id="iframe-video" style="display: none;">
			<video width="100%" height="395" controls id="cVideo">
				<source
					src="${contextPath}/reponsitory/N5/${courseIlm.getLocaFileCourse()}"
					type="video/mp4" id="srVideo">
				<!-- 						<source src="movie.ogg" type="video/ogg"> -->
				<!-- 						Your browser does not support the video tag. -->
			</video>
		</div>
	</c:if>
	<c:if test="${not empty courseIlm.getExams()}">
		<div class="lesson-content-detail" id="lesson-content-detail">
			<c:forEach items="${ courseIlm.getExams()}" var="exam">
				<div style="margin-top: 25px; display: inline-block;"
					v-html="tasks[0].value"></div>
				<div
					style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
					<div style="width: 48%; margin-top: 10px;">
						<label for="answer27448" class="col-md-11 answers-input"
							style="font-weight: normal; font-size: 13px; color: gray">
							<span style="display: none;">27448</span> <input type="radio"
							class="custom-control-input col-md-1 answers-input"
							id="answer27448" name="task12606"
							v-on:change="storeValueToLocal(12606,27448)"> <span
							style="display: none;">0</span>&nbsp;&nbsp;みにづける
						</label>
					</div>
					<div style="width: 48%; margin-top: 10px;">
						<label for="answer27449" class="col-md-11 answers-input"
							style="font-weight: normal; font-size: 13px; color: gray">
							<span style="display: none;">27449</span> <input type="radio"
							class="custom-control-input col-md-1 answers-input"
							id="answer27449" name="task12606"
							v-on:change="storeValueToLocal(12606,27449)"> <span
							style="display: none;">1</span>&nbsp;&nbsp;みにつける
						</label>
					</div>
				</div>
			</c:forEach>
			<button class="btn btn-primary trac-nghiem"
				v-on:click="sendTestResult('t.hai', 0)">Nộp bài</button>

			<hr style="border: 0; border-bottom: 1px solid #ddd;">
			<div class="alert mt20" id="result" style="display: none;">
				<div v-if="results.length > 0">
					<h4>Kết quả các bài kiểm tra đã làm</h4>
					<hr>
					<div class="alert" v-for="(result, index) in results"
						v-bind:class="[result.passed == 0 ? 'bg-warning' : 'bg-success']"
						style="font-size: 14px">
						<p>
							Thời gian thực hiện lúc <b>{{ printTime(result.created) }}</b>
							ngày <b>{{ printDate(result.created) }}</b>
						</p>
						<p>
							Tổng điểm: <b>{{ result.grade }} / {{ result.total_marks }}</b>
						</p>
						<p>
							Kết quả: <b v-if="result.passed == 0">Không đạt yêu cầu</b><b
								v-if="result.passed != 0">Đã qua</b>
						</p>
						<button class="btn btn-info review-result" data-toggle="modal"
							data-target="#myModal" v-on:click="reviewTestResult(index)">Xem
							bài làm</button>
						<button class="btn btn-warning remove-result" data-toggle="modal"
							data-target="#removeResult" v-on:click="removeTestResult(index)">Xóa</button>
					</div>
				</div>
			</div>

			<div class="modal fade" id="empty_answers" role="dialog"
				tabindex="-1">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Lưu ý</h4>
						</div>
						<div class="modal-body">
							<div class="alert alert-danger">
								<i class="fa fa-tags"></i>&nbsp;Bạn chưa nhập câu trả lời. Vui
								lòng trả lời rồi mới nộp bài thi.
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-info" data-dismiss="modal">Đóng</button>
						</div>
					</div>

				</div>
			</div>

			<div class="modal fade" id="removeResult" role="dialog" tabindex="-1">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Xóa</h4>
						</div>
						<div class="modal-body">
							<p>Bạn có muốn xóa bài kiểm tra này không?</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-warning"
								v-on:click="confirmRemove()">Xóa</button>
							<button type="button" class="btn btn-info" data-dismiss="modal">Đóng</button>
						</div>
					</div>

				</div>
			</div>

			<div class="modal fade" id="myMessage" role="dialog" tabindex="-1">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Thông báo</h4>
						</div>
						<div class="modal-body">
							<div class="alert alert-info">
								<i class="fa fa-tags"></i>&nbsp;Bạn được {{ userScore }} / {{
								lesson.total_marks }} điểm.
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" data-dismiss="modal"
								class="btn btn-primary">&nbsp;&nbsp;OK&nbsp;&nbsp;</button>
						</div>
					</div>

				</div>
			</div>
			<script>
				lesson_tasks = [ {
					"grade" : 1,
					"id" : "50001",
					"type" : 3,
					"lesson_id" : "001",
					"value" : "自分を守る力を身に付けるのは必要だ。"
				} ];
				lesson_answers = {
					"50001" : [ {
						"grade" : "0",
						"task_id" : "50001",
						"id" : "500001",
						"value" : "みにづける"
					}, {
						"grade" : "1",
						"task_id" : "50001",
						"id" : "500002",
						"value" : "みにつける"
					} ]
				};
				lesson_lesson = {
					"course_id" : "N5",
					"total_marks" : 1,
					"lesson_id" : "001"
				};
				lesson_results = [];
				lesson_writeQuestions = [];
				course = "N5"; //Them khoa hoc cho JLPT
				posExam = null; //tu dong load cho bai thi sau
				is_exam = "0"; //check xem co phải là bài thi hay ko

				lesson_results = [];
				lesson_writeQuestions = [];
				course = "${courseName}"; //Them khoa hoc cho JLPT
				posExam = null; //tu dong load cho bai thi sau
				is_exam = "0"; //check xem co phải là bài thi hay ko
			</script>
		</div>
		<script src="${contextPath}/resources/js/vue.min.js"></script>
		<script src="${contextPath}/resources/js/app.js"></script>
		<script src="${contextPath}/resources/js/detail_lesson.js"></script>
	</c:if>

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
	</ul>
	<div class="tab-content">
		<div id="user-comment-content" class="tab-pane fade in active">
			Cần có mã Trang để bắt đầu sử dụng API. Mã trang này sẽ có tất cả các
			quyền trong Messenger ngay cả khi ứng dụng của bạn chưa được phê
			duyệt để sử dụng các quyền đó, mặc dù trong trường hợp này, bạn chỉ
			có thể nhắn tin cho quản trị viên ứng dụng. Bạn cũng có thể tạo mã
			trang cho các trang bạn không sở hữu bằng Đăng nhập Facebook.</div>
	</div>
</div>