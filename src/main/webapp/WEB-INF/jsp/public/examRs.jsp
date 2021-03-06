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
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>HaiLDX - Tiếng Nhật cho mọi người</title>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="main">
		<div class="main-center">
			<div class="main-user-left">
				<div class="user-avatar-container">
					<span class="clear-preview-upload"><i
						class="zmdi zmdi-close-circle"></i></span> <img class="user-avatar"
						id="user-avatar-preview"
						src="${contextPath}/reponsitory/Avatar/<c:if test="${user.avatar == null}">img-df.png</c:if><c:if test="${user.avatar != null}">${user.avatar }</c:if>" />
				</div>
				<button type="button" class="btn change-avatar">
					<i class="zmdi zmdi-camera-add"></i><span
						class="change-avatar-btn-desktop">&nbspThay ảnh đại diện</span><span
						class="change-avatar-btn-mobile">&nbspThay ảnh</span>
				</button>
				<button type="button" class="btn btn-success save-avatar"
					style="display: none;">
					<i class="zmdi zmdi-cloud-upload"></i> Lưu ảnh
				</button>

				<form id="avatar-form">
					<input type='file' id="inputAvatar" name="inputAvatar"
						style="display: none;" onchange="readURL(this);" />
				</form>

				<div class="account-left-menu">
					<a href="${contextPath}/tai-khoan/thong-tin-ca-nhan"
						class="item-user"><i class="zmdi zmdi-account-box"></i><span>Thông
							tin cá nhân</span></a> <a href="${contextPath}/tai-khoan/ket-qua-thi-thu"
						class="item-user current"><i class="zmdi zmdi-dns"></i><span>Kết
							quả thi thử</span></a> <a style="cursor: pointer;" onclick="logout()"
						class="item-user danger logout-tab"><i class="zmdi zmdi-power"></i><span>Đăng
							xuất</span></a>
				</div>
			</div>

			<div class="main-user-right">
				<div class="rs-title">
					&nbsp;&nbsp;Danh sách - Kết
					quả các bài đã thi.
				</div>
				<div class="tab-content-container course-test"
					id="result-test-profile">
					<div class="panel panel-default" v-for="lesson in listLessons"
						v-if="listResults[lesson.id].length != 0">
						<div class="panel-heading" role="tab">
							<h4 class="panel-title">
								<a role="button" data-toggle="collapse" data-parent="#accordion"
									:href="'#collapse-' + lesson.id" aria-expanded="false"
									:aria-controls="'#collapse-' + lesson.id" class="collapsed">
									{{ lesson.group_name }} - {{ lesson.lesson_name }}</a>
							</h4>
						</div>
						<div :id="'collapse-' + lesson.id" class="panel-collapse collapse"
							role="tabpanel" :aria-labelledby="'heading-' + lesson.id"
							aria-expanded="false">
							<div class="panel-body">
								<div class="alert"
									v-for="(result, index) in listResults[lesson.id]"
									v-bind:class="[result.passed == 0 ? 'bg-warning' : 'bg-success']">
									<p>
										Thời gian thực hiện lúc <b> {{ printTime(result.created)
											}} </b> ngày <b> {{ printDate(result.created) }} </b>
									</p>
									<p>
										Tổng điểm: <b>{{ result.grade }}</b> / <b>{{
											result.total_grade }}</b>
									</p>
									<p>
										Kết quả: <b v-if="result.passed == 0">Không đạt yêu cầu</b><b
											v-if="result.passed != 0">Đã qua</b>
									</p>
									<button class="btn btn-info review-test-result"
										data-toggle="modal" data-target="#reviewTestResult"
										v-on:click="reviewTestResult(lesson.id, index)">Xem
										bài làm</button>
									<button class="btn btn-warning remove-test-result"
										data-toggle="modal" data-target="#removeTestResult"
										v-on:click="removeTestResult(lesson.id, index)">Xóa</button>
								</div>
							</div>
						</div>

						<div id="removeTestResult" class="modal fade" role="dialog">
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
											v-on:click="confirmRemoveResult()">Xóa</button>
										<button type="button" class="btn btn-info"
											data-dismiss="modal">Đóng</button>
									</div>
								</div>

							</div>
						</div>

						<div class="modal fade" id="reviewTestResult" role="dialog"
							tabindex="-1">
							<div class="modal-dialog test-modal-dialog">
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
													<td class="row_item"><b
														v-if="currentResult.passed == 0">Không đạt yêu cầu</b><b
														v-if="currentResult.passed != 0">Đã qua</b></td>
												</tr>
												<tr>
													<td class="row_label">Điểm đạt được</td>
													<td class="row_item">{{ currentResult.grade }}</td>
												</tr>
												<tr>
													<td class="row_label">Tổng điểm bài kiểm tra</td>
													<td class="row_item">{{ currentResult.total_grade }}</td>
												</tr>
												<tr>
													<td class="row_label">Thời gian thi</td>
													<td class="row_item">{{
														printTime(currentResult.created) }} - {{
														printDate(currentResult.created) }}</td>
												</tr>
												<tr>
													<td colspan="2" class="test-detail-result">
														<div v-for="(task, index) in tasks" class="question-box">
														<p><span style="color: #0000ff;"><strong><span style="font-size: 16px;" v-if="task.idQT == 2" v-html="task.valQT"></span></strong></span></p>
															<div v-if="task.type == 3" class="answer-box">
																<p style="margin: 10px 0; font-size: 16px;"
																	v-html="task.value" v-if="task.type == 3"></p>
																<div class="col-sm-6 result-answer-area"
																	style="margin-bottom: 10px;"
																	v-for="(answer, index) in answers[task.id]">
																	<div class="question-answer">
																		<div class="labels"
																			v-bind:class="[answer.grade == 0 ? '' : 'label-true', (answer.grade == 0 && answer.checked) ? 'label-false' : '']">
																			<input type="radio" v-if="answer.checked == true"
																				checked onclick="this.checked = true"> <input
																				type="radio" v-if="answer.checked != true"
																				onclick="this.checked = false">&nbsp;&nbsp;{{
																			answer.value }}<span v-if="answer.grade != 0">&nbsp(Đúng)</span>
																		</div>
																	</div>
																</div>
																<div class="view-detail-ex">
																	<a v-on:click="showDtEx([task.tex])" href="javascript:void(0);" v-bind:id="[task.tex]">&nbsp;<i
																		class="fa fa-fw fa-plus-square-o"></i></a>
																</div>
																<div v-bind:class="[task.tex]" style="display: none;">
																	<p style="margin: 10px 0; font-size: 16px;"
																		v-html="task.ex" v-if="task.type == 3"></p>
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

					</div>

					<div class="paginate-container"></div>
				</div>
			</div>
		</div>
	</div>


	<script>
	result_ListResults = ${list_results};
	result_ListLessons = ${list_lessons};	
	</script>

	<script src="${contextPath}/resources/public/js/result.js"></script>

	<script src="${contextPath}/resources/public/js/avatar.js"></script>
	<script src="${contextPath}/resources/public/js/profile.js"></script>
	<jsp:include page="footer.jsp"></jsp:include>
	<div class="go-top">
		<i class="fa fa-sort-asc"></i>
	</div>
</body>
</html>