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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Editors</title>
<script src="ckeditor/ckeditor.js"></script>
<script src="ckfinder/ckfinder.js"></script>
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
			<section class="content">
				<div class="col-md-12">
					<div class="box box-info">
						<div class="box-body pad">
							<form>
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
									<div class="form-group">
										<h4>
											<label> Tên Bài Học</label>
										</h4>
										<input type="text" class="form-control" required="true"
											name="title" path="notifyTitle" id="fullname"
											placeholder="Enter fullname" />
									</div>
									<h4>
										<label> Từ Mới</label>
									</h4>
									<div class="form-group">
										<div class="row col-xs-3">
											<label>Hirakana/Katakana</label> <input type="text"
												class="form-control" placeholder=".col-xs-3">
										</div>
										<div class="col-xs-4">
											<label>Kanji</label> <input type="text" class="form-control"
												placeholder=".col-xs-4">
										</div>
										<div class="col-xs-4">
											<label>Dịch nghĩa</label> <input type="text"
												class="form-control" placeholder=".col-xs-5">
										</div>
										<div>
											<button type="button" class="btn btn-info btn-flat"
												style="margin-top: 25px">Thêm</button>
										</div>
									</div>
									<div class="form-group">
										<h4>
											<label> Nội Dung Bài Học</label>
										</h4>
										<textarea class="ckeditor" id="content" name="content"
											required="true" rows="5"></textarea>
									</div>

									<div class="form-group">
										<h4>
											<label> Video Bài Học</label>
										</h4>
										<div class="btn btn-default btn-file">
											<i class="fa fa-fw fa-file-image-o"></i> Ảnh Nền Video<input
												type="file" name="attachment">
										</div>&nbsp;&nbsp;
										<div class="btn btn-default btn-file">
											<i class="fa fa-fw fa-file-video-o"></i> Video Bài Học Đính
											Kèm<input type="file" name="attachment">
										</div>
										<p class="help-block" style="margin-left: 200px;">Max. 32MB</p>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</section>
		</div>
		<div class="control-sidebar-bg"></div>
	</div>
	<script>
		CKEDITOR
				.replace(
						'content',
						{
							filebrowserBrowseUrl : 'ckfinder/ckfinder.html',
							filebrowserImageBrowseUrl : 'ckfinder/ckfinder.html?type=Images',
							filebrowserFlashBrowseUrl : 'ckfinder/ckfinder.html?type=Flash',
							filebrowserUploadUrl : 'ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files',
							filebrowserImageUploadUrl : 'ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images',
							filebrowserFlashUploadUrl : 'ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash'
						});
	</script>
</body>
</html>
