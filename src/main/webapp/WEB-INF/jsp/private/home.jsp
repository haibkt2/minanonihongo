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
			<!-- 			<section class="content-header" -->
			<!-- 				style="margin-bottom: 15px; text-align: center;"> -->
			<!-- 				<h1> -->
			<!-- 					<label>Thống Kê</label> -->
			<!-- 				</h1> -->
			<!-- 			</section> -->
			<br>
			<section class="content">
				<h3>
					<label>Khóa học</label>
				</h3>
				<%int i = 0;%>
				<c:forEach items="${courses}" var="course" varStatus="id">
				<%if(i%3==0){%>
					<div class="row"><%}i++;%>
					<c:if test="${id.index%3 eq 0}">
					<c:set value="-aqua" var="bg"></c:set>
					</c:if>
					<c:if test="${id.index%3 eq 1}">
					<c:set value="-green" var="bg"></c:set>
					</c:if>
					<c:if test="${id.index%3 eq 2}">
					<c:set value="-yellow" var="bg"></c:set>
					</c:if>
						<div class="col-lg-4 col-xs-6">
							<div class="small-box bg${bg}">
								<div class="inner">
									<h3>${course.courseIlms.size()} - Bài học </h3>
									<p>Khóa - ${course.courseName}</p>
								</div>
								<div class="icon">
									<i class="fa fa-fw fa-book"></i>
								</div>
								<a href="${contextPath}/admin/courses/${course.courseName}" class="small-box-footer">${course.courseName}&nbsp;<i
									class="fa fa-arrow-circle-right"></i>
								</a>
							</div>
						</div>
					<%if(i%3==0){%>
					</div><%}%>
				</c:forEach>
				<h3>
					<label>Đề thi</label>
				</h3>
				<%int j = 0;%>
				<c:forEach items="${courses}" var="course" varStatus="id">
				<%if(j%3==0){%>
					<div class="row"><%}j++;%>
					<c:if test="${id.index%3 eq 0}">
					<c:set value="-aqua" var="bg"></c:set>
					</c:if>
					<c:if test="${id.index%3 eq 1}">
					<c:set value="-green" var="bg"></c:set>
					</c:if>
					<c:if test="${id.index%3 eq 2}">
					<c:set value="-yellow" var="bg"></c:set>
					</c:if>
<!-- 						<div class="col-lg-3 col-xs-6"> -->
<%-- 							<div class="small-box bg${bg}"> --%>
<!-- 								<div class="inner"> -->
<%-- 									<h3>${course.jlpt.size()} - Đề thi ${course.courseName}</h3> --%>
<%-- 									<p>Đề thi - ${course.courseName}</p> --%>
<!-- 								</div> -->
<!-- 								<div class="icon"> -->
<!-- 									<i class="fa fa-fw fa-book"></i> -->
<!-- 								</div> -->
<%-- 								<a href="${contextPath}/admin/courses/${course.courseName}" class="small-box-footer">Đề thi - ${course.courseName}&nbsp;<i --%>
<!-- 									class="fa fa-arrow-circle-right"></i> -->
<!-- 								</a> -->
<!-- 							</div> -->
<!-- 						</div> -->
				
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="info-box">
						<span class="info-box-icon bg${bg}"><i
							class="fa fa-files-o"></i></span>
						<div class="info-box-content">
							<span class="info-box-number">${course.jlpt.size()}</span>
							<span class="info-box-text">Đề thi ${course.courseName}</span>
						</div>
						<div style="float: right;margin-right: 8px">
						<a href="${contextPath}/admin/courses/${course.courseName}" class="small-box-footer">Đề thi - ${course.courseName}&nbsp;
						<i class="fa fa-arrow-circle-right"></i>
						</a></div>
						<!-- /.info-box-content -->
					</div>
					<!-- /.info-box -->
				</div>
 				<%if(j%3==0){%></div><%}%>
				</c:forEach>
<!-- 				<div class="row"> -->
<!-- 					<div class="col-md-4 col-sm-6 col-xs-12"> -->
<!--           				<div class="info-box bg-red"> -->
<!--            					 <span class="info-box-icon"><i class="fa fa-comments-o"></i></span> -->
<!--             				<div class="info-box-content"> -->
<!--              					<span class="info-box-text">Comments</span> -->
<!--               					<span class="info-box-number">41,410</span> -->
<!--              					<div class="progress"> -->
<!--                						<div class="progress-bar" style="width: 70%"> -->
<!--                						</div> -->
<!--               					</div> -->
<!--                  		<span class="progress-description">   -->
<!--                  			70% Increase in 30 Days -->
<!--                  		</span> -->
<!--             </div> -->
<!--             /.info-box-content -->
<!--           </div> -->
<!--           /.info-box -->
<!--         </div> -->
<!-- 				</div> -->

			</section>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	<%-- 	<script src="${contextPath}/resources/private/js/jquery.min.js"></script> --%>
	<!-- 	<script -->
	<%-- 		src="${contextPath}/resources/private/js/jquery.dataTables.min.js"></script> --%>
	<!-- 	<script -->
	<%-- 		src="${contextPath}/resources/private/js/dataTables.bootstrap.min.js"></script> --%>
	<%-- 	<script src="${contextPath}/resources/private/js/add.lesson.js"></script> --%>
</body>

</html>
