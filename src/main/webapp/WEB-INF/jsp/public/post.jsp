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
			<c:if test="${not empty postt}">
				<div class="heading-box">
					<h2 class="blog-heading">
						<span style="color: #588d3f;">${posts.get(0).getPostType().getPostTypeName()}</span>
					</h2>
				</div>
				<% int i = 0;int j = 0;%>
				<c:forEach items="${posts}" var="post" varStatus="postId">
					<c:if test="${postId.index%3 eq 0}">
						<div class="page" id="page<%=++i%>">
							<div class="news-item featured">
								<a
									href="${contextPath}/van-hoa-nhat-ban/${post.getPostId().substring(4)}-${sv.toUrlFriendly(post.getPostTitle())}">
									<img class="lazyload"
									src="${contextPath}/reponsitory/Post/${sv.toUrlFriendly(post.postType.postTypeName)}/${post.getPostImg()}"
									data-src="${contextPath}/reponsitory/Post/${post.getPostImg()}">
								</a> <a
									href="${contextPath}/van-hoa-nhat-ban/${post.getPostId().substring(4)}-${sv.toUrlFriendly(post.getPostTitle())}"
									title="${post.getPostTitle()}">
									<div class="title">${post.getPostTitle()}</div>
								</a> <span class="info"><i class="fa fa-user">
										&nbsp;${post.getUser().getName()}</i> &nbsp; &nbsp; <i
									class="fa fa-calendar-check-o"></i>&nbsp;${post.getUpdateDate()}
									&nbsp; &nbsp; Lượt xem : ${post.getViewPost()} </span> <span
									class="brief">${post.getPostTitle()} </span>
							</div>
					</c:if>
					<c:if test="${postId.index%3 ne 0}">
					<%j++; %>
						<div class="news-item featured-sub">
							<a
								href="${contextPath}/van-hoa-nhat-ban/${post.getPostId().substring(4)}-${sv.toUrlFriendly(post.getPostTitle())}">
								<img class="lazyload"
								src="${contextPath}/reponsitory/Post/${sv.toUrlFriendly(post.postType.postTypeName)}/${post.getPostImg()}"
								data-src="${contextPath}/reponsitory/Post/${sv.toUrlFriendly(post.postType.postTypeName)}/${post.getPostImg()}">
							</a> <a
								href="${contextPath}/van-hoa-nhat-ban/${post.getPostId().substring(4)}-${sv.toUrlFriendly(post.getPostTitle())}"
								title="${post.getPostTitle()}">
								<div class="title">${post.getPostTitle()}</div>
							</a> 
						</div>
					</c:if>
					<%if(j>i) {%></div><%}%>
		<c:set value="${postId.index/3 + 1}" var="np"></c:set>
		</c:forEach>
		</div>
		</c:if>
<%-- 		<c:if test="${not empty post}"> --%>
<!-- 			<div class="blog-detail-container"> -->
<%-- 				<h2 class="blog-detail-title">${post.getPostTitle()}</h2> --%>
<!-- 				<span class="blog-detail-info"><i class="fa fa-user"></i> -->
<%-- 					Người đăng : ${post.getUser().getUserName()}&nbsp; &nbsp; <i --%>
<%-- 					class="fa fa-calendar-check-o"></i> ${post.getUpdateDate()} &nbsp; --%>
<%-- 					&nbsp; Lượt xem : ${post.getViewPost()}</span> --%>
<!-- 				<div class="blog-social-like"> -->
<!-- 					<iframe -->
<%-- 						src="https://www.facebook.com/plugins/like.php?href=https%3A%2F%2Flocalhost%3A8888%2Fvan-hoa-nhat-ban%2F${post.getPostId()}&width=450&layout=standard&action=like&size=small&show_faces=true&share=true&height=80&appId=2272220076356331" --%>
<!-- 						width="450" height="30" style="border: none; overflow: hidden" -->
<!-- 						scrolling="no" frameborder="0" allowTransparency="true" -->
<!-- 						allow="encrypted-media"></iframe> -->
<!-- 				</div> -->
<%-- 				<div class="blog-detail-content">${post.getPostContent()}</div> --%>
<!-- 			</div> -->
<%-- 		</c:if> --%>
		<ul class="pagination" id="pagination">
		</ul>
	</div>
	<div class="main-right" style="padding-bottom: 30px;">
		<div class="list-group list-category">
			<span class="list-group-item item-heading">Chuyên mục</span>
			<c:forEach items="${postt}" var="postt">
				<a
					href="${contextPath}/van-hoa-nhat-ban/chuyen-muc/${postt.getPostTypeId()}-${sv.toUrlFriendly(postt.getPostTypeName())}"
					class="list-group-item ${postt.getPostTypeName()}">${postt.getPostTypeName()}</a>
			</c:forEach>
		</div>
		<h3 class="related-title">Bài viết đọc nhiều</h3>

		<c:forEach items="${postmn}" var="post">
			<div class="related-news-item">
				<a
					href="${contextPath}/van-hoa-nhat-ban/${post.getPostId().substring(4)}-${sv.toUrlFriendly(post.getPostTitle())}">
					<img class="lazyload"
					src="${contextPath}/reponsitory/Post/${sv.toUrlFriendly(post.postType.postTypeName)}/${post.getPostImg()}"
					data-src="${contextPath}/reponsitory/Post/${sv.toUrlFriendly(post.postType.postTypeName)}/${post.getPostImg()}">
				</a><a href="${contextPath}/van-hoa-nhat-ban/${post.getPostId().substring(4)}-${sv.toUrlFriendly(post.getPostTitle())}"
								title="${post.getPostTitle()}">
								<div class="title">${post.getPostTitle()}</div>
					</a> <span class="info"><i class="fa fa-user"> &nbsp;${post.getUser().getName()}</i> &nbsp; &nbsp; <i
								class="fa fa-calendar-check-o"></i>&nbsp;${post.getUpdateDate()}
								&nbsp; &nbsp; Lượt xem : ${post.getViewPost()} </span> <span
								class="brief">${post.getPostTitle()} </span>
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