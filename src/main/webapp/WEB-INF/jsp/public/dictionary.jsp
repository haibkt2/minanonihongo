<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	
</script>
</head>
<script type="text/javascript">
	
</script>
<body>
	<div style="background-color: #eee; max-height: 180px; overflow: auto;">
		<c:if test="${empty voca}">
			<i style="margin: 10px 0 10px 10px">Không có kết quả nào cho tìm
				kiếm : ${key}</i>
		</c:if>

		<c:if test="${not empty voca}">
			<div style="width: 100%; height: 3px"></div>
			<c:forEach items="${voca}" var="vc" varStatus="id">
				<div style="background-color: #fff; margin: 10px">
					<span
						style="margin: 2px; font-size: 16px; color: #00f; font-weight: 600">
						<c:out value="${vc.hirakana}"></c:out>
					</span> <span style="font-size: 16px; color: #ff4a37; font-weight: 600">
						<c:if test="${not empty vc.kanji}">(${vc.kanji})</c:if>&nbsp;
					</span> <span>:&nbsp;&nbsp; ${vc.translate}<audio
							id="mp3Mini_${id.index+400}" preload="none">
							<source type="audio/mpeg"
								src="${contextPath}/reponsitory/${vc.courseIlm.course.courseName}/voca/${vc.courseIlm.courseIlmId}/${vc.audio}">
							<source type="audio/ogg"
								src="${contextPath}/reponsitory/N5/voca/watashi.ogg">
						</audio> <a href="javascript:void(0);" class="jp-play"
						style="float: right; margin-right: 8px" id="jp-play-${id.index+400}"
						tabindex="1" onclick="playMp4(${id.index+400})"> <i
							class="zmdi zmdi-volume-up"></i>
					</a> <a href="javascript:void(0);" class="jp-pause" style="float: right; margin-right: 8px"
						id="jp-pause-${id.index+1000}" tabindex="1"
						onClick="pauseMp4(${id.index+400})"><i
							class="zmdi zmdi-pause-circle-outline"></i></a><br> <c:if test="${not empty vc.example }">Ví dụ : ${vc.example}</c:if>
					</span>
				</div>

			</c:forEach>
			<div style="width: 100%; height: 3px"></div>
		</c:if>

	</div>
</body>
</html>