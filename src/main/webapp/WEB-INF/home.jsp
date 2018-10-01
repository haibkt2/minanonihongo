<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="vi">
<head>

    <meta charset="UTF-8">
    <title> Dungmori - Website học tiếng Nhật online số 1 tại Việt Nam </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <meta name="csrf-token" content="dID8nr1OLIVnUbbjhk0f90utfwY3Qyw7vWgl2aw7">

    <meta name="author" content=" DungMori "/>
    <meta name="keywords" content=" Dungmori, dạy, tiếng nhật, học, online, dễ hiểu nhất, nihongo, Japanese, miễn phí, n1, n2, n3, n4, n5 "/>
    <meta name="description" content="Dungmori YouTuber dạy tiếng nhật với phong cách gần gũi dễ hiểu nhất "/>
    <meta name="robots" content="index,follow"/>
    <meta http-equiv="content-language" content="vi"/>
    
	<link rel="stylesheet" type="text/css"
  href="${contextPath}/resources/jp/styles.css">
	
    <link rel="icon" href="http://dungmori.com/assets/img/fav.png"/>
    <link rel="alternate" href="http://dungmori.com" hreflang="vi" />
    
    
    
        <script src="${contextPath}/resources/jp/headlibs.js"></script>
   
    <script src="${contextPath}/resources/jp/slick.min.js"></script>


