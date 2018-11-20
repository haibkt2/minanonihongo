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
	href="${contextPath}/resources/public/css/styles.css">

<link rel="icon" href="${contextPath}/resources/public/img/fav.png" />
<script src="${contextPath}/resources/public/js/headlibs.js"></script>

<script src="${contextPath}/resources/public/js/slick.min.js"></script>
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
								0336-679-621</li>
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
							<li><a href="${contextPath}/home"><i
									class="zmdi zmdi-home icon-menu-item"></i>
									<p>Trang chủ</p></a></li>
							<li><a href="${contextPath}/home"><i
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
									<p>Vui Tiếng Nhật</p></a></li>
							<li><a href=""><i
									class="zmdi zmdi-accounts-outline icon-menu-item"></i>
									<p>Bài Viết Về Nhật Bản</p></a></li>

							<li><a href=""><i class="zmdi zmdi-edit icon-menu-item"></i>
									<p>Thi thử</p></a></li>
						</ul>
					</div>
					<a href="${contextPath}/" class="logo" id="logo"> <img
						src="${contextPath}/resources/public/img/hai-logo.png"
						alt="haildx logo">
					</a> <span data-action="toggle-nav" class="nav-toggle-menu"><span>Menu</span></span>
					<div class="block-nav-menu">
						<div class="block-title">
							<span class="title">Menu</span> <span data-action="close-nav"
								class="close-nav"><span>close</span></span>
						</div>
						<ul class="ui-menu">
							<li class="parent "><a href="javascript:void(0);"
								class="mn-item khoa-hoc"> <i class=""></i>Các Khóa Học
							</a>
								<div class="submenu">
									<ul class="content">
										<li>
											<div class="col-right" style="border-top: none;">
												<div class="clearfix">
													<div class="col-md-12">
														<a href="${contextPath}/khoa-hoc/Bang-chu-cai">Bảng Chữ Cái</a>
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
							<li><a href="${contextPath}/vui-tieng-nhat" target=""
								class="mn-item hoc-vui">Vui Tiếng Nhật</a></li>
							<li><a href="${contextPath}/van-hoa-nhat-ban" target=""
								class="mn-item bai-viet">Bài Viết Về Nhật Bản</a></li>
							<li class="parent"><a href="javascript:void(0);"
								class="mn-item thi-thu"> <i class=""></i> Luyện Thi
							</a>
								<div class="submenu" style="width: 50px">
									<ul class="content">
										<li>
											<div class="col-right" style="border-top: none;">
												<div class="clearfix">
													<div class="col-md-12">
														<a href="${contextPath}/luyen-de">Luyện Đề</a>
													</div>
												</div>
												<div class="col-bottom clearfix">
													<div class="col-md-12">
														<a href="${contextPath}/thi-thu-truc-tuyen">Thi Thử Trực Tuyến</a>
													</div>
												</div>
											</div>
										</li>
									</ul>
								</div></li>
