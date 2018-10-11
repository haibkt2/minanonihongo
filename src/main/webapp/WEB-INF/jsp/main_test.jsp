<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="vi">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
</head>
<body>
	<div id="application">

		<div class="main">
			<div class="main-center main-course">
				<div class="main-left">
					<h2 class="lesson-detail-title">
						<a href="http://dungmori.com/khoa-hoc/khoa-n3">Khóa học N3</a>
						&nbsp; <i class="zmdi zmdi-caret-right"></i> &nbsp; <b>Test 1A</b>
					</h2>
					<p style="width: 100%; float: left; margin: 5px 0 0px;">
						<i class="zmdi zmdi-time-countdown"></i> <b>8217</b> Lượt xem
					</p>
					<div class="cover-container">
						<div class="lesson-content-detail" id="lesson-content-detail">
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
											Thời gian thực hiện lúc <b>{{ printTime(result.created)
												}}</b> ngày <b>{{ printDate(result.created) }}</b>
										</p>
										<p>
											Tổng điểm: <b>{{ result.grade }} / {{ result.total_marks
												}}</b>
										</p>
										<p>
											Kết quả: <b v-if="result.passed == 0">Không đạt yêu cầu</b><b
												v-if="result.passed != 0">Đã qua</b>
										</p>
										<button class="btn btn-info review-result" data-toggle="modal"
											data-target="#myModal" v-on:click="reviewTestResult(index)">Xem
											bài làm</button>
										<button class="btn btn-warning remove-result"
											data-toggle="modal" data-target="#removeResult"
											v-on:click="removeTestResult(index)">Xóa</button>
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
												<i class="fa fa-tags"></i>&nbsp;Bạn chưa nhập câu trả lời.
												Vui lòng trả lời rồi mới nộp bài thi.
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-info"
												data-dismiss="modal">Đóng</button>
										</div>
									</div>

								</div>
							</div>

							<div class="modal fade" id="removeResult" role="dialog"
								tabindex="-1">
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
											<button type="button" class="btn btn-info"
												data-dismiss="modal">Đóng</button>
										</div>
									</div>

								</div>
							</div>

							<div class="modal fade" id="myMessage" role="dialog"
								tabindex="-1">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Thông báo</h4>
										</div>
										<div class="modal-body">
											<div class="alert alert-info">
												<i class="fa fa-tags"></i>&nbsp;Bạn được {{ userScore }} /
												{{ lesson.total_marks }} điểm.
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" data-dismiss="modal"
												class="btn btn-primary">&nbsp;&nbsp;OK&nbsp;&nbsp;</button>
										</div>
									</div>

								</div>
							</div>

						</div>

						<script>
							lesson_tasks = [
								{
									"id" : 12606,
									"lesson_id" : 1432,
									"type" : 3,
									"value" : "30.&nbsp;&nbsp;\u81ea\u5206\u3092\u5b88\u308b\u529b\u3092<u>\u8eab\u306b\u4ed8\u3051\u308b<\/u>\u306e\u306f\u5fc5\u8981\u3060\u3002<br \/>\n<br \/>\n",
									"grade" : "1",
									"sort" : 30,
									"show" : 1,
								}];
							lesson_answers = {
									"12606" : [ {
										"id" : 27448,
										"task_id" : 12606,
										"value" : "\u307f\u306b\u3065\u3051\u308b",
										"grade" : "0",
										"sort" : 1,
									}, {
										"id" : 27449,
										"task_id" : 12606,
										"value" : "\u307f\u306b\u3064\u3051\u308b",
										"grade" : "1",
										"sort" : 2,
									} ]
							};
							lesson_lesson = {
								"id" : 1432,
								"course_id" : "3",
								"total_marks" : 30,
								"get_course" : {
									"id" : 3,
								}
							};
							lesson_results = [];
							lesson_writeQuestions = [];
							course = "N3"; //Them khoa hoc cho JLPT
							posExam = null; //tu dong load cho bai thi sau
							is_exam = "0"; //check xem co phải là bài thi hay ko
						</script>

					</div>


					<div class="lesson-detail-container"></div>
					<div class="comment-container">
						<ul class="nav nav-pills comment-tab">
							<li class="li-tab user-tab active"><a data-toggle="pill"
								href="#user-comment-content">Ý kiến học viên</a></li>
						</ul>

					</div>

				</div>

			</div>
		</div>
		<div class="go-top">
			<i class="fa fa-sort-asc"></i>
		</div>
		<script type="text/javascript">
			var lastFingerprint = 0;
		</script>
		<script src="${contextPath}/resources/js/vue.min.js"></script>
		<script src="${contextPath}/resources/js/app.js"></script>
		<script src="${contextPath}/resources/js/detail_lesson.js"></script>
	</div>
</body>
</html>