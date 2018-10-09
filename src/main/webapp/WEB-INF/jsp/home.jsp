<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="vi">
<head>
<title>HaiLDX - Tiếng Nhật cho mọi người
</title>
	<jsp:include page="header.jsp"></jsp:include>
		<div class="site-main">
			<div class="haijp-banner">
				<div>
					<a href="" target="_blank"> <img
						src="${contextPath}/resources/img/baderimg.png"
						style="display: inline;">
					</a>
				</div>
				<div>
					<a href="" target="_blank"> <img
						src="${contextPath}/resources/img/baderimg2.png"
						style="display: inline;">
					</a>
				</div>
			</div>

			<script>
				$('.haijp-banner').slick({
					dots : false,
					infinite : true,
					speed : 300,
					fade : false,
					autoplay : true,
					arrows : false,
					cssEase : 'linear'
				});
			</script>

			<div class="block-slide-banner"
				style="background-image:url(${contextPath}/resources/img/videoimggt.png)">
				<div class="player-home-icon">
					<a class="fancybox fancybox.iframe"
						href="https://www.youtube.com/embed/HbSKkQCC5JU?autoplay=1"
						title="Xem clip giới thiệu"> <img
						src="${contextPath}/resources/img/player-home-icon.png" />
					</a>
				</div>
			</div>

			<b id="open-featured-popup" data-fancybox
				data-src="#home-featured-popup" href="javascript:;"></b>

			<div class="full-container block-student-feedback">
				<div class="center-container">
					<div class="student-feedback-title">
						<h1 class="green-text">Nơi học tập Tiếng Nhật của</h1>
						<h2>
							Hơn <span class="counter green-text">40983</span> Học Viên
						</h2>
					</div>
					<img class="img-student" style="padding: 0 15px; margin: 10px 0;"
						src="${contextPath}/resources/img/hv.png">
				</div>
			</div>

			<div class="full-container fb-comments-container">
				<div class="center-container">
					<div class="row row-content-fb">
						<div class="col-md-8 col-content">
							<div class="block-comment">
								<ul class="nav nav-pills " role="tablist">
									<li role="presentation" class="active"><a
										href="#block-coment" role="tab" data-toggle="tab">Ý kiến
											học viên</a></li>
								</ul>
								<div class="tab-content">
									<div role="tabpanel" class="tab-pane active" id="block-coment">
										<div class="block-title">
											<strong>Ý kiến học viên</strong>
										</div>
										<comment-fb url="https://localhost:8888"></comment-fb>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4" style="overflow-x: hidden;">
							<iframe
								src="https://www.facebook.com/plugins/page.php?href=https://www.facebook.com/tiengnhatkantandesuyo&tabs=null&small_header=false&adapt_container_width=false&hide_cover=false&show_facepile=true&appId=2272220076356331"
								style="border: none; width: 110% !important; float: left; min-height: 215px;"
								scrolling="no" frameborder="0" allowTransparency="true">
							</iframe>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>