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
</head>
<body>
	<aside class="main-sidebar">
		<section class="sidebar" style="height: auto;">
			<div class="user-panel">
				<div class="pull-left image">
					<img src="../../dist/img/user2-160x160.jpg" class="img-circle"
						alt="User Image">
				</div>
				<div class="pull-left info">
					<p>${user.userName}</p>
					<a href="#"><i class="fa fa-circle text-success"></i>Online</a>
				</div>
			</div>
			<ul class="sidebar-menu" data-widget="tree">
				<li class="header"></li>
				<li><a href="#"> <i class="fa fa-fw fa-institution"></i> <span>Các
							Mức Độ</span> <span class="pull-right-container"> </span>
				</a>
					<ul>
						<c:if test="${courses != null}">
							<li><a href=""><i class="fa fa-fw fa-check-square-o"></i>
									Đề Thi </a></li>
							<c:forEach items="${courses}" var="course">
								<li><a href="${contextPath}/admin/add-course"><i
										class="fa fa-fw fa-check-square-o"></i>
										${course.getCourseName()}</a></li>
							</c:forEach>
						</c:if>
					</ul></li>
				<li><a href="#"> <i class="fa fa-fw fa-sun-o"></i> <span>Vui
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
				<li><a href="#"> <i class="fa fa-fw fa-google-wallet"></i>
						<span>Văn Hóa Nhật Bản</span> <span class="pull-right-container">
					</span>
				</a>
					<ul>
						<c:if test="${posts != null}">
							<c:forEach items="${posts}" var="post">
								<li><a href=""><i class="fa fa-fw fa-check-square-o"></i>
										${post.postTypeName} </a></li>
							</c:forEach>
						</c:if>
					</ul></li>
				<li><a href="#"> <i class="fa fa-fw fa-bullhorn"></i> <span>Thông
							Báo</span> <span class="pull-right-container"> </span>
				</a></li>
				<li><a href="#"> <i class="fa fa-fw fa-users"></i> <span>Quản
							Lý Người Dùng</span> <span class="pull-right-container"> </span>
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