</head>
<body>
<div id="application">
    <div class="site-header">

        <div class="header-top">
           	<div class="container">
              	<div class="box-container">
                  <ul class="nav-left">
                      <li><i class="zmdi zmdi-home" style="font-size: 15px;"></i> Nhà liền kề số 03 VNT TOWER, số 19 Nguyễn Trãi, Thanh Xuân, Hà Nội.</li>
                      <li><i class="zmdi zmdi-phone-in-talk"></i> 0969 - 868 - 485</li>
                      <li><i class="zmdi zmdi-email"></i> dungmorionline@gmail.com</li>
                  </ul>
              	</div>
            </div>
        </div>

        <div class="header-content mid-header" id="header">
            <div class="container">
              <div id="search-input-mobile">
                <input type="" name="" class="search-input-mobile" placeholder="Tìm kiếm ..." onkeypress="return search(event, this)">
                  <i class="glyphicon glyphicon-remove close-icon" onclick="closeSearchBox()"></i>
              </div>
              <div id="nav-icon"><span class="nav-span"></span><span class="nav-span"></span><span class="nav-span"></span>
                <ul class="dropdown-menu">
                  <li><a href="http://dungmori.com"><i class="zmdi zmdi-home icon-menu-item"></i><p>Trang chủ</p></a></li>
                  <li><a href="http://dungmori.com/khoa-hoc"><i class="zmdi zmdi-airplay icon-menu-item"></i><p>Các khóa học</p></a></li>
                  <li class="courses-detail-list">

                    <table class="table course-list-table table-bordered">
                        <tr>
                            <td valign="center" style="border-right: 0; color: #82ae1d; padding: 25px 0px;">ONLINE</td>
                            <td style="padding: 0; border: 0;">
                                <table class="table">
                                    <tr><td colspan="4"><a style="padding: 0" href="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi">Bảng chữ cái miễn phí</a></td></tr>
                                    <tr>
                                        <td><a style="padding: 0" href="http://dungmori.com/khoa-hoc/khoa-n5">N5</a></td>
                                        <td><a style="padding: 0" href="http://dungmori.com/khoa-hoc/khoa-n4">N4</a></td>
                                        <td><a style="padding: 0" href="http://dungmori.com/khoa-hoc/khoa-n3">N3</a></td>
                                        <td><a style="padding: 0" href="http://dungmori.com/khoa-hoc/khoa-n2">N2</a></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td valign="center" style="color: #82ae1d;">OFFLINE</td>
                            <td style="border-top: 0;"><a style="padding: 0" href="http://dungmori.com/trang/hoc-offline">Lịch khai giảng</a></td>
                        </tr>
                    </table>
                  </li>
                  <li><a href="http://dungmori.com/bai-viet"><i class="zmdi zmdi-format-subject icon-menu-item"></i><p>Bài viết</p></a></li>
                  <li><a href="http://dungmori.com/giao-vien"><i class="zmdi zmdi-accounts-outline icon-menu-item"></i><p>Giáo viên</p></a></li>
                  
                  <li><a href="http://dungmori.com/thi-thu"><i class="zmdi zmdi-edit icon-menu-item"></i><p>Thi trực tuyến</p></a></li>
                  <li><a href="http://dungmori.com/ho-tro"><i class="zmdi zmdi-help-outline icon-menu-item"></i><p>Hỗ trợ</p></a></li>
                </ul>
              </div>
              <a href="http://dungmori.com" class="logo" id="logo">
                  <img src="http://dungmori.com/assets/img/logo.png" alt="dungmori logo">
              </a>
              <span data-action="toggle-nav" class="nav-toggle-menu"><span>Menu</span></span>
              <div class="block-nav-menu">
                 <div class="block-title">
                    <span class="title">Menu</span>
                    <span data-action="close-nav" class="close-nav"><span>close</span></span>
                 </div>
                 <ul class="ui-menu">
                    <li class="parent ">
                       <a href="http://dungmori.com/khoa-hoc" class="mn-item khoa-hoc">
                        <i class=""></i> Các khóa học
                       </a>
                       <div class="submenu">
                          <ul class="content">
                             <li>
                                <div class="col-left">
                                   <b>Online</b>
                                </div>
                                <div class="col-right"  style="border-top: none;">
                                   <div class="clearfix">
                                      <div class="col-md-12"><a href="http://dungmori.com/khoa-hoc/bang-chu-cai-mien-phi"> Bảng chữ cái miễn phí</a> </div>
                                   </div>
                                   <div class="col-bottom clearfix">
                                      <div class="col-md-3">
                                         <a href="http://dungmori.com/khoa-hoc/khoa-n5">N5</a>
                                      </div>
                                      <div class="col-md-3">
                                         <a href="http://dungmori.com/khoa-hoc/khoa-n4">N4</a>
                                      </div>
                                      <div class="col-md-3">
                                         <a href="http://dungmori.com/khoa-hoc/khoa-n3">N3</a>
                                      </div>
                                      <div class="col-md-3">
                                         <a href="http://dungmori.com/khoa-hoc/khoa-n2">N2</a>
                                      </div>
                                   </div>
                                </div>
                             </li>
                             <li>
                                <div class="col-left offline-mn">
                                   <b>Offline</b>
                                </div>
                                <div class="col-right offline-ct">
                                    <a href="http://dungmori.com/trang/hoc-offline"> Lịch khai giảng </a>
                                </div>
                             </li>
                          </ul>
                       </div>
                    </li>
                    <li> <a href="http://dungmori.com/giao-vien" target="" class="mn-item giao-vien">Giáo viên</a></li>
                    <li> <a href="http://dungmori.com/bai-viet" target="" class="mn-item bai-viet">Bài viết</a></li>
                    
                    <li> <a href="http://dungmori.com/thi-thu"  class="mn-item thi-thu">Thi trực tuyến</a></li> 
                    <li> <a href="http://dungmori.com/ho-tro" target="" class="mn-item ho-tro">Hỗ trợ</a></li>
                    <li class="item-search"> 
                        <div id="search-submit">&nbsp;</div>
                        <input type="text" name="key" class="search-input" id="search-input" onkeypress="return search(event, this)" placeholder="Tìm kiếm..." autocomplete="off">
                    </li>
                  </ul>
              </div>
              <div class="account-container" id="account-container">
                <div class="search-box" onclick="showSearchInput()"><i class="glyphicon glyphicon-search search-icon"></i></div>
                                  

