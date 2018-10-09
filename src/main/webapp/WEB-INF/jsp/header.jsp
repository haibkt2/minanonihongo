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
<title>HaiLDX - Tiếng Nhật cho mọi người.
</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta name="csrf-token"
	content="${_csrf.token}">
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
								&nbsp;Tổ 121 - Đường Ngô Sỹ Liên,Phường Hòa Minh, Quận Liên Chiểu, Thành Phố Đà Nẵng</li>
							<li><i class="zmdi zmdi-phone-in-talk"></i>&nbsp; 033-679-621</li>
							<li><i class="zmdi zmdi-email"></i>&nbsp; haibkt2@gmail.com</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="header-content mid-header" id="header">
				<div class="container">
					<div id="search-input-mobile">
						<input type="" name="" class="search-input-mobile"
							placeholder="Tìm kiếm ..."
							onkeypress="return search(event, this)"> <i
							class="glyphicon glyphicon-remove close-icon"
							onclick="closeSearchBox()"></i>
					</div>
					<div id="nav-icon">
						<span class="nav-span"></span><span class="nav-span"></span><span
							class="nav-span"></span>
						<ul class="dropdown-menu">
							<li><a href=""><i class="zmdi zmdi-home icon-menu-item"></i>
									<p>Trang chủ</p></a></li>
							<li><a href=""><i
									class="zmdi zmdi-airplay icon-menu-item"></i>
									<p>Các khóa học</p></a></li>
							<li class="courses-detail-list">
								<table class="table course-list-table table-bordered">
									<tr>
										<td style="padding: 0; border: 0;">
											<table class="table">
												<tr>
													<td colspan="4"><a style="padding: 0"
														href="${contextPath}/khoa-hoc/Bang-chu-cai">Bảng chữ
															cái</a></td>
												</tr>
												<tr>
													<td><a style="padding: 0"
														href="${contextPath}/khoa-hoc/N5">N5</a></td>
													<td><a style="padding: 0"
														href="${contextPath}/khoa-hoc/N4">N4</a></td>
													<td><a style="padding: 0"
														href="${contextPath}/khoa-hoc/N3">N3</a></td>
													<td><a style="padding: 0"
														href="${contextPath}/khoa-hoc/N2">N2</a></td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</li>
							<li><a href=""><i
									class="zmdi zmdi-format-subject icon-menu-item"></i>
									<p>Vui tiếng Nhật</p></a></li>
							<li><a href=""><i
									class="zmdi zmdi-accounts-outline icon-menu-item"></i>
									<p>Văn hóa Nhật Bản</p></a></li>

							<li><a href=""><i class="zmdi zmdi-edit icon-menu-item"></i>
									<p>Thi thử</p></a></li>
						</ul>
					</div>
					<a href="${contextPath}/" class="logo" id="logo"> <img
						src="${contextPath}/resources/img/hai-logo.png" alt="haildx logo">
					</a> <span data-action="toggle-nav" class="nav-toggle-menu"><span>Menu</span></span>
					<div class="block-nav-menu">
						<div class="block-title">
							<span class="title">Menu</span> <span data-action="close-nav"
								class="close-nav"><span>close</span></span>
						</div>
						<ul class="ui-menu">
							<li class="parent "><a href="" class="mn-item khoa-hoc">
									<i class=""></i> Các khóa học
							</a>
								<div class="submenu">
									<ul class="content">
										<li>
											<div class="col-right" style="border-top: none;">
												<div class="clearfix">
													<div class="col-md-12">
														<a href="${contextPath}/khoa-hoc/Bang-chu-cai">Bảng
															chữ cái</a>
													</div>
												</div>
												<div class="col-bottom clearfix">
													<div class="col-md-3">
														<a href="${contextPath}/khoa-hoc/N5">N5</a>
													</div>
													<div class="col-md-3">
														<a href="${contextPath}/khoa-hoc/N4">N4</a>
													</div>
													<div class="col-md-3">
														<a href="${contextPath}/khoa-hoc/N3">N3</a>
													</div>
													<div class="col-md-3">
														<a href="${contextPath}/khoa-hoc/N2">N2</a>
													</div>
												</div>
											</div>
										</li>
									</ul>
								</div></li>
							<li><a href="${contextPath}/vui-tieng-nhat/" target=""
								class="mn-item hoc-vui">Vui tiếng Nhật</a></li>
							<li><a href="${contextPath}/van-hoa-nhat-ban/" target=""
								class="mn-item bai-viet">Văn hóa Nhật Bản</a></li>
							<li><a href="${contextPath}/thi-truc-tuyen/"
								class="mn-item thi-thu">Thi thử</a></li>
							<li class="item-search">
								<div id="search-submit">&nbsp;</div> <input type="text"
								name="keya" class="search-input" id="search-inputa"
								onkeypress="return search(event, this)"
								placeholder="Tìm kiếm..." autocomplete="off">
							</li>
						</ul>
					</div>
					<c:if test="${empty userId}">
						<div class="account-container" id="account-container">
							<div class="search-box" onclick="showSearchInput()">
								<i class="glyphicon glyphicon-search search-icon"></i>
							</div>

							<div class="login-container" id="auth-container"
								style="display: none;">
								<div class="login-left-container">
									<img class="auth-featured-image"
										src="${contextPath}/resources/img/login-banner.jpg" />
								</div>
								<div class="login-right-container">
									<ul class="nav nav-pills">
										<li class="li-tab login-tab active"
											onclick="swichTab('login')"><a data-toggle="pill"
											href="#login-content">Đăng nhập</a></li>
										<li class="li-tab register-tab" onclick="swichTab('register')"><a
											data-toggle="pill" href="#register-content">Tạo tài khoản</a></li>
									</ul>
									<div class="tab-content">
										<div id="register-content" class="tab-pane fade">
											<div class="col-md-11" data-selectable="true">
												<form id="register-form" class="form-horizontal"
													accept-charset="UTF-8" autocomplete="off"
													action="${contextPath}/resources/img/login-banner.jpg"
													method="get">
													<input type="hidden" name="${_csrf.parameterName}"
														value="${_csrf.token}">
													<div class="form-group">
														<label class="col-md-4 control-label"></label>
														<div class="col-md-8">
															<div class="error-container" id="error-container-login"
																style="display: none;">
																<div class="alert-danger" id="error-register-content">
																	<i class="zmdi zmdi-alert-octagon"></i>${error}</div>
															</div>
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-4 control-label">Họ và tên</label>
														<div class="col-md-8">
															<input type="text" class="form-control" name="name"
																id="register-name" placeholder="Họ và tên"
																autocomplete="off" required>
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-4 control-label">Email</label>
														<div class="col-md-8">
															<input type="email" class="form-control" name="email"
																id="register-email" placeholder="Email"
																autocomplete="off" required>
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-4 control-label">Mật khẩu</label>
														<div class="col-md-8">
															<input type="password" class="form-control"
																name="password" id="register-password"
																placeholder="Mật khẩu"
																style="margin-bottom: 0; border-bottom: none;"
																autocomplete="off" required> <input
																type="password" class="form-control"
																name="password_confirm" id="register-password-confirm"
																placeholder="Nhập lại mật khẩu" autocomplete="off"
																required>
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-4 control-label">Số điện
															thoại</label>
														<div class="col-md-8">
															<input type="text" class="form-control" name="phone"
																id="register-phone" placeholder="Điện thoại"
																autocomplete="off" required>
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-4 control-label">Ngày sinh</label>
														<div class="col-md-8">
															<div class="row">

																<div class="col-xs-5" style="padding-right: 0;">

																	<select name="birth_month" class="form-control"
																		id="register-month">
																		<option value="">Chọn tháng</option>
																		<option value="1">Tháng 1</option>
																		<option value="2">Tháng 2</option>
																		<option value="3">Tháng 3</option>
																		<option value="4">Tháng 4</option>
																		<option value="5">Tháng 5</option>
																		<option value="6">Tháng 6</option>
																		<option value="7">Tháng 7</option>
																		<option value="8">Tháng 8</option>
																		<option value="9">Tháng 9</option>
																		<option value="10">Tháng 10</option>
																		<option value="11">Tháng 11</option>
																		<option value="12">Tháng 12</option>
																	</select>
																</div>
																<div class="col-xs-3" style="padding: 0 5px;">
																	<input type="number" name="birth_day" id="register-day"
																		class="form-control" placeholder="Ngày"
																		autocomplete="off" required />
																</div>
																<div class="col-xs-4" style="padding-left: 0;">
																	<input type="number" name="birth_year"
																		id="register-year" class="form-control"
																		placeholder="Năm" autocomplete="off" required />
																</div>
															</div>
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-4 control-label"></label>
														<div class="col-md-8">
															<div class="checkbox"
																style="margin-top: 0; padding-top: 0;">
																<label for="agree-checkbox" class="agree-policy">
																	<input id="agree-checkbox" type="checkbox"
																	name="agreement" checked> <span>Đồng ý
																		với các <a href="" target="_blank">điều khoản sử
																			dụng</a> và <a href="" target="_blank">chính sách bảo
																			mật</a> của website HaiLDX
																</span>
																</label>
															</div>
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-4 control-label"></label>
														<div class="col-md-8">
															<button type="submit" class="btn-login">
																<span>Đăng ký</span>
															</button>
														</div>
													</div>
												</form>
											</div>
										</div>
										<div id="login-content" class="tab-pane fade in active">
											<div class="col-md-11">
												<form id="login-form" accept-charset="UTF-8"
													class="form-horizontal" action="s" method="get">
													<input type="hidden" name="${_csrf.parameterName}"
														value="${_csrf.token}">
													<div class="form-group">
														<label class="col-md-4 control-label"></label>
														<div class="col-md-8">
															<div class="error-container">
																<div class="alert-danger" style="display: none;">
																	<i class="zmdi zmdi-alert-octagon"></i> ${error}
																</div>
															</div>
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-4 control-label">Email</label>
														<div class="col-md-8">
															<input id="email" class="form-control" type="email"
																name="email" placeholder="Email hoặc tên đăng nhập"
																autocomplete="off" required autofocus
																onkeypress="return enterToLogin(event, this)">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-4 control-label">Mật khẩu</label>
														<div class="col-md-8">
															<input id="password" type="password" class="form-control"
																name="password" placeholder="Mật khẩu"
																autocomplete="off" required
																onkeypress="return enterToLogin(event, this)">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-4 control-label"></label>
														<div class="col-md-8">
															<div class="checkbox">
																<label for="login-remember" class="agree-policy">
																	<input id="login-remember" type="checkbox"
																	name="remember"> <span>Ghi nhớ đăng nhập</span>
																</label>
															</div>
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-4 control-label"></label>
														<div class="col-md-8">
															<button type="submit" class="btn-login" id="login-submit">
																<span>Đăng nhập</span>
															</button>
															<button class="btn-login" id="login-accuracy"
																style="display: none;">
																<span><i class="fa fa-spinner fa-pulse fa-fw"></i>
																	Đang xác thực...</span>
															</button>
															<p>
																<a href="" style="color: #333; opacity: 0.7;">Quên
																	mật khẩu ?</a>
															</p>
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>

									<div class="form-group">
										<label class="col-md-4 control-label"></label>
										<div class="col-md-8"
											style="padding-left: 0; margin-top: 10px;">
											<div class="break-line">Hoặc đăng nhập nhanh bằng</div>
											<a
												href="https://www.facebook.com/dialog/oauth?client_id=2272220076356331&redirect_uri=https://localhost:8888/facebook">
												<button type="button"
													class="btn btn-facebook waves-effect waves-light m-t-20"
													onclick="showAccuracy()">
													<i class="fa fa-facebook m-r-5"></i> Facebook
												</button>
											</a> <a href="" onclick="authBySocicalAccount()">
												<button type="button"
													class="btn btn-googleplus waves-effect waves-light m-t-20"
													style="margin-right: 5px;" onclick="showAccuracy()">
													<i class="fa fa-google-plus m-r-5"></i> Google
												</button>
											</a>
										</div>
									</div>

								</div>
							</div>
							<div class="dropdown profile-no-login-icon">
								<button class="dropdown-toggle" type="button"
									data-toggle="dropdown">
									<i class="glyphicon glyphicon-user dropdown-toggle"></i>
								</button>
								<ul class="dropdown-menu">
									<li onclick="swichTab('login')" data-fancybox
										data-animation-duration="300"><a><p>Đăng nhập</p></a></li>
									<li onclick="swichTab('register')" data-fancybox
										data-animation-duration="300"><a><p>Tạo tài khoản</p></a></li>
								</ul>
							</div>
							<a data-fancybox data-animation-duration="300"
								href="#auth-container" class="register-box">
								<div class="btn-login">Tạo tài khoản</div>
							</a> <a data-fancybox data-animation-duration="300"
								href="#auth-container" class="login-box">
								<div class="btn-register">
									<i class="zmdi zmdi-lock-outline"></i> Đăng nhập
								</div>
							</a>
						</div>
					</c:if>
					<c:if test="${not empty userId}">
						<div class="account-container" id="account-container">
							<div class="search-box" onclick="showSearchInput()">
								<i class="glyphicon glyphicon-search search-icon"></i>
							</div>
							<div class="dropdown auth-container">
								<div class="dropdown-toggle" type="button"
									data-toggle="dropdown">
									<span class="user-name">${userId}</span> <img
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
					</c:if>
				</div>
			</div>
		</div>
		<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
		<script src="${contextPath}/resources/js/app.js"></script>