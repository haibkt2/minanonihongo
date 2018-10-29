<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>HaiLDX - Tiếng Nhật cho mọi người.</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta name="csrf-token" content="${_csrf.token}">
<meta http-equiv="content-language" content="vi" />

<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/css/styles.css">

<link rel="icon" href="${contextPath}/resources/img/fav.png" />
<script src="${contextPath}/resources/js/headlibs.js"></script>

<script src="${contextPath}/resources/js/slick.min.js"></script>
<script type="text/javascript">
	function showAccuracy() {
		document.getElementById('login-submit').style.display = "none";
		document.getElementById('login-accuracy').style.display = "block";
	}
</script>
</head>
<body>
	<div>
		<div class="site-header">
			<div class="header-top">
				<div class="container">
					<div class="box-container">
						<ul class="nav-left" style="font-size: 14px;">
							<li><i class="zmdi zmdi-home" style="font-size: 20px;"></i>
								&nbsp;Tổ 121 - Đường Ngô Sỹ Liên,Phường Hòa Minh, Quận Liên
								Chiểu, Thành Phố Đà Nẵng</li>
							<li><i class="zmdi zmdi-phone-in-talk"></i>&nbsp;
								033-679-621</li>
							<li><i class="zmdi zmdi-email"></i>&nbsp; haibkt2@gmail.com</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="header-content mid-header" id="header">
				<div class="container">
					<a href="${contextPath}/" class="logo" id="logo"> <img
						src="${contextPath}/resources/img/hai-logo.png" alt="haildx logo">
					</a> 
					<div class="block-nav-menu" style="float: right;">
							<div class="item-search">
								<div id="search-submit">&nbsp;</div> <input type="text"
								name="keya" class="search-input" id="search-inputa"
								onkeypress="return search(event, this)"
								placeholder="Tìm kiếm..." autocomplete="off">
						</div>
					</div>

					<div class="account-container" id="account-container">
						<div class="search-box" onclick="showSearchInput()">
							<i class="glyphicon glyphicon-search search-icon"></i>
						</div>
						<div class="dropdown auth-container">
							<div class="dropdown-toggle" type="button" data-toggle="dropdown">
								<span class="user-name">${user.getUserName()}</span> <img
									class="user-avatar-circle"
									src="http://dungmori.com/cdn/avatar/small/1524118281_332747130_7aedaa_ad98c6" />
								<span class="caret"></span>
							</div>
							<ul class="dropdown-menu user-menu">
								<img class="caret-up"
									src="${contextPath}/resources/img/caret-up.png" />
								<li><a href="http://dungmori.com/account"><i
										class="zmdi zmdi-account-box"></i> Thông tin cá nhân</a></li>
								<li><a href="http://dungmori.com/account?focus=changePass"><i
										class="zmdi zmdi-shield-security"></i> Thay đổi mật khẩu</a></li>
								<div class="dropdown-divider"></div>
								<li><a onclick="logout()"><i class="zmdi zmdi-power"></i>
										Đăng xuất</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			function kt() {
				var p1 = document.getElementById("register-password").value
						.trim();
				alert(p1);
				var p2 = document.getElementById("register-password-confirm").value
						.trim();
				alert(p2);
				if (p1 != p2) {
					document.getElementById("cf-error").innerHTML = "Chưa Nhập Đầy Đủ Thông Tin!";
					return;
				}
				register - form.submit();
			}
		</script>
		<script src="${contextPath}/resources/js/vue.js"></script>
		<script src="${contextPath}/resources/js/app.js"></script>