<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" --%>
<%-- 	pageEncoding="UTF-8"%> --%>
<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> --%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> --%>
<%-- <c:set var="contextPath" value="${pageContext.request.contextPath}" /> --%>
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta charset="utf-8"> -->
<!-- <title>HaiLDX - Thêm bài học mới.</title> -->
<%-- <link rel="icon" href="${contextPath}/resources/public/img/fav.png" /> --%>
<!-- </head> -->
<!-- <table id="data-show" class="table table-bordered table-hover"> -->
<!-- 	<thead> -->
<!-- 		<tr> -->
<!-- 			<th width="5%" style="font-size: 16px">STT</th> -->
<!-- 			<th width="14%" style="font-size: 16px">Kiến Thức</th> -->
<!-- 			<th width="21%" style="font-size: 16px">Tên Bài Học</th> -->
<!-- 			<th width="20%" style="font-size: 16px">Giới Thiệu Bài Học</th> -->
<!-- 			<th width="33%" style="font-size: 16px">Video Bài Học</th> -->
<!-- 			<th width="6%"></th> -->
<!-- 		</tr> -->
<!-- 	</thead> -->
<!-- 	<tbody> -->
<%-- 		<c:forEach items="${courseIlms}" var="cl" varStatus="id"> --%>
<!-- 			<tr> -->
<%-- 				<td>${id.index+1}</td> --%>
<%-- 				<td>${cl.courseIlmType.courseIlmTypeName}</td> --%>
<%-- 				<td>${cl.lessonName}</td> --%>
<%-- 				<td>${cl.lessonName}</td> --%>
<!-- 				<td><a class="movie-play" onclick="adminView(this)" -->
<%-- 					id="fr-${id.index}"> <img id="videoImg" --%>
<%-- 						src="${contextPath}/reponsitory/N2/img/d.jpg" /> <br> <span --%>
<!-- 						class="play-icon-btn"> <i class="zmdi zmdi-play"></i> -->
<!-- 					</span> -->
<!-- 				</a> -->
<%-- 					<div id="video-fr-${id.index}" --%>
<!-- 						style="display: none; margin-left: 26%;"> -->
<!-- 						<video width="170px" height="110px" controls -->
<%-- 							id="video-${id.index}"> --%>
<%-- 							<source src="${contextPath}/reponsitory/N5/video/Bai-1.mp4" --%>
<!-- 								type="video/mp4"> -->
<!-- 						</video> -->
<!-- 					</div></td> -->
<!-- 				<td style="min-height: 30px;"><a class="del-voca" -->
<%-- 					data-toggle="modal" data-target="#modal-dele-course-${id.index}" --%>
<!-- 					href="javascript:void(0);">&nbsp;<i class="fa fa-trash-o">&nbsp;</i></a> -->
<!-- 					&nbsp;&nbsp;<a href="javascript:void(0);">&nbsp;<i -->
<!-- 						class="fa fa-pencil"></i></a></td> -->
<!-- 			</tr> -->
<%-- 			<div class="modal fade in" id="modal-dele-course-${id.index}" --%>
<!-- 				style="padding-right: 17px;"> -->
<!-- 				<div class="modal-dialog"> -->
<!-- 					<div class="modal-content"> -->
<!-- 						<div class="modal-header"> -->
<!-- 							<button type="button" class="close" data-dismiss="modal" -->
<!-- 								aria-label="Close"> -->
<!-- 								<span aria-hidden="true">×</span> -->
<!-- 							</button> -->
<!-- 							<h4 class="modal-title" style="text-align: center; color: red">Bạn -->
<!-- 								có chắc muốn xóa :</h4> -->
<!-- 						</div> -->
<!-- 						<div class="modal-body"> -->
<%-- 							<p>Bài học : ${cl.lessonName}</p> --%>
<!-- 						</div> -->
<!-- 						<div class="modal-footer"> -->
<!-- 							<button type="button" class="btn btn-default pull-left" -->
<!-- 								data-dismiss="modal">Hủy</button> -->
<!-- 							<button type="button" class="btn btn-primary bt-dele-course" -->
<%-- 								id="${cl.courseIlmId}" course="${cl.course.courseId}" --%>
<!-- 								data-dismiss="modal">Xóa</button> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<%-- 		</c:forEach> --%>
<!-- 	</tbody> -->
<!-- </table> -->
<!-- <script> -->
// 	$(function() {
// 		$('#data-show').DataTable({
// 			'paging' : true,
// 			'lengthChange' : false,
// 			'searching' : true,
// 			'ordering' : true,
// 			'info' : true,
// 			'autoWidth' : false
// 		})
// 	})
<!-- </script> -->
<%-- <script src="${contextPath}/resources/private/js/jquery.min.js"></script> --%>
<!-- <script -->
<%-- 	src="${contextPath}/resources/private/js/jquery.dataTables.min.js"></script> --%>
<!-- <script -->
<%-- 	src="${contextPath}/resources/private/js/dataTables.bootstrap.min.js"></script> --%>
<%-- <script src="${contextPath}/resources/private/js/up.lesson.js"></script> --%>