<div class="login-container" id="auth-container" style="display: none;">
  <div class="login-left-container">
    <img class="auth-featured-image" src="http://dungmori.com/assets/img/login-banner.jpg" />
  </div>
  <div class="login-right-container">

     <ul class="nav nav-pills">
      <li class="li-tab login-tab active" onclick="swichTab('login')"><a data-toggle="pill" href="#login-content">Đăng nhập</a></li>
      <li class="li-tab register-tab" onclick="swichTab('register')"><a data-toggle="pill" href="#register-content">Tạo tài khoản</a></li>
     </ul>
     <div class="tab-content">
        <div id="register-content" class="tab-pane fade">
           <div class="col-md-11" data-selectable="true">
           <form id="register-form" class="form-horizontal" accept-charset="UTF-8" autocomplete="off">
              <input type="hidden" name="_token" value="dID8nr1OLIVnUbbjhk0f90utfwY3Qyw7vWgl2aw7">
              <div class="form-group">
                <label class="col-md-4 control-label"></label>
                <div class="col-md-8">
                  <div class="error-container" id="error-container-login" style="display: none;" v-show="error != null">
                    <div class="alert-danger" id="error-register-content"><i class="zmdi zmdi-alert-octagon"></i> {{error}}</div>
                  </div>
                </div>
              </div>
              <div class="form-group">
                 <label class="col-md-4 control-label">Họ và tên</label>
                 <div class="col-md-8">
                    <input type="text" class="form-control" name="name" id="register-name" v-on:click="hideError" placeholder="Họ và tên" autocomplete="off" required>
                 </div>
              </div>
              <div class="form-group">
                 <label class="col-md-4 control-label">Email</label>
                 <div class="col-md-8">
                    <input type="email" class="form-control" name="email" id="register-email" v-on:click="hideError" placeholder="Email" autocomplete="off" required>
                 </div>
              </div>
              <div class="form-group">
                 <label class="col-md-4 control-label">Mật khẩu</label>
                 <div class="col-md-8">
                    <input type="password" class="form-control" name="password" id="register-password" v-on:click="hideError" placeholder="Mật khẩu" style="margin-bottom: 0; border-bottom: none;" autocomplete="off" required>
                    <input type="password" class="form-control" name="password_confirm" id="register-password-confirm" v-on:click="hideError" placeholder="Nhập lại mật khẩu" autocomplete="off" required>
                 </div>
              </div>
              <div class="form-group">
                 <label class="col-md-4 control-label">Số điện thoại</label>
                 <div class="col-md-8">
                    <input type="text" class="form-control" name="phone" id="register-phone" v-on:click="hideError" placeholder="Điện thoại" autocomplete="off" required>
                 </div>
              </div>
              <div class="form-group">
                 <label class="col-md-4 control-label">Ngày sinh</label>
                 <div class="col-md-8">
                    <div class="row">

                       <div class="col-xs-5"  style="padding-right: 0;" >

                          <select name="birth_month" class="form-control" id="register-month" >
                            <option value="">Chọn tháng</option>
                                                        <option value="1">Tháng 1</option>
                                                        <option value="2">Tháng 2</option>
                                                        <option value="3">Tháng 3</option>
                                                        <option value="4">Tháng 4</option>
                                                        <option value="5">Tháng 5</option>
                                                        <option value="6">Tháng 6</option>
                                                        <option value="7">Tháng 7</option>
                                                        <option value="8">Tháng 8</option>
                                                        <option value="9">Tháng 9</option>
                                                        <option value="10">Tháng 10</option>
                                                        <option value="11">Tháng 11</option>
                                                        <option value="12">Tháng 12</option>
                                                      </select>

                          
                       </div>
                       <div class="col-xs-3" style="padding: 0 5px;">
                          <input type="number" name="birth_day" id="register-day" v-on:click="hideError" class="form-control" placeholder="Ngày" autocomplete="off" required/>
                       </div>
                       <div class="col-xs-4"  style="padding-left: 0;" >
                          <input type="number" name="birth_year" id="register-year" v-on:click="hideError" class="form-control" placeholder="Năm" autocomplete="off" required/>
                       </div>
                    </div>
                 </div>
              </div>
              <div class="form-group">
                 <label class="col-md-4 control-label">Quốc gia</label>
                 <div class="col-md-8">
                    <select name="country" class="form-control">
                      <option value="230" selected="selected">Việt Nam</option>
                      <option value="107">Japan</option>
                      <option value="1">Khác</option>
                    </select>
                 </div>
              </div>
              <div class="form-group">
                 <label class="col-md-4 control-label"></label>
                 <div class="col-md-8">
                    <div class="checkbox" style="margin-top: 0; padding-top: 0;">
                      <label for="agree-checkbox" class="agree-policy" >
                          <input id="agree-checkbox" type="checkbox" name="agreement" checked> 
                          <span>Đồng ý với các <a href="http://dungmori.com/trang/dieu-khoan-su-dung" target="_blank">điều khoản sử dụng</a> và 
                            <a  href="http://dungmori.com/trang/chinh-sach-bao-mat" target="_blank">chính sách bảo mật</a> của website DungMori</span>
                      </label>
                  </div>
                 </div>
              </div>
              <div class="form-group">
                 <div class="col-md-8 col-md-offset-4">
                    <div class="btn-register" id="register-submit" v-show="buttonState == true" v-on:click="register">Đăng ký</div>
                    <div class="btn-register" v-show="buttonState == false"><i class="fa fa-spinner fa-pulse fa-fw"></i> Đang xác thực...</div>
                 </div>
              </div>
           </form>
        </div>
        </div>
        <div id="login-content" class="tab-pane fade in active">
           <div class="col-md-11">

           <form id="login-form" accept-charset="UTF-8" class="form-horizontal">
              <input type="hidden" name="_token" value="dID8nr1OLIVnUbbjhk0f90utfwY3Qyw7vWgl2aw7">
              <div class="form-group">
                <label class="col-md-4 control-label"></label>
                <div class="col-md-8">
                  <div class="error-container">
                    <div class="alert-danger" style="display: none;" v-show="error != null"><i class="zmdi zmdi-alert-octagon"></i> {{error}}</div>
                  </div>
                </div> 
              </div>
              <div class="form-group">
                 <label class="col-md-4 control-label">Email</label>
                 <div class="col-md-8">
                    <input id="email" class="form-control" type="email" name="email" v-on:click="hideError" placeholder="Email hoặc tên đăng nhập" autocomplete="off" required autofocus onkeypress="return enterToLogin(event, this)">
                 </div>
              </div>
              <div class="form-group">
                 <label class="col-md-4 control-label">Mật khẩu</label>
                 <div class="col-md-8">
                    <input id="password" type="password" class="form-control" name="password" v-on:click="hideError" placeholder="Mật khẩu" autocomplete="off" required onkeypress="return enterToLogin(event, this)">
                 </div>
              </div>
              <div class="form-group" v-if="countWrongPass >= 5">
                 <label class="col-md-4 control-label"></label>
                 <div class="col-md-8">
                    <input type="text" class="form-control" style="width: 200px;" id="captcha_login" name="captcha" placeholder="Nhập mã bên dưới" required autocomplete="off"><br>
                    <div class="captcha-container" id="captcha_login_change" style="float: left;"><img src="http://dungmori.com/captcha/image?1079477406"
     alt="https://github.com/igoshev/laravel-captcha"
     style="cursor:pointer;width:150px;height:40px;"
     title="bone::captcha.update_code"
     onclick="this.setAttribute('src','http://dungmori.com/captcha/image?1079477406?_='+Math.random());var captcha=document.getElementById('captcha');if(captcha){captcha.focus()}">
