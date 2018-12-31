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
<meta name="csrf-token"
	content="wDoktwmV7eWQjjfPh9s3I0fwVmNyTvLfKJ7qCBhd">
<title>HaiLDX - Tiếng Nhật cho mọi người</title>
<c:if test="${courseIlm.getCourse().getCourseName() eq 'Alphabet'}">
	<c:set value="Bảng chữ cái" var="courseName"></c:set>
</c:if>
<c:if test="${courseIlm.getCourse().getCourseName() ne 'Alphabet'}">
	<c:set value="${courseIlm.getCourse().getCourseName()}"
		var="courseName"></c:set>
</c:if>
<div class="main-left">
	<h2 class="course-detail-title">
		<a href="#">Khóa học <c:out value="${courseName}"></c:out></a>&nbsp;<i
			class="zmdi zmdi-caret-right"></i>&nbsp;<b id="course-heading">${courseIlm.getLessonName()}</b>
	</h2>
	<p style="width: 100%; float: left; margin: 5px 0 0px;">
		<i class="zmdi zmdi-time-countdown"></i> <b id="total-number-test">${courseIlm.getCourseGlobal().getTotalNumber()}</b>
		<i id="view-down">Lượt xem</i>
	</p>
	<div class="cover-container" id="cover-container">
	<c:if test="${not empty courseIlm.getCourse().getDocuments()}">
			<div class="document" id="document">
				<i class="zmdi zmdi-dns">&nbsp;</i><strong>Tài liệu học tập
				</strong> <br>
				<c:forEach items="${courseIlm.getCourse().getDocuments()}" var="doc">
							${doc.descrip} :
							<a
						href="${contextPath}/document/${courseIlm.getCourse().getCourseName()}/download?file=${doc.getLocaFileDoc()}"
						id="file-doc">${doc.getLocaFileDoc()}</a>
					<br>
				</c:forEach>
			</div>
			<br>
		</c:if>
		
		<c:if test="${not empty courseIlm.locaFileCourse}">
			<br>
			<a class="movie-play"> <img id="videoImg"
				src="${contextPath}/reponsitory/${courseIlm.getCourse().getCourseName()}/img/${courseIlm.getLocaFileImg()}" />
				<br> <span class="play-icon-btn"> <i
					class="zmdi zmdi-play"></i>
			</span>
			</a>
			<div id="iframe-video" style="display: none;">
				<video width="100%" height="395" controls id="cVideo">
					<source
						src="${contextPath}/reponsitory/${courseIlm.getCourse().getCourseName()}/video/${courseIlm.getLocaFileCourse()}"
						type="video/mp4" id="srVideo">
				</video>
			</div>
			<script type="text/javascript">
			var vid = document.getElementById("cVideo");
			// sự kiện click vào chạy video
			$('.movie-play').on('click', function(ev) {
				$(".movie-play").css("display", "none");
				$("#iframe-video").css("display", "block");
				vid.play();
				ev.preventDefault();
			});
		</script>
		</c:if>
		<c:if test="${not empty courseIlm.introduce}">
		<div class="introduce" id="introduce">${courseIlm.introduce}</div>
		</c:if>
		<c:if test="${not empty courseIlm.getVocaCourseIlms()}">
			<div class="tableContainer" id="detail-voca tableContainer">
				<c:forEach items="${courseIlm.vocaCourseIlms}" var="voca"
					varStatus="id">
					<span class="frame5 pic"><span class="frame-inside">
							<span class="td-hinh"><span class="ct-chu-cai">${voca.hirakana}</span>
								<button id="malevoice_1"
									onclick="document.getElementById('audiomale-${id.index}').play()"
									class="read malevoice" title="Click để nghe đọc"></button> </span> <span
							class="dt-mean-text">${voca.translate}</span> <audio id="audiomale-${id.index}"
								class="audiomale" preload="none">
								<source preload="none" type="audio/mpeg"
									src="${contextPath}/reponsitory/${courseIlm.getCourse().getCourseName()}/voca/${voca.getCourseIlm().getCourseIlmId()}/${voca.audio}">
							</audio>
					</span></span>
				</c:forEach>
			</div>
		</c:if>
	</div>
</div>
</body>
</html>