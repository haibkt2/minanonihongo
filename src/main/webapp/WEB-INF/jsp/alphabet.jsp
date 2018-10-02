<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<title>HaiLDX - Website học tiếng Nhật online số 1 tại Việt Nam
</title>
		<jsp:include page="header.jsp"></jsp:include>
		<div class="main">

			<div class="main-center main-course">
				<div class="main-left">
					<h2 class="course-detail-title">
						Khóa học <a><b>Bảng chữ cái</b></a>
					</h2>
					<div class="course-heading">
						<span>Clip giới thiệu lộ trình học</span>
					</div>
					<div class="cover-container">
						<a class="movie-play"> <img
							src="http://dungmori.com/cdn/course/default/bang-chu-cai_1494389614.jpg" />
							<br> <span class="play-icon-btn"> <i
								class="zmdi zmdi-play"></i>
						</span>
						</a>
						<iframe id="iframe-youtube" style="display: none;" width="100%"
							height="395"
							src="https://www.youtube.com/embed/Cwu7qEmilss?rel=0"></iframe>
						<script type="text/javascript">
							// sự kiện click vào chạy video
							$('.movie-play').on('click', function(ev) {
								$(".movie-play").css("display", "none");
								$("#iframe-youtube").css("display", "block");
								$("#iframe-youtube")[0].src += "&autoplay=1";
								ev.preventDefault();
							});
							// $.getJSON("http://ip-api.com/json/?callback=?", function(data) {
							//     console.log(data);
							// });
						</script>
					</div>
					<div class="tab-content">
						<div id="preview-content" class="tab-pane fade">
							<div class="preview-course-container">
								<div class="course-item">
									<div class="images">
										<a
											href="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi/1587-bai-1-hiragana-a-i-u-e-o"
											title="Ngữ pháp"> <img
											src="http://dungmori.com/cdn/lesson/small/bang-chu-cai-hiragana_1494402571.jpg">
										</a>
									</div>
									<div class="info">
										<div class="title">
											<a
												href="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi/1587-bai-1-hiragana-a-i-u-e-o"
												title="Ngữ pháp">Bài 1 - Hiragana A I Ư Ê Ô</a>
										</div>
										<div class="name-gv" title="Giảng viên">
											<i class="fa fa-mortar-board"></i> Nguyễn Văn Dũng
										</div>
									</div>
								</div>
								<div class="course-item">
									<div class="images">
										<a
											href="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi/1588-bai-3-hiragana-gagigugego"
											title="Ngữ pháp"> <img
											src="http://dungmori.com/cdn/lesson/small/bang-chu-cai-hiragana_1494402554.jpg">
										</a>
									</div>
									<div class="info">
										<div class="title">
											<a
												href="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi/1588-bai-3-hiragana-gagigugego"
												title="Ngữ pháp">Bài 3 - Hiragana Ga,Gi,Gu,Ge,Go</a>
										</div>
										<div class="name-gv" title="Giảng viên">
											<i class="fa fa-mortar-board"></i> Nguyễn Văn Dũng
										</div>
									</div>
								</div>
								<div class="course-item">
									<div class="images">
										<a
											href="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi/1589-bai-2-hiragana-tachitsuteto"
											title="Ngữ pháp"> <img
											src="http://dungmori.com/cdn/lesson/small/bang-chu-cai-hiragana_1494402542.jpg">
										</a>
									</div>
									<div class="info">
										<div class="title">
											<a
												href="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi/1589-bai-2-hiragana-tachitsuteto"
												title="Ngữ pháp">Bài 2 - Hiragana Ta,Chi,Tsu,Te,To</a>
										</div>
										<div class="name-gv" title="Giảng viên">
											<i class="fa fa-mortar-board"></i> Nguyễn Văn Dũng
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="comment-container">
						<ul class="nav nav-pills comment-tab">
							<li class="li-tab user-tab active"><a data-toggle="pill"
								href="#user-comment-content">Ý kiến học viên</a></li>
							<li class="li-tab facebook-tab"><a data-toggle="pill"
								href="#facebook-comment-content">Bình luận bằng facebook</a></li>
						</ul>
						<div class="tab-content">
							<div id="user-comment-content" class="tab-pane fade in active">Cần có mã Trang để bắt đầu sử dụng API. Mã trang này sẽ có tất cả các quyền trong Messenger ngay cả khi ứng dụng của bạn chưa được phê duyệt để sử dụng các quyền đó, mặc dù trong trường hợp này, bạn chỉ có thể nhắn tin cho quản trị viên ứng dụng. Bạn cũng có thể tạo mã trang cho các trang bạn không sở hữu bằng Đăng nhập Facebook.

								<comments meid="26954"
									avatar="1524118281_332747130_7aedaa_ad98c6" tbid="8"
									tbname="course" num-posts="15" background="#fff" ref="comment">
								</comments>
							</div>
							<div id="facebook-comment-content" class="tab-pane fade">
								<comment-fb
									url="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi"></comment-fb>
							</div>
						</div>
					</div>
				</div>
				<div class="main-right">
					<div class="course-info-container course-info-status-pc">
						<div class="buy-item">
							<div class=""></div>
						</div>
					</div>
					<div class="numberOfDay"></div>
					<div class="course-list-container">
						<div class="block-title">Tiến trình học</div>
						<div class="panel-group" id="accordion" role="tablist"
							aria-multiselectable="true">
							<div class="panel panel-default">
								<div class="panel-heading" role="tab">
									<a class="collapsed" role="button" data-toggle="collapse"
										data-parent="#accordion" href="#collapse-86"
										aria-expanded="false"> <strong>Bảng chữ cái
											hiragana</strong>
									</a>
								</div>
								<div id="collapse-86" class="panel-collapse collapse "
									role="tabpanel">
									<div class="panel-body">
										<ul class="scroll-items">
											<li class="lesson-item-1599"><a
												href="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi/1599-gioi-thieu-ve-bang-chu-cai-trong-tieng-nhat"
												style="padding-right: 70px;">Giới thiệu về bảng chữ cái trong tiếng nhật
											</a></li>
											<li class="lesson-item-1587"><a
												href="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi/1587-bai-1-hiragana-a-i-u-e-o"
												style="padding-right: 70px;">Bài 1 - Hiragana A I Ư Ê Ô
											</a></li>
											<li class="lesson-item-1589"><a
												href="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi/1589-bai-2-hiragana-tachitsuteto"
												style="padding-right: 70px;">Bài 2 - Hiragana Ta,Chi,Tsu,Te,To
											</a></li>
											<li class="lesson-item-1588"><a
												href="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi/1588-bai-3-hiragana-gagigugego"
												style="padding-right: 70px;">Bài 3 - Hiragana Ga,Gi,Gu,Ge,Go
											</a></li>
											<li class="lesson-item-1590"><a
												href="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi/1590-bai-4-cach-doc-trong-tieng-nhat"
												style="padding-right: 70px;">Bài 4 - Hiragana Kya,Kyu,Kyo,Gya,Gyu,Gyo
											</a></li>
											<li class="lesson-item-1595"><a
												href="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi/1595-bai-5-cach-doc-trong-tieng-nhat"
												style="padding-right: 70px;">Bài 5: Cách đọc trong tiếng nhật
											</a></li>
											<li class="lesson-item-1592"><a
												href="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi/1592-cach-phan-biet-don-gian-tu-co-truong-am-va-khong-co-truong-am"
												style="padding-right: 70px;">Bài 6: Cách phân biệt đơn giản -Từ có trường âm và
													không có trường âm.
											</a></li>
											<li class="lesson-item-1593"><a
												href="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi/1593-bai-6-sua-loi-phat-am-つふひしゃしゅしょじゃじゅじょ"
												style="padding-right: 70px;">Bài 7: Sửa lỗi phát âm つ、ふ、ひ、しゃ、しゅ、しょ、じゃ、じゅ、じょ
											</a></li>
											<li class="lesson-item-1594"><a
												href="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi/1594-bai-7-sua-phat-am-chia-se-viec-luyen-phat-am-chuan"
												style="padding-right: 70px;">Bài 8: Sửa phát âm - chia sẻ việc luyện phát âm của cô
													Hà
											</a></li>
											<li class="lesson-item-1597"><a
												href="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi/1597-bai-9-hoc-so-dem-cung-voi-thay-shimakawa"
												style="padding-right: 70px;">Bài 9: học số đếm cùng với thầy shimakawa
											</a></li>
											<li class="lesson-item-1596"><a
												href="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi/1596-bai-9-hoc-so-dem-gioi-hon-bang-cach-dem-tien-viet-nam"
												style="padding-right: 70px;">Bài 10: Học số đếm giỏi hơn bằng cách đếm tiền Việt
													Nam
											</a></li>
											<li class="lesson-item-1598"><a
												href="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi/1598-bai-11-cac-cau-chao-hoi-thuong-ngay"
												style="padding-right: 70px;">Bài 11: Các câu chào hỏi thường ngày
											</a></li>
										</ul>
									</div>
								</div>
							</div>

							<div class="panel panel-default">
								<div class="panel-heading" role="tab">
									<a class="collapsed" role="button" data-toggle="collapse"
										data-parent="#accordion" href="#collapse-87"
										aria-expanded="false"> <strong>Bảng chữ cái
											katakana</strong>
									</a>
								</div>
								<div id="collapse-87" class="panel-collapse collapse "
									role="tabpanel">
									<div class="panel-body">
										<ul class="scroll-items">
											<li class="lesson-item-1591"><a
												href="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi/1591-bang-chu-cai-katakana-1"
												style="padding-right: 70px;">Bảng chữ cái Katakana - 1
											</a></li>
										</ul>
									</div>
								</div>
							</div>

							<div class="panel panel-default">
								<div class="panel-heading" role="tab">
									<a class="collapsed" role="button" data-toggle="collapse"
										data-parent="#accordion" href="#collapse-88"
										aria-expanded="false"> <strong>Những bài học thú
											vị</strong>
									</a>
								</div>
								<div id="collapse-88" class="panel-collapse collapse "
									role="tabpanel">
									<div class="panel-body">
										<ul class="scroll-items">
											<li class="lesson-item-1584"><a
												href="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi/1584-bai-1-rat-hay-va-thu-vi"
												style="padding-right: 70px;">Bài 1:TIẾNG NHẬT DỄ thế này cơ mà
											</a></li>
											<li class="lesson-item-1585"><a
												href="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi/1585-thay-giao-say-me-day-tieng-nhat-nen-bi-lo-hang"
												style="padding-right: 70px;">Bài 2: Thầy giáo say mê dạy tiếng nhật nên bị LỘ HÀNG
											</a></li>
											<li class="lesson-item-1586"><a
												href="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi/1586-bai-3-cach-nho-tu-vung-sieu-cap-tu-vung-ve-dong-vat"
												style="padding-right: 70px;">Bài 3: Cách nhớ từ vựng siêu cấp - Từ vựng về động
													vật.
											</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			$(".fancybox").fancybox().trigger('click');
		</script>
		<div class="go-top">
			<i class="fa fa-sort-asc"></i>
		</div>
		<script
			src="${contextPath}/resources/js/lazyload.min.js"></script>
		<script type="text/javascript">
			window.addEventListener("load", function(event) {
				lazyload();
			});
		</script>
		<script type="text/javascript">
			var lastFingerprint = 0;
		</script>
		<script type="text/javascript">
			var lastFingerprint = 1284817130;
			var lastBrowser = "Chrome";
			var lastOS = "Windows";
			$.get(window.location.origin + "/api/user/tracking-online");
			setInterval(function() {
				$.get(window.location.origin + "/api/user/tracking-online");
			}, 15000);
		</script>
		<script src="${contextPath}/resources/js/vue.min.js"></script>
		<script type="text/javascript">
			var enableFIV = false;
		</script>
		<script src="${contextPath}/resources/js/components.js"></script>
		<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
	</div>
</body>
</html>