<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>HaiLDX - Thêm bài học mới.</title>
<link rel="icon" href="${contextPath}/resources/public/img/fav.png" />
<title></title>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="menu.jsp"></jsp:include>
		<div class="content-wrapper">
			<section class="content">
				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<div class="box-hesader">
								<section class="content-header"
									style="margin-bottom: 15px; text-align: center;">
									<h3 class="box-title" style="float: center;">
										Danh Sách Các Bài Học : <i style="color: blue;">${course.courseName}</i>
									</h3>
								</section>
							</div>
							<div style="margin-left: 15px;">
								<br>
								<form method="POST" enctype="multipart/form-data"
									id="fileUploadForm">
									<div class="add-new-file" style="width: 80%">
										<div style="width: 8%; float: right;"></div>
										<div style="min-width: 80%; float: left;" class="add-list">
											<input type="text" class="form-control" id="file-name"
												value="" disabled>
										</div>
										<div class="btn btn-default btn-file add-list"
											style="max-width: 9%; float: right;">
											Chọn File<input type="file" name="attachment"
												id="file-upload">
										</div>
									</div>
									<div class="add-new-file"
										style="width: 80%; margin: 2px 0 2px 0">
										<div style="width: 8%; float: right;"></div>
										<div style="min-width: 89%; float: left;" class="add-list">
											<input type="text" class="form-control"
												name="file-descrip-doc" placeholder="Nhập Mô Tả Cho File">
										</div>

									</div>
									<div style="width: 8%; float: left; margin-left: 15px;">
										<button class="btn btn-default" id="submit-file">Thêm
											File</button>
									</div>
									<input type="hidden" value="${course.courseName}"
										name="course-name">
								</form>
								<br>
								<div id="result">
									<div style="margin-left: 15px; font-size: 16px">
										<br> <strong>Tài liệu <c:out
												value="${courseName}"></c:out>
										</strong> <br>
										<table id="data-show-doc"
											class="table table-bordered table-hover" style="width: 80%">
											<thead>
												<tr>
													<th width="30%" style="text-align: center;">Mô Tả</th>
													<th width="65%" style="text-align: center;">Tên File</th>
													<th width="5%"></th>
												</tr>
											</thead>
											<tbody>
												<c:if test="${not empty course.getDocuments()}">
													<c:forEach items="${course.getDocuments()}" var="doc"
														varStatus="d">
														<tr>
															<td id="ds-nd-fix-${d.index}"><p class="mt ds-nd-fix-${d.index}" value="${doc.descrip}" id="${doc.docId}">${doc.descrip}<a
																		style="float: right;margin-right: 8px" href="javascript:void(0);" onclick="fixDoc(this)">&nbsp;&nbsp;&nbsp;<i
																		class="fa fa-pencil"></i></a>
																</p>
																<div id="ds-nd-fix" class="ip-fix ds-nd-fix-${d.index}">
																	<input class="form-control ds-nd-fix-${d.index}" type="text"><a style="float: left;margin-left: 8px"
																		href="javascript:void(0);" onclick="upMtDoc(this)"><i
																		class="fa fa-fw fa-upload"></i></a><a style="float: right; margin-right: 8px"
																		href="javascript:void(0);" onclick="delMtDoc(this)"><i
																		class="fa fa-fw fa-times"></i></a>
																</div></td>
															<td>${doc.locaFileDoc}</td>
															<td style="min-height: 30px;"><a class="del-voca"
																data-toggle="modal"
																data-target="#modal-dele-doc-${d.index}"
																href="javascript:void(0);">&nbsp;<i
																	class="fa fa-trash-o">&nbsp;</i></a></td>
														</tr>
														<div class="modal fade in" id="modal-dele-doc-${d.index}"
															style="padding-right: 17px;">
															<div class="modal-dialog">
																<div class="modal-content">
																	<div class="modal-header">
																		<button type="button" class="close"
																			data-dismiss="modal" aria-label="Close">
																			<span aria-hidden="true">×</span>
																		</button>
																		<h4 class="modal-title"
																			style="text-align: center; color: red">Bạn có
																			chắc muốn xóa :</h4>
																	</div>
																	<div class="modal-body">
																		<p>File tài liêu : ${doc.locaFileDoc}</p>
																	</div>
																	<div class="modal-footer">
																		<button type="button"
																			class="btn btn-default pull-left"
																			data-dismiss="modal">Hủy</button>
																		<button type="button"
																			class="btn btn-primary bt-dele-doc"
																		 id="${doc.docId}"
																			course="${doc.course.courseId}" data-dismiss="modal">Xóa</button>
																	</div>
																</div>
															</div>
														</div>
													</c:forEach>
												</c:if>
											</tbody>
										</table>
									</div>
									<br>
								</div>
							</div>
							<div style="width: 10%; float: right; margin-right: 15px;">
									<a href="${contextPath}/admin/add-course?course=${course.courseName}">	<button class="btn btn-default">Thêm
											Bài Học</button></a>
									</div>
							<div class="box-body">
								<br>
								<table id="data-show" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th width="3%" style="font-size: 16px">STT</th>
											<th width="14%" style="font-size: 16px">Kiến Thức</th>
											<th width="21%" style="font-size: 16px">Tên Bài Học</th>
											<th width="33%" style="font-size: 16px">Giới Thiệu Bài
												Học</th>
											<th width="22%" style="font-size: 16px">Video Bài Học</th>
											<th width="6%"></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${courseIlms}" var="cl" varStatus="id">
											<tr class="${cl.courseIlmId}">
												<td>${id.index+1}</td>
												<td>${cl.courseIlmType.courseIlmTypeName}</td>
												<td>${cl.lessonName}</td>
												<td><span class="brief">${cl.introduce}</span></td>
												<td><c:if test="${not empty cl.locaFileCourse}"><a class="movie-play" onclick="adminView(this)"
													id="fr-${id.index}"> <img id="videoImg"
														src="${contextPath}/reponsitory/${cl.course.courseName}/img/${cl.locaFileImg}" />
														<br> <span class="play-icon-btn"> <i
															class="fa fa-fw fa-play"></i>
													</span>
												</a>
													<div id="video-fr-${id.index}"
														style="display: none; margin-left: 10%;">
														<video width="170px" height="110px" controls
															id="video-${id.index}">
															<source
																src="${contextPath}/reponsitory/${cl.course.courseName}/video/${cl.locaFileCourse}"
																type="video/mp4">
														</video>
													</div></c:if></td>
												<td style="min-height: 30px;"><a class="del-voca"
													data-toggle="modal"
													data-target="#modal-dele-course-${id.index}"
													href="javascript:void(0);">&nbsp;<i
														class="fa fa-trash-o">&nbsp;</i></a> &nbsp;&nbsp;<a
													href="${contextPath}/admin/fix-course?id=${cl.courseIlmId}">&nbsp;<i
														class="fa fa-pencil"></i></a></td>
											</tr>
											<div class="modal fade in" id="modal-dele-course-${id.index}"
												style="padding-right: 17px;">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close">
																<span aria-hidden="true">×</span>
															</button>
															<h4 class="modal-title"
																style="text-align: center; color: red">Bạn có chắc
																muốn xóa :</h4>
														</div>
														<div class="modal-body">
															<p style="font-size: 18px">
																Bài học : ${cl.lessonName}<i>(<strong>Cảnh
																		báo: </strong>Các bài tập, bài kiểm tra .. liên quan cũng bị
																	xóa ??) <br> Hãy chắc chắn!!
																</i>
															</p>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-default pull-left"
																data-dismiss="modal">Hủy</button>
															<button type="button"
																class="btn btn-primary bt-dele-course"
																id="${cl.courseIlmId}" course="${cl.course.courseId}"
																data-dismiss="modal">Xóa</button>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
		<script>
			$(function() {
				$('#data-show').DataTable({
					'paging' : true,
					'lengthChange' : false,
					'searching' : true,
					'ordering' : true,
					'info' : true,
					'autoWidth' : false
				})
			})
		</script>
		<script src="${contextPath}/resources/private/js/jquery.min.js"></script>
		<script
			src="${contextPath}/resources/private/js/jquery.dataTables.min.js"></script>
		<script
			src="${contextPath}/resources/private/js/dataTables.bootstrap.min.js"></script>
		<script src="${contextPath}/resources/private/js/up.lesson.js"></script>
	</div>
</body>

</html>
