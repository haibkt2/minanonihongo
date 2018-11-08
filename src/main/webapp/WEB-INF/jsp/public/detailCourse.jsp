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
			</strong><br>
			<c:forEach items="${courseIlm.getCourse().getDocuments()}" var="doc">
			${doc.descrip} :
				<a
					href="${contextPath}/document/${courseIlm.getCourse().getCourseName()}/download?file=${doc.getLocaFileDoc()}"
					id="file-doc">${doc.getLocaFileDoc()}</a>
				<br>
			</c:forEach>
		</div>
	</c:if>
	<c:if test="${not empty courseIlm.getVocaCourseIlms()}">
		<div class="lesson-content-detail"
			style="max-height: 600px; margin-bottom: 30px">
			<table border="1" cellpadding="0" cellspacing="0"
				style="width: 600px">
				<tbody>
					<tr>
						<th style="height: 23px; text-align: center; width: 156px"><span
							style="font-size: 14px"><strong>&nbsp;Hiragana</strong><br>
								<strong>Katakana</strong></span></th>
						<th style="height: 23px; text-align: center; width: 108px"><span
							style="font-size: 14px"><strong>&nbsp;Kanji</strong></span></th>
						<th style="height: 23px; text-align: center; width: 336px"><span
							style="font-size: 14px"><strong>&nbsp;Ý nghĩa</strong></span></th>
					</tr>

					<c:forEach items="${courseIlm.getVocaCourseIlms()}" var="voca">
						<tr>
							<td style="height: 23px; width: 156px"><span
								style="font-size: 14px">&nbsp;${voca.getHirakana()}</span></td>
							<td style="height: 23px; width: 108px"><span
								style="font-size: 14px">&nbsp;${voca.getKanji()} </span></td>
							<td style="height: 23px; width: 336px"><span
								style="font-size: 14px">&nbsp;${voca.translate}</span></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
			<br> <br>
		</div>
	</c:if>
	<div class="introduce" id="introduce">${courseIlm.getIntroduce() }</div>
	<c:if test="${courseIlm.getLocaFileCourse() != null}">
		<br>
		<a class="movie-play"> <img id="videoImg"
			src="${contextPath}/reponsitory/${courseIlm.getCourse().getCourseName()}/img/${courseIlm.getLocaFileImg()}" />
			<br> <span class="play-icon-btn"> <i
				class="zmdi zmdi-play"></i>
		</span>
		</a>
		<div id="iframe-video" style="display: none;">
			<video width="100%" height="395" controls id="cVideo">
				<source
					src="${contextPath}/reponsitory/${courseIlm.getCourse().getCourseName()}/video/${courseIlm.getLocaFileCourse()}"
					type="video/mp4" id="srVideo">
			</video>
		</div>
	</c:if>
	<c:if test="${not empty courseIlm.getExams()}">
		<div class="lesson-content-detail" id="lesson-content-detail">
			<c:forEach items="${courseIlm.getExams()}" var="exam">
				<c:forEach items="${exam.getExamQuestion()}" var="question"
					varStatus="st">
					<div style="margin-top: 25px; display: inline-block;"
						v-html="tasks[${st.index }].value"></div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<c:forEach items="${question.getExamAnswer()}" var="answer"
							varStatus="an">
							<div style="width: 48%; margin-top: 10px;">
								<label
									for="answer${answer.getExamAnswerId().substring(answer.getExamAnswerId().length()-2, answer.getExamAnswerId().length())}"
									class="col-md-11 answers-input"
									style="font-weight: normal; font-size: 13px; color: gray">
									<span style="display: none;">${answer.getExamAnswerId().substring(answer.getExamAnswerId().length()-2, answer.getExamAnswerId().length())}</span>
									<input type="radio"
									class="custom-control-input col-md-1 answers-input"
									id="answer${answer.getExamAnswerId().substring(answer.getExamAnswerId().length()-2, answer.getExamAnswerId().length())}"
									name="task${question.getExamQuestionId().substring(question.getExamQuestionId().length()-2, question.getExamQuestionId().length())}"
									v-on:change="storeValueToLocal(${question.getExamQuestionId().substring(question.getExamQuestionId().length()-2, question.getExamQuestionId().length())},${answer.getExamAnswerId().substring(answer.getExamAnswerId().length()-2, answer.getExamAnswerId().length())})">
									<span style="display: none;">${answer.getAnswerRghtWrng()}</span>&nbsp;&nbsp;${answer.getAnswer()}
								</label>
							</div>
						</c:forEach>
					</div>
				</c:forEach>
				<c:if test="${exam.getExamQuestion().size() > 0}">
					<button class="btn btn-primary trac-nghiem"
						v-on:click="sendTestResult('auth', 0)">Nộp bài</button>
				</c:if>
			</c:forEach>
			<hr style="border: 0; border-bottom: 1px solid #ddd;">
			<div class="alert mt20" id="result" style="display: none;">
				<div v-if="results.length > 0">
					<h4>Kết quả bài kiểm tra.</h4>
					<hr>
					<div class="alert"
						v-bind:class="[result.passed == 0 ? 'bg-warning' : 'bg-success']"
						style="font-size: 14px">
						<p>
							Thời gian thực hiện lúc <b>{{ printTime(result.created) }}</b>
							ngày <b>{{ printDate(result.created) }}</b>
						</p>
						<p>
							Tổng điểm: <b>{{ userScore }} / {{ lesson.total_marks }}</b>
						</p>
						<p>
							Kết quả: <b v-if="result.passed == 0">Không đạt yêu cầu</b><b
								v-if="result.passed != 0">Đã qua</b>
						</p>
						<button class="btn btn-info review-result"
							v-on:click="reviewTestResult(0)">Xem bài làm</button>
					</div>
				</div>
			</div>

			<div class="modal fade" id="empty_answers" role="dialog" tabindex="0">
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

			<!-- 			<div class="modal fade" id="removeResult" role="dialog" tabindex="-1"> -->
			<!-- 				<div class="modal-dialog"> -->
			<!-- 					<div class="modal-content"> -->
			<!-- 						<div class="modal-header"> -->
			<!-- 							<button type="button" class="close" data-dismiss="modal">&times;</button> -->
			<!-- 							<h4 class="modal-title">Xóa</h4> -->
			<!-- 						</div> -->
			<!-- 						<div class="modal-body"> -->
			<!-- 							<p>Bạn có muốn xóa bài kiểm tra này không?</p> -->
			<!-- 						</div> -->
			<!-- 						<div class="modal-footer"> -->
			<!-- 							<button type="button" class="btn btn-warning" -->
			<!-- 								v-on:click="confirmRemove()">Xóa</button> -->
			<!-- 							<button type="button" class="btn btn-info" data-dismiss="modal">Đóng</button> -->
			<!-- 						</div> -->
			<!-- 					</div> -->

			<!-- 				</div> -->
			<!-- 			</div> -->

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

			<div class="modal fade" id="myModal" role="dialog" tabindex="-1">
				<div class="modal-dialog test-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Chi tiết bài kiểm tra</h4>
						</div>
						<div class="modal-body">
							<table
								class="table table-bordered table-striped table-hover tc-table">
								<tbody>
									<tr>
										<td class="row_label">Kết quả</td>
										<td class="row_item"><b v-if="currentResult.passed == 0">Không
												đạt yêu cầu</b><b v-if="currentResult.passed != 0">Đã qua</b></td>
									</tr>
									<tr>
										<td class="row_label">Điểm đạt được</td>
										<td class="row_item">{{ userScore }}</td>
									</tr>
									<tr>
										<td class="row_label">Tổng điểm bài kiểm tra</td>
										<td class="row_item">{{ lesson.total_marks }}</td>
									</tr>
									<tr>
										<td class="row_label">Thời gian thi</td>
										<td class="row_item">{{ printTime(currentResult.created)
											}} - {{ printDate(currentResult.created) }}</td>
									</tr>
									<tr>
										<td colspan="2" class="content-test-detail">
											<div v-for="(task, index) in tasks">
												<div v-if="task.type == 3 || task.type == 5">
													<p style="margin: 10px 0; font-size: 16px;"
														v-html="task.value" v-if="task.type == 3"></p>
													<div class="col-sm-6 answer-area"
														style="margin-bottom: 10px;"
														v-for="(answer, index) in answers[task.id]">
														<div class="question-answer">
															<div class="labels question-answer-content"
																v-bind:class="[answer.grade == 0 ? '' : 'label-true', (answer.grade == 0 && answer.checked) ? 'label-false' : '']">
																<input type="radio" v-if="answer.checked == true"
																	checked onclick="this.checked = true"> <input
																	type="radio" v-if="answer.checked != true"
																	onclick="this.checked = false">&nbsp;&nbsp;{{
																answer.value }}<span v-if="answer.grade != 0">&nbsp;(Đúng)</span>
															</div>
														</div>
													</div>

													<div v-if="task.type == 3" class="col-md-11"
														style="display: inline-block; width: 100%; height: 10px;"></div>
													<hr v-if="task.type == 3"
														style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0; border-color: #ddd;">
												</div>

											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="modal-footer">
							<button type="button" data-dismiss="modal"
								class="btn btn-primary">Đóng</button>
						</div>
					</div>

				</div>

			</div>
			<script>
			lesson_tasks = ${lesson_tasks};
			lesson_answers = ${lesson_answers};
			lesson_lesson = ${lesson_lesson};
			lesson_results = [];
			lesson_writeQuestions = [];
			course = "${courseName}"; //Them khoa hoc cho JLPT
			posExam = null; //tu dong load cho bai thi sau
			is_exam = "0"; //check xem co phải là bài thi hay ko
				is_exam = "0"; //check xem co phải là bài thi hay ko		
			</script>
		</div>
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
<%-- 	<script src="${contextPath}/resources/public/js/vue.js"></script> --%>
<%-- 		<script src="${contextPath}/resources/public/js/app.js"></script> --%>
		<script src="${contextPath}/resources/public/js/detail_lesson.js"></script>
	<div class="comment-container">
					<ul class="nav nav-pills comment-tab">
						<li class="li-tab user-tab active"><a data-toggle="pill"
							href="#user-comment-content">Ý kiến học viên</a></li>
					</ul>
					<div>
						<div class="fb-comments"
							data-href="https://localhost:8888/khoa-hoc/${courseName}#${courseIlm.getLessonName()}"
							data-width="700px"></div>
					</div>
				</div>

</div>