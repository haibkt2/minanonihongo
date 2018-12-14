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
		<div class="main-exam-left" style="width: 140px"></div>
		<div class="main-exam-right">
			<br>
			<table style="width: 100%;">
				<tbody>
					<tr>
						<td
							style="height: 22px; font-size: 18px; color: #aa4c4c; font-weight: bold; text-align: left;">ĐỀ
							LUYỆN THI TIẾNG NHẬT （文字・語彙・文法）</td>
					</tr>
				</tbody>
			</table>
			<table style="width: 100%;">
				<tbody>
					<tr>
						<td><p></p>
							<p>
								<a class="right-link long" href="${contextPath}/luyen-de/N5">
									<span class="right-link-inner"> <span
										class="right-link-content"> <span class="fa icon-book">
										</span> <span class="right-txt"> <span class="right-big">N5
													(言語知識)</span><span class="right-small"> </span>
										</span>
									</span>
								</span>
								</a>
							</p>
							<p></p></td>
						<td><p></p>
							<p>
								<a class="right-link long" href="${contextPath}/admin/exercise/N4">
									<span class="right-link-inner"> <span
										class="right-link-content"> <span class="fa icon-book">
										</span> <span class="right-txt"> <span class="right-big">N4
													(言語知識)</span><span class="right-small"> </span></span></span></span>
								</a>
							</p>
							<p></p></td>
						<td><p></p>
							<p>
								<a class="right-link long" href="${contextPath}/luyen-de/N3">
									<span class="right-link-inner"> <span
										class="right-link-content"> <span class="fa icon-book">
										</span> <span class="right-txt"> <span class="right-big">N3
													(言語知識)</span>
										</span>
									</span>
								</span>
								</a>
							</p>
							<p></p></td>
						<td><p></p>
							<p>
								<a class="right-link long" href="${contextPath}/luyen-de/N2">
									<span class="right-link-inner"> <span
										class="right-link-content"> <span class="fa icon-book">
										</span> <span class="right-txt"> <span class="right-big">N2
													(言語知識)</span>
										</span>
									</span>
								</span>
								</a>
							</p>
							<p></p></td>
							
							<td><p></p>
							<p>
								<a class="right-link long" href="${contextPath}/luyen-de/N1">
									<span class="right-link-inner"> <span
										class="right-link-content"> <span class="fa icon-book">
										</span> <span class="right-txt"> <span class="right-big">N1
													(言語知識)</span>
										</span>
									</span>
								</span>
								</a>
							</p>
							<p></p></td>

					</tr>
				</tbody>
			</table>
			<br> <br>
			<table style="width: 100%;">
				<tbody>
					<tr>
						<td
							style="height: 22px; font-size: 18px; color: #aa4c4c; font-weight: bold; text-align: left;">ĐỀ
							ĐỀ THI NĂNG LỰC JLPT</td>
					</tr>
				</tbody>
			</table>
			<table style="width: 100%;" border="0">
				<tbody>
					<tr>
						<td><p></p>
							<p>
								<a class="right-link long"
									href="../de-luyen-thi-trac-nghiem-cap-do-n5.html"> <span
									class="right-link-inner"> <span
										class="right-link-content"> <span class="fa icon-book">
										</span> <span class="right-txt"> <span class="right-big">JLPT
													N5</span><span class="right-small"> </span>
										</span>
									</span>
								</span>
								</a>
							</p>
							<p></p></td>
						<td><p></p>
							<p>
								<a class="right-link long"
									href="../de-luyen-thi-trac-nghiem-cap-do-n4.html"> <span
									class="right-link-inner"> <span
										class="right-link-content"> <span class="fa icon-book">
										</span> <span class="right-txt"> <span class="right-big">JLPT
													N4</span><span class="right-small"> </span></span></span></span></a>
							</p>
							<p></p></td>
						<td><p></p>
							<p>
								<a class="right-link long"
									href="../de-luyen-thi-trac-nghiem-cap-do-n3.html"> <span
									class="right-link-inner"> <span
										class="right-link-content"> <span class="fa icon-book">
										</span> <span class="right-txt"> <span class="right-big">JLPT
													N3</span>
										</span>
									</span>
								</span>
								</a>
							</p>
							<p></p></td>
						<td><p></p>
							<p>
								<a class="right-link long"
									href="../de-luyen-thi-trac-nghiem-cap-do-n2.html"> <span
									class="right-link-inner"> <span
										class="right-link-content"> <span class="fa icon-book">
										</span> <span class="right-txt"> <span class="right-big">JLPT
													N2</span>
										</span>
									</span>
								</span>
								</a>
							</p>
							<p></p></td>
							<td><p></p>
							<p>
								<a class="right-link long"
									href="../de-luyen-thi-trac-nghiem-cap-do-n2.html"> <span
									class="right-link-inner"> <span
										class="right-link-content"> <span class="fa icon-book">
										</span> <span class="right-txt"> <span class="right-big">JLPT
													N1</span>
										</span>
									</span>
								</span>
								</a>
							</p>
							<p></p></td>

					</tr>
				</tbody>
			</table>

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
<div class="go-top">
	<i class="fa fa-sort-asc"></i>
</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>