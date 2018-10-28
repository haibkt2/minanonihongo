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
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
</head>
<body>
	<div id="page-content-wrapper">
		<h1 id="home" class="text-center font-bold mt-1">Integrate
			ckfinder into ckeditor in spring boot project</h1>
		<h2>ShareEverythings.com</h2>
		<!-- Section: Create Page -->
		<section class="section mt-5 container-fluid">
			<!-- First row -->
			<div class="row">
				<!-- First col -->
				<div class="col-lg-6">
					<h3>A. Integrate ckfinder into ckeditor</h3>
					<!-- Second card -->
					<div class="card mb-r">
						<textarea name="content" id="content"></textarea>
					</div>
					<!-- /.Second card -->
				</div>
				<!-- /.First col -->


			</div>
			<!-- /.First row -->
		</section>
		<!-- /.Section: Create Page -->

	</div>
	<script src="ckeditor/ckeditor.js"></script>
	<script src="ckfinder/ckfinder.js"></script>
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