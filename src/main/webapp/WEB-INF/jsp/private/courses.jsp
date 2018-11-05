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
<title>AdminLTE 2 | Editors</title>
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
										<div class="add-list" style="width: 8%; float: right;">
											<button class="btn btn-default" id="submit-file">Thêm
												File</button>
										</div>
										<div style="min-width: 84%; float: left;" class="add-list">
											<input type="text" class="form-control" id="file-name"
												value="" disabled>
										</div>
										<div class="btn btn-default btn-file add-list"
											style="max-width: 8%; float: right;">
											Chọn File<input type="file" name="attachment"
												id="file-upload">
										</div>
									</div>
									<input type="hidden" value="${course.courseName}"
										name="course-name">
								</form>
								<br>
								<div id="result">
									<c:if test="${not empty course.getDocuments()}">
										<div style="margin-left: 15px; font-size: 16px">
											<br> <strong>Tài liệu <c:out
													value="${courseName}"></c:out> :
											</strong> <br> <br>
											<table id="data-show-doc"
												class="table table-bordered table-hover" style="width: 80%">
												<thead>
													<tr>
														<th width="5%"></th>
														<th width="90%" style="text-align: center;">Tên File</th>
														<th width="5%"></th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${course.getDocuments()}" var="doc"
														varStatus="d">
														<tr>
															<td></td>
															<td>${doc.locaFileDoc}</td>
															<td style="min-height: 30px;"><a class="del-voca"
																data-toggle="modal" data-target="#modal-dele-${d.index}"
																onclick="deleteRow(this)" href="javascript:void(0);">&nbsp;<i
																	class="fa fa-trash-o">&nbsp;</i></a></td>
														</tr>
														<div class="modal fade in" id="modal-dele-${d.index}"
															style="display: none; padding-right: 17px;">
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
																		<p>${doc.locaFileDoc}</p>
																	</div>
																	<div class="modal-footer">
																		<button type="button"
																			class="btn btn-default pull-left"
																			data-dismiss="modal">Hủy</button>
																		<button type="button" class="btn btn-primary"
																			id="${doc.docId}">Xóa</button>
																	</div>
																</div>
																<!-- /.modal-content -->
															</div>
															<!-- /.modal-dialog -->
														</div>
													</c:forEach>
												</tbody>
											</table>
										</div>
										<br>
									</c:if>
								</div>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<table id="data-show" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th width="5%" style="font-size: 16px">STT</th>
											<th width="14%" style="font-size: 16px">Kiến Thức</th>
											<th width="19%" style="font-size: 16px">Tên Bài Học</th>
											<th width="22%" style="font-size: 16px">Giới Thiệu Bài Học</th>
											<th width="31%" style="font-size: 16px">Video Bài Học</th>
											<th width="9%"></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${courseIlms}" var="cl" varStatus="id">
											<tr>
												<td style="text-align: center;">${id.index+1}</td>
												<td>${cl.courseIlmType.courseIlmTypeName}</td>
												<td>${cl.lessonName}</td>
												<td>${cl.lessonName}</td>
												<td><a class="movie-play" onclick="adminView(this)"
													id="fr-${id.index}"> <img id="videoImg"
														src="${contextPath}/reponsitory/N2/img/d.jpg" /> <br>
														<span class="play-icon-btn"> <i
															class="zmdi zmdi-play"></i>
													</span>
												</a>
													<div id="video-fr-${id.index}"
														style="display: none; margin-left: 26%;">
														<video width="170px" height="110px" controls
															id="video-${id.index}">
															<source
																src="${contextPath}/reponsitory/N5/video/Bai-1.mp4"
																type="video/mp4">
														</video>
													</div></td>
												<td style="min-height: 30px;"><a class="del-voca"
													onclick="deleteRow(this)" href="javascript:void(0);">&nbsp;<i
														class="fa fa-trash-o">&nbsp;</i></a>&nbsp;&nbsp;<a
													onclick="fixRow(this)" href="javascript:void(0);">&nbsp;<i
														class="fa fa-pencil"></i></a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->

					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- /.content-wrapper -->
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
		<script type="text/javascript">
			// sự kiện click vào chạy video
		</script>
		<script src="${contextPath}/resources/private/js/jquery.min.js"></script>
		<script
			src="${contextPath}/resources/private/js/jquery.dataTables.min.js"></script>
		<script
			src="${contextPath}/resources/private/js/dataTables.bootstrap.min.js"></script>
		<script src="${contextPath}/resources/private/js/add.lesson.js"></script>
	</div>
</body>

</html>
