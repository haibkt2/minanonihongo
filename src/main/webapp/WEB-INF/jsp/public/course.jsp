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
  <meta name="csrf-token" content="wDoktwmV7eWQjjfPh9s3I0fwVmNyTvLfKJ7qCBhd">
<title>HaiLDX - Tiếng Nhật cho mọi người</title>
<jsp:include page="header.jsp"></jsp:include>
<div class="main">
	<div class="main-center main-course">
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
						<c:forEach items="${courseIlm.getCourse().getDocuments()}"
							var="doc">
							${doc.descrip} :
							<a
								href="${contextPath}/document/${courseIlm.getCourse().getCourseName()}/download?file=${doc.getLocaFileDoc()}"
								id="file-doc">${doc.getLocaFileDoc()}</a>
							<br>
						</c:forEach>
					</div>
					<br>
				</c:if>
				<div class="introduce" id="introduce">${courseIlm.getIntroduce() }</div>
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
			</div>
			<div id="fb-root"></div>
			<script>
				(function(d, s, id) {
					var js, fjs = d.getElementsByTagName(s)[0];
					if (d.getElementById(id))
						return;
					js = d.createElement(s);
					js.id = id;
					js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.2&appId=2272220076356331&autoLogAppEvents=1';
					fjs.parentNode.insertBefore(js, fjs);
				}(document, 'script', 'facebook-jssdk'));
			</script>
			<div class="fb-comments"
				data-href="https://localhost:8888/khoa-hoc/${courseName}#"
				data-width="700" data-numposts="1"></div>
		</div>
		<div class="main-right">
			<div class="course-info-container course-info-status-pc">
				<i>* Tra cứu từ mới</i>
				<div class="item-search-voca">
					<div id="search-submit">&nbsp;</div>
					<input type="text" name="keya" class="search-input"
						id="search-inputa" onkeypress="return searchVoca(event, this)"
						placeholder="日本、にほん、Nhật Bản" autocomplete="off">
				</div>
				<div class="rs-search-voca"></div>
				<div class="numberOfDay"></div>
				<div class="course-list-container">
					<div class="block-title">Tiến trình học</div>
					<div class="panel-group" id="accordion" role="tablist"
						aria-multiselectable="true">
						<c:forEach items="${courseIlmTypeList}" var="courseIlmType"
							varStatus="index">
							<c:set value="${courseIlmType.getCourseIlmTypeId()}" var="nh"></c:set>
							<%
								String course = "menu" + pageContext.getAttribute("nh");
									String courseName = (String) pageContext.getAttribute("courseName");
							%>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab">
									<a class="collapsed" role="button" data-toggle="collapse"
										data-parent="#accordion" href="#collapse-01${index.index}"
										aria-expanded="false"> <strong>${courseIlmType.getCourseIlmTypeName()}
									</strong>
									</a>
								</div>
								<div id="collapse-01${index.index}"
									class="panel-collapse collapse " role="tabpanel">
									<div class="panel-body">
										<ul class="scroll-items">
											<%
												List<CourseIlm> courseList = (List<CourseIlm>) request.getAttribute(course);
													Common common = new Common();
													for (CourseIlm courseIlm : courseList) {
											%>
											<li class="lesson-item"><a
												class="lesson-item-click lesson-item" id="lesson-item"
												ls-attr="learn" href="javascript:void(0);"
												data-id="<%=courseIlm.getCourseIlmId()%>"
												data-name="<%=common.toUrlFriendly(courseIlm.getLessonName())%>"
												url="${contextPath}/khoa-hoc/<%=common.toUrlFriendly(courseName) %>/study/<%=common.toUrlFriendly(courseIlm.getLessonName())%>"
												style="padding-right: 70px;"><%=courseIlm.getLessonName()%></a></li>
											<%
												}
											%>
										</ul>

									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="fr-fb">
					<iframe
						src="https://www.facebook.com/plugins/page.php?href=https://www.facebook.com/tiengnhatkantandesuyo&tabs=null&width=280px&height=200px&small_header=false&adapt_container_width=false&hide_cover=false&show_facepile=true&appId=2272220076356331"
						width="280px" height="200px"
						style="border: none; overflow: hidden" scrolling="no"
						frameborder="0" allowTransparency="true" allow="encrypted-media">
					</iframe>
					<iframe
						src="https://www.facebook.com/plugins/share_button.php?href=https%3A%2F%2Fwww.facebook.com%2Ftiengnhatkantandesuyo&layout=button_count&size=small&mobile_iframe=true&appId=2272220076356331&width=78&height=20"
						width="78" height="20" style="border: none; overflow: hidden"
						scrolling="no" frameborder="0" allowTransparency="true"
						allow="encrypted-media"></iframe>
				</div>
			</div>

		</div>
	</div>
	<script>
		$(".lesson-item-click").click(
				function(e) {
					e.preventDefault();
					var id = $(this).attr("data-id");
					var ls = $(this).attr("ls-attr");
					var url = $(this).attr("url") + "?id=" + id;
					$(this).css('background-color', '#ac7339');
					var h = $(this).attr("data-name");
					$(".fb-comments").attr(
							"data-href",
							"https://localhost:8888/khoa-hoc/${courseName}#"
									+ h);
					document.location.hash = h;
					$.ajax({
						url : url,
						dataType : "html",
						contentType : "application/json;charset=utf-8",
						success : function(obj) {
							$('.main-left').html(obj);
						},
						error : function(e) {
							alert("Sorry! ");
						}
					});
				});
	</script>

	<div class="go-top">
		<i class="fa fa-sort-asc"></i>
	</div>

</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>