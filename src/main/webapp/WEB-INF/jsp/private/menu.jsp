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
	<aside class="main-sidebar">
		<section class="sidebar">
			<div class="user-panel">
				<div class="pull-left image">
					<img src="../../dist/img/user2-160x160.jpg" class="img-circle"
						alt="User Image">
				</div>
				<div class="pull-left info">
					<p>Alexander Pierce</p>
					<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
				</div>
			</div>
			<ul class="sidebar-menu" data-widget="tree">

				<li class="treeview"><a href="#"> <i
						class="fa fa-dashboard"></i> <span>Dashboard</span> <span
						class="pull-right-container"> <i
							class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
					<ul class="treeview-menu">
						<li><a href="../../index.html"><i class="fa fa-circle-o"></i>
								Dashboard v1</a></li>
						<li><a href="../../index2.html"><i class="fa fa-circle-o"></i>
								Dashboard v2</a></li>
					</ul></li>
				<li class="treeview"><a href="#"> <i class="fa fa-files-o"></i>
						<span>Layout Options</span> <span class="pull-right-container">
							<span class="label label-primary pull-right">4</span>
					</span>
				</a>
					<ul class="treeview-menu">
						<li><a href="../layout/top-nav.html"><i
								class="fa fa-circle-o"></i> Top Navigation</a></li>
						<li><a href="../layout/boxed.html"><i
								class="fa fa-circle-o"></i> Boxed</a></li>
						<li><a href="../layout/fixed.html"><i
								class="fa fa-circle-o"></i> Fixed</a></li>
						<li><a href="../layout/collapsed-sidebar.html"><i
								class="fa fa-circle-o"></i> Collapsed Sidebar</a></li>
					</ul></li>
			</ul>
		</section>
	</aside>
</body>
</html>