</div><i style="margin-top: 12px; margin-left: 10px;" class="glyphicon glyphicon-repeat" v-on:click="changeCaptchaLogin()"></i>
                 </div>
              </div>
              <div class="form-group">
                <label class="col-md-4 control-label"></label>
                 <div class="col-md-8">
                    <div class="checkbox">
                      <label for="login-remember" class="agree-policy" >
                          <input id="login-remember" type="checkbox" name="remember">
                          <span>Ghi nhớ đăng nhập</span>
                      </label>
                  </div>
                 </div>
              </div>
              <div class="form-group">
                <label class="col-md-4 control-label"></label>
                 <div class="col-md-8">
                    <button type="button" class="btn-login" id="login-submit" v-on:click="login">
                      <span v-show="buttonState == true">Đăng nhập</span>
                      <span v-show="buttonState == false"><i class="fa fa-spinner fa-pulse fa-fw"></i> Đang xác thực...</span>
                    </button>
                    <p><a href="http://dungmori.com/password/reset" style="color: #333; opacity: 0.7;">Quên mật khẩu ?</a></p>
                 </div>
              </div>
           </form>

          </div>
        </div>
     </div>

     <div class="form-group">
        <label class="col-md-4 control-label"></label>
        <div class="col-md-8" style="padding-left: 0; margin-top: 10px;">
            <div class="break-line">Hoặc đăng nhập nhanh bằng</div>
            <a href="https://www.facebook.com/dialog/oauth?client_id=359123991240252&redirect_uri=https://localhost:8443/login-facebook">
                <button type="button" class="btn btn-facebook waves-effect waves-light m-t-20">
                <i class="fa fa-facebook m-r-5"></i> Facebook</button>
            </a>
            <a href="http://dungmori.com/oauth/google"  onclick="authBySocicalAccount()">
                <button type="button" class="btn btn-googleplus waves-effect waves-light m-t-20" style="margin-right: 5px;">
                <i class="fa fa-google-plus m-r-5"></i> Google</button>
            </a>
        </div>
    </div>
    
  </div> 
