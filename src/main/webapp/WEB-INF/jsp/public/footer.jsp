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
<div class="footer">
        <div class="center-container">

           <div class="col-md-4 contact-box">
            <h3 class="title">Thông tin liên hệ</h3>
            <a href="mailto:haibkt2@gmail.com" target="_top">
              <i class="zmdi zmdi-email"></i>&nbsp;&nbsp;Email : haibkt2@gmail.com
            </a>
            <br>
            <a href="tel:+03636679621">
              <i class="zmdi zmdi-phone-in-talk"></i>&nbsp;&nbsp;Tel : 033-679-621
            </a>
           </div>

           <div class="col-md-3 col social-box">
            <h3 class="title">Theo dõi HaiLDX</h3>
              <div class="social">
                 <a href="https://www.facebook.com/haildx" target="_blank">
                        <img src="${contextPath}/resources/public/img/fb.png" alt="img">
                        Fanpage
                 </a>
              </div>
              <br>
           </div>

        </div>
    </div>
</body>
</html>