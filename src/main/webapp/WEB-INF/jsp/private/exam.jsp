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
										Danh Sách Bài Đăng
									</h3>
									
								</section>
								<section class="content-header"
									style="margin-bottom: 15px;">
									<div style="width: 10%; float: right; margin-right: 15px;">
									<a href="${contextPath}/admin/add-post?postType=${postT.postTypeId}">	<button class="btn btn-default">Thêm
											Bài Viết</button></a>
									</div>
									
								</section>
							</div>
							<div class="box-body">
								<div id="newsInner">
						<p></p>
						<p></p>
						<table style="width: 100%;">
							<tbody>
								<tr>
									<c:forEach items="${courses}" var="c">
										<td><p></p>
											<p>
												<a class="right-link long" href="${contextPath}/admin/exercise/${c.courseName}">
													<span <c:if test="${course.courseName eq c.courseName}">style="background: #900;"</c:if> class="right-link-inner">
														<span class="right-link-content"> <span
															class="fa icon-book"> </span> <span class="right-txt">
																<span class="right-big">${c.courseName} (言語知識)</span><span
																class="right-small"> </span>
														</span>
													</span>
												</span>
												</a>
											</p>
											<p></p></td>
									</c:forEach>
								</tr>
							</tbody>
						</table>
						<p></p>
						<p></p>
						<table style="width: 100%;" cellpadding="0">
							<tbody>
								<tr>
									<td
										style="height: 30px; text-align: center; font-size: 18px; color: #aa4c4c; font-weight: Bold;">ĐỀ
										LUYỆN THI TRẮC NGHIỆM N5</td>
								</tr>
							</tbody>
						</table>
						<p>
							<span style="font-size: 14px;">Giới thiệu: Đây là phần bài
								tập luyện trắc nghiệm theo từng phần, không phải đề hoàn thiện
								kỳ thi năng lực Nhật Ngữ Quốc tế JLPT. Để xem các đề hoàn chỉnh,
								các bạn xem tại link:<strong> </strong>
							</span><a class="button button3 mo-tai-cho"
								href="de-thi-nang-luc-tieng-nhat-jlpt_n5.html"><span
								class="fa icon-book"></span>&nbsp;&nbsp;&nbsp;Xem đề N5 JLPT</a>
						</p>
						<p></p>
						<p>
							<br>
						</p>
						<div class="divider divider3"></div>
						<p></p>
						<c:forEach items="${je}" var="je">
							<br>
							<table style="width: 100%;" border="0">
								<tbody>
									<tr>
										<td
											style="font-size: 18px; color: #ff0000; width: 50%; height: 30px;"><strong style="margin-left: 7px">
												${je.jlptMenuName}</strong><strong> </strong></td>
									</tr>
								</tbody>
							</table>
							<c:forEach items="${je.jlpts}" var="js" varStatus="id">
								<a class="right-link long"
									href="${contextPath}/admin/exercise/${js.course.courseName}/${js.jlptId.substring(5)}-${sv.toUrlFriendly(js.jlptName)}">
									<span class="right-link-inner"> <span
										class="right-link-content"> <span
											class="fa icon-folder-open"> </span> <span class="right-txt">
												<span class="right-big">Đề số :
													${id.index+1}&nbsp;-&nbsp;${js.jlptName}<br>
											</span>
										</span>
									</span>
								</span>
								</a>
							</c:forEach>
							<div style="width: 100%; height: 60px"></div>
						</c:forEach>
						<p>&nbsp;</p>
					</div>
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