</div>
        <div class="dropdown profile-no-login-icon">
                    <button class="dropdown-toggle" type="button" data-toggle="dropdown"><i class="glyphicon glyphicon-user dropdown-toggle"></i></button>
                    <ul class="dropdown-menu">
                      <li onclick="swichTab('login')" data-fancybox data-animation-duration="300" data-src="#auth-container"><a><p>Đăng nhập</p></a></li>
                      <li onclick="swichTab('register')" data-fancybox data-animation-duration="300" data-src="#auth-container"><a><p>Tạo tài khoản</p></a></li>
                    </ul>
        </div>
        <a data-fancybox data-animation-duration="300" data-src="#auth-container" class="register-box">
                  <div class="btn-login" onclick="swichTab('register')">Tạo tài khoản</div>
                </a>
                <a data-fancybox data-animation-duration="300" data-src="#auth-container" class="login-box">
                  <div class="btn-register" ><i class="zmdi zmdi-lock-outline"></i> Đăng nhập</div>
                </a>
                
              </div>
           </div>
        </div>
    </div>   
<div class="site-main">

      <div class="haijp-banner">
              <div>
          <a href="http://dungmori.com/bai-viet/91-danh-sach-hoc-vien-online-cua-dung-mori-thi-do-va-dat-diem-cao-ki-thi-jlpt-072018" target="_blank">
            <img src="http://dungmori.com/cdn/advertise/default/1535098227_0_99ecc1.png" style="display: inline;">
          </a>
        </div>
              <div>
          <a href="http://dungmori.com/thi-thu" target="_blank">
            <img src="http://dungmori.com/cdn/advertise/default/1536139886_12345_7b3955.png" style="display: inline;">
          </a>
        </div>
          </div>
    
    <script> $('.haijp-banner').slick({dots: false, infinite: true, speed: 300, fade: false, autoplay: true, arrows : false, cssEase: 'linear'}); </script>
  
  <div class="block-slide-banner" style="background-image:url(http://dungmori.com/cdn/slider/default/1536828433_37035_291713.png)">
    <div class="player-home-icon">
      <a class="fancybox fancybox.iframe" href="https://www.youtube.com/embed/HbSKkQCC5JU?autoplay=1" title="Xem clip giới thiệu">
        <img src="http://dungmori.com/assets/img/player-home-icon.png"/>
      </a>
    </div>
  </div>

  <b id="open-featured-popup" data-fancybox data-src="#home-featured-popup" href="javascript:;"></b>

   <div class="full-container block-student-feedback">
      <div class="center-container">
         <div class="student-feedback-title">
            <h1 class="green-text" >Nơi học tập Tiếng Nhật của</h1>
            <h2>Hơn <span class="counter green-text">40983</span> Học Viên</h2>
         </div>
         <img class="img-student" style="padding: 0 15px;margin: 10px 0;" src="http://dungmori.com/assets/img/hv.png">                   
      </div>
   </div>

   <div class="full-container fb-comments-container">
      <div class="center-container">
         <div class="row row-content-fb">
            <div class="col-md-8 col-content">
               <div class="block-comment">
                  <ul class="nav nav-pills " role="tablist">
                     <li role="presentation" class="active"><a href="#block-coment"  role="tab" data-toggle="tab">Ý kiến học viên</a></li>
                  </ul>
                  <div class="tab-content">
                     <div role="tabpanel" class="tab-pane active" id="block-coment">
                        <div class="block-title"><strong>Ý kiến học viên</strong></div>
                        <comment-fb url="http://localhost:8888/tiengnhatkantandesuyo"></comment-fb>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-4" style="overflow-x: hidden;">             
              <iframe src="https://www.facebook.com/plugins/page.php?href=https://www.facebook.com/tiengnhatkantandesuyo&tabs=null&small_header=false&adapt_container_width=false&hide_cover=false&show_facepile=true&appId=2272220076356331" 
			          style="border:none; width: 110% !important; float: left; min-height: 215px; " scrolling="no" frameborder="0" allowTransparency="true">
			  </iframe>
              </div>
         </div>
      </div>
   </div>
</div>

