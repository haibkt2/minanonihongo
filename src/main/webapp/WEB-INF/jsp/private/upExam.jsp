<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>HaiLDX - Thêm bài học mới.</title>
<link rel="icon" href="${contextPath}/resources/public/img/fav.png" />
<script src="../ckeditor/ckeditor.js"></script>
<script src="../ckfinder/ckfinder.js"></script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="menu.jsp"></jsp:include>
		<div class="content-wrapper">
			<div class="mess-exam">
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-info">
								<!-- /.box-header -->
								<div class="box-body pad">
									<div class="box-body">
										<div class="form-group" style="width: 100%">
											<div style="text-align: center; color: blue; font-size: 18px">
												<i class="fa fa-fw fa-chevron-down"></i>
												<c:out value="Cập Nhật - Thêm mới Bài Viết Thành Công"></c:out>
											</div>
											<br>
											<div style="text-align: center; color: blue; font-size: 18px">
												<p>
													Cập nhật - thêm mới phần câu hỏi luyện tập cho bài học : <span>
														<a href="" style="color: #00c0ef">Khóa học
															${courseIlmForm.lessonName}</a>
													</span>
												</p>
												<button type="button" class="btn btn-default"
													onclick="updateExam('no','${courseIlmForm.course.courseName}')">Bỏ
													qua</button>
												<button type="button" class="btn btn-primary"
													onclick="updateExam('ok','')">Tiếp tục</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
			<div class="mn-exam">
				<f:form action="${contextPath}/admin/update-course/update-exam" modelAttribute="courseIlmForm">
					<f:input path="courseIlmId" type="hidden" />
					<!-- Main content -->
					<section class="content">
						<div class="row">
							<div class="col-md-12">
								<div class="box box-info">
									<!-- /.box-header -->
									<div class="box-body pad">
										<div>
											<button type="submit" class="btn btn-info btn-flat"
												onclick="saveExam()" style="margin: 5px 0 0 40px">Hoàn
												tất</button>
										</div>
										<div class="box-body">
											<div class="detail-exam-ct">
												<c:forEach items="${courseIlmForm.exams}" var="exam">
													<c:forEach items="${exam.examQuestion}" var="qt">
														<table id="data-exam" change-data="n" dt-db="ys"
															class="scrollTable table table-bordered table-hover dataTable no-footer ${qt.examQuestionId}"
															role="grid" aria-describedby="example2_info">
															<thead id="${qt.examQuestionId}">
																<tr style="background-color: #cbe1f2;">
																	<td>${qt.question}</td>
																	<td width="80px" class="act-exam"><a
																		onclick="delQt('${qt.examQuestionId}')"
																		href="javascript:void(0);">&nbsp;<i
																			class="fa fa-trash-o">&nbsp;</i></a><a
																		onclick="fixQt(this)" href="javascript:void(0);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i
																			class="fa fa-pencil"></i></a></td>
																</tr>
															</thead>
															<tbody class="list-ans">
																<c:forEach items="${qt.examAnswer}" var="as" varStatus="in">
																	<tr id="${as.examAnswerId}">
																		<td><input type="radio"
																			name="${qt.examQuestionId}"
																			<c:if test="${as.answerRghtWrng eq 1}">checked</c:if> disabled style="margin-right: 10px">${as.answer}</td>
																		<td><a class="del-voca" onclick="delAns(this)"
																			href="javascript:void(0);">&nbsp;<i
																				class="fa fa-trash-o">&nbsp;</i></a><a
																			onclick="fixAns(this)" href="javascript:void(0);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i
																				class="fa fa-pencil"></i></a></td>
																	</tr>
																	<c:if test="${(in.index + 1) eq qt.examAnswer.size() }">
																	<tr>
																		<td></td>
																		<td><a onclick="fixAns(this)" href="javascript:void(0);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																			<i class="fa fa-fw fa-plus-square-o"></i></a></td>
																	</tr>
																	</c:if>
																</c:forEach>
															</tbody>
															<tfoot class="list-explain"
																id="tfoot-${qt.examQuestionId}">
																<tr>
																	<td>${qt.ex}</td>
																	<td><a class="del-voca" href="javascript:void(0);">&nbsp;</a><a
																		onclick="fixEx(this)" href="javascript:void(0);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i
																			class="fa fa-pencil"></i></a></td>
																</tr>
															</tfoot>
														</table>
													</c:forEach>
												</c:forEach>
											</div>
											<input type="hidden" value="add" id="ac-add-exam">
											<input type="hidden" value="[]" id="ac-del-exam" name="delQt">
										</div>
										<div class="box-body add-question-ans">
											<div class="form-group col-lg-11">
												<div class="add-exam-an-dt">
													<table id="data-ans" change-data="c"
														class="scrollTable table table-bordered table-hover dataTable no-footer"
														role="grid" aria-describedby="example2_info">
														<thead>
															<tr style="background-color: #cbe1f2;">
																<td><label class="nd-qt"></label></td>
																<td class="act-exam" width="80px"><a
																	href="javascript:void(0);">&nbsp;<i
																		class="fa fa-trash-o">&nbsp;</i></a><a
																	href="javascript:void(0);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i
																		class="fa fa-pencil"></i></a></td>
															</tr>
														</thead>
														<tbody class="list-ans-add">
															<tr>
																<td></td>
																<td></td>
															</tr>
														</tbody>
														<tfoot class="list-explain-add">
															<tr>
																<td class="nd-explain"></td>
																<td><a href="javascript:void(0);">&nbsp;</a><a
																	onclick="fixEx(this)" href="javascript:void(0);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i
																		class="fa fa-pencil"></i></a></td>
															</tr>
														</tfoot>
													</table>
												</div>
												<script>
												window.onload = function myFunction() {
													var a = $('#ac-add-exam').val(), 
													qt, ep;
													if ('add' != a) {
														qt = '';
														ep = '';
													} else {
														qt = CKEDITOR.instances['question-add'].getData(),
														ep = CKEDITOR.instances['explain-add'].getData();
													}
													if (qt == '')
														$('.add-exam-an-dt table thead tr td:nth-child(2) a')
																.css("display","none");
													else {
														$('.add-exam-an-dt table thead tr td:nth-child(2) a')
																.css("display","block");
														$('.add-exam-an-dt table thead tr td:nth-child(2) a')
																.removeAttr("style");
													}
													if (ep == '')
														$('.add-exam-an-dt table tfoot tr td:nth-child(2) a')
																.css("display","none");
													else {
														$('.add-exam-an-dt table tfoot tr td:nth-child(2) a')
																.css("display","block");
														$('.add-exam-an-dt table tfoot tr td:nth-child(2) a')
																.removeAttr("style");
													}
													$('.nd-qt').html(qt);
													$('.nd-explain').html(ep);
													setTimeout(myFunction,10);
												}
												</script>
												<br>
												<div class="col-lg-11">
													<div class="input-group add-anwser-f">
														<span class="input-group-addon"> <input
															class="right-wrong" type="checkbox">
														</span> <input type="text" class="form-control ct-answser"
															placeholder="Nhập câu trả lời ..."> <span
															class="input-group-btn">
															<button type="button" onclick="addAnswer()"
																class="btn btn-info btn-flat add-ans">
																<i class="fa fa-fw fa-upload"></i>
															</button>
														</span>
													</div>
													<!-- /input-group -->
												</div>
											</div>
											<div class="form-group add-exam-qt">
												<div class="col-xs-11 ">
													<h4>
														<label>Thêm câu hỏi</label>
													</h4>
													<div style="width: 100%; font-size: 20px; margin-left: 15px">
														<div class="show-ma-gr">
															<a onclick="showMnGr()" href="javascript:void(0);">&nbsp;<i
																class="fa fa-fw fa-plus-square-o"></i></a>
														</div>
														<div class="hiden-ma-gr hiden-ma">
															<a onclick="showMnGr()" href="javascript:void(0);">&nbsp;<i
																class="fa fa-fw fa-minus"></i></a>
														</div>
													</div>
													<div class="mana-gr" style="display: none;">
														<textarea id="question-add"
															class="form-control question-add"></textarea>
													</div>
												</div>
												<br>
												<div class="col-xs-11 ">
												<h4>
													<label>Giải thích</label>
												</h4>
													<div
														style="width: 100%; font-size: 20px; margin-left: 15px">
														<div class="show-ma-cv">
															<a onclick="showMnCv()" href="javascript:void(0);">&nbsp;<i
																class="fa fa-fw fa-plus-square-o"></i></a>
														</div>
														<div class="hiden-ma-cv hiden-ma">
															<a onclick="showMnCv()" href="javascript:void(0);">&nbsp;<i
																class="fa fa-fw fa-minus"></i></a>
														</div>

													</div>
													<div class="mana-cv" style="display: none;">
														<textarea id="explain-add"
															class="form-control explain-add"
															placeholder="Nhập câu hỏi .."></textarea>
													</div>
												</div>
												<br>
											</div>
										</div>
										<div>
											<button type="button" onclick="addExam()"
												class="btn btn-info btn-flat btn-add-member"
												style="margin: 5px 0 0 40px" id="submit-vc">Thêm</button>
										</div>
									</div>

								</div>

							</div>

						</div>

					</section>
				<input type="hidden" name="exam" id="l-exam">
				</f:form>
			</div>
			<div></div>
			<!-- /.content -->
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- /.content-wrapper -->
		<script>
			CKEDITOR
					.replace(
							'question-add',
							{
								filebrowserBrowseUrl : '../ckfinder/ckfinder.html',
								filebrowserImageBrowseUrl : '../ckfinder/ckfinder.html?type=Images',
								filebrowserFlashBrowseUrl : '../ckfinder/ckfinder.html?type=Flash',
								filebrowserUploadUrl : '../ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files',
								filebrowserImageUploadUrl : '../ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images',
								filebrowserFlashUploadUrl : '../ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash'
							});
			CKEDITOR
					.replace(
							'explain-add',
							{
								filebrowserBrowseUrl : '../ckfinder/ckfinder.html',
								filebrowserImageBrowseUrl : '../ckfinder/ckfinder.html?type=Images',
								filebrowserFlashBrowseUrl : '../ckfinder/ckfinder.html?type=Flash',
								filebrowserUploadUrl : '../ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files',
								filebrowserImageUploadUrl : '../ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images',
								filebrowserFlashUploadUrl : '../ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash'
							});
		</script>
		<%-- 		<script src="${contextPath}/resources/private/js/jquery.min.js"></script> --%>
		<!-- 		<script -->
		<%-- 			src="${contextPath}/resources/private/js/jquery.dataTables.min.js"></script> --%>
		<!-- 		<script -->
		<%-- 			src="${contextPath}/resources/private/js/dataTables.bootstrap.min.js"></script> --%>
		<script src="${contextPath}/resources/private/js/up.lesson.js"></script>
		<%-- 		<script src="${contextPath}/resources/public/js/detail_lesson.js"></script> --%>
	</div>
</body>

</html>
