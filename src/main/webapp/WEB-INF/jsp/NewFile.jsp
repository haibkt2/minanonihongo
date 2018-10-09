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
<title>HaiLDX - Website học tiếng Nhật online số 1 tại Việt Nam
</title>
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

			<h2 class="lesson-detail-title">
				<a href="http://dungmori.com/khoa-hoc/khoa-n3">Khóa học N3</a>
				&nbsp; <i class="zmdi zmdi-caret-right"></i> &nbsp; <b>Test 1A</b>
			</h2>
			<p style="width: 100%; float: left; margin: 5px 0 0px;">
				<i class="zmdi zmdi-time-countdown"></i> <b>8179</b> Lượt xem
			</p>


			<div class="cover-container">



				<div id="lesson-content-detail" class="lesson-content-detail">
					<div style="margin-top: 25px; display: inline-block;">
						<div>
							1. いい先生を<u>紹介</u>してくれる？
						</div>
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27392" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27392</span> <input type="radio"
								id="answer27392" name="task12578"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;しょうかい </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27393" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27393</span> <input type="radio"
								id="answer27393" name="task12578"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;しょかい </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						2. <u>仲介料</u>などは必要ありません。
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27390" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27390</span> <input type="radio"
								id="answer27390" name="task12577"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;ちゅうかいりょう </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27391" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27391</span> <input type="radio"
								id="answer27391" name="task12577"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;ちゅうがいりょう </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						<div>
							<div>
								3.&nbsp; &nbsp;アイホンの修理<u>代金</u>は高すぎる。
							</div>
						</div>
						<br>
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27394" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27394</span> <input type="radio"
								id="answer27394" name="task12579"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;だいきん </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27395" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27395</span> <input type="radio"
								id="answer27395" name="task12579"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;たいぎん </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						4.&nbsp; &nbsp;部長の<u>代理</u>として日本の出張に行く。<br> <br>
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27396" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27396</span> <input type="radio"
								id="answer27396" name="task12580"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;だいり </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27397" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27397</span> <input type="radio"
								id="answer27397" name="task12580"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;たいり </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						5.
						<ruby>
							明治
							<rp>(</rp>
							<rt>めいじ</rt>
							<rp>)</rp>
						</ruby>
						<u>時代</u>に、日本の
						<ruby>
							経済
							<rp>(</rp>
							<rt>けいざい</rt>
							<rp>)</rp>
						</ruby>
						が
						<ruby>
							発展
							<rp>(</rp>
							<rt>はってん</rt>
							<rp>)</rp>
						</ruby>
						した。<br> <br>
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27398" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27398</span> <input type="radio"
								id="answer27398" name="task12581"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;じだい </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27399" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27399</span> <input type="radio"
								id="answer27399" name="task12581"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;じたい </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						6. この
						<ruby>
							服
							<rp>(</rp>
							<rt>ふく</rt>
							<rp>)</rp>
						</ruby>
						は１９８０<u>年代</u>に
						<ruby>
							流行
							<rp>(</rp>
							<rt>りゅうこう</rt>
							<rp>)</rp>
						</ruby>
						したファッションだ。<br> <br>
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27400" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27400</span> <input type="radio"
								id="answer27400" name="task12582"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;としだい </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27401" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27401</span> <input type="radio"
								id="answer27401" name="task12582"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;ねんだい </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						7. 今回の旅行は交通費＋<u>食事代</u>＋<u>ホテル代</u>で
						１０万もかかる。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
						<br>
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27402" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27402</span> <input type="radio"
								id="answer27402" name="task12583"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;しょくじだい、ホテルだい </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27403" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27403</span> <input type="radio"
								id="answer27403" name="task12583"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;しょくじひ、ホテルひ </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						8. 6時<u>以後</u>は家にいる。<br> <br>
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27404" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27404</span> <input type="radio"
								id="answer27404" name="task12584"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;いこ </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27405" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27405</span> <input type="radio"
								id="answer27405" name="task12584"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;いご </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						9. <u>以下</u>のガイドを読んでください。<br> <br>
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27406" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27406</span> <input type="radio"
								id="answer27406" name="task12585"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;いが </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27407" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27407</span> <input type="radio"
								id="answer27407" name="task12585"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;いか </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						10. 昨日の
						<ruby>
							試験
							<rp>(</rp>
							<rt>しけん</rt>
							<rp>)</rp>
						</ruby>
						は思った<u>以上</u>に
						<ruby>
							難
							<rp>(</rp>
							<rt>むずか</rt>
							<rp>)</rp>
						</ruby>
						しかった。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
						<br>
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27408" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27408</span> <input type="radio"
								id="answer27408" name="task12586"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;いじょう </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27409" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27409</span> <input type="radio"
								id="answer27409" name="task12586"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;いしょう </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						<p>
							11.お<u>仕事</u>は何ですか？
						</p>
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27410" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27410</span> <input type="radio"
								id="answer27410" name="task12587"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;しごと </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27411" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27411</span> <input type="radio"
								id="answer27411" name="task12587"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;じごと </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						<ruby>
							12. 帰
							<rt>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; かえ</rt>
						</ruby>
						りの
						<ruby>
							運
							<rt>うん</rt>
						</ruby>
						<ruby>
							転
							<rt>てん</rt>
						</ruby>
						は
						<ruby>
							眠
							<rt>ねむ</rt>
						</ruby>
						くて<em><u>仕方がない</u></em><em>。</em>
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27412" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27412</span> <input type="radio"
								id="answer27412" name="task12588"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;しかたがない </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27413" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27413</span> <input type="radio"
								id="answer27413" name="task12588"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;しがたがない </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						<div>
							<div>
								13.&nbsp; 今でも親から<u>仕送り</u>をもらって生活している。
							</div>
						</div>
						<br>
						<div>&nbsp;</div>
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27414" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27414</span> <input type="radio"
								id="answer27414" name="task12589"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;じおくり </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27415" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27415</span> <input type="radio"
								id="answer27415" name="task12589"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;しおくり </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						<ruby>
							14.&nbsp; 資料
							<rp>(</rp>
							<rt>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
								&nbsp;しりょう</rt>
							<rp>)</rp>
						</ruby>
						を作るのは部下に<u>任せた</u>。
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27416" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27416</span> <input type="radio"
								id="answer27416" name="task12590"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;ませた </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27417" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27417</span> <input type="radio"
								id="answer27417" name="task12590"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;まかせた </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						<ruby></ruby>
						15.&nbsp; 彼は
						<ruby>
							重
							<rt>おも</rt>
						</ruby>
						い
						<ruby>
							病気
							<rt>びょうき</rt>
						</ruby>
						で<u>辞任</u>した。
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27418" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27418</span> <input type="radio"
								id="answer27418" name="task12591"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;じにん </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27419" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27419</span> <input type="radio"
								id="answer27419" name="task12591"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;せにん </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						16.&nbsp; 漢字クラスの<u>担任</u>先生はしまかわ先生です。
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27420" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27420</span> <input type="radio"
								id="answer27420" name="task12592"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;だんにん </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27421" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27421</span> <input type="radio"
								id="answer27421" name="task12592"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;たんにん </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						17.<span style="white-space: pre"> </span>彼は漢字が<u>優れている</u>。&nbsp;
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27422" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27422</span> <input type="radio"
								id="answer27422" name="task12593"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;すぐれている </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27423" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27423</span> <input type="radio"
								id="answer27423" name="task12593"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;まされている </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						18.&nbsp; &nbsp;子供だから、<u>優しい</u>言葉を使ってください。
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27424" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27424</span> <input type="radio"
								id="answer27424" name="task12594"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;かなしい </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27425" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27425</span> <input type="radio"
								id="answer27425" name="task12594"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;やさしい </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						19.<span style="white-space: pre"> </span>年寄りを<u>優先</u>する。
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27426" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27426</span> <input type="radio"
								id="answer27426" name="task12595"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;ゆうせん </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27427" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27427</span> <input type="radio"
								id="answer27427" name="task12595"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;ゆうぜん </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						20.&nbsp; &nbsp;昨日の
						<ruby>
							試合
							<rt>しあい</rt>
						</ruby>
						、
						<ruby>
							僕
							<rt>ぼく</rt>
						</ruby>
						のチームが<u>優勝</u>しました。
						<div>&nbsp;</div>
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27428" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27428</span> <input type="radio"
								id="answer27428" name="task12596"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;ゆうしょ </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27429" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27429</span> <input type="radio"
								id="answer27429" name="task12596"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;ゆうしょう </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						21.&nbsp;<u>信号</u>が変わる。
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27430" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27430</span> <input type="radio"
								id="answer27430" name="task12597"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;しんごう </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27431" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27431</span> <input type="radio"
								id="answer27431" name="task12597"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;しんこう </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						22.&nbsp; 彼の
						<ruby>
							言葉
							<rt>ことば</rt>
						</ruby>
						が<u>信じられない</u>。
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27432" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27432</span> <input type="radio"
								id="answer27432" name="task12598"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;じゅじられない </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27433" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27433</span> <input type="radio"
								id="answer27433" name="task12598"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;しんじられない </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						23.&nbsp; 時間を
						<ruby>
							守
							<rt>まも</rt>
						</ruby>
						らない人は<u>信用</u>できない。<br> <br>
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27434" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27434</span> <input type="radio"
								id="answer27434" name="task12599"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;しんよう </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27435" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27435</span> <input type="radio"
								id="answer27435" name="task12599"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;しよう </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						24.&nbsp;&nbsp;インタネットでの
						<ruby>
							情報
							<rt>じょうほう</rt>
						</ruby>
						を全部<u>信頼</u>できるわけじゃない<em>。</em>&nbsp;&nbsp;<br> <br>
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27436" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27436</span> <input type="radio"
								id="answer27436" name="task12600"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;しんざい </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27437" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27437</span> <input type="radio"
								id="answer27437" name="task12600"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;しんらい </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						25.&nbsp;&nbsp;
						<ruby>
							優
							<rt>やさ</rt>
						</ruby>
						しい言葉で<u>伝える</u>。 <br> <br>
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27438" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27438</span> <input type="radio"
								id="answer27438" name="task12601"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;つたえる </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27439" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27439</span> <input type="radio"
								id="answer27439" name="task12601"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;あたえる </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						26.&nbsp; この辺はペット可の<u>物件</u>があるの？<br> <br>
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27440" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27440</span> <input type="radio"
								id="answer27440" name="task12602"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;ぶっけん </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27441" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27441</span> <input type="radio"
								id="answer27441" name="task12602"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;ふっけん </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						27.&nbsp;&nbsp;2017の
						<ruby>
							交通事故
							<rt>こうつうじこ</rt>
						</ruby>
						で、
						<ruby>
							死亡事故
							<rt>しぼうじこ</rt>
						</ruby>
						<u>件数</u>は3.790件です。&nbsp; &nbsp;<br> <br>
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27442" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27442</span> <input type="radio"
								id="answer27442" name="task12603"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;けんずう </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27443" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27443</span> <input type="radio"
								id="answer27443" name="task12603"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;けんすう </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						28.&nbsp; 部屋を<u>片付ける</u>。<br> <br>
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27444" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27444</span> <input type="radio"
								id="answer27444" name="task12604"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;かたづける </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27445" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27445</span> <input type="radio"
								id="answer27445" name="task12604"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;かたずける </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						29.&nbsp;&nbsp;シャツに<u>インクが付いて</u>いた。<br> <br>
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27446" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27446</span> <input type="radio"
								id="answer27446" name="task12605"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;インクがついて </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27447" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27447</span> <input type="radio"
								id="answer27447" name="task12605"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;インクがづいて </label>
						</div>
					</div>
					<div style="margin-top: 25px; display: inline-block;">
						30.&nbsp;&nbsp;自分を守る力を<u>身に付ける</u>のは必要だ。<br> <br>
					</div>
					<div
						style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27448" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27448</span> <input type="radio"
								id="answer27448" name="task12606"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">0</span>&nbsp;&nbsp;みにづける </label>
						</div>
						<div style="width: 48%; margin-top: 10px;">
							<label for="answer27449" class="col-md-11 answers-input"
								style="font-weight: normal; font-size: 13px; color: gray;"><span
								style="display: none;">27449</span> <input type="radio"
								id="answer27449" name="task12606"
								class="custom-control-input col-md-1 answers-input"> <span
								style="display: none;">1</span>&nbsp;&nbsp;みにつける </label>
						</div>
					</div>
					<button class="btn btn-primary trac-nghiem">Nộp bài</button>
					<hr
						style="border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(221, 221, 221); border-left-color: initial; border-image: initial;">
					<div id="result" class="alert mt20" style="display: block;">
						<!---->
					</div>
					<div id="empty_answers" role="dialog" tabindex="-1"
						class="modal fade">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" data-dismiss="modal" class="close">×</button>
									<h4 class="modal-title">Lưu ý</h4>
								</div>
								<div class="modal-body">
									<div class="alert alert-danger">
										<i class="fa fa-tags"></i>&nbsp;Bạn chưa nhập câu trả lời. Vui
										lòng trả lời rồi mới nộp bài thi.
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" data-dismiss="modal" class="btn btn-info">Đóng</button>
								</div>
							</div>
						</div>
					</div>
					<div id="removeResult" role="dialog" tabindex="-1"
						class="modal fade">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" data-dismiss="modal" class="close">×</button>
									<h4 class="modal-title">Xóa</h4>
								</div>
								<div class="modal-body">
									<p>Bạn có muốn xóa bài kiểm tra này không?</p>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-warning">Xóa</button>
									<button type="button" data-dismiss="modal" class="btn btn-info">Đóng</button>
								</div>
							</div>
						</div>
					</div>
					<div id="myMessage" role="dialog" tabindex="-1" class="modal fade">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" data-dismiss="modal" class="close">×</button>
									<h4 class="modal-title">Thông báo</h4>
								</div>
								<div class="modal-body">
									<div class="alert alert-info">
										<i class="fa fa-tags"></i>&nbsp;Bạn được 0 / 30 điểm.
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" data-dismiss="modal"
										class="btn btn-primary">&nbsp;&nbsp;OK&nbsp;&nbsp;</button>
								</div>
							</div>
						</div>
					</div>
					<div id="myModal" role="dialog" tabindex="-1" class="modal fade">
						<div class="modal-dialog test-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" data-dismiss="modal" class="close">×</button>
									<h4 class="modal-title">Chi tiết bài kiểm tra</h4>
								</div>
								<div class="modal-body">
									<table
										class="table table-bordered table-striped table-hover tc-table">
										<tbody>
											<tr>
												<td class="row_label">Kết quả</td>
												<td class="row_item">
													<!---->
													<b>Đã qua</b>
												</td>
											</tr>
											<tr>
												<td class="row_label">Điểm đạt được</td>
												<td class="row_item"></td>
											</tr>
											<tr>
												<td class="row_label">Tổng điểm bài kiểm tra</td>
												<td class="row_item"></td>
											</tr>
											<tr>
												<td class="row_label">Thời gian thi</td>
												<td class="row_item">NaN:NaN - NaN/NaN/NaN</td>
											</tr>
											<tr>
												<td colspan="2" class="content-test-detail"><div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">
															<div>
																1. いい先生を<u>紹介</u>してくれる？
															</div>
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;しょうかい<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;しょかい
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">
																2. <u>仲介料</u>などは必要ありません。
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;ちゅうかいりょう<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;ちゅうがいりょう
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">
															<div>
																<div>
																	3.&nbsp; &nbsp;アイホンの修理<u>代金</u>は高すぎる。
																</div>
															</div>
															<br>
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;だいきん<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;たいぎん
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">
																4.&nbsp; &nbsp;部長の<u>代理</u>として日本の出張に行く。<br> <br>
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;だいり<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;たいり
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">5.
															<ruby>
																明治
																<rp>(</rp>
																<rt>めいじ</rt>
																<rp>)</rp>
															</ruby>
															<u>時代</u>に、日本の
															<ruby>
																経済
																<rp>(</rp>
																<rt>けいざい</rt>
																<rp>)</rp>
															</ruby>
															が
															<ruby>
																発展
																<rp>(</rp>
																<rt>はってん</rt>
																<rp>)</rp>
															</ruby>
															した。<br> <br>
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;じだい
																		<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;じたい
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">6. この
															<ruby>
																服
																<rp>(</rp>
																<rt>ふく</rt>
																<rp>)</rp>
															</ruby>
															は１９８０<u>年代</u>に
															<ruby>
																流行
																<rp>(</rp>
																<rt>りゅうこう</rt>
																<rp>)</rp>
															</ruby>
															したファッションだ。<br> <br>
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;としだい
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;ねんだい<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">
																7. 今回の旅行は交通費＋<u>食事代</u>＋<u>ホテル代</u>で
																１０万もかかる。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
																<br>
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;しょくじだい、ホテルだい
																		<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;しょくじひ、ホテルひ
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">
																8. 6時<u>以後</u>は家にいる。<br> <br>
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;いこ
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;いご<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">
																9. <u>以下</u>のガイドを読んでください。<br> <br>
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;いが
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;いか<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">10. 昨日の
															<ruby>
																試験
																<rp>(</rp>
																<rt>しけん</rt>
																<rp>)</rp>
															</ruby>
															は思った<u>以上</u>に
															<ruby>
																難
																<rp>(</rp>
																<rt>むずか</rt>
																<rp>)</rp>
															</ruby>
															しかった。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
															<br>
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;いじょう
																		<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;いしょう
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">
															<p>
																11.お<u>仕事</u>は何ですか？
															</p>
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;しごと
																		<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;じごと
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">
															<ruby>
																12. 帰
																<rt>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; かえ</rt>
															</ruby>
															りの
															<ruby>
																運
																<rt>うん</rt>
															</ruby>
															<ruby>
																転
																<rt>てん</rt>
															</ruby>
															は
															<ruby>
																眠
																<rt>ねむ</rt>
															</ruby>
															くて<em><u>仕方がない</u></em><em>。</em>
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;しかたがない<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;しがたがない
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">
															<div>
																<div>
																	13.&nbsp; 今でも親から<u>仕送り</u>をもらって生活している。
																</div>
															</div>
															<br>
															<div>&nbsp;</div>
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;じおくり
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;しおくり<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">
															<ruby>
																14.&nbsp; 資料
																<rp>(</rp>
																<rt>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
																	&nbsp; &nbsp; &nbsp;しりょう</rt>
																<rp>)</rp>
															</ruby>
															を作るのは部下に<u>任せた</u>。
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;ませた
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;まかせた<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">
															<ruby></ruby>
															15.&nbsp; 彼は
															<ruby>
																重
																<rt>おも</rt>
															</ruby>
															い
															<ruby>
																病気
																<rt>びょうき</rt>
															</ruby>
															で<u>辞任</u>した。
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;じにん
																		<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;せにん
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">
																16.&nbsp; 漢字クラスの<u>担任</u>先生はしまかわ先生です。
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;だんにん
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;たんにん<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">
																17.<span style="white-space: pre"> </span>彼は漢字が<u>優れている</u>。&nbsp;
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;すぐれている
																		<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;まされている
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">
																18.&nbsp; &nbsp;子供だから、<u>優しい</u>言葉を使ってください。
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;かなしい
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;やさしい<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">
																19.<span style="white-space: pre"> </span>年寄りを<u>優先</u>する。
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;ゆうせん
																		<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;ゆうぜん
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">20.&nbsp;
																&nbsp;昨日の
															<ruby>
																試合
																<rt>しあい</rt>
															</ruby>
															、
															<ruby>
																僕
																<rt>ぼく</rt>
															</ruby>
															のチームが<u>優勝</u>しました。
															<div>&nbsp;</div>
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;ゆうしょ
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;ゆうしょう<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">
																21.&nbsp;<u>信号</u>が変わる。
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;しんごう<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;しんこう
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">22.&nbsp;
																彼の
															<ruby>
																言葉
																<rt>ことば</rt>
															</ruby>
															が<u>信じられない</u>。
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;じゅじられない
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;しんじられない<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">23.&nbsp;
																時間を
															<ruby>
																守
																<rt>まも</rt>
															</ruby>
															らない人は<u>信用</u>できない。<br> <br>
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;しんよう<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;しよう
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">24.&nbsp;&nbsp;インタネットでの
															<ruby>
																情報
																<rt>じょうほう</rt>
															</ruby>
															を全部<u>信頼</u>できるわけじゃない<em>。</em>&nbsp;&nbsp;<br> <br>
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;しんざい
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;しんらい<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">25.&nbsp;&nbsp;
															<ruby>
																優
																<rt>やさ</rt>
															</ruby>
															しい言葉で<u>伝える</u>。 <br> <br>
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;つたえる
																		<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;あたえる
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">
																26.&nbsp; この辺はペット可の<u>物件</u>があるの？<br> <br>
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;ぶっけん
																		<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;ふっけん
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">27.&nbsp;&nbsp;2017の
															<ruby>
																交通事故
																<rt>こうつうじこ</rt>
															</ruby>
															で、
															<ruby>
																死亡事故
																<rt>しぼうじこ</rt>
															</ruby>
															<u>件数</u>は3.790件です。&nbsp; &nbsp;<br> <br>
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;けんずう
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;けんすう<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">
																28.&nbsp; 部屋を<u>片付ける</u>。<br> <br>
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;かたづける<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;かたずける
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">
																29.&nbsp;&nbsp;シャツに<u>インクが付いて</u>いた。<br> <br>
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;インクがついて<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;インクがづいて
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div>
													<div>
														<!---->
														<div>
															<p style="margin: 10px 0px; font-size: 16px;">
																30.&nbsp;&nbsp;自分を守る力を<u>身に付ける</u>のは必要だ。<br> <br>
															</p>
															<!---->
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;みにづける
																		<!---->
																	</div>
																</div>
															</div>
															<div class="col-sm-6 answer-area"
																style="margin-bottom: 10px;">
																<div class="question-answer">
																	<div class="labels question-answer-content label-true">
																		<!---->
																		<input type="radio" onclick="this.checked = false">&nbsp;&nbsp;みにつける<span>&nbsp;(Đúng)</span>
																	</div>
																</div>
															</div>
															<div class="col-md-11"
																style="display: inline-block; width: 100%; height: 10px;"></div>
															<hr
																style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0px; border-color: rgb(221, 221, 221);">
														</div>
														<!---->
													</div></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="modal-footer">
									<button type="button" data-dismiss="modal"
										class="btn btn-primary">Đóng</button>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>


			<div class="lesson-detail-container"></div>
			<div class="comment-container">
				<ul class="nav nav-pills comment-tab">
					<li class="li-tab user-tab active"><a data-toggle="pill"
						href="#user-comment-content">Ý kiến học viên</a></li>
					<li class="li-tab facebook-tab"><a data-toggle="pill"
						href="#facebook-comment-content">Bình luận bằng facebook</a></li>
				</ul>
				<div class="tab-content">
					<div id="user-comment-content" class="tab-pane fade in active">
						<div class="list-comments"
							style="background-color: rgb(255, 255, 255);">
							<!---->
							<!---->
							<li id="cmt-item-39037" class="comment-item">
								<!----> <a data-fancybox="" data-src="#user-profile-popup"
								href="javascript:;" class="pull-left avatar-container"><img
									src="http://dungmori.com/assets/img/default-avatar.jpg"
									class="avatar"> <!----></a>
								<div class="comment-content">
									<p class="name">
										<!---->
										<b data-fancybox="" data-src="#user-profile-popup"
											href="javascript:;" class="red"> Phạm Như Quỳnh </b> <span>29/30</span>
									</p>
									<p class="comment-action">
										<span data-toggle="collapse" id="answer-reply-39037"
											href="#reply-39037" aria-expanded="false"
											aria-controls="reply-39037" class="answer">Trả lời</span> • <span
											class="time">05/10/2018 14:00</span>
									</p>
									<div class="reply-container">
										<a role="button" data-toggle="collapse" href="#reply-39037"
											aria-expanded="false" aria-controls="reply-39037"
											class="load-more-reply"><i class="zmdi zmdi-comments"></i>
											1 phản hồi </a>
										<div id="reply-39037" class="collapse">
											<div id="reply-item-39040" class="child-comment-item">
												<a data-fancybox="" data-src="#user-profile-popup"
													href="javascript:;" class="pull-left avatar-container"><img
													src="http://dungmori.com/assets/img/dmr-square-logo.png"
													class="avatar"> <i class="zmdi zmdi-check-circle"></i></a>
												<!---->
												<div class="comment-content">
													<p class="child-name">
														<b data-fancybox="" data-src="#user-profile-popup"
															href="javascript:;" class="red">Dũng Mori </b>
														<!---->
														<span>Cố gắng những bài test sau em nhé.</span>
													</p>
													<p class="child-comment-action">
														<span class="time">05/10/2018 15:03</span>
													</p>
												</div>
												<!---->
											</div>
											<!---->
										</div>
									</div>
								</div> <!---->
							</li>
							<li id="cmt-item-38441" class="comment-item">
								<!----> <a data-fancybox="" data-src="#user-profile-popup"
								href="javascript:;" class="pull-left avatar-container"><img
									src="http://dungmori.com/assets/img/default-avatar.jpg"
									class="avatar"> <!----></a>
								<div class="comment-content">
									<p class="name">
										<!---->
										<b data-fancybox="" data-src="#user-profile-popup"
											href="javascript:;" class="red"> Loan Đỗ </b> <span>30/30</span>
									</p>
									<p class="comment-action">
										<span data-toggle="collapse" id="answer-reply-38441"
											href="#reply-38441" aria-expanded="false"
											aria-controls="reply-38441" class="answer">Trả lời</span> • <span
											class="time">29/09/2018 08:04</span>
									</p>
									<div class="reply-container">
										<a role="button" data-toggle="collapse" href="#reply-38441"
											aria-expanded="false" aria-controls="reply-38441"
											class="load-more-reply"><i class="zmdi zmdi-comments"></i>
											1 phản hồi </a>
										<div id="reply-38441" class="collapse">
											<div id="reply-item-38575" class="child-comment-item">
												<a data-fancybox="" data-src="#user-profile-popup"
													href="javascript:;" class="pull-left avatar-container"><img
													src="http://dungmori.com/assets/img/dmr-square-logo.png"
													class="avatar"> <i class="zmdi zmdi-check-circle"></i></a>
												<!---->
												<div class="comment-content">
													<p class="child-name">
														<b data-fancybox="" data-src="#user-profile-popup"
															href="javascript:;" class="red">Dũng Mori </b>
														<!---->
														<span>Cố gắng những bài test sau em nhé.</span>
													</p>
													<p class="child-comment-action">
														<span class="time">01/10/2018 10:23</span>
													</p>
												</div>
												<!---->
											</div>
											<!---->
										</div>
									</div>
								</div> <!---->
							</li>
							<li id="cmt-item-38315" class="comment-item">
								<!----> <a data-fancybox="" data-src="#user-profile-popup"
								href="javascript:;" class="pull-left avatar-container">
									<!----> <img
									src="http://dungmori.com/cdn/avatar/small/1537256936_126832530_df4ca5_f1c0ee.jpeg"
									class="avatar">
							</a>
								<div class="comment-content">
									<p class="name">
										<!---->
										<b data-fancybox="" data-src="#user-profile-popup"
											href="javascript:;" class="red"> Lotus </b> <span>Thầy
											ơi sao em làm mấy lần, đáp án khác nhau mà đều đươc 25/30 ý,
											và làm ở laptop thì xem đáp án ở đâu vậy ạ?</span>
									</p>
									<p class="comment-action">
										<span data-toggle="collapse" id="answer-reply-38315"
											href="#reply-38315" aria-expanded="false"
											aria-controls="reply-38315" class="answer">Trả lời</span> • <span
											class="time">27/09/2018 18:18</span>
									</p>
									<div class="reply-container">
										<a role="button" data-toggle="collapse" href="#reply-38315"
											aria-expanded="false" aria-controls="reply-38315"
											class="load-more-reply"><i class="zmdi zmdi-comments"></i>
											1 phản hồi </a>
										<div id="reply-38315" class="collapse">
											<div id="reply-item-38369" class="child-comment-item">
												<a data-fancybox="" data-src="#user-profile-popup"
													href="javascript:;" class="pull-left avatar-container"><img
													src="http://dungmori.com/assets/img/dmr-square-logo.png"
													class="avatar"> <i class="zmdi zmdi-check-circle"></i></a>
												<!---->
												<div class="comment-content">
													<p class="child-name">
														<b data-fancybox="" data-src="#user-profile-popup"
															href="javascript:;" class="red">Dũng Mori </b>
														<!---->
														<span>Vì làm sai 5 câu nên chỉ được 25/30 đó em :D<br>Sau
															khi Nộp bài xong, em kéo xuống bên dưới, sau đó sẽ nhìn
															thấy phần Kết quả các bài kiểm tra đã làm -&gt; sau đó ấn
															chọn XEM BÀI LÀM ~ là có thể xem được bài vừa làm của
															mình em nhé.<br>Hoặc em có thể vào phần KHÓA HỌC CỦA
															TÔI, sau đó ấn vào mục KẾT QUẢ KIỂM TRA ~ là sẽ xem được
															bài làm của mình em nhé. <br>
														<a href="http://dungmori.com/account/courses/test"
															target="_blank">http://dungmori.com/account/courses/test</a></span>
													</p>
													<p class="child-comment-action">
														<span class="time">28/09/2018 09:00</span>
													</p>
												</div>
												<!---->
											</div>
											<!---->
										</div>
									</div>
								</div> <!---->
							</li>
							<li id="cmt-item-37591" class="comment-item">
								<!----> <a data-fancybox="" data-src="#user-profile-popup"
								href="javascript:;" class="pull-left avatar-container">
									<!----> <img
									src="http://dungmori.com/cdn/avatar/small/1528116454_419199165_0cfcc4_63a561.jpeg"
									class="avatar">
							</a>
								<div class="comment-content">
									<p class="name">
										<!---->
										<b data-fancybox="" data-src="#user-profile-popup"
											href="javascript:;" class="red"> Thanh hang </b> <span>29/30</span>
									</p>
									<p class="comment-action">
										<span data-toggle="collapse" id="answer-reply-37591"
											href="#reply-37591" aria-expanded="false"
											aria-controls="reply-37591" class="answer">Trả lời</span> • <span
											class="time">21/09/2018 11:17</span>
									</p>
									<div class="reply-container">
										<a role="button" data-toggle="collapse" href="#reply-37591"
											aria-expanded="false" aria-controls="reply-37591"
											class="load-more-reply"><i class="zmdi zmdi-comments"></i>
											1 phản hồi </a>
										<div id="reply-37591" class="collapse">
											<div id="reply-item-37604" class="child-comment-item">
												<a data-fancybox="" data-src="#user-profile-popup"
													href="javascript:;" class="pull-left avatar-container"><img
													src="http://dungmori.com/assets/img/dmr-square-logo.png"
													class="avatar"> <i class="zmdi zmdi-check-circle"></i></a>
												<!---->
												<div class="comment-content">
													<p class="child-name">
														<b data-fancybox="" data-src="#user-profile-popup"
															href="javascript:;" class="red">Dũng Mori </b>
														<!---->
														<span>Cố gắng những bài test sau nhé.</span>
													</p>
													<p class="child-comment-action">
														<span class="time">21/09/2018 13:31</span>
													</p>
												</div>
												<!---->
											</div>
											<!---->
										</div>
									</div>
								</div> <!---->
							</li>
							<li id="cmt-item-35980" class="comment-item">
								<!----> <a data-fancybox="" data-src="#user-profile-popup"
								href="javascript:;" class="pull-left avatar-container"><img
									src="http://dungmori.com/assets/img/default-avatar.jpg"
									class="avatar"> <!----></a>
								<div class="comment-content">
									<p class="name">
										<!---->
										<b data-fancybox="" data-src="#user-profile-popup"
											href="javascript:;" class="red"> Nguyễn Thân Phi Hùng </b> <span>sao
											e sai 1 câu mà chỉ 28/30</span>
									</p>
									<p class="comment-action">
										<span data-toggle="collapse" id="answer-reply-35980"
											href="#reply-35980" aria-expanded="false"
											aria-controls="reply-35980" class="answer">Trả lời</span> • <span
											class="time">09/09/2018 16:28</span>
									</p>
									<div class="reply-container">
										<a role="button" data-toggle="collapse" href="#reply-35980"
											aria-expanded="false" aria-controls="reply-35980"
											class="load-more-reply"><i class="zmdi zmdi-comments"></i>
											1 phản hồi </a>
										<div id="reply-35980" class="collapse">
											<div id="reply-item-36249" class="child-comment-item">
												<a data-fancybox="" data-src="#user-profile-popup"
													href="javascript:;" class="pull-left avatar-container"><img
													src="http://dungmori.com/assets/img/dmr-square-logo.png"
													class="avatar"> <i class="zmdi zmdi-check-circle"></i></a>
												<!---->
												<div class="comment-content">
													<p class="child-name">
														<b data-fancybox="" data-src="#user-profile-popup"
															href="javascript:;" class="red">Dũng Mori </b>
														<!---->
														<span>Thầy check trên hệ thống thì em chưa tick đáp
															áp của câu 4 em nhé</span>
													</p>
													<p class="child-comment-action">
														<span class="time">11/09/2018 11:21</span>
													</p>
												</div>
												<!---->
											</div>
											<!---->
										</div>
									</div>
								</div> <!---->
							</li>
							<li id="cmt-item-35443" class="comment-item">
								<!----> <a data-fancybox="" data-src="#user-profile-popup"
								href="javascript:;" class="pull-left avatar-container">
									<!----> <img
									src="http://dungmori.com/cdn/avatar/small/1527346011_345326685_4b30ac_eaaba2"
									class="avatar">
							</a>
								<div class="comment-content">
									<p class="name">
										<!---->
										<b data-fancybox="" data-src="#user-profile-popup"
											href="javascript:;" class="red"> Nguyen Thuy Duong </b> <span>２８・３０</span>
									</p>
									<p class="comment-action">
										<span data-toggle="collapse" id="answer-reply-35443"
											href="#reply-35443" aria-expanded="false"
											aria-controls="reply-35443" class="answer">Trả lời</span> • <span
											class="time">04/09/2018 23:02</span>
									</p>
									<div class="reply-container">
										<a role="button" data-toggle="collapse" href="#reply-35443"
											aria-expanded="false" aria-controls="reply-35443"
											class="load-more-reply"><i class="zmdi zmdi-comments"></i>
											1 phản hồi </a>
										<div id="reply-35443" class="collapse">
											<div id="reply-item-35471" class="child-comment-item">
												<a data-fancybox="" data-src="#user-profile-popup"
													href="javascript:;" class="pull-left avatar-container"><img
													src="http://dungmori.com/assets/img/dmr-square-logo.png"
													class="avatar"> <i class="zmdi zmdi-check-circle"></i></a>
												<!---->
												<div class="comment-content">
													<p class="child-name">
														<b data-fancybox="" data-src="#user-profile-popup"
															href="javascript:;" class="red">Dũng Mori </b>
														<!---->
														<span>cố gắng những bài test sau em nhé</span>
													</p>
													<p class="child-comment-action">
														<span class="time">05/09/2018 07:58</span>
													</p>
												</div>
												<!---->
											</div>
											<!---->
										</div>
									</div>
								</div> <!---->
							</li>
							<li id="cmt-item-34758" class="comment-item">
								<!----> <a data-fancybox="" data-src="#user-profile-popup"
								href="javascript:;" class="pull-left avatar-container">
									<!----> <img
									src="http://dungmori.com/cdn/avatar/small/1525330289_376818780_a1d053_2ae82a"
									class="avatar">
							</a>
								<div class="comment-content">
									<p class="name">
										<!---->
										<b data-fancybox="" data-src="#user-profile-popup"
											href="javascript:;" class="red"> Linh Trang </b> <span>28/30</span>
									</p>
									<p class="comment-action">
										<span data-toggle="collapse" id="answer-reply-34758"
											href="#reply-34758" aria-expanded="false"
											aria-controls="reply-34758" class="answer">Trả lời</span> • <span
											class="time">30/08/2018 08:07</span>
									</p>
									<div class="reply-container">
										<a role="button" data-toggle="collapse" href="#reply-34758"
											aria-expanded="false" aria-controls="reply-34758"
											class="load-more-reply"><i class="zmdi zmdi-comments"></i>
											1 phản hồi </a>
										<div id="reply-34758" class="collapse">
											<div id="reply-item-34760" class="child-comment-item">
												<a data-fancybox="" data-src="#user-profile-popup"
													href="javascript:;" class="pull-left avatar-container"><img
													src="http://dungmori.com/assets/img/dmr-square-logo.png"
													class="avatar"> <i class="zmdi zmdi-check-circle"></i></a>
												<!---->
												<div class="comment-content">
													<p class="child-name">
														<b data-fancybox="" data-src="#user-profile-popup"
															href="javascript:;" class="red">Dũng Mori </b>
														<!---->
														<span>Cố gắng những bài test sau nhé.</span>
													</p>
													<p class="child-comment-action">
														<span class="time">30/08/2018 08:10</span>
													</p>
												</div>
												<!---->
											</div>
											<!---->
										</div>
									</div>
								</div> <!---->
							</li>
							<li id="cmt-item-34547" class="comment-item">
								<!----> <a data-fancybox="" data-src="#user-profile-popup"
								href="javascript:;" class="pull-left avatar-container">
									<!----> <img
									src="http://dungmori.com/cdn/avatar/small/1527477939_415100625_fa08b9_44e669"
									class="avatar">
							</a>
								<div class="comment-content">
									<p class="name">
										<!---->
										<b data-fancybox="" data-src="#user-profile-popup"
											href="javascript:;" class="red"> Thâm Hanie </b> <span>30/30</span>
									</p>
									<p class="comment-action">
										<span data-toggle="collapse" id="answer-reply-34547"
											href="#reply-34547" aria-expanded="false"
											aria-controls="reply-34547" class="answer">Trả lời</span> • <span
											class="time">28/08/2018 17:31</span>
									</p>
									<div class="reply-container">
										<a role="button" data-toggle="collapse" href="#reply-34547"
											aria-expanded="false" aria-controls="reply-34547"
											class="load-more-reply"><i class="zmdi zmdi-comments"></i>
											1 phản hồi </a>
										<div id="reply-34547" class="collapse">
											<div id="reply-item-34636" class="child-comment-item">
												<a data-fancybox="" data-src="#user-profile-popup"
													href="javascript:;" class="pull-left avatar-container"><img
													src="http://dungmori.com/assets/img/dmr-square-logo.png"
													class="avatar"> <i class="zmdi zmdi-check-circle"></i></a>
												<!---->
												<div class="comment-content">
													<p class="child-name">
														<b data-fancybox="" data-src="#user-profile-popup"
															href="javascript:;" class="red">Dũng Mori </b>
														<!---->
														<span>Cố gắng những bài test sau em nhé.</span>
													</p>
													<p class="child-comment-action">
														<span class="time">29/08/2018 10:09</span>
													</p>
												</div>
												<!---->
											</div>
											<!---->
										</div>
									</div>
								</div> <!---->
							</li>
							<li id="cmt-item-34144" class="comment-item">
								<!----> <a data-fancybox="" data-src="#user-profile-popup"
								href="javascript:;" class="pull-left avatar-container">
									<!----> <img
									src="http://dungmori.com/cdn/avatar/small/1535801224_289132245_48bdd2_d9882b.jpeg"
									class="avatar">
							</a>
								<div class="comment-content">
									<p class="name">
										<!---->
										<b data-fancybox="" data-src="#user-profile-popup"
											href="javascript:;" class="red"> 日代 </b> <span>29/30 </span>
									</p>
									<p class="comment-action">
										<span data-toggle="collapse" id="answer-reply-34144"
											href="#reply-34144" aria-expanded="false"
											aria-controls="reply-34144" class="answer">Trả lời</span> • <span
											class="time">25/08/2018 10:46</span>
									</p>
									<div class="reply-container">
										<!---->
										<div id="reply-34144" class="collapse">
											<!---->
										</div>
									</div>
								</div> <!---->
							</li>
							<li id="cmt-item-32366" class="comment-item">
								<!----> <a data-fancybox="" data-src="#user-profile-popup"
								href="javascript:;" class="pull-left avatar-container"><img
									src="http://dungmori.com/assets/img/default-avatar.jpg"
									class="avatar"> <!----></a>
								<div class="comment-content">
									<p class="name">
										<!---->
										<b data-fancybox="" data-src="#user-profile-popup"
											href="javascript:;" class="red"> Nguyen Duc Ninh </b> <span>Thầy
											ơi,phần mềm hơi lỗi.sai 4 câu mà tổng điểm 25/30 ???</span>
									</p>
									<p class="comment-action">
										<span data-toggle="collapse" id="answer-reply-32366"
											href="#reply-32366" aria-expanded="false"
											aria-controls="reply-32366" class="answer">Trả lời</span> • <span
											class="time">02/08/2018 20:41</span>
									</p>
									<div class="reply-container">
										<a role="button" data-toggle="collapse" href="#reply-32366"
											aria-expanded="false" aria-controls="reply-32366"
											class="load-more-reply"><i class="zmdi zmdi-comments"></i>
											3 phản hồi </a>
										<div id="reply-32366" class="collapse">
											<div id="reply-item-32397" class="child-comment-item">
												<a data-fancybox="" data-src="#user-profile-popup"
													href="javascript:;" class="pull-left avatar-container"><img
													src="http://dungmori.com/assets/img/dmr-square-logo.png"
													class="avatar"> <i class="zmdi zmdi-check-circle"></i></a>
												<!---->
												<div class="comment-content">
													<p class="child-name">
														<b data-fancybox="" data-src="#user-profile-popup"
															href="javascript:;" class="red">Dũng Mori </b>
														<!---->
														<span>Thầy check lại các bài test của em thì em làm
															sai 4 câu: Câu 1 - câu 15 - câu 16 - câu 30 và chưa làm
															câu 24 - em nhé. <br>Sau khi làm bài test xong, em
															vui lòng xem kĩ lại kết quả các bài kiểm tra đã làm -
															nhé.
														</span>
													</p>
													<p class="child-comment-action">
														<span class="time">03/08/2018 08:38</span>
													</p>
												</div>
												<!---->
											</div>
											<div id="reply-item-32458" class="child-comment-item">
												<!---->
												<a data-fancybox="" data-src="#user-profile-popup"
													href="javascript:;" class="pull-left avatar-container"><img
													src="http://dungmori.com/assets/img/default-avatar.jpg"
													class="avatar"> <!----></a>
												<div class="comment-content">
													<p class="child-name">
														<!---->
														<b data-fancybox="" data-src="#user-profile-popup"
															href="javascript:;" class="red"> Nguyen Duc Ninh </b> <span>Vâng
															a,Thanks thầy nhiều !</span>
													</p>
													<p class="child-comment-action">
														<span class="time">03/08/2018 18:44</span>
													</p>
												</div>
												<!---->
											</div>
											<div id="reply-item-32548" class="child-comment-item">
												<a data-fancybox="" data-src="#user-profile-popup"
													href="javascript:;" class="pull-left avatar-container"><img
													src="http://dungmori.com/assets/img/dmr-square-logo.png"
													class="avatar"> <i class="zmdi zmdi-check-circle"></i></a>
												<!---->
												<div class="comment-content">
													<p class="child-name">
														<b data-fancybox="" data-src="#user-profile-popup"
															href="javascript:;" class="red">Dũng Mori </b>
														<!---->
														<span>Ok em nhé</span>
													</p>
													<p class="child-comment-action">
														<span class="time">06/08/2018 09:08</span>
													</p>
												</div>
												<!---->
											</div>
											<!---->
										</div>
									</div>
								</div> <!---->
							</li>
							<li id="cmt-item-32346" class="comment-item">
								<!----> <a data-fancybox="" data-src="#user-profile-popup"
								href="javascript:;" class="pull-left avatar-container">
									<!----> <img
									src="http://dungmori.com/cdn/avatar/small/1532621255_449901180_848aac_121d1c.jpeg"
									class="avatar">
							</a>
								<div class="comment-content">
									<p class="name">
										<!---->
										<b data-fancybox="" data-src="#user-profile-popup"
											href="javascript:;" class="red"> Nguyễn Phạm Hoàng Vương
										</b> <span>28/30 :))</span>
									</p>
									<p class="comment-action">
										<span data-toggle="collapse" id="answer-reply-32346"
											href="#reply-32346" aria-expanded="false"
											aria-controls="reply-32346" class="answer">Trả lời</span> • <span
											class="time">02/08/2018 15:24</span>
									</p>
									<div class="reply-container">
										<!---->
										<div id="reply-32346" class="collapse">
											<!---->
										</div>
									</div>
								</div> <!---->
							</li>
							<li id="cmt-item-31877" class="comment-item">
								<!----> <a data-fancybox="" data-src="#user-profile-popup"
								href="javascript:;" class="pull-left avatar-container">
									<!----> <img
									src="http://dungmori.com/cdn/avatar/small/1531498039_442247280_5027a4_3865c3.jpeg"
									class="avatar">
							</a>
								<div class="comment-content">
									<p class="name">
										<!---->
										<b data-fancybox="" data-src="#user-profile-popup"
											href="javascript:;" class="red"> Lê Kim Bình </b> <span>28/30,
											lần sau em phải cố gắng hơn nữa mới được</span>
									</p>
									<p class="comment-action">
										<span data-toggle="collapse" id="answer-reply-31877"
											href="#reply-31877" aria-expanded="false"
											aria-controls="reply-31877" class="answer">Trả lời</span> • <span
											class="time">27/07/2018 04:48</span>
									</p>
									<div class="reply-container">
										<a role="button" data-toggle="collapse" href="#reply-31877"
											aria-expanded="false" aria-controls="reply-31877"
											class="load-more-reply"><i class="zmdi zmdi-comments"></i>
											1 phản hồi </a>
										<div id="reply-31877" class="collapse">
											<div id="reply-item-31902" class="child-comment-item">
												<a data-fancybox="" data-src="#user-profile-popup"
													href="javascript:;" class="pull-left avatar-container"><img
													src="http://dungmori.com/assets/img/dmr-square-logo.png"
													class="avatar"> <i class="zmdi zmdi-check-circle"></i></a>
												<!---->
												<div class="comment-content">
													<p class="child-name">
														<b data-fancybox="" data-src="#user-profile-popup"
															href="javascript:;" class="red">Dũng Mori </b>
														<!---->
														<span>Cố gắng em nhé.</span>
													</p>
													<p class="child-comment-action">
														<span class="time">27/07/2018 15:28</span>
													</p>
												</div>
												<!---->
											</div>
											<!---->
										</div>
									</div>
								</div> <!---->
							</li>
							<li id="cmt-item-31312" class="comment-item">
								<!----> <a data-fancybox="" data-src="#user-profile-popup"
								href="javascript:;" class="pull-left avatar-container">
									<!----> <img
									src="http://dungmori.com/cdn/avatar/small/1531483115_442099140_5f3df1_9c8370"
									class="avatar">
							</a>
								<div class="comment-content">
									<p class="name">
										<!---->
										<b data-fancybox="" data-src="#user-profile-popup"
											href="javascript:;" class="red"> Đào Thị Tuyến </b> <span>thay
											oi xem bai ho em voi</span>
									</p>
									<p class="comment-action">
										<span data-toggle="collapse" id="answer-reply-31312"
											href="#reply-31312" aria-expanded="false"
											aria-controls="reply-31312" class="answer">Trả lời</span> • <span
											class="time">18/07/2018 20:56</span>
									</p>
									<div class="reply-container">
										<a role="button" data-toggle="collapse" href="#reply-31312"
											aria-expanded="false" aria-controls="reply-31312"
											class="load-more-reply"><i class="zmdi zmdi-comments"></i>
											1 phản hồi </a>
										<div id="reply-31312" class="collapse">
											<div id="reply-item-31336" class="child-comment-item">
												<a data-fancybox="" data-src="#user-profile-popup"
													href="javascript:;" class="pull-left avatar-container"><img
													src="http://dungmori.com/assets/img/dmr-square-logo.png"
													class="avatar"> <i class="zmdi zmdi-check-circle"></i></a>
												<!---->
												<div class="comment-content">
													<p class="child-name">
														<b data-fancybox="" data-src="#user-profile-popup"
															href="javascript:;" class="red">Dũng Mori </b>
														<!---->
														<span>Sau khi ấn NỘP BÀI, em vui lòng kéo xuống
															phần KẾT QUẢ CÁC BÀI KIỂM TRA ĐÃ LÀM -&gt; click chọn XEM
															BÀI LÀM ~ để xem lại bài test mình vừa làm - bị sai ở đâu
															hoặc bị thiếu câu nào em nhé.</span>
													</p>
													<p class="child-comment-action">
														<span class="time">19/07/2018 07:35</span>
													</p>
												</div>
												<!---->
											</div>
											<!---->
										</div>
									</div>
								</div> <!---->
							</li>
							<li id="cmt-item-30860" class="comment-item">
								<!----> <a data-fancybox="" data-src="#user-profile-popup"
								href="javascript:;" class="pull-left avatar-container">
									<!----> <img
									src="http://dungmori.com/cdn/avatar/small/1531215243_439951110_3d7a25_971f3f"
									class="avatar">
							</a>
								<div class="comment-content">
									<p class="name">
										<!---->
										<b data-fancybox="" data-src="#user-profile-popup"
											href="javascript:;" class="red"> 月月 </b> <span>Ss ơi e
											hok chữ hán,e hok cả âm on và kun,e nhớ cũng ok lắm!nhưng ra
											ghép từ e cứ bị lộn trường âm!e chỉ dc 24/30 thôi!ss ơi làm
											thế nào để nhớ chắc âm on và kun ah!e cám ơn ss</span>
									</p>
									<p class="comment-action">
										<span data-toggle="collapse" id="answer-reply-30860"
											href="#reply-30860" aria-expanded="false"
											aria-controls="reply-30860" class="answer">Trả lời</span> • <span
											class="time">12/07/2018 21:19</span>
									</p>
									<div class="reply-container">
										<a role="button" data-toggle="collapse" href="#reply-30860"
											aria-expanded="false" aria-controls="reply-30860"
											class="load-more-reply"><i class="zmdi zmdi-comments"></i>
											3 phản hồi </a>
										<div id="reply-30860" class="collapse">
											<div id="reply-item-30906" class="child-comment-item">
												<a data-fancybox="" data-src="#user-profile-popup"
													href="javascript:;" class="pull-left avatar-container"><img
													src="http://dungmori.com/assets/img/dmr-square-logo.png"
													class="avatar"> <i class="zmdi zmdi-check-circle"></i></a>
												<!---->
												<div class="comment-content">
													<p class="child-name">
														<b data-fancybox="" data-src="#user-profile-popup"
															href="javascript:;" class="red">Dũng Mori </b>
														<!---->
														<span>Chào em, âm kun thì không có nhiều chắc hẳn
															là không có gì quá khó khăn phải không em, về âm ôn để
															nhớ chắc em hãy học nhiều từ ghép liên quan tới chữ hãn
															đó em nhé. Chúc em học tốt</span>
													</p>
													<p class="child-comment-action">
														<span class="time">13/07/2018 09:30</span>
													</p>
												</div>
												<!---->
											</div>
											<div id="reply-item-30945" class="child-comment-item">
												<!---->
												<a data-fancybox="" data-src="#user-profile-popup"
													href="javascript:;" class="pull-left avatar-container">
													<!----> <img
													src="http://dungmori.com/cdn/avatar/small/1531215243_439951110_3d7a25_971f3f"
													class="avatar">
												</a>
												<div class="comment-content">
													<p class="child-name">
														<!---->
														<b data-fancybox="" data-src="#user-profile-popup"
															href="javascript:;" class="red"> 月月 </b> <span>Dạ
															e cám ơn ss ah</span>
													</p>
													<p class="child-comment-action">
														<span class="time">13/07/2018 18:40</span>
													</p>
												</div>
												<!---->
											</div>
											<div id="reply-item-31062" class="child-comment-item">
												<a data-fancybox="" data-src="#user-profile-popup"
													href="javascript:;" class="pull-left avatar-container"><img
													src="http://dungmori.com/assets/img/dmr-square-logo.png"
													class="avatar"> <i class="zmdi zmdi-check-circle"></i></a>
												<!---->
												<div class="comment-content">
													<p class="child-name">
														<b data-fancybox="" data-src="#user-profile-popup"
															href="javascript:;" class="red">Dũng Mori </b>
														<!---->
														<span>Ok em nhé.</span>
													</p>
													<p class="child-comment-action">
														<span class="time">16/07/2018 09:06</span>
													</p>
												</div>
												<!---->
											</div>
											<!---->
										</div>
									</div>
								</div> <!---->
							</li>
							<li id="cmt-item-29772" class="comment-item">
								<!----> <a data-fancybox="" data-src="#user-profile-popup"
								href="javascript:;" class="pull-left avatar-container">
									<!----> <img
									src="http://dungmori.com/cdn/avatar/small/1530880603_408446670_93b023_0eafd4.jpeg"
									class="avatar">
							</a>
								<div class="comment-content">
									<p class="name">
										<!---->
										<b data-fancybox="" data-src="#user-profile-popup"
											href="javascript:;" class="red"> Josheph Nguyễn </b> <span>Thầy
											ơi<br>Từ câu 26 trở đi chữ hán ấy em không thấy trong
											bài giảng 1.1 đâu thầy
										</span>
									</p>
									<p class="comment-action">
										<span data-toggle="collapse" id="answer-reply-29772"
											href="#reply-29772" aria-expanded="false"
											aria-controls="reply-29772" class="answer">Trả lời</span> • <span
											class="time">30/06/2018 20:26</span>
									</p>
									<div class="reply-container">
										<a role="button" data-toggle="collapse" href="#reply-29772"
											aria-expanded="false" aria-controls="reply-29772"
											class="load-more-reply"><i class="zmdi zmdi-comments"></i>
											3 phản hồi </a>
										<div id="reply-29772" class="collapse">
											<div id="reply-item-29854" class="child-comment-item">
												<a data-fancybox="" data-src="#user-profile-popup"
													href="javascript:;" class="pull-left avatar-container"><img
													src="http://dungmori.com/assets/img/dmr-square-logo.png"
													class="avatar"> <i class="zmdi zmdi-check-circle"></i></a>
												<!---->
												<div class="comment-content">
													<p class="child-name">
														<b data-fancybox="" data-src="#user-profile-popup"
															href="javascript:;" class="red">Dũng Mori </b>
														<!---->
														<span>Bên thầy có trộn lẫn các câu trong cả bài
															1.1. và 1.2 em nhé ~</span>
													</p>
													<p class="child-comment-action">
														<span class="time">02/07/2018 08:50</span>
													</p>
												</div>
												<!---->
											</div>
											<div id="reply-item-30161" class="child-comment-item">
												<!---->
												<a data-fancybox="" data-src="#user-profile-popup"
													href="javascript:;" class="pull-left avatar-container">
													<!----> <img
													src="http://dungmori.com/cdn/avatar/small/1530880603_408446670_93b023_0eafd4.jpeg"
													class="avatar">
												</a>
												<div class="comment-content">
													<p class="child-name">
														<!---->
														<b data-fancybox="" data-src="#user-profile-popup"
															href="javascript:;" class="red"> Josheph Nguyễn </b> <span>Dạ
															vâng ạ<br>Em cảm ơn thầy
														</span>
													</p>
													<p class="child-comment-action">
														<span class="time">04/07/2018 20:12</span>
													</p>
												</div>
												<!---->
											</div>
											<div id="reply-item-30196" class="child-comment-item">
												<a data-fancybox="" data-src="#user-profile-popup"
													href="javascript:;" class="pull-left avatar-container"><img
													src="http://dungmori.com/assets/img/dmr-square-logo.png"
													class="avatar"> <i class="zmdi zmdi-check-circle"></i></a>
												<!---->
												<div class="comment-content">
													<p class="child-name">
														<b data-fancybox="" data-src="#user-profile-popup"
															href="javascript:;" class="red">Dũng Mori </b>
														<!---->
														<span>Ok em nhé.</span>
													</p>
													<p class="child-comment-action">
														<span class="time">05/07/2018 08:49</span>
													</p>
												</div>
												<!---->
											</div>
											<!---->
										</div>
									</div>
								</div> <!---->
							</li>
							<div class="load-more-comment">
								<span>Tải thêm bình luận</span> <img
									src="http://dungmori.com/assets/img/loading.gif"
									class="loading-icon" style="display: none;">
							</div>
							<!---->
							<div id="user-profile-popup" class="user-profile-popup"
								style="display: none;">
								<div class="user-profile-container">
									<div class="loading-circle" style="margin-top: 150px;"></div>
								</div>
								<!---->
							</div>
						</div>
					</div>
					<div id="facebook-comment-content" class="tab-pane fade">
						<div data-width="100%"
							data-href="http://dungmori.com/khoa-hoc/khoa-n3/1432-test-1a-1"
							data-numposts="8"
							class="fb-comments fb_iframe_widget fb_iframe_widget_fluid"
							fb-xfbml-state="rendered">
							<span style="height: 809px;"><iframe id="f3667ba833e5d4c"
									name="f353b2c84ec0374" scrolling="no"
									title="Facebook Social Plugin" class="fb_ltr"
									src="https://www.facebook.com/plugins/comments.php?api_key=1548366118800829&amp;channel_url=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter%2Fr%2FtrnHszv6jVd.js%3Fversion%3D42%23cb%3Df2961162a59b0bc%26domain%3Ddungmori.com%26origin%3Dhttp%253A%252F%252Fdungmori.com%252Ff194956b9163164%26relation%3Dparent.parent&amp;href=http%3A%2F%2Fdungmori.com%2Fkhoa-hoc%2Fkhoa-n3%2F1432-test-1a-1&amp;locale=vi_VN&amp;numposts=8&amp;sdk=joey&amp;version=v2.11&amp;width=100%25"
									style="border: none; overflow: hidden; height: 809px; width: 100%;"></iframe></span>
						</div>
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
					<c:forEach items="${courseIlmTypeList}" var="courseIlmType"
						varStatus="index">
						<c:set value="${courseIlmType.getCourseIlmTypeId()}" var="nh"></c:set>
						<%
							String course = (String) pageContext.getAttribute("nh");
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
												CourseIlmService courseIlmService = new CourseIlmService();
												for (CourseIlm courseIlm : courseList) {
										%>
										<li class="lesson-item"><a
											class="lesson-item-click lesson-item" id="lesson-item"
											href="javascript:void(0);"
											data-id="<%=courseIlm.getCourseIlmId()%>"
											url="${contextPath}/khoa-hoc/<%=courseIlmService.toUrlFriendly(courseName) %>/<%=courseIlm.getCourseIlmId().substring(courseIlm.getCourseIlmId().length()-3, courseIlm.getCourseIlmId().length())%>-<%=courseIlmService.toUrlFriendly(courseIlm.getLessonName()) %>"
											style="padding-right: 70px;"><%=courseIlm.getLessonName()%></a></li>

										<%
											// 										if(courseIlm.getExams() != null)
													for (Exam exam : courseIlm.getExams()) {
										%>
										<li class="test-item" id="<%=courseIlm.getLessonName()%>"><a
											onclick="showCourseDetail(this.id)" class="test-item"
											id="test-item"
											href="${contextPath}/khoa-hoc/<%=courseIlmService.toUrlFriendly(courseName) %>/t<%=exam.getExamId().substring(exam.getExamId().length()-3, exam.getExamId().length())%>-<%=courseIlmService.toUrlFriendly(exam.getExamName()) %>"
											style="padding-right: 70px;"><%=courseIlm.getLessonName()%></a></li>
										<%
											}

												}
										%>
									</ul>

								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	$(".lesson-item-click")
			.click(
					function(e) {
						e.preventDefault();
						var id = $(this).attr("data-id");
						var url = $(this).attr("url") + "?id=" + id;
						$
								.ajax({
									url : url,
									contentType : "application/json;charset=utf-8",
									success : function(obj) {
										console.log(obj);
										// 										obj = JSON.parse(result);
										console.log(obj.lessonName);
										document
												.getElementById('course-heading').innerHTML = obj.lessonName;
										document.getElementById('introduce').innerHTML = obj.introduce;
										document.getElementById('videoImg').src = "${contextPath}/resources/img/"
												+ "Bảng chữ cái Tiếng Nhật.jpg";
										document.getElementById('srVideo').src = "${contextPath}/reponsitory/N5/"
												+ obj.locaFileCourse;
										var video = document
												.getElementById('cVideo');
										video.load();
										$(".movie-play")
												.css("display", "block");
										$("#iframe-video").css("display",
												"none");
									},
									error : function(e) {
										alert("Sorry! Dữ liệu lỗi.");
									}
								});
					});
</script>
<div class="go-top">
	<i class="fa fa-sort-asc"></i>
</div>
</div>
</body>
</html>