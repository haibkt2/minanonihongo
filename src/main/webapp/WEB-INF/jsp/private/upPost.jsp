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
			<section class="content-header">
				<span><h1 style="text-align: center;">
						Thêm bài viết : <a href="" style="color: #00c0ef">${pT.postTypeName}</a>
					</h1></span>
			</section>
			<f:form action="${contextPath}/admin/add-post"
				modelAttribute="postForm" enctype="multipart/form-data" >
				<f:input path="postId" type="hidden" />
				<!-- Main content -->
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-info">
								<!-- /.box-header -->
								<div class="box-body pad">
									<div class="box-body">
										<div class="form-group" style="width: 975px;">
											<h4>
												<label> Tên Bài Viết</label>
											</h4>
											<f:input type="text" class="form-control" name="postTitle"
												path="postTitle" id="postTitle" placeholder="Tên Bài Viêt" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>

				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-info">
								<!-- /.box-header -->
								<div class="box-body pad">
									<div class="box-body">
										<div class="form-group" style="width: 100%"></div>
										<div class="form-group">
											<h4>
												<label>Nội Dung</label>
											</h4>
											<div>
												<f:textarea class="ckeditor" id="postContent" name="postContent"
													path="postContent" required="true" rows="12"></f:textarea>
											</div>
										</div>
										<div class="form-group mana-cv">
											<h4>
												<label> Video Hội Thoại</label>
											</h4>
											<div class="btn btn-default btn-file">
												<i class="fa fa-fw fa-file-image-o"></i> Ảnh<input
													type="file" name="file-img">
											</div>
										</div>
										<button class="btn btn-primary" onclick="return addCourse();">
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

			</f:form>
			<div></div>
			<!-- /.content -->
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- /.content-wrapper -->
		<script>
			CKEDITOR
					.replace(
							'postContent',
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