<!-- 							<li class="item-search"> -->
<!-- 								<div id="search-submit">&nbsp;</div> <input type="text" -->
<!-- 								name="keya" class="search-input" id="search-inputa" -->
<!-- 								onkeypress="return search(event, this)" -->
<!-- 								placeholder="Tìm kiếm..." autocomplete="off"> -->
<!-- 							</li> -->
						</ul>
					</div>
					<c:if test="${user == null}">
						<div class="account-container" id="account-container">
							<div class="search-box" onclick="showSearchInput()">
								<i class="glyphicon glyphicon-search search-icon"></i>
							</div>

							<div class="login-container" id="auth-container"
								style="display: none;">
								<div class="login-left-container">
									<img class="auth-featured-image" src="${contextPath}/resources/public/img/login-banner.jpg" />
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
												<form id="register-form rg" class="form-horizontal"
													accept-charset="UTF-8" autocomplete="off"
													action="${contextPath}/register" method="POST"
													onsubmit="return validateForm()">
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
																placeholder="Mật khẩu" autocomplete="off" required>
															<div class="error-container">
																<div class="alert-danger" id="message-error"></div>
															</div>
															<input type="password" class="form-control"
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
															<input type="date" class="form-control" name="date"
																style="height: auto;" id="register-date"
																autocomplete="off" required>
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
															<input type="hidden" name="${_csrf.parameterName}"
																value="${_csrf.token}">
															<button type="submit" class="btn-login">
																<span onclick="kt();">Đăng ký</span>
															</button>
														</div>
													</div>
												</form>
											</div>
										</div>
										<c:if test="${login eq 'error'}">
											<script type="text/javascript">
												$(document)
														.ready(
																function() {
																	$(
																			'.btn-register')
																			.trigger(
																					'click');
																});
											</script>
										</c:if>
										<c:if test="${rg eq 'error'}">
											<script type="text/javascript">
												alert("Email này đã đăng ký");
											</script>
										</c:if>
										<div id="login-content" class="tab-pane fade in active"
											onclick="">
											<div class="col-md-11">
												<form id="login-form" accept-charset="UTF-8"
													class="form-horizontal" action="${contextPath}/home"
													method="post">
													<div class="form-group">
														<label class="col-md-4 control-label"></label>
														<div class="col-md-8">
															<c:if test="${login eq 'error'}">
																<div class="error-container">
																	<div class="alert-danger">
																		<i class="zmdi zmdi-alert-octagon"></i>&nbsp;Tên đăng
																		nhập hoặc mật khẩu không chính xác
																	</div>
																</div>
															</c:if>
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-4 control-label">Email</label>
														<div class="col-md-8">
															<input id="email" class="form-control" type="email"
																name="email" placeholder="Email hoặc tên đăng nhập"
																autocomplete="off">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-4 control-label">Mật khẩu</label>
														<div class="col-md-8">
															<input id="password" type="password" class="form-control"
																name="password" placeholder="Mật khẩu"
																autocomplete="off">
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-4 control-label"></label>
														<div class="col-md-8">
															<div class="checkbox">
																<label for="login-remember" class="agree-policy">
																</label>
															</div>
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-4 control-label"></label>
														<div class="col-md-8">
															<input type="hidden" name="${_csrf.parameterName}"
																value="${_csrf.token}">
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
											</a> <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=https://localhost:8888/login-google&response_type=code
    &client_id=1016161130456-9kbf8n9d911tgmvq11tmloou7kgbkvip.apps.googleusercontent.com&approval_prompt=force" onclick="authBySocicalAccount()">
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
							<a data-fancybox="" data-animation-duration="300"
								data-src="#auth-container">
								<div class="btn-login" onclick="swichTab('register')">Tạo
									tài khoản</div>
							</a> <a data-fancybox="" data-animation-duration="300"
								data-src="#auth-container">
								<div class="btn-register" onclick="swichTab('login')">
									<i class="zmdi zmdi-lock-outline"></i> Đăng nhập
								</div>
							</a>
						</div>
					</c:if>
					<c:if test="${not empty user}">
						<div class="account-container" id="account-container">
							<div class="search-box" onclick="showSearchInput()">
								<i class="glyphicon glyphicon-search search-icon"></i>
							</div>
							<div class="dropdown auth-container">
								<div class="dropdown-toggle" type="button"
									data-toggle="dropdown">

									<span class="user-name">${user.name}</span> <img
										class="user-avatar-circle"
										src="${contextPath}/reponsitory/Avatar/<c:if test="${user.avatar == null}">img-df.png</c:if><c:if test="${user.avatar != null}">${user.avatar }</c:if>" />
									<span class="caret"></span>
								</div>
								<ul class="dropdown-menu user-menu">
									<img class="caret-up"
										src="${contextPath}/resources/public/img/caret-up.png" />
									<li><a href=""><i
											class="zmdi zmdi-account-box"></i>Thông tin cá nhân</a></li>
									<li><a href=""><i
											class="zmdi zmdi-shield-security"></i> Thay đổi mật khẩu</a></li>
									<c:if test="${user.role.roleId == 'ROLE00001'}">
										<li><a href="${contextPath}/admin"><i
												class="fa fa-fw fa-cogs"></i> Quản lý Website</a></li>
									</c:if>
									<li><a onclick="logout()"><i class="zmdi zmdi-power"></i>
											Đăng xuất</a></li>
								</ul>
							</div>
						</div>
					</c:if>
				</div>
			</div>
		</div>
		<script src="${contextPath}/resources/public/js/vue.js"></script>
		<script src="${contextPath}/resources/public/js/app.js"></script>