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
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="main">
		<div class="main-center">
			<div class="main-user-left">
				<div class="user-avatar-container">
					<span class="clear-preview-upload"><i
						class="zmdi zmdi-close-circle"></i></span> <img class="user-avatar"
						id="user-avatar-preview"
						src="${contextPath}/reponsitory/Avatar/<c:if test="${user.avatar == null}">img-df.png</c:if><c:if test="${user.avatar != null}">${user.avatar }</c:if>" />
				</div>
				<button type="button" class="btn change-avatar">
					<i class="zmdi zmdi-camera-add"></i><span
						class="change-avatar-btn-desktop">&nbspThay ảnh đại diện</span><span
						class="change-avatar-btn-mobile">&nbspThay ảnh</span>
				</button>
				<button type="button" class="btn btn-success save-avatar"
					style="display: none;">
					<i class="zmdi zmdi-cloud-upload"></i> Lưu ảnh
				</button>

				<form id="avatar-form">
					<input type='file' id="inputAvatar" name="inputAvatar"
						style="display: none;" onchange="readURL(this);" />
				</form>

				<div class="account-left-menu">
					<a href="#" class="item-user current"><i
						class="zmdi zmdi-account-box"></i><span>Thông tin cá nhân</span></a> <a
						href=""
						class="item-user courses"><i class="zmdi zmdi-dns"></i><span>Khóa
							học của tôi</span></a> <a style="cursor: pointer;" onclick="logout()"
						class="item-user danger logout-tab"><i class="zmdi zmdi-power"></i></i><span>Đăng
							xuất</span></a>
				</div>
				<script type="text/javascript">
					var userAvatar = "";
					userAvatar = "http://dungmori.com/cdn/avatar/default/1524118281_332747130_7aedaa_ad98c6";
				</script>
				<script
					src="http://dungmori.com/assets/js/avatar.js?138b7c875253089bba47c74697cdc104"></script>
			</div>

			<div class="main-user-right" id="user-info">
				<h2 class="main-user-title">Thông tin cá nhân</h2>
				<table class="table" id="user-info-table" style="display: none;">
					<tbody>
						<tr>
							<td class="user-form-item desc">Họ và Tên</td>
							<td class="user-form-item" v-if="changeName == false"
								v-html="printInfo(user.name)"></td>
							<td class="user-form-item action" v-if="changeName == false"
								v-on:click="showEditer('name')"><i class="zmdi zmdi-edit"></i>
								chỉnh sửa</td>

							<td class="user-form-item" v-if="changeName == true">
								<ul class="error-list"
									v-show="errors.length > 0 && currentField == 'name'">
									<li v-for="error in errors">{{ error }}</li>
								</ul> <input class="user-form-input" type="text" id="account-name"
								:value="user.name" /><br />
								<p style="opacity: 0.6;">
									<i>Ví dụ: Trần Văn A</i>
								</p> <span class="change-btn" v-on:click="saveChange('name')">Lưu
									lại</span> <span class="cancel-btn" v-on:click="hideEditer('name')">Hủy
									bỏ</span>
							</td>
							<td class="user-form-item action" v-if="changeName == true"
								v-on:click="hideEditer('name')"><i
								class="zmdi zmdi-close-circle"></i> Đóng</td>

						</tr>
						<tr>
							<td class="user-form-item desc">Email</td>
							<td class="user-form-item" v-if="changeEmail == false"
								v-html="printInfo(user.email)"></td>
							<td class="user-form-item action" v-if="changeEmail == false"
								v-on:click="showEditer('email')"><i class="zmdi zmdi-edit"></i>
								chỉnh sửa</td>
							<td class="user-form-item" v-if="changeEmail == true">
								<ul class="error-list"
									v-show="errors.length > 0 && currentField == 'email'">
									<li v-for="error in errors">{{ error }}</li>
								</ul> <input class="user-form-input" type="text" id="account-email"
								:value="user.email" /><br />
								</p> <span class="change-btn" v-on:click="saveChange('email')">Lưu
									lại</span> <span class="cancel-btn" v-on:click="hideEditer('email')">Hủy
									bỏ</span>
							</td>
							<td class="user-form-item action" v-if="changeEmail == true"
								v-on:click="hideEditer('email')"><i
								class="zmdi zmdi-close-circle"></i> Đóng</td>
						</tr>
						<tr class="password-container">
							<td class="user-form-item desc">Mật khẩu</td>
							<td class="user-form-item" v-if="changePass == false">******</td>
							<td class="user-form-item change-pass action"
								v-if="changePass == false" v-on:click="showEditer('password')"><i
								class="zmdi zmdi-edit"></i> chỉnh sửa</td>
							<td class="user-form-item" v-if="changePass == true">
								<ul class="error-list"
									v-show="errors.length > 0 && currentField == 'password'">
									<li v-for="error in errors">{{ error }}</li>
								</ul> <input type="password" class="form-control" id="old-password"
								style="margin-bottom: 10px;" placeholder="Mật khẩu cũ" /> <input
								type="password" class="form-control" id="new-password"
								placeholder="Mật khẩu mới" /> <input type="password"
								class="form-control" id="retype-password"
								style="margin-bottom: 10px; border-top: none;"
								placeholder="Mật khẩu mới" />
								<div class="change-btn-container">
									<span class="change-btn" v-on:click="saveChange('password')">Lưu
										lại</span> <span class="cancel-btn"
										v-on:click="hideEditer('password')">Hủy bỏ</span>
								</div>
							</td>
							<td class="user-form-item action" v-if="changePass == true"
								v-on:click="hideEditer('password')"><i
								class="zmdi zmdi-close-circle"></i> Đóng</td>
						</tr>
						<tr>
							<td class="user-form-item desc">Ngày sinh</td>
							<td class="user-form-item" v-if="changeBirthday == false"
								v-html="printInfo(user.birthday)"></td>
							<td class="user-form-item action" v-if="changeBirthday == false"
								v-on:click="showEditer('birthday')"><i
								class="zmdi zmdi-edit"></i> chỉnh sửa</td>
							<td class="user-form-item" v-if="changeBirthday == true">
								<ul class="error-list"
									v-show="errors.length > 0 && currentField == 'birthday'">
									<li v-for="error in errors">{{ error }}</li>
								</ul> <select class="user-form-input" v-model="birthday.month"
								style="min-width: 120px; margin-right: 10px;">
									<option value="">Chọn tháng</option>
									<option value="01">Tháng 1</option>
									<option value="02">Tháng 2</option>
									<option value="03">Tháng 3</option>
									<option value="04">Tháng 4</option>
									<option value="05">Tháng 5</option>
									<option value="06">Tháng 6</option>
									<option value="07">Tháng 7</option>
									<option value="08">Tháng 8</option>
									<option value="09">Tháng 9</option>
									<option value="10">Tháng 10</option>
									<option value="11">Tháng 11</option>
									<option value="12">Tháng 12</option>
							</select> <input class="user-form-day" type="number" min="0" max="31"
								v-model="birthday.day" placeholder="ngày" /> <input
								class="user-form-year" type="number" min="1010"
								v-model="birthday.year" placeholder="năm" /><br /> <span
								class="change-btn" v-on:click="saveChange('birthday')">Lưu
									lại</span> <span class="cancel-btn"
								v-on:click="hideEditer('birthday')">Hủy bỏ</span>
							</td>
							<td class="user-form-item action" v-if="changeBirthday == true"
								v-on:click="hideEditer('birthday')"><i
								class="zmdi zmdi-close-circle"></i> Đóng</td>
						</tr>
						<tr>
							<td class="user-form-item desc">Số điện thoại</td>
							<td class="user-form-item" v-if="changePhone == false"
								v-html="printInfo(user.phone)"></td>
							<td class="user-form-item action" v-if="changePhone == false"
								v-on:click="showEditer('phone')"><i class="zmdi zmdi-edit"></i>
								chỉnh sửa</td>
							<td class="user-form-item" v-if="changePhone == true">
								<ul class="error-list"
									v-show="errors.length > 0 && currentField == 'phone'">
									<li v-for="error in errors">{{ error }}</li>
								</ul> <input class="user-form-input" type="text" id="account-phone"
								:value="user.phone" /><br /> <span class="change-btn"
								v-on:click="saveChange('phone')">Lưu lại</span> <span
								class="cancel-btn" v-on:click="hideEditer('phone')">Hủy
									bỏ</span>
							</td>
							<td class="user-form-item action" v-if="changePhone == true"
								v-on:click="hideEditer('phone')"><i
								class="zmdi zmdi-close-circle"></i> Đóng</td>
						</tr>
						<tr>
							<td class="user-form-item desc">Địa chỉ</td>
							<td class="user-form-item" v-if="changeAddress == false"
								v-html="printInfo(user.address)"></td>
							<td class="user-form-item action" v-if="changeAddress == false"
								v-on:click="showEditer('address')"><i
								class="zmdi zmdi-edit"></i> chỉnh sửa</td>

							<td class="user-form-item" v-if="changeAddress == true">
								<ul class="error-list"
									v-show="errors.length > 0 && currentField == 'address'">
									<li v-for="error in errors">{{ error }}</li>
								</ul> <textarea class="user-form-text-area" type="text"
									id="account-address" :value="user.address"></textarea><br />
								<p style="opacity: 0.6;">
									<i>Ví dụ: Số 05, Khu đô thị Mộ Lao, Quận Hà Đông, Hà Nội</i>
								</p> <span class="change-btn" v-on:click="saveChange('address')">Lưu
									lại</span> <span class="cancel-btn" v-on:click="hideEditer('address')">Hủy
									bỏ</span>
							</td>
							<td class="user-form-item action" v-if="changeAddress == true"
								v-on:click="hideEditer('address')"><i
								class="zmdi zmdi-close-circle"></i> Đóng</td>
						</tr>
					</tbody>
				</table>
			</div>

			<script type="text/javascript">
				user_name = "${user.name}";
				user_birthday = "${user.birthday}";
				user_phone = "${user.phone}";
				user_email = "${user.email}";
				user_address = "${user.address}";
			</script>

		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<script src="${contextPath}/resources/public/js/avatar.js"></script>
	<script src="${contextPath}/resources/public/js/profile.js"></script>
	<div class="go-top">
		<i class="fa fa-sort-asc"></i>
	</div>
</body>
</html>