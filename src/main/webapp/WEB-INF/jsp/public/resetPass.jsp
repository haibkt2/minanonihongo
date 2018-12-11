<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="minanonihongo.model.*"%>
<%@ page import="minanonihongo.service.*"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="vi">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>HaiLDX - Tiếng Nhật cho mọi người</title>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/private/css/styles.css">
</head>
<body>
	<div class="container" style="margin-top: 150px;">
		<div class="row">
			<!-- 			<a href="http://dungmori.com"><img -->
			<!-- 				style="width: 25%; margin-left: 37.5%;" -->
			<!-- 				src="http://dungmori.com/assets/img/logo.png"></a> -->
		</div>
		<div class="row" style="margin-top: 40px;">
			<div class="col-md-8 col-md-offset-2">
				<div class="panel panel-default">
					<div class="panel-heading" style="color: #0066cc; font-size: 20px;">
						<b>Đặt lại mật khẩu</b>
					</div>

					<div class="panel-body">
						<div class="alert alert-success">passwords.sent</div>
						<form class="form-horizontal" method="POST"
							action="${contextPath}/password/reset">
							<div class="form-group">
								<label class="col-md-4 control-label">Địa
									chỉ e-Mail</label>

								<div class="col-md-8">
									<input id="email" type="email" class="form-control"
										name="email" required> <span
										class="help-block"> <strong style="color: red">validation.email</strong>
									</span>
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-6 col-md-offset-4">
									<button type="submit" class="btn btn-primary"
										style="background-color: #0066cc; border: 0;">Gửi
										link đặt lại mật khẩu</button>
								</div>
								<div class="col-md-offset-4" style="margin-left: 15px;">
									<a class="btn btn-primary"
										style="background-color: white; color: #0066cc; border: 1px solid #0066cc;"
										href="${contextPath}/home"> Cancel </a>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>