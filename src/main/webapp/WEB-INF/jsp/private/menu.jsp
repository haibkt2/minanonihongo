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
<link rel="stylesheet"
	href="${contextPath}/resources/private/css/_all-skins.min.css">
<link rel="stylesheet"
	href="${contextPath}/resources/private/css/font-awesome.min.css">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
</head>
<body>
	<aside class="main-sidebar">
		<section class="sidebar" style="height: auto;">
			<ul class="sidebar-menu" data-widget="tree">
				<li class="header"></li>
				<li><a> <i class="fa fa-fw fa-institution"></i> <span>Chuyên
							Mục Bài Học</span> <span class="pull-right-container"> </span>
				</a>
					<ul>
						<c:if test="${courses != null}">
							<c:forEach items="${courses}" var="course">
								<li><a
									href="${contextPath}/admin/courses/${course.courseName}"><i
										class="fa fa-fw fa-check-square-o"></i>
										${course.getCourseName()}</a></li>
							</c:forEach>
						</c:if>
					</ul></li>
				<li><a> <i class="fa fa-fw fa-book"></i> <span>Đề
							Thi</span> <span class="pull-right-container"> </span>
				</a>
					<ul>
						<li><a
							href="${contextPath}/admin/exercise"><i
								class="fa fa-fw fa-check-square-o"></i>
								Đề thi Ôn tập</a></li>
								<li><a
							href="${contextPath}/admin/courses"><i
								class="fa fa-fw fa-check-square-o"></i>
								Đề thi JLPT</a></li>
					</ul>
				<li><a> <i class="fa fa-fw fa-sun-o"></i> <span>Vui
							Tiếng Nhật</span> <span class="pull-right-container"> </span>
				</a>
					<ul>
						<c:if test="${courseFuns != null}">
							<c:forEach items="${courseFuns}" var="courseFun">
								<li><a href=""><i class="fa fa-fw fa-check-square-o"></i>
										${courseFun.courseFunTypeName} </a></li>
							</c:forEach>
						</c:if>
					</ul></li>
				<li><a> <i class="fa fa-fw fa-google-wallet"></i> <span>Bài
							Viết</span> <span class="pull-right-container"> </span>
				</a>
					<ul>
						<c:if test="${posts != null}">
							<c:forEach items="${posts}" var="post">
								<li><a
									href="${contextPath}/admin/posts/${post.postTypeId}-${post.postTypeName}"><i
										class="fa fa-fw fa-check-square-o"></i> ${post.postTypeName} </a></li>
							</c:forEach>
						</c:if>
					</ul></li>
				<li><a href="${contextPath}/admin/notification"> <i
						class="fa fa-fw fa-bullhorn"></i> <span>Thông Báo</span> <span
						class="pull-right-container"> </span>
				</a></li>
				<li><a href="${contextPath}/admin/mn-user"> <i
						class="fa fa-fw fa-users"></i> <span>Quản Lý Người Dùng</span> <span
						class="pull-right-container"> </span>
				</a></li>
				<li><a href="${contextPath}/"> <i
						class="fa fa-fw fa-mail-forward"></i> <span>Minanonihongo</span> <span
						class="pull-right-container"> </span>
				</a></li>
			</ul>
		</section>
	</aside>

</body>
</html>