<div class="fb-livechat">
   <div class="ctrlq fb-overlay"></div>
   <div class="fb-widget">
      <div class="ctrlq fb-close"></div>
      <div class="fb-page" data-href="https://www.facebook.com/tiengnhatkantandesuyo" data-tabs="messages" data-width="360" data-height="400" data-small-header="true" data-hide-cover="true" data-show-facepile="false"> </div>
      <div class="fb-credit"> <a href="https://dungmori.com" target="_blank">Powered by DungMori</a> </div>
      <div id="fb-root"></div>
   </div>
   <a href="https://m.me/tiengnhatkantandesuyo" title="Gửi tin nhắn cho chúng tôi qua Facebook" class="ctrlq fb-button">
      <div class="bubble">1</div>
      <div class="bubble-msg">Gửi tin nhắn cho chúng tôi qua Facebook</div>
   </a>
</div>

<div class="fb-customerchat" page_id="538539873274543" ref="http://dungmori.com/" minimized="true"> </div>


    
    

    <div class="go-top"><i class="fa fa-sort-asc"></i></div>

    
    <script src="http://dungmori.com/plugin/jquery_lazyload/lazyload.min.js"></script>
    <script type="text/javascript"> window.addEventListener("load", function(event) {lazyload(); }); </script>

    
    <script type="text/javascript">var lastFingerprint = 0;</script>
    
    
    <script src="http://dungmori.com/plugin/vue/vue.min.js"></script>

    
    <script src="http://dungmori.com/assets/js/app.js?a91e25065288949fb8ea4f550708167a"></script>

    
    <script src="http://dungmori.com/assets/js/components.js?b7f2905ab0a0302cb20e591c7728846c"></script>

    
        <script src="http://dungmori.com/assets/js/GVuZ3RoKCk.js?586c87bc48d074cbad28d0cd8cdb9e05"></script>
    
    
  
  <script type="text/javascript">
    $(".fancybox").fancybox({ type: "iframe" })
  </script>

  
  <script type="text/javascript">
    var numOfSliders = 3;
    if(screen.width < 800) numOfSliders = 1;
     $('.student-feedback-slider').slick({
       slidesToShow: numOfSliders,
       slidesToScroll: 1,
       autoplay: true,
       autoplaySpeed: 3000,
     });
  </script>

  
  <script src="http://dungmori.com/plugin/waypoint/waypoints.min.js"></script>
  <script src="http://dungmori.com/plugin/counter-up/jquery.counterup.min.js"></script>
  <script>
     jQuery(document).ready(function($) {
        $('.counter').counterUp({
            delay: 10,
            time: 1000
        });
     });
  </script>

  <script src="http://dungmori.com/assets/js/home.js?03576510794ea9f143c75f3de713ee11"></script>
  <script type="text/javascript">
    new Vue({ el: '.fb-comments-container' }) ;
    new Vue({ el: '.preview-course-container'});

    
    function pressClick(id){
      $("#"+id).click();
    }
  </script>

  
  <script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.11&appId=2272220076356331';
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));</script>

  
  <script src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.9"></script>
  <script>$(document).ready(function(){function detectmob(){if( navigator.userAgent.match(/Android/i) || navigator.userAgent.match(/webOS/i) || navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPad/i) || navigator.userAgent.match(/iPod/i) || navigator.userAgent.match(/BlackBerry/i) || navigator.userAgent.match(/Windows Phone/i) ){return true;}else{return false;}}var t={delay: 125, overlay: $(".fb-overlay"), widget: $(".fb-widget"), button: $(".fb-button")}; setTimeout(function(){$("div.fb-livechat").fadeIn()}, 8 * t.delay); if(!detectmob()){$(".ctrlq").on("click", function(e){e.preventDefault(), t.overlay.is(":visible") ? (t.overlay.fadeOut(t.delay), t.widget.stop().animate({bottom: 0, opacity: 0}, 2 * t.delay, function(){$(this).hide("slow"), t.button.show()})) : t.button.fadeOut("medium", function(){t.widget.stop().show().animate({bottom: "30px", opacity: 1}, 2 * t.delay), t.overlay.fadeIn(t.delay)})})}});
  </script>

    
    <script type="text/javascript">
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
      ga('create', 'UA-98604763-1', 'auto');
      ga('send', 'pageview');
    </script>

</div>
</body>
</html>