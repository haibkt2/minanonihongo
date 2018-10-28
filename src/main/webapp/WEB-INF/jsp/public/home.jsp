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
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>
	<div id="application">
		<div class="main">
			<div class="haijp-banner">
				<div>
					<a href="" target="_blank"> <img
						src="${contextPath}/resources/img/baderimg2.png"
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
			<div class="main-center main-course">
				<div class="main-left" style="min-height: 600px">
				<br>
					<h4>
						<p style="text-align: center; font-size: 23px "><strong>Tổng quan về tiếng Nhật</strong></p>
					</h4>
					<h4 class="sprocket-lists-title padding"
						style="margin: 0px; line-height: 20px; color: #6e6e6e; text-rendering: optimizelegibility; font-size: 18px; position: relative; padding: 10px 0px; cursor: pointer;"
						data-lists-toggler="">Vỡ lòng</h4>
					<p>
						<span style="color: black" class="sprocket-lists-item"
							data-lists-content=""> <span style="color: black"
							class="sprocket-padding"> <span style="color: black"
								class="sprocket-lists-desc img-disabled">Dành cho các bạn
									mới bắt đầu học tiếng Nhật, học bảng chữ cái hiragana và
									katakana. Bước đầu của sự thành công lúc nào cũng khó khăn và vất vả, mọi người phải cố gắng học và nhớ hết bảng chữ cái nhé.
									Sẽ có những bài học thú vị đầu tiên như đếm số, các câu chào hỏi cơ bản. Bạn sẽ thấy Tiếng Nhật bắt đầu thú vị rồi đấy. :) <br> <a ondragstart="return false;"
									href="/khoa-hoc/Bang-chu-cai"> ●Bảng chữ cái</a>&nbsp;&nbsp;
							</span>
						</span>
						</span>
					</p>
					<h4 class="sprocket-lists-title padding"
						style="margin: 0px; line-height: 20px; color: #6e6e6e; text-rendering: optimizelegibility; font-size: 18px; position: relative; padding: 10px 0px; cursor: pointer;"
						data-lists-toggler="">Sơ cấp</h4>
					<p>
						<span style="color: black" class="sprocket-lists-item"
							data-lists-content=""> <span style="color: black"
							class="sprocket-padding"> <span style="color: black"
								class="sprocket-lists-desc img-disabled"> <span
									style="color: black" class="sprocket-lists-item"
									data-lists-content=""> <span style="color: black"
										class="sprocket-padding"> <span style="color: black"
											class="sprocket-lists-desc img-disabled">Sau khi học
												xong bảng chữ cái và các câu chào hỏi cơ bản, bạn học tiếp
												giáo trình Minna ni Nihongo . 50 bài
												học Minna no Nihongo chúng ta sẽ cùng nhau học về : Từ vựng, ngữ pháp,
												luyện đọc, luyện nghe, bài tập, hán tự và kiểm
												tra. Ngoài ra còn có nhất nhiều bài học thú vị khác về con người văn hóa của Đất nước nhật bản.<br> 
												<a ondragstart="return false;" href="/khoa-hoc/N5">
													●N5</a>&nbsp;&nbsp;<a ondragstart="return false;"
												href="/khoa-hoc/N4"> ●N4</a>
										</span>
									</span>
								</span>
							</span>
						</span>
						</span>
					</p>
					<h4 class="sprocket-lists-title padding"
						style="margin: 0px; line-height: 20px; color: #6e6e6e; text-rendering: optimizelegibility; font-size: 18px; position: relative; padding: 10px 0px; cursor: pointer;"
						data-lists-toggler="">Trung cấp</h4>
					<p>
						<span style="color: black" class="sprocket-lists-item"
							data-lists-content=""> <span style="color: black"
							class="sprocket-padding"> <span style="color: black"
								class="sprocket-lists-desc img-disabled"> <span
									style="color: black" class="sprocket-lists-item"
									data-lists-content=""> <span style="color: black"
										class="sprocket-padding"> <span style="color: black"
											class="sprocket-lists-desc img-disabled">Sau khi học
												xong giáo trình Minano Nihongo, bạn đã có thể giao tiếp cơ bản về Tiếng Nhật. Cùng tiếp tục nâng cao từ vững, ngữ pháp, luyện nghe để có thể giao tiếp như người bản xứ nhé.
												<br> <a ondragstart="return false;" href="/khoa-hoc/N3">
													●N3</a>&nbsp;&nbsp;<a ondragstart="return false;"
												href="/khoa-hoc/N2"> ●N2</a>
										</span>
									</span>
								</span>
							</span>
						</span>
						</span>
					</p>
					<h4 class="sprocket-lists-title padding"
						style="margin: 0px; line-height: 20px; color: #6e6e6e; text-rendering: optimizelegibility; font-size: 18px; position: relative; padding: 10px 0px; cursor: pointer;"
						data-lists-toggler="">Vui tiếng Nhật</h4>
					<p>
						<span style="color: black" class="sprocket-lists-item"
							data-lists-content=""> <span style="color: black"
							class="sprocket-padding"> <span style="color: black"
								class="sprocket-lists-desc img-disabled"> <span
									style="color: black" class="sprocket-lists-item"
									data-lists-content=""> <span style="color: black"
										class="sprocket-padding"> <span style="color: black"
											class="sprocket-lists-desc img-disabled">Tổng hợp ngữ pháp, các bài học qua tranh ảnh thú vị.<br> <a
												ondragstart="return false;" href="/khoa-hoc/vui-tieng-nhat">
													●Vui tiếng Nhật</a>
										</span>
									</span>
								</span>
							</span>
						</span>
						</span>
					</p>
					<h4 class="sprocket-lists-title padding"
						style="margin: 0px; line-height: 20px; color: #6e6e6e; text-rendering: optimizelegibility; font-size: 18px; position: relative; padding: 10px 0px; cursor: pointer;"
						data-lists-toggler="">Thi thử</h4>
					<p>
						<span style="color: black" class="sprocket-lists-item"
							data-lists-content=""> <span style="color: black"
							class="sprocket-padding"> <span style="color: black"
								class="sprocket-lists-desc img-disabled"> <span
									style="color: black" class="sprocket-lists-item"
									data-lists-content=""> <span style="color: black"
										class="sprocket-padding"> <span style="color: black"
											class="sprocket-lists-desc img-disabled">Cũng cố kiến thức và thử sức mình với các đề thi nhé<a
												ondragstart="return false;" href="/khoa-hoc/thi-thu"><br>
													●Thi thư</a>
													&nbsp;&nbsp;<a ondragstart="return false;" href="/khoa-hoc/N5">
													●N5</a>&nbsp;&nbsp;<a ondragstart="return false;"
												href="/khoa-hoc/N4"> ●N4</a>&nbsp;&nbsp;<a ondragstart="return false;" href="/khoa-hoc/N3">
													●N3</a>&nbsp;&nbsp;<a ondragstart="return false;"
												href="/khoa-hoc/N2"> ●N2</a>
										</span>
									</span>
								</span>
							</span>
						</span>
						</span>
					</p>
					<h4 class="sprocket-lists-title padding"
						style="margin: 0px; line-height: 20px; color: #6e6e6e; text-rendering: optimizelegibility; font-size: 18px; position: relative; padding: 10px 0px; cursor: pointer;"
						data-lists-toggler="">Văn hóa con người Nhật Bản</h4>
					<p>
						<span style="color: black" class="sprocket-lists-item"
							data-lists-content=""> <span style="color: black"
							class="sprocket-padding"> <span style="color: black"
								class="sprocket-lists-desc img-disabled"> <span
									style="color: black" class="sprocket-lists-item"
									data-lists-content=""> <span style="color: black"
										class="sprocket-padding"> <span style="color: black"
											class="sprocket-lists-desc img-disabled">Nơi chia sẽ tìm hiều về con người, văn hóa , ẩm thực về đất nước con người Nhật Bản. Cùng đọc những mẫu truyện vui của đất nước Nhật Bản<br> <a
												ondragstart="return false;" href="/khoa-hoc/vui-tieng-nhat">
													●Văn hóa Nhật Bản</a>
										</span>
									</span>
								</span>
							</span>
						</span>
						</span>
					</p>
					<br> 
					<p>Các bạn có thể cùng trao đổi kinh nghiệm học tập, giao
					lưu, cùng nhau cố gắng .... Trao đổi cho nhau kinh nghiệm sống ở
					Nhật, du học, làm thêm , thi cử , việc làm ... <br>
					</p>
					<br>
				</div>
				<div class="main-right">
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
					<div>
					<br>
					<img
						src="${contextPath}/resources/img/banner-y-nghia.jpg">
					</div>
				</div>
			</div>
			<div class="go-top">
				<i class="fa fa-sort-asc"></i>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>