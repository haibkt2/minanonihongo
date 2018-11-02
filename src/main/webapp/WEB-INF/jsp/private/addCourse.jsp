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
<script src="../ckeditor/ckeditor.js"></script>
<script src="../ckfinder/ckfinder.js"></script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="menu.jsp"></jsp:include>
		<div class="content-wrapper">
			<section class="content-header">
				<span><h1 style="text-align: center;">
						Thêm bài bài học mới : <a href="" style="color: #00c0ef">Khóa
							học N3</a>
					</h1></span>
			</section>
			<form action="/home">
				<!-- Main content -->
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-info">
								<!-- /.box-header -->
								<div class="box-body pad">
									<div class="box-body">
										<div class="form-group" style="width: 100%">
											<div style="float: left;">
												<h4>
													<label>Loại Bài Học :</label>
												</h4>
											</div>
											<div style="width: 15%; margin-left: 120px;">
												<select class="form-control">
													<option>Mustard</option>
													<option>Ketchup</option>
													<option>Relish</option>
												</select>
											</div>
										</div>
										<div class="form-group" style="">
											<h4>
												<label> Tên Bài Học</label>
											</h4>
											<input type="text" class="form-control" name="title"
												path="notifyTitle" id="fullname"
												placeholder="Enter fullname" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-xs-12">
							<div class="box">
								<div class="box-header">
									<h4>
										<label style="margin-left: 12px;"> Từ Mới</label>
									</h4>
								</div>
								<div class="box-body" style="margin-left: 12px;">
									<div id="example2_wrapper"
										class="dataTables_wrapper form-inline dt-bootstrap">
										<div class="row">
											<div class="col-sm-12 tableContainer"
												id="detail-voca tableContainer">
												<table id="data-voca"
													class="scrollTable table table-bordered table-hover dataTable no-footer scrollTable"
													role="grid" aria-describedby="example2_info">
													<thead class="fixedHeader">
														<tr>
															<td width="27%"><label>Hirakana/Katakana</label></td>
															<td width="20%"><label>Kanji</label></td>
															<td width="43%"><label>Ý Nghĩa</label></td>
															<td width="10%"></td>
														</tr>
													</thead>
													<tbody id="list-voca" class="scrollContent">
														<tr style="width: 1px;">
															<td width="262px"></td>
															<td width="194px"></td>
															<td width="415px"></td>
															<td width="79px"></td>
														</tr>
														<tr id="voca01">
															<td>Katakana</td>
															<td>Kanji</td>
															<td>Ý Nghĩa</td>
															<td><a class="del-voca" onclick="deleteRow(this)"
																href="javascript:void(0);">&nbsp;<i
																	class="fa fa-trash-o">&nbsp;</i></a>&nbsp;&nbsp;<a
																onclick="fixRow(this)" href="javascript:void(0);">&nbsp;<i
																	class="fa fa-pencil"></i></a></td>
														</tr>

													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-3">
										<label style="margin-left: 5px;">Hirakana/Katakana</label> <input
											id="hirakana" type="text" class="form-control"
											placeholder=".col-xs-4" style="margin-left: 5px">
									</div>
									<div class="col-xs-3">
										<label>Kanji</label> <input type="text" id="kanji"
											class="form-control" placeholder=".col-xs-4">
									</div>
									<div class="col-xs-5">
										<label>Dịch nghĩa</label> <input type="text" id="translate"
											class="form-control" placeholder=".col-xs-5">
									</div>
									<div>
										<button type="button" onclick="addVoca()"
											class="btn btn-info btn-flat btn-add-member"
											style="margin-top: 25px">Thêm</button>
									</div>
								</div>
								<div style="width: 100%; height: 1px;"></div>
								<!-- /.box-body -->
							</div>
							<!-- /.box -->

						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</section>

				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-info">
								<!-- /.box-header -->
								<div class="box-body pad">
									<div class="box-body" style="width: 80%;">
										<div class="form-group" style="width: 100%"></div>
										<div class="form-group">
											<h4>
												<label> Nội Dung Bài Học</label>
											</h4>
											<textarea class="ckeditor" id="content" name="content"
												required="true" rows="12"></textarea>
										</div>
										<div class="form-group">
											<h4>
												<label> Video Bài Học</label>
											</h4>
											<div class="btn btn-default btn-file">
												<i class="fa fa-fw fa-file-image-o"></i> Ảnh Nền Video<input
													type="file" name="attachment">
											</div>
											&nbsp;&nbsp;
											<div class="btn btn-default btn-file">
												<i class="fa fa-fw fa-file-video-o"></i> Video Bài Học Đính
												Kèm(Max.32MB)<input type="file" name="attachment">
											</div>
										</div>
										<button class="btn btn-primary" onclick="addCourse();">
											<i class="fa fa-fw fa-check"></i>Cập Nhật
										</button>
									</div>

								</div>

							</div>
							<!-- /.box -->
						</div>
						<!-- /.col-->
					</div>
					<!-- ./row -->
				</section>
				<input type="hidden" name="edit-voca" id="edit-voca" value="o"
					index="o" /> <input type="hidden" name="list-current"
					id="list-current" /> <input type="hidden" name="dele-old"
					id="dele-old" />
			</form>
			<div></div>
			<!-- /.content -->
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- /.content-wrapper -->
		<script>
			CKEDITOR
					.replace(
							'content',
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
		<script src="${contextPath}/resources/private/js/add.lesson.js"></script>
	</div>
</body>

</html>
