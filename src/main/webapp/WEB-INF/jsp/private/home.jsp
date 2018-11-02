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
<link rel="icon" href="${contextPath}/resources/public/img/fav.png" />
<title>HaiLDX - Quản Lý Website.</title>
<script src="ckeditor/ckeditor.js"></script>
<script src="ckfinder/ckfinder.js"></script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="menu.jsp"></jsp:include>
		<div class="content-wrapper">
			<br>
			<section class="content-header"
				style="margin-bottom: 15px; text-align: center;">
				<h1>
					<label>Thống Kê</label>
				</h1>
			</section>
			<br>
			<section class="content">
				<div class="row">
					<div class="col-lg-3 col-xs-6">
						<div class="small-box bg-aqua">
							<div class="inner">
								<h3>11 Đề</h3>
								<p>Đề Thi JLPT</p>
							</div>
							<div class="icon">
								<i class="fa fa-shopping-cart"></i>
							</div>
							<a href="#" class="small-box-footer">Đề Thi<i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<div class="col-lg-3 col-xs-6">
						<div class="small-box bg-green">
							<div class="inner">
								<h3>150 Bài</h3>
								<p>Bảng Chữ Cái</p>

							</div>
							<div class="icon">
								<i class="ion ion-stats-bars"></i>
							</div>
							<a href="#" class="small-box-footer"> Bảng Chữ Cái <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-lg-3 col-xs-6">
						<div class="small-box bg-aqua">
							<div class="inner">
								<h3>150 Bài</h3>
								<p>Trình Độ : N5</p>
							</div>
							<div class="icon">
								<i class="fa fa-shopping-cart"></i>
							</div>
							<a href="#" class="small-box-footer"> N5 <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<div class="col-lg-3 col-xs-6">
						<div class="small-box bg-green">
							<div class="inner">
								<h3>11 Bài</h3>
								<p>Trình Độ : N4</p>
							</div>
							<div class="icon">
								<i class="ion ion-stats-bars"></i>
							</div>
							<a href="#" class="small-box-footer"> N4 <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<div class="col-lg-3 col-xs-6">
						<div class="small-box bg-yellow">
							<div class="inner">
								<h3>44 Bài</h3>
								<p>Trình Độ : N3</p>
							</div>
							<div class="icon">
								<i class="ion ion-person-add"></i>
							</div>
							<a href="#" class="small-box-footer"> N3 <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-xs-6">
						<!-- small box -->
						<div class="small-box bg-red">
							<div class="inner">
								<h3>65 Bài</h3>

								<p>Trình Độ : N2</p>
							</div>
							<div class="icon">
								<i class="ion ion-pie-graph"></i>
							</div>
							<a href="#" class="small-box-footer"> N2 <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<!-- ./col -->
				</div>
				<div class="row">
					<div class="col-lg-3 col-xs-6">
						<div class="small-box bg-aqua">
							<div class="inner">
								<h3>150 Bài</h3>
								<p>Văn Hóa - Con Người Nhật Bản</p>
							</div>
							<div class="icon">
								<i class="fa fa-shopping-cart"></i>
							</div>
							<a href="#" class="small-box-footer"> Văn Hóa Nhật Bản <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<div class="col-lg-3 col-xs-6">
						<div class="small-box bg-green">
							<div class="inner">
								<h3>11 Bài</h3>
								<p>Truyện Tranh Thú Vị</p>
							</div>
							<div class="icon">
								<i class="ion ion-stats-bars"></i>
							</div>
							<a href="#" class="small-box-footer"> Truyện Tranh Nhật Bản <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<div class="col-lg-3 col-xs-6">
						<div class="small-box bg-yellow">
							<div class="inner">
								<h3>44 Người</h3>
								<p>Người đăng ký</p>
							</div>
							<div class="icon">
								<i class="ion ion-person-add"></i>
							</div>
							<a href="#" class="small-box-footer">Người Dùng <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
				</div>
			</section>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	<script src="${contextPath}/resources/private/js/jquery.min.js"></script>
	<script
		src="${contextPath}/resources/private/js/jquery.dataTables.min.js"></script>
	<script
		src="${contextPath}/resources/private/js/dataTables.bootstrap.min.js"></script>
	<script src="${contextPath}/resources/private/js/add.lesson.js"></script>
</body>

</html>
