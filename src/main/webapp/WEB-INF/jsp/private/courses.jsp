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
							<div class="box-header">
								<h3>
									<label>Danh Sách Các Bài Học : ${course.courseName}</label>
								</h3>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<table id="data-show" class="table table-bordered table-hover">
									<thead>
										<tr>
										<th width="5%">STT</th>
											<th width="14%">Kiến Thức</th>
											<th width="19%">Tên Bài Học</th>
											<th width="22%">Giới Thiệu Bài Học</th>
											<th width="31%">Video Bài Học</th>
											<th width="9%"></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${course.courseIlms}" var="cl" varStatus="id">
											<tr>
											<td>${id.index+1}</td>
												<td>${cl.courseIlmType.courseIlmTypeName}</td>
												<td>${cl.lessonName}</td>
												<td>${cl.lessonName}</td>
												<td><a class="movie-play" onclick="adminView(this)" id="fr-${id.index}"> <img id="videoImg"
														src="${contextPath}/reponsitory/N2/img/d.jpg" /> <br>
														<span class="play-icon-btn"> <i
															class="zmdi zmdi-play"></i>
													</span>
												</a>
													<div id="video-fr-${id.index}"
														style="display: none; margin-left: 26%;">
														<video width="170px" height="110px" controls id="video-${id.index}">
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
