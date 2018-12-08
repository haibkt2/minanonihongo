<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
</head>
<body>
	<footer class="main-footer">
		<div class="pull-right hidden-xs"></div>
		<strong> &copy; 2018 <a
			href="https://www.facebook.com/haildx">Nguyễn Thanh Hải</a>.
		</strong>
		<div class="go-top">
			<i class="fa fa-sort-asc"></i>
		</div>
	</footer>
	<script>
	$(".go-top").click(function(e) {
		e.preventDefault();
	$([document.documentElement, document.body]).animate({
        scrollTop: $(".main-header").offset().top
    }, 1000);
	});
	</script>
</body>
</html>