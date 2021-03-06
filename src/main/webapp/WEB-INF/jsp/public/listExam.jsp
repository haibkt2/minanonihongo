<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="minanonihongo.model.*"%>
<%@ page import="minanonihongo.service.*"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="sv" class="minanonihongo.service.Common" />
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
		<div class="main-exam-left" style="width: 120px"></div>
		<div class="main-exam-right">

			<div id="main-exam-right" style="display: block;">
				<br>
				<div id="lession-cotent" class="clearfix">
					<h1 id="arc-title">
						<span class="dark-red"></span><span class="small-hide"></span>
					</h1>
					<div id="newsInner">
						<p></p>
						<p></p>
						<table style="width: 100%;">
							<tbody>
								<tr>
									<c:forEach items="${courses}" var="c">
										<td><p></p>
											<p>
												<a class="right-link long" href="${contextPath}/luyen-de/${c.courseName}">
													<span <c:if test="${course.courseName eq c.courseName}">style="background: #900;"</c:if> class="right-link-inner">
														<span class="right-link-content"> <span
															class="fa icon-book"> </span> <span class="right-txt">
																<span class="right-big">${c.courseName} (言語知識)</span><span
																class="right-small"> </span>
														</span>
													</span>
												</span>
												</a>
											</p>
											<p></p></td>
									</c:forEach>
								</tr>
							</tbody>
						</table>
						<p></p>
						<p></p>
						<table style="width: 100%;" cellpadding="0">
							<tbody>
								<tr>
									<td
										style="height: 30px; text-align: center; font-size: 18px; color: #aa4c4c; font-weight: Bold;">ĐỀ
										LUYỆN THI TRẮC NGHIỆM N5</td>
								</tr>
							</tbody>
						</table>
						
						<p></p>
						<p>
							<br>
						</p>
						<div class="divider divider3"></div>
						<p></p>
						<c:forEach items="${je}" var="je">
							<br>
							<table style="width: 100%;" border="0">
								<tbody>
									<tr>
										<td
											style="font-size: 18px; color: #ff0000; width: 50%; height: 30px;"><strong style="margin-left: 7px">
												${je.jlptMenuName}</strong><strong> </strong></td>
									</tr>
								</tbody>
							</table>
							<c:forEach items="${je.jlpts}" var="js" varStatus="id">
								<a class="right-link long"
									href="${contextPath}/luyen-de/${js.course.courseName}/${js.jlptId.substring(5)}-${sv.toUrlFriendly(js.jlptName)}">
									<span class="right-link-inner"> <span
										class="right-link-content"> <span
											class="fa icon-folder-open"> </span> <span class="right-txt">
												<span class="right-big">Đề số :
													${id.index+1}&nbsp;-&nbsp;${js.jlptName}<br>
											</span>
										</span>
									</span>
								</span>
								</a>
							</c:forEach>
							<div style="width: 100%; height: 60px"></div>
						</c:forEach>
						<p>&nbsp;</p>
					</div>
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