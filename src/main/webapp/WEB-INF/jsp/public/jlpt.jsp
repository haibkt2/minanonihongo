<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="minanonihongo.model.*"%>
<%@ page import="minanonihongo.service.*"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="vi">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>HaiLDX - Tiếng Nhật cho mọi người</title>
</head>
<jsp:include page="header.jsp"></jsp:include>
<div class="main">
	<div class="main-center">
		<div class="main-exam-left">
			<div class="exam-left-menu">
				<a href="${contextPath}/thi-thu/bang-xep-hang"
					class="item-exam ranking"> <img
					src="/assets/img/first-prize.png"
					style="height: 20px; width: 20px;"> <span>Bảng xếp
						hạng</span>
				</a> <a href="${contextPath}/thi-thu" class="item-exam exam"> <img
					src="/assets/img/checkbox-pen-outline.png"
					style="height: 20px; width: 20px;"> <span>Vào phòng
						thi</span>
				</a>
			</div>
		</div>
		<div class="main-exam-right">
			<c:if test="${user != null }">
				<div id="main-exam-right" style="display: block;">
					<div class="table-box">
						<table class="table table-borderless dashboard">
							<thead>
								<tr>
									<th class="text-center">Level</th>
									<th class="text-center">Tồng điểm</th>
									<th class="text-center">Điểm đạt</th>
									<th class="text-center">Thời gian(phút)</th>
									<th class="text-center">Giờ thi</th>
									<th class="text-center"><div id="clock">8:57:54</div></th>
									<th class="text-center">Số người thi</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center">N5</td>
									<td class="text-center">180</td>
									<td class="text-center">80</td>
									<td id="minute_0" class="text-center">0</td>
									<td id="hours_0" class="text-center">//</td>
									<td class="text-center"><button id="exam_0"
											class="btn btn-danger btn-sm">Đóng</button></td>
									<td class="text-center">0</td>
								</tr>
								<tr>
									<td class="text-center">N4</td>
									<td class="text-center">180</td>
									<td class="text-center">90</td>
									<td id="minute_0" class="text-center">0</td>
									<td id="hours_0" class="text-center">//</td>
									<td class="text-center"><button id="exam_0"
											class="btn btn-danger btn-sm">Đóng</button></td>
									<td class="text-center">0</td>
								</tr>
								<tr>
									<td class="text-center">N3</td>
									<td class="text-center">180</td>
									<td class="text-center">95</td>
									<td id="minute_0" class="text-center">0</td>
									<td id="hours_0" class="text-center">//</td>
									<td class="text-center"><button id="exam_0"
											class="btn btn-danger btn-sm">Đóng</button></td>
									<td class="text-center">0</td>
								</tr>
								<tr>
									<td class="text-center">N2</td>
									<td class="text-center">180</td>
									<td class="text-center">90</td>
									<td id="minute_0" class="text-center">0</td>
									<td id="hours_0" class="text-center">//</td>
									<td class="text-center"><button id="exam_0"
											class="btn btn-danger btn-sm">Đóng</button></td>
									<td class="text-center">0</td>
								</tr>
								<tr>
									<td class="text-center">N1</td>
									<td class="text-center">180</td>
									<td class="text-center">100</td>
									<td id="minute_0" class="text-center">0</td>
									<td id="hours_0" class="text-center">//</td>
									<td class="text-center"><button id="exam_0"
											class="btn btn-danger btn-sm">Đóng</button></td>
									<td class="text-center">0</td>
								</tr>
							</tbody>
						</table>
					</div>
			</c:if>
			<c:if test="${user == null }">
				<div class="cover-container guest-cover-container">
					<h3>
						<i class="zmdi zmdi-lock"></i> Bạn cần đăng nhập để sử dụng tính
						năng này
					</h3>
					<br>
					<a data-fancybox="" data-animation-duration="300"
						data-src="#auth-container">
						<div class="btn-register" onclick="swichTab('login')">Đăng
							nhập</div>
					</a> <a data-fancybox="" data-animation-duration="300"
						data-src="#auth-container">
						<div class="btn-login" onclick="swichTab('register')">Tạo
							tài khoản</div>
					</a>
			</c:if>
			<div class="notification">
				<span><div>
						Thi thử trực tuyến sẽ diễn ra vào thứ 7 hàng tuần với 2 ca thi:<br>
						&nbsp;
					</div>
					<div>
						Ca sáng: 9h-11h30 giờ Việt Nam<br> Ca tối:&nbsp; &nbsp;
						&nbsp;19h-21h30 giờ Việt Nam<br> &nbsp;
					</div>
					<div>-&nbsp; Tuần 1: N5 (105’)</div>
					<div>-&nbsp; Tuần 2: N4 (125')</div>
					<div>-&nbsp; Tuần 3: N3 (140')&nbsp;</div>
					<div>
						-&nbsp; Tuần 4: N2 (165')<br> &nbsp;
					</div>
					<div>Hình thức: Bài thi thử dưới dạng trắc nghiệm giống với
						đề thi JLPT thật. Để tham gia làm bài thi cần ĐĂNG KÍ TẠO TÀI
						KHOẢN trên website.</div></span>
			</div>
		</div>
	</div>

</div>
</div>
<div class="go-top">
	<i class="fa fa-sort-asc"></i>
</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>