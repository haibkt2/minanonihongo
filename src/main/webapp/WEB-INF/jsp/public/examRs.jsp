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
		<div class="main-ranking-left">
			<div class="main-exam-left" style="width: 180px">
				<div class="exam-left-menu">
					<a href="${contextPath}/thi-thu/bang-xep-hang"
						class="item-exam ranking exam"> <img
						src="/assets/img/first-prize.png"
						style="height: 20px; width: 20px;"> <span>Bảng xếp
							hạng</span>
					</a> <a href="${contextPath}/thi-thu" class="item-exam"> <img
						src="/assets/img/checkbox-pen-outline.png"
						style="height: 20px; width: 20px;"> <span>Vào phòng
							thi</span>
					</a>
				</div>
			</div>
			<div class="main-exam-left" style="width: 180px">
			<div class="exam-left-menu">
				<a href="${contextPath}/thi-thu/bang-xep-hang"
					class="item-exam ranking"> <img
					src="${contextPath}/resources/public/img/first-prize.png"
					style="height: 20px; width: 20px;"> <span>Xếp Hạng Online</span>
				</a> <a href="${contextPath}/thi-thu" class="item-exam exam"> <img
					src="${contextPath}/resources/public/img/checkbox-pen-outline.png"
					style="height: 20px; width: 20px;"> <span>Thi Trực Tuyến</span>
				</a>
			</div>
		</div>
		</div>
		<div class="main-ranking-right">
			<div id="main-ranking-right" style="display: block;">
				<div class="filter-container">
					<select class="year-exam"><option value="2018">Năm
							2018</option>
						<option value="2019">Năm 2019</option>
						<option value="2020">Năm 2020</option>
						<option value="2021">Năm 2021</option>
						<option value="2022">Năm 2022</option>
						<option value="2023">Năm 2023</option>
						<option value="2024">Năm 2024</option>
						<option value="2025">Năm 2025</option>
						<option value="2026">Năm 2026</option>
						<option value="2027">Năm 2027</option></select> <select class="month-exam"><option
							value="1">Tháng 1</option>
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
						<option value="12">Tháng 12</option></select> <select class="level-exam"><option
							value="N5">Bài thi N5</option>
						<option value="N4">Bài thi N4</option>
						<option value="N3">Bài thi N3</option>
						<option value="N2">Bài thi N2</option>
						<option value="N1">Bài thi N1</option></select>
					<button class="btn btn-primary search">Tìm kiếm</button>
				</div>
				<div class="title-exam-cover">
					<span class="title-text"> TOP 100 HỌC VIÊN ĐIỂM CAO N5 </span> <span
						class="hoatiet1"><img
						src="/assets/img/hoatiet1.png"></span>
				</div>
				<div class="findMe"></div>
				<div class="no-rank">
					<span><i class="zmdi zmdi-alert-triangle"></i> Bạn không
						thuộc top 100</span>
				</div>
				<div class="fancybox-dialog" style="display: none;">
					<a
						data-options="{&quot;src&quot;: &quot;#jlpt-certificate&quot;, &quot;touch&quot;: true}"
						href="javascript:;" class="fancybox"></a>
					<div id="jlpt-certificate"></div>
				</div>
				<div class="list-students-container">
					<table id="table-ranking" class="table table-borderless">
						<thead>
							<tr>
								<th class="text-left title-rank">Hạng</th>
								<th class="text-left title-rank">Học viên</th>
								<th class="text-center title-rank">Điểm</th>
								<th class="text-center title-rank">合 格</th>
							</tr>
						</thead>
						<tbody>
							<tr id="item-43599" class="background-1" style="height: 50px;">
								<td class="text-left indexRank"><img
									src="${contextPath}/resources/public/img/no1.png"> <!----></td>
								<td class="text-left avatar"><img
									src="/img/default-avatar.jpg"
									alt="Avatar"> <span>Dong Toan</span></td>
								<td class="text-center score"><span>173</span></td>
								<td class="text-center passed"><span class="ok"><i
										class="zmdi zmdi-check-all"></i></span></td>
							</tr>
							<tr id="item-5286" class="background-2" style="height: 50px;">
								<td class="text-left indexRank"><img
									src="${contextPath}/resources/public/img/no2.png"> <!----></td>
								<td class="text-left avatar"><img
									src="${contextPath}/resources/public/img/default-avatar.jpg"
									alt="Avatar"> <span>haiha</span></td>
								<td class="text-center score"><span>165</span></td>
								<td class="text-center passed"><span class="ok"><i
										class="zmdi zmdi-check-all"></i></span></td>
							</tr>
							<tr id="item-26027" class="background-3" style="height: 50px;">
								<td class="text-left indexRank"><img
									src="${contextPath}/resources/public/img/no3.png"> <!----></td>
								<td class="text-left avatar"><img
									src="/cdn/avatar/small/1541328259_321303315_d41d8c_c49038.jpeg"
									alt="Avatar"> <span>Xuân Upins</span></td>
								<td class="text-center score"><span>165</span></td>
								<td class="text-center passed"><span class="ok"><i
										class="zmdi zmdi-check-all"></i></span></td>
							</tr>
							<tr id="item-16742" class="" style="height: 50px;">
								<td class="text-left indexRank">
									<!----> <span>100</span>
								</td>
								<td class="text-left avatar"><img
									src="/cdn/avatar/small/1541074535_206679990_4e3e04_005067.jpeg"
									alt="Avatar"> <span>Nguyễn Thị Hoài Anh </span></td>
								<td class="text-center score"><span>96</span></td>
								<td class="text-center passed"><span class="not-ok"><i
										class="zmdi zmdi-close"></i></span></td>
							</tr>
						</tbody>
					</table>
					<!---->
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