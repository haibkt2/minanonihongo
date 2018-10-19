<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="minanonihongo.model.*"%>
<%@ page import="minanonihongo.service.*"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="vi">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>HaiLDX - Tiếng Nhật cho mọi người</title>
<jsp:include page="header.jsp"></jsp:include>
<script src="${contextPath}/resources/js/pagination.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#pagination').twbsPagination({
			totalPages : 5,
			startPage : 1,
			visiblePages : 5,
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
<div class="main" style="min-height: 750px">
	<div class="main-center">
		<div class="main-left">
			<div class="heading-box">
				<h2 class="blog-heading">
					<span style="color: #588d3f;">Bài viết</span> mới nhất
				</h2>
				<span class="prefix-title">Chuyên mục&nbsp;</span> <select
					id="selectpicker" class="selectpicker"
					onchange="location = this.value;">
					<option value="${contextPath}/van-hoa-nhat-ban/ki-thi-jlpt">Kì
						thi JLPT</option>
					<option value="${contextPath}/van-hoa-nhat-ban/van-hoa-nhat-ban">Văn
						hóa Nhật Bản</option>
					<option
						value="${contextPath}/van-hoa-nhat-ban/truyen-co-tich-nhat-ban">Truyện
						cổ tích Nhật Bản</option>
					<option
						value="${contextPath}/van-hoa-nhat-ban/kinh-nghiem-hoc-tieng-nhat-online">Kinh
						Nghiệm học tiếng Nhật</option>
				</select>
			</div>
			<div class="page" id="page1">
			<c:forEach items=""></c:forEach>
				<div class="news-item featured">
					<a href="${contextPath}/bai-viet/92-minh-da-lay-duoc-173-diem-ki-thi-n3-jlpt-thang-72018-nhu-the-nao">
						<img class="lazyload" src="${contextPath}/cdn/blog/default/1535979846_0_250369.jpeg"
						data-src="${contextPath}/cdn/blog/default/1535979846_0_250369.jpeg">
					</a> 
					<a href="${contextPath}/bai-viet/92-minh-da-lay-duoc-173-diem-ki-thi-n3-jlpt-thang-72018-nhu-the-nao"
						title="Mình đã lấy được 173 điểm kì thi N3 JLPT tháng 7/2018 như thế nào?">
						<div class="title">Mình đã lấy được 173 điểm kì thi N3 JLPT
							tháng 7/2018 như thế nào?</div>
					</a> <span class="info"><i class="fa fa-user"></i> &nbsp; &nbsp;
						<i class="fa fa-calendar-check-o"></i> 03 tháng 09, lúc 20:04
						&nbsp; &nbsp; Lượt xem : 4930 </span> <span class="brief">Trước
						đây 3 năm mình đã sang Nhật với tư cách là tu nghiệp sinh. Trước
						khi sang Nhật mình đã học tiếng đến bài 25 ( theo sách minna nhé)
						nhưng lúc đó mình chỉ học cho có với mục đích chính là sang Nhật
						để kiếm tiền và không hề có đam mê hay hứng thú gì với tiếng Nhật
						cả. Sau khi sang đến nước Nhật rồi khoảng thời gian ban đầu mình
						cũng chưa thay đổi suy nghĩ bên trên cho lắm, vẫn giữ cái suy nghĩ
						chỉ cần biết vài câu tiếng Nhật như là chào hỏi &amp; giao tiếp cơ
						bản thôi, từ sáng đến tối mình chỉ đi làm, bản thân mình cũng giao
						tiếp rất ít với người Nhật vì thế nên cuộc sống của mình hồi đó có
						thể nói khá là nhàm chán. Mình cảm giác mình giống như con robot
						vậy, cho đến năm thứ 3 ở Nhật thì tự cảm thấy mình cần phải thay
						đổi lại cuộc sống này và cái mình nghĩ ra đầu tiên lúc đó là học
						tiếng Nhật.</span>
				</div>
				<div class="news-item featured-sub">
					<a
						href="${contextPath}/bai-viet/91-danh-sach-hoc-vien-online-cua-dung-mori-thi-do-va-dat-diem-cao-ki-thi-jlpt-072018">
						<img class="lazyload"
						src="${contextPath}/cdn/blog/small/1535101963_1123395_7ba476.png"
						data-src="${contextPath}/cdn/blog/small/1535101963_1123395_7ba476.png">
					</a> <a
						href="${contextPath}/bai-viet/91-danh-sach-hoc-vien-online-cua-dung-mori-thi-do-va-dat-diem-cao-ki-thi-jlpt-072018"
						title="Danh sách học viên online của Dũng Mori thi đỗ và đạt điểm cao kì thi JLPT 07/2018">
						<div class="title">Danh sách học viên online của Dũng Mori
							thi đỗ và đạt điểm cao kì thi JLPT 07/2018</div>
					</a>
				</div>
				<div class="news-item featured-sub">
					<a
						href="${contextPath}/bai-viet/90-con-duong-den-voi-tieng-nhat">
						<img class="lazyload"
						src="${contextPath}/cdn/blog/small/1529487778_0_26ecd6.jpeg"
						data-src="${contextPath}/cdn/blog/small/1529487778_0_26ecd6.jpeg">
					</a> <a
						href="${contextPath}/bai-viet/90-con-duong-den-voi-tieng-nhat"
						title="Con đường đến với Tiếng Nhật">
						<div class="title">Con đường đến với Tiếng Nhật</div>
					</a>
				</div>
			</div>
			<div class="page" id="page2">
				<div class="news-item featured">
					<a
						href="${contextPath}/bai-viet/92-minh-da-lay-duoc-173-diem-ki-thi-n3-jlpt-thang-72018-nhu-the-nao">
						<img class="lazyload"
						src="${contextPath}/cdn/blog/default/1535979846_0_250369.jpeg"
						data-src="${contextPath}/cdn/blog/default/1535979846_0_250369.jpeg">
					</a> <a
						href="${contextPath}/bai-viet/92-minh-da-lay-duoc-173-diem-ki-thi-n3-jlpt-thang-72018-nhu-the-nao"
						title="Mình đã lấy được 173 điểm kì thi N3 JLPT tháng 7/2018 như thế nào?">
						<div class="title">Mình đã lấy được 173 điểm kì thi N3 JLPT
							tháng 7/2018 như thế nào?</div>
					</a> <span class="info"><i class="fa fa-user"></i> &nbsp; &nbsp;
						<i class="fa fa-calendar-check-o"></i> 03 tháng 09, lúc 20:04
						&nbsp; &nbsp; Lượt xem 222222222 : 4930 </span> <span class="brief">Trước
						đây 3 năm mình đã sang Nhật với tư cách là tu nghiệp sinh. Trước
						khi sang Nhật mình đã học tiếng đến bài 25 ( theo sách minna nhé)
						nhưng lúc đó mình chỉ học cho có với mục đích chính là sang Nhật
						để kiếm tiền và không hề có đam mê hay hứng thú gì với tiếng Nhật
						cả. Sau khi sang đến nước Nhật rồi khoảng thời gian ban đầu mình
						cũng chưa thay đổi suy nghĩ bên trên cho lắm, vẫn giữ cái suy nghĩ
						chỉ cần biết vài câu tiếng Nhật như là chào hỏi &amp; giao tiếp cơ
						bản thôi, từ sáng đến tối mình chỉ đi làm, bản thân mình cũng giao
						tiếp rất ít với người Nhật vì thế nên cuộc sống của mình hồi đó có
						thể nói khá là nhàm chán. Mình cảm giác mình giống như con robot
						vậy, cho đến năm thứ 3 ở Nhật thì tự cảm thấy mình cần phải thay
						đổi lại cuộc sống này và cái mình nghĩ ra đầu tiên lúc đó là học
						tiếng Nhật.</span>
				</div>
				<div class="news-item featured-sub">
					<a
						href="${contextPath}/bai-viet/91-danh-sach-hoc-vien-online-cua-dung-mori-thi-do-va-dat-diem-cao-ki-thi-jlpt-072018">
						<img class="lazyload"
						src="${contextPath}/cdn/blog/small/1535101963_1123395_7ba476.png"
						data-src="${contextPath}/cdn/blog/small/1535101963_1123395_7ba476.png">
					</a> <a
						href="${contextPath}/bai-viet/91-danh-sach-hoc-vien-online-cua-dung-mori-thi-do-va-dat-diem-cao-ki-thi-jlpt-072018"
						title="Danh sách học viên online của Dũng Mori thi đỗ và đạt điểm cao kì thi JLPT 07/2018">
						<div class="title">Danh sách học viên online của Dũng Mori
							thi đỗ và đạt điểm cao kì thi JLPT 07/2018</div>
					</a>
				</div>
				<div class="news-item featured-sub">
					<a
						href="${contextPath}/bai-viet/90-con-duong-den-voi-tieng-nhat">
						<img class="lazyload"
						src="${contextPath}/cdn/blog/small/1529487778_0_26ecd6.jpeg"
						data-src="${contextPath}/cdn/blog/small/1529487778_0_26ecd6.jpeg">
					</a> <a
						href="${contextPath}/bai-viet/90-con-duong-den-voi-tieng-nhat"
						title="Con đường đến với Tiếng Nhật">
						<div class="title">Con đường đến với Tiếng Nhật</div>
					</a>
				</div>
			</div>
			<ul class="pagination" id="pagination">
			</ul>
		</div>
		<div class="main-right" style="padding-bottom: 30px;">
			<div class="list-group list-category">
				<span class="list-group-item item-heading">Chuyên mục</span><a
					href="${contextPath}/van-hoa-nhat-ban/ki-thi-jlpt"
					class="list-group-item ki-thi-jlpt">Kì thi JLPT</a> <a
					href="${contextPath}/van-hoa-nhat-ban/van-hoa-nhat-ban"
					class="list-group-item van-hoa-nhat-ban">Văn hóa Nhật Bản</a> <a
					href="${contextPath}/van-hoa-nhat-ban/truyen-co-tich-nhat-ban"
					class="list-group-item truyen-co-tich-nhat-ban">Truyện cổ tích
					Nhật Bản</a><a
					href="${contextPath}/van-hoa-nhat-ban/kinh-nghiem-hoc-tieng-nhat-online"
					class="list-group-item kinh-nghiem-hoc-tieng-nhat-online">Kinh
					Nghiệm học tiếng Nhật </a>
			</div>
			<h3 class="related-title">Bài viết đọc nhiều</h3>
			<div class="related-news-item">
				<a href="${contextPath}/bai-viet/46-hot-dap-an-n3-122017">
					<img class="lazyload"
					src="${contextPath}/cdn/blog/small/1523946921_567870_21e572.png"
					data-src="${contextPath}/cdn/blog/small/1523946921_567870_21e572.png">
				</a> <a href="${contextPath}/bai-viet/46-hot-dap-an-n3-122017"
					title="Hot - Đáp án N3 12/2017"> <span class="title">Hot
						- Đáp án N3 12/2017</span> <span class="info"><i
						class="fa fa-calendar-check-o"></i> 03 tháng 12, 2017 </span>
				</a>
			</div>
			<div class="related-news-item">
				<a href="${contextPath}/bai-viet/47-hot-dap-an-n4-122017">
					<img class="lazyload"
					src="${contextPath}/cdn/blog/small/1524020067_580215_319e0b.jpeg"
					data-src="${contextPath}/cdn/blog/small/1524020067_580215_319e0b.jpeg">
				</a> <a href="${contextPath}/bai-viet/47-hot-dap-an-n4-122017"
					title="Hot - Đáp án N4 12/2017"> <span class="title">Hot
						- Đáp án N4 12/2017</span> <span class="info"><i
						class="fa fa-calendar-check-o"></i> 03 tháng 12, 2017 </span>
				</a>
			</div>
			<div class="related-news-item">
				<a
					href="${contextPath}/bai-viet/42-cach-doc-sach-cach-hoc-tieng-nhat-hieu-qua">
					<img class="lazyload"
					src="${contextPath}/cdn/blog/small/1524020349_518490_e6b733.jpeg"
					data-src="${contextPath}/cdn/blog/small/1524020349_518490_e6b733.jpeg">
				</a> <a
					href="${contextPath}/bai-viet/42-cach-doc-sach-cach-hoc-tieng-nhat-hieu-qua"
					title="Cách đọc sách - cách học tiếng nhật hiệu quả"> <span
					class="title">Cách đọc sách - cách học tiếng nhật hiệu quả</span> <span
					class="info"><i class="fa fa-calendar-check-o"></i> 04 tháng
						07, 2017 </span>
				</a>
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