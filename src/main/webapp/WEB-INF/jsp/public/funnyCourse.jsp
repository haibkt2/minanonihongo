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
<jsp:include page="header.jsp"></jsp:include>
<script src="${contextPath}/resources/public/js/pagination.js"></script>
<div class="main" style="min-height: 750px">
	<div class="main-center">
		<div class="main-left">
				<div class="heading-box">
					<h2 class="blog-heading">
						<span style="color: #588d3f;"></span>
					</h2>
				</div>
				<% int i = 0;int j = 0;%>
				<c:forEach items="${funs}" var="funs" varStatus="funsId">
					<c:if test="${funsId.index%3 eq 0}">
						<div class="page" id="page<%=++i%>">
							<div class="news-item featured">
								<a
									href="${contextPath}/vui-tieng-nhat/${funs.getCourseBgId().substring(4)}-${sv.toUrlFriendly(funs.getCourseFunTitle())}">
									<img class="lazyload"
									src="${contextPath}/reponsitory/Fun/${sv.toUrlFriendly(funs.getCourseFunType().getCourseFunTypeName())}/${funs.courseFunImg}"
									data-src="${contextPath}/reponsitory/Fun/${sv.toUrlFriendly(funs.getCourseFunType().getCourseFunTypeName())}/${funs.courseFunImg}">
								</a> <a
									href="${contextPath}/vui-tieng-nhat/${funs.getCourseBgId().substring(4)}-${sv.toUrlFriendly(funs.getCourseFunTitle())}"
									title="${funs.courseFunTitle}">
									<div class="title">${funs.courseFunTitle}</div>
								</a> <span class="info"><i class="fa fa-user">
										&nbsp;</i> &nbsp; &nbsp; <i
									class="fa fa-calendar-check-o"></i>&nbsp;${fun.getUpdateDate()}
									&nbsp; &nbsp; Lượt xem : ${funs.viewCourseFun} </span> <span
									class="brief">${funs.courseFunTitle} </span>
							</div>
					</c:if>
					</div>
					<c:if test="${funsId.index%3 ne 0}">
					<%j++; %>
						<div class="news-item featured-sub">
							<a
								href="${contextPath}/vui-tieng-nhat/${funs.getCourseBgId().substring(4)}-${sv.toUrlFriendly(funs.getCourseFunTitle())}">
								<img class="lazyload"
								src="${contextPath}/reponsitory/course-fun/${funs.courseFunImg}"
								data-src="${contextPath}/reponsitory/course-fun/${funs.courseFunImg}">
							</a> <a
									href="${contextPath}/vui-tieng-nhat/${funs.getCourseBgId().substring(4)}-${sv.toUrlFriendly(funs.getCourseFunTitle())}"
									title="${funs.courseFunTitle}">
									<div class="title">${funs.courseFunTitle}</div>
								</a>
						</div>
					</c:if>
					<%if(j>i) {%></div><%}%>
		<c:set value="${funsId.index/3 + 1}" var="np"></c:set>
		</c:forEach>
		<ul class="pagination" id="pagination">
		</ul>
	</div>
	<div class="main-right" style="padding-bottom: 30px;">
		<div class="list-group list-category">
			<span class="list-group-item item-heading">Chuyên mục</span>
			<c:forEach items="${funt}" var="funt">
				<a href="${contextPath}/vui-tieng-nhat/chuyen-muc/${funt.courseFunTypeId}-${sv.toUrlFriendly(funt.courseFunTypeName)}"
					class="list-group-item ${funt.courseFunTypeName}">${funt.courseFunTypeName}</a>
			</c:forEach>
		</div>
		<h3 class="related-title">Thú vị nhất</h3>

		<c:forEach items="${funmn}" var="fun">
			<div class="related-news-item">
				<a
					href="${contextPath}/vui-tieng-nhat/${fun.getCourseBgId().substring(4)}-${sv.toUrlFriendly(fun.getCourseFunTitle())}">
					<img class="lazyload"
					src="${contextPath}/reponsitory/Fun/${sv.toUrlFriendly(fun.getCourseFunType().getCourseFunTypeName())}/${fun.courseFunImg}"
					data-src="${contextPath}/reponsitory/Fun/${sv.toUrlFriendly(fun.getCourseFunType().getCourseFunTypeName())}/${fun.courseFunImg}">
				</a><a href="${contextPath}/vui-tieng-nhat/${fun.getCourseBgId().substring(4)}-${sv.toUrlFriendly(fun.courseFunTitle)}"
								title="${fun.courseFunTitle}">
								<div class="title">${fun.courseFunTitle}</div>
					</a>  <span class="brief">${fun.courseFunTitle} </span>
			</div>
		</c:forEach>
	</div>
</div>
</div>
<div class="go-top">
	<i class="fa fa-sort-asc"></i>
</div>
<script type="text/javascript">
	$(document).ready(function() {
		$('#pagination').twbsPagination({
			totalPages : ${np},
			startPage : 1,
			visiblePages : ${np},
			initiateStartPageClick : true,
			href : false,
			hrefVariable : '{{number}}',
			prev : '<<',
			next: '>>',
			loop : false,
			onPageClick : function(event, page) {
				$('.page-active').removeClass('page-active');
				$('#page' + page).addClass('page-active');
			},
			paginationClass : 'pagination',
			nextClass : 'next',
			prevClass : 'prev',
			pageClass : 'page',
			activeClass : 'active',
			disabledClass : 'disabled'
		});
	});
</script>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>