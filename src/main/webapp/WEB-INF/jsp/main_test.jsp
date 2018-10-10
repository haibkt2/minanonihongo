<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="vi">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
</head>
<body>
	<div id="application">

		<div class="main">
			<div class="main-center main-course">
				<div class="main-left">
					<h2 class="lesson-detail-title">
						<a href="http://dungmori.com/khoa-hoc/khoa-n3">Khóa học N3</a>
						&nbsp; <i class="zmdi zmdi-caret-right"></i> &nbsp; <b>Test 1A</b>
					</h2>
					<p style="width: 100%; float: left; margin: 5px 0 0px;">
						<i class="zmdi zmdi-time-countdown"></i> <b>8217</b> Lượt xem
					</p>
					<div class="cover-container">
						<div class="lesson-content-detail" id="lesson-content-detail">
							<div style="margin-top: 25px; display: inline-block;"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27392" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27392</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27392" name="task12578"> <span
										style="display: none;">1</span>&nbsp;&nbsp;しょうかい
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27393" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27393</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27393" name="task12578"> <span
										style="display: none;">0</span>&nbsp;&nbsp;しょかい
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27390" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27390</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27390" name="task12577"> <span
										style="display: none;">1</span>&nbsp;&nbsp;ちゅうかいりょう
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27391" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27391</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27391" name="task12577"
										v-on:change="storeValueToLocal(12577,27391)"> <span
										style="display: none;">0</span>&nbsp;&nbsp;ちゅうがいりょう
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27394" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27394</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27394" name="task12579"> <span
										style="display: none;">1</span>&nbsp;&nbsp;だいきん
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27395" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27395</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27395" name="task12579"> <span
										style="display: none;">0</span>&nbsp;&nbsp;たいぎん
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27396" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27396</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27396" name="task12580"> <span
										style="display: none;">1</span>&nbsp;&nbsp;だいり
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27397" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27397</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27397" name="task12580"> <span
										style="display: none;">0</span>&nbsp;&nbsp;たいり
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27398" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27398</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27398" name="task12581"> <span
										style="display: none;">1</span>&nbsp;&nbsp;じだい
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27399" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27399</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27399" name="task12581"> <span
										style="display: none;">0</span>&nbsp;&nbsp;じたい
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27400" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27400</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27400" name="task12582"> <span
										style="display: none;">0</span>&nbsp;&nbsp;としだい
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27401" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27401</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27401" name="task12582"> <span
										style="display: none;">1</span>&nbsp;&nbsp;ねんだい
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27402" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27402</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27402" name="task12583"> <span
										style="display: none;">1</span>&nbsp;&nbsp;しょくじだい、ホテルだい
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27403" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27403</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27403" name="task12583"> <span
										style="display: none;">0</span>&nbsp;&nbsp;しょくじひ、ホテルひ
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27404" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27404</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27404" name="task12584"> <span
										style="display: none;">0</span>&nbsp;&nbsp;いこ
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27405" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27405</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27405" name="task12584"> <span
										style="display: none;">1</span>&nbsp;&nbsp;いご
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27406" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27406</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27406" name="task12585"> <span
										style="display: none;">0</span>&nbsp;&nbsp;いが
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27407" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27407</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27407" name="task12585"> <span
										style="display: none;">1</span>&nbsp;&nbsp;いか
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27408" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27408</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27408" name="task12586"> <span
										style="display: none;">1</span>&nbsp;&nbsp;いじょう
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27409" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27409</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27409" name="task12586"> <span
										style="display: none;">0</span>&nbsp;&nbsp;いしょう
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27410" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27410</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27410" name="task12587"> <span
										style="display: none;">1</span>&nbsp;&nbsp;しごと
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27411" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27411</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27411" name="task12587"> <span
										style="display: none;">0</span>&nbsp;&nbsp;じごと
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27412" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27412</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27412" name="task12588"> <span
										style="display: none;">1</span>&nbsp;&nbsp;しかたがない
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27413" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27413</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27413" name="task12588"> <span
										style="display: none;">0</span>&nbsp;&nbsp;しがたがない
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27414" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27414</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27414" name="task12589"> <span
										style="display: none;">0</span>&nbsp;&nbsp;じおくり
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27415" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27415</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27415" name="task12589"> <span
										style="display: none;">1</span>&nbsp;&nbsp;しおくり
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27416" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27416</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27416" name="task12590"> <span
										style="display: none;">0</span>&nbsp;&nbsp;ませた
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27417" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27417</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27417" name="task12590"> <span
										style="display: none;">1</span>&nbsp;&nbsp;まかせた
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27418" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27418</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27418" name="task12591"> <span
										style="display: none;">1</span>&nbsp;&nbsp;じにん
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27419" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27419</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27419" name="task12591"> <span
										style="display: none;">0</span>&nbsp;&nbsp;せにん
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"
								v-html="tasks[15].value"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27420" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27420</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27420" name="task12592"> <span
										style="display: none;">0</span>&nbsp;&nbsp;だんにん
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27421" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27421</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27421" name="task12592"> <span
										style="display: none;">1</span>&nbsp;&nbsp;たんにん
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"
								v-html="tasks[16].value"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27422" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27422</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27422" name="task12593"> <span
										style="display: none;">1</span>&nbsp;&nbsp;すぐれている
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27423" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27423</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27423" name="task12593"> <span
										style="display: none;">0</span>&nbsp;&nbsp;まされている
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27424" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27424</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27424" name="task12594"> <span
										style="display: none;">0</span>&nbsp;&nbsp;かなしい
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27425" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27425</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27425" name="task12594"> <span
										style="display: none;">1</span>&nbsp;&nbsp;やさしい
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27426" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27426</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27426" name="task12595"> <span
										style="display: none;">1</span>&nbsp;&nbsp;ゆうせん
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27427" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27427</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27427" name="task12595"> <span
										style="display: none;">0</span>&nbsp;&nbsp;ゆうぜん
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27428" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27428</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27428" name="task12596"> <span
										style="display: none;">0</span>&nbsp;&nbsp;ゆうしょ
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27429" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27429</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27429" name="task12596"
										v-on:change="storeValueToLocal(12596,27429)"> <span
										style="display: none;">1</span>&nbsp;&nbsp;ゆうしょう
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"
								v-html="tasks[20].value"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27430" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27430</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27430" name="task12597"
										change="storeValueToLocal(12597,27430)"> <span
										style="display: none;">1</span>&nbsp;&nbsp;しんごう
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27431" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27431</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27431" name="task12597"
										v-on:change="storeValueToLocal(12597,27431)"> <span
										style="display: none;">0</span>&nbsp;&nbsp;しんこう
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"
								v-html="tasks[21].value"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27432" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27432</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27432" name="task12598"
										v-on:change="storeValueToLocal(12598,27432)"> <span
										style="display: none;">0</span>&nbsp;&nbsp;じゅじられない
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27433" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27433</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27433" name="task12598"
										v-on:change="storeValueToLocal(12598,27433)"> <span
										style="display: none;">1</span>&nbsp;&nbsp;しんじられない
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"
								v-html="tasks[22].value"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27434" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27434</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27434" name="task12599"
										v-on:change="storeValueToLocal(12599,27434)"> <span
										style="display: none;">1</span>&nbsp;&nbsp;しんよう
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27435" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27435</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27435" name="task12599"
										v-on:change="storeValueToLocal(12599,27435)"> <span
										style="display: none;">0</span>&nbsp;&nbsp;しよう
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"
								v-html="tasks[23].value"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27436" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27436</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27436" name="task12600"
										v-on:change="storeValueToLocal(12600,27436)"> <span
										style="display: none;">0</span>&nbsp;&nbsp;しんざい
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27437" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27437</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27437" name="task12600"
										v-on:change="storeValueToLocal(12600,27437)"> <span
										style="display: none;">1</span>&nbsp;&nbsp;しんらい
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"
								v-html="tasks[24].value"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27438" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27438</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27438" name="task12601"
										v-on:change="storeValueToLocal(12601,27438)"> <span
										style="display: none;">1</span>&nbsp;&nbsp;つたえる
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27439" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27439</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27439" name="task12601"
										v-on:change="storeValueToLocal(12601,27439)"> <span
										style="display: none;">0</span>&nbsp;&nbsp;あたえる
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"
								v-html="tasks[25].value"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27440" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27440</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27440" name="task12602"
										v-on:change="storeValueToLocal(12602,27440)"> <span
										style="display: none;">1</span>&nbsp;&nbsp;ぶっけん
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27441" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27441</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27441" name="task12602"
										v-on:change="storeValueToLocal(12602,27441)"> <span
										style="display: none;">0</span>&nbsp;&nbsp;ふっけん
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"
								v-html="tasks[26].value"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27442" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27442</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27442" name="task12603"
										v-on:change="storeValueToLocal(12603,27442)"> <span
										style="display: none;">0</span>&nbsp;&nbsp;けんずう
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27443" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27443</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27443" name="task12603"
										v-on:change="storeValueToLocal(12603,27443)"> <span
										style="display: none;">1</span>&nbsp;&nbsp;けんすう
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"
								v-html="tasks[27].value"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27444" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27444</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27444" name="task12604"
										v-on:change="storeValueToLocal(12604,27444)"> <span
										style="display: none;">1</span>&nbsp;&nbsp;かたづける
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27445" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27445</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27445" name="task12604"
										v-on:change="storeValueToLocal(12604,27445)"> <span
										style="display: none;">0</span>&nbsp;&nbsp;かたずける
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"
								v-html="tasks[28].value"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27446" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27446</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27446" name="task12605"
										v-on:change="storeValueToLocal(12605,27446)"> <span
										style="display: none;">1</span>&nbsp;&nbsp;インクがついて
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27447" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27447</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27447" name="task12605"
										v-on:change="storeValueToLocal(12605,27447)"> <span
										style="display: none;">0</span>&nbsp;&nbsp;インクがづいて
									</label>
								</div>
							</div>
							<div style="margin-top: 25px; display: inline-block;"
								v-html="tasks[29].value"></div>
							<div
								style="width: 100%; flex-wrap: wrap; display: flex; -webkit-box-pack: justify;">
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27448" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27448</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27448" name="task12606"
										v-on:change="storeValueToLocal(12606,27448)"> <span
										style="display: none;">0</span>&nbsp;&nbsp;みにづける
									</label>
								</div>
								<div style="width: 48%; margin-top: 10px;">
									<label for="answer27449" class="col-md-11 answers-input"
										style="font-weight: normal; font-size: 13px; color: gray">
										<span style="display: none;">27449</span> <input type="radio"
										class="custom-control-input col-md-1 answers-input"
										id="answer27449" name="task12606"
										v-on:change="storeValueToLocal(12606,27449)"> <span
										style="display: none;">1</span>&nbsp;&nbsp;みにつける
									</label>
								</div>
							</div>
							<button class="btn btn-primary trac-nghiem"
								v-on:click="sendTestResult('no-auth', 0)">Nộp bài</button>

							<hr style="border: 0; border-bottom: 1px solid #ddd;">
							<div class="alert mt20" id="result" style="display: none;">
								<div v-if="results.length > 0">
									<h4>Kết quả các bài kiểm tra đã làm</h4>
									<hr>
									<div class="alert" v-for="(result, index) in results"
										v-bind:class="[result.passed == 0 ? 'bg-warning' : 'bg-success']"
										style="font-size: 14px">
										<p>
											Thời gian thực hiện lúc <b>{{ printTime(result.created)
												}}</b> ngày <b>{{ printDate(result.created) }}</b>
										</p>
										<p>
											Tổng điểm: <b>{{ result.grade }} / {{ result.total_marks
												}}</b>
										</p>
										<p>
											Kết quả: <b v-if="result.passed == 0">Không đạt yêu cầu</b><b
												v-if="result.passed != 0">Đã qua</b>
										</p>
										<button class="btn btn-info review-result" data-toggle="modal"
											data-target="#myModal" v-on:click="reviewTestResult(index)">Xem
											bài làm</button>
										<button class="btn btn-warning remove-result"
											data-toggle="modal" data-target="#removeResult"
											v-on:click="removeTestResult(index)">Xóa</button>
									</div>
								</div>
							</div>

							<div class="modal fade" id="empty_answers" role="dialog"
								tabindex="-1">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Lưu ý</h4>
										</div>
										<div class="modal-body">
											<div class="alert alert-danger">
												<i class="fa fa-tags"></i>&nbspBạn chưa nhập câu trả lời.
												Vui lòng trả lời rồi mới nộp bài thi.
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-info"
												data-dismiss="modal">Đóng</button>
										</div>
									</div>

								</div>
							</div>

							<div class="modal fade" id="removeResult" role="dialog"
								tabindex="-1">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Xóa</h4>
										</div>
										<div class="modal-body">
											<p>Bạn có muốn xóa bài kiểm tra này không?</p>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-warning"
												v-on:click="confirmRemove()">Xóa</button>
											<button type="button" class="btn btn-info"
												data-dismiss="modal">Đóng</button>
										</div>
									</div>

								</div>
							</div>

							<div class="modal fade" id="myMessage" role="dialog"
								tabindex="-1">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Thông báo</h4>
										</div>
										<div class="modal-body">
											<div class="alert alert-info">
												<i class="fa fa-tags"></i>&nbsp;Bạn được {{ userScore }} /
												{{ lesson.total_marks }} điểm.
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" data-dismiss="modal"
												class="btn btn-primary">&nbsp;&nbsp;OK&nbsp;&nbsp;</button>
										</div>
									</div>

								</div>
							</div>

							<div class="modal fade" id="myModal" role="dialog" tabindex="-1">
								<div class="modal-dialog test-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Chi tiết bài kiểm tra</h4>
										</div>
										<div class="modal-body">
											<table
												class="table table-bordered table-striped table-hover tc-table">
												<tbody>
													<tr>
														<td class="row_label">Kết quả</td>
														<td class="row_item"><b
															v-if="currentResult.passed == 0">Không đạt yêu cầu</b><b
															v-if="currentResult.passed != 0">Đã qua</b></td>
													</tr>
													<tr>
														<td class="row_label">Điểm đạt được</td>
														<td class="row_item">{{ currentResult.grade }}</td>
													</tr>
													<tr>
														<td class="row_label">Tổng điểm bài kiểm tra</td>
														<td class="row_item">{{ currentResult.total_grade }}</td>
													</tr>
													<tr>
														<td class="row_label">Thời gian thi</td>
														<td class="row_item">{{
															printTime(currentResult.created) }} - {{
															printDate(currentResult.created) }}</td>
													</tr>
													<tr>
														<td colspan="2" class="content-test-detail">
															<div v-for="(task, index) in tasks">
																<div v-if="task.type == 1" v-html="task.value"></div>
																<div v-if="task.type == 3 || task.type == 5">
																	<p style="margin: 10px 0; font-size: 16px;"
																		v-html="task.value" v-if="task.type == 3"></p>
																	<div v-if="task.type == 5" style="margin: 5px 0;"
																		class="audio-task-area">
																		<label>{{ JSON.parse(task.value).name }}</label>
																		<audio controls="">


																			<source
																				:src="'http://mp3.dungmori.com/' + JSON.parse(task.value).link.split(';')[1]"
																				type="audio/mpeg">
																			Your browser does not support the audio element.
																		</audio>
																	</div>
																	<div class="col-sm-6 answer-area"
																		style="margin-bottom: 10px;"
																		v-for="(answer, index) in answers[task.id]">
																		<div class="question-answer">

																			<div class="labels question-answer-content"
																				v-bind:class="[answer.grade == 0 ? '' : 'label-true', (answer.grade == 0 && answer.checked) ? 'label-false' : '']">
																				<input type="radio" v-if="answer.checked == true"
																					checked onclick="this.checked = true"> <input
																					type="radio" v-if="answer.checked != true"
																					onclick="this.checked = false">&nbsp;&nbsp;{{
																				answer.value }}<span v-if="answer.grade != 0">&nbsp;(Đúng)</span>
																			</div>
																		</div>
																	</div>

																	<div v-if="task.type == 3" class="col-md-11"
																		style="display: inline-block; width: 100%; height: 10px;"></div>
																	<hr v-if="task.type == 3"
																		style="width: 100%; margin-top: 20px; margin-bottom: 30px; bottom: 0; border-color: #ddd;">
																</div>
																<dir v-if="task.type == 6"
																	style="padding: 0; font-size: 13px;">
																	<table class="table table-hover">
																		<thead>
																			<tr>
																				<th style="width: 1%">Stt</th>
																				<th style="width: 30%">Câu hỏi</th>
																				<th style="width: 25%">Câu trả lời</th>
																				<th style="width: 25%">Đáp án</th>
																				<th class="text-center">Điểm</th>
																			</tr>
																		</thead>
																		<tbody>
																			<tr v-for="(item, index) in JSON.parse(task.value)"
																				v-bind:class="[(resultData[task.id] == undefined || resultData[task.id][item.id] != item.answer) ? 'danger' : 'success']">
																				<td>{{ index + 1 }}</td>
																				<td v-html="item.question"></td>
																				<td v-if="resultData[task.id] != undefined">{{
																					resultData[task.id][item.id] }}</td>
																				<td v-else></td>
																				<td>{{ item.answer }}</td>
																				<td class="text-center">5</td>
																			</tr>
																		</tbody>
																	</table>
																</dir>
															</div>
														</td>
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

						<script>
							lesson_tasks = [
									{
										"id" : 12578,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "<div>\n 1.\u3000\u3044\u3044\u5148\u751f\u3092<u>\u7d39\u4ecb<\/u>\u3057\u3066\u304f\u308c\u308b\uff1f<\/div>\n",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 1,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12577,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "2.\u3000<u>\u4ef2\u4ecb\u6599<\/u>\u306a\u3069\u306f\u5fc5\u8981\u3042\u308a\u307e\u305b\u3093\u3002",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 2,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12579,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "<div>\n <div>\n  3.\u00a0 \u00a0\u30a2\u30a4\u30db\u30f3\u306e\u4fee\u7406<u>\u4ee3\u91d1<\/u>\u306f\u9ad8\u3059\u304e\u308b\u3002<\/div>\n<\/div>\n<br \/>\n",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 3,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12580,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "4.&nbsp; &nbsp;\u90e8\u9577\u306e<u>\u4ee3\u7406<\/u>\u3068\u3057\u3066\u65e5\u672c\u306e\u51fa\u5f35\u306b\u884c\u304f\u3002<br \/>\n<br \/>\n",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 4,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12581,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "5. <ruby>\u660e\u6cbb<rp>(<\/rp><rt>\u3081\u3044\u3058<\/rt><rp>)<\/rp><\/ruby><u>\u6642\u4ee3<\/u>\u306b\u3001\u65e5\u672c\u306e <ruby>\u7d4c\u6e08<rp>(<\/rp><rt>\u3051\u3044\u3056\u3044<\/rt><rp>)<\/rp><\/ruby>\u304c<ruby>\u767a\u5c55<rp>(<\/rp><rt>\u306f\u3063\u3066\u3093<\/rt><rp>)<\/rp><\/ruby>\u3057\u305f\u3002<br \/>\n<br \/>\n",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 5,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12582,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "6. \u3053\u306e<ruby>\u670d<rp>(<\/rp><rt>\u3075\u304f<\/rt><rp>)<\/rp><\/ruby>\u306f\uff11\uff19\uff18\uff10<u>\u5e74\u4ee3<\/u>\u306b<ruby>\u6d41\u884c<rp>(<\/rp><rt>\u308a\u3085\u3046\u3053\u3046<\/rt><rp>)<\/rp><\/ruby>\u3057\u305f\u30d5\u30a1\u30c3\u30b7\u30e7\u30f3\u3060\u3002<br \/>\n<br \/>\n",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 6,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12583,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "7. \u4eca\u56de\u306e\u65c5\u884c\u306f\u4ea4\u901a\u8cbb\uff0b<u>\u98df\u4e8b\u4ee3<\/u>\uff0b<u>\u30db\u30c6\u30eb\u4ee3<\/u>\u3067 \uff11\uff10\u4e07\u3082\u304b\u304b\u308b\u3002\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0<br \/>\n<br \/>\n",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 7,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12584,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "8. 6\u6642<u>\u4ee5\u5f8c<\/u>\u306f\u5bb6\u306b\u3044\u308b\u3002<br \/>\n<br \/>\n",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 8,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12585,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "9. <u>\u4ee5\u4e0b<\/u>\u306e\u30ac\u30a4\u30c9\u3092\u8aad\u3093\u3067\u304f\u3060\u3055\u3044\u3002<br \/>\n<br \/>\n",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 9,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12586,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "10. \u6628\u65e5\u306e<ruby>\u8a66\u9a13<rp>(<\/rp><rt>\u3057\u3051\u3093<\/rt><rp>)<\/rp><\/ruby>\u306f\u601d\u3063\u305f<u>\u4ee5\u4e0a<\/u>\u306b<ruby>\u96e3<rp>(<\/rp><rt>\u3080\u305a\u304b<\/rt><rp>)<\/rp><\/ruby>\u3057\u304b\u3063\u305f\u3002\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0<br \/>\n<br \/>\n",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 10,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12587,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "<p>\n 11.\u304a<u>\u4ed5\u4e8b<\/u>\u306f\u4f55\u3067\u3059\u304b\uff1f<\/p>\n",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 11,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12588,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "<ruby>12. \u5e30<rt>\u00a0 \u00a0 \u00a0 \u00a0 \u00a0 \u304b\u3048<\/rt><\/ruby>\u308a\u306e<ruby>\u904b<rt>\u3046\u3093<\/rt><\/ruby><ruby>\u8ee2<rt>\u3066\u3093<\/rt><\/ruby>\u306f<ruby>\u7720<rt>\u306d\u3080<\/rt><\/ruby>\u304f\u3066<em><u>\u4ed5\u65b9\u304c\u306a\u3044<\/u><\/em><em>\u3002<\/em>",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 12,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12589,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "<div>\n <div>\n  13.\u00a0 \u4eca\u3067\u3082\u89aa\u304b\u3089<u>\u4ed5\u9001\u308a<\/u>\u3092\u3082\u3089\u3063\u3066\u751f\u6d3b\u3057\u3066\u3044\u308b\u3002<\/div>\n<\/div>\n<br \/>\n<div>\n \u00a0<\/div>\n",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 13,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12590,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "<ruby>14.\u00a0 \u8cc7\u6599<rp>(<\/rp><rt>\u00a0 \u00a0 \u00a0 \u00a0 \u00a0 \u00a0 \u00a0 \u00a0 \u00a0\u3057\u308a\u3087\u3046<\/rt><rp>)<\/rp><\/ruby>\u3092\u4f5c\u308b\u306e\u306f\u90e8\u4e0b\u306b<u>\u4efb\u305b\u305f<\/u>\u3002",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 14,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12591,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "<ruby><\/ruby>15.\u00a0 \u5f7c\u306f<ruby>\u91cd<rt>\u304a\u3082<\/rt><\/ruby>\u3044<ruby>\u75c5\u6c17<rt>\u3073\u3087\u3046\u304d<\/rt><\/ruby>\u3067<u>\u8f9e\u4efb<\/u>\u3057\u305f\u3002",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 15,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12592,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "16.&nbsp; \u6f22\u5b57\u30af\u30e9\u30b9\u306e<u>\u62c5\u4efb<\/u>\u5148\u751f\u306f\u3057\u307e\u304b\u308f\u5148\u751f\u3067\u3059\u3002",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 16,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12593,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "17.<span style=\"white-space:pre\"> <\/span>\u5f7c\u306f\u6f22\u5b57\u304c<u>\u512a\u308c\u3066\u3044\u308b<\/u>\u3002\u00a0",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 17,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12594,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "18.&nbsp; &nbsp;\u5b50\u4f9b\u3060\u304b\u3089\u3001<u>\u512a\u3057\u3044<\/u>\u8a00\u8449\u3092\u4f7f\u3063\u3066\u304f\u3060\u3055\u3044\u3002",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 18,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12595,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "19.<span style=\"white-space:pre\"> <\/span>\u5e74\u5bc4\u308a\u3092<u>\u512a\u5148<\/u>\u3059\u308b\u3002",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 19,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12596,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "20.&nbsp; &nbsp;\u6628\u65e5\u306e<ruby>\u8a66\u5408<rt>\u3057\u3042\u3044<\/rt><\/ruby>\u3001<ruby>\u50d5<rt>\u307c\u304f<\/rt><\/ruby>\u306e\u30c1\u30fc\u30e0\u304c<u>\u512a\u52dd<\/u>\u3057\u307e\u3057\u305f\u3002\n<div>\n \u00a0<\/div>\n",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 20,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12597,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "21.&nbsp;<u>\u4fe1\u53f7<\/u>\u304c\u5909\u308f\u308b\u3002",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 21,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12598,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "22.&nbsp; \u5f7c\u306e<ruby>\u8a00\u8449<rt>\u3053\u3068\u3070<\/rt><\/ruby>\u304c<u>\u4fe1\u3058\u3089\u308c\u306a\u3044<\/u>\u3002",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 22,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12599,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "23.&nbsp; \u6642\u9593\u3092<ruby>\u5b88<rt>\u307e\u3082<\/rt><\/ruby>\u3089\u306a\u3044\u4eba\u306f<u>\u4fe1\u7528<\/u>\u3067\u304d\u306a\u3044\u3002<br \/>\n<br \/>\n",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 23,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12600,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "24.&nbsp;&nbsp;\u30a4\u30f3\u30bf\u30cd\u30c3\u30c8\u3067\u306e<ruby>\u60c5\u5831<rt>\u3058\u3087\u3046\u307b\u3046<\/rt><\/ruby>\u3092\u5168\u90e8<u>\u4fe1\u983c<\/u>\u3067\u304d\u308b\u308f\u3051\u3058\u3083\u306a\u3044<em>\u3002<\/em>\u00a0\u00a0<br \/>\n<br \/>\n",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 24,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12601,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "25.&nbsp;&nbsp;<ruby>\u512a<rt>\u3084\u3055<\/rt><\/ruby>\u3057\u3044\u8a00\u8449\u3067<u>\u4f1d\u3048\u308b<\/u>\u3002\u3000<br \/>\n<br \/>\n",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 25,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12602,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "26.&nbsp; \u3053\u306e\u8fba\u306f\u30da\u30c3\u30c8\u53ef\u306e<u>\u7269\u4ef6<\/u>\u304c\u3042\u308b\u306e\uff1f<br \/>\n<br \/>\n",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 26,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12603,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "27.&nbsp;&nbsp;2017\u306e<ruby>\u4ea4\u901a\u4e8b\u6545<rt>\u3053\u3046\u3064\u3046\u3058\u3053<\/rt><\/ruby>\u3067\u3001<ruby>\u6b7b\u4ea1\u4e8b\u6545<rt>\u3057\u307c\u3046\u3058\u3053<\/rt><\/ruby><u>\u4ef6\u6570<\/u>\u306f3.790\u4ef6\u3067\u3059\u3002\u00a0 \u00a0<br \/>\n<br \/>\n",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 27,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12604,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "28.&nbsp; \u90e8\u5c4b\u3092<u>\u7247\u4ed8\u3051\u308b<\/u>\u3002<br \/>\n<br \/>\n",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 28,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12605,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "29.&nbsp;&nbsp;\u30b7\u30e3\u30c4\u306b<u>\u30a4\u30f3\u30af\u304c\u4ed8\u3044\u3066<\/u>\u3044\u305f\u3002<br \/>\n<br \/>\n",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 29,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									},
									{
										"id" : 12606,
										"lesson_id" : 1432,
										"type" : 3,
										"server" : null,
										"video_name" : null,
										"video_title" : null,
										"value" : "30.&nbsp;&nbsp;\u81ea\u5206\u3092\u5b88\u308b\u529b\u3092<u>\u8eab\u306b\u4ed8\u3051\u308b<\/u>\u306e\u306f\u5fc5\u8981\u3060\u3002<br \/>\n<br \/>\n",
										"value_data" : null,
										"grade" : "1",
										"multi" : 0,
										"sort" : 30,
										"show" : 1,
										"updated_at" : null,
										"created_at" : null
									} ];
							lesson_answers = {
								"12578" : [ {
									"id" : 27392,
									"task_id" : 12578,
									"value" : "\u3057\u3087\u3046\u304b\u3044",
									"grade" : "1",
									"sort" : 1,
									"updated_at" : null,
									"created_at" : null
								}, {
									"id" : 27393,
									"task_id" : 12578,
									"value" : "\u3057\u3087\u304b\u3044\u3000",
									"grade" : "0",
									"sort" : 2,
									"updated_at" : null,
									"created_at" : null
								} ],
								"12577" : [
										{
											"id" : 27390,
											"task_id" : 12577,
											"value" : "\u3061\u3085\u3046\u304b\u3044\u308a\u3087\u3046",
											"grade" : "1",
											"sort" : 1,
											"updated_at" : null,
											"created_at" : null
										},
										{
											"id" : 27391,
											"task_id" : 12577,
											"value" : "\u3061\u3085\u3046\u304c\u3044\u308a\u3087\u3046",
											"grade" : "0",
											"sort" : 2,
											"updated_at" : null,
											"created_at" : null
										} ],
								"12579" : [ {
									"id" : 27394,
									"task_id" : 12579,
									"value" : "\u3060\u3044\u304d\u3093",
									"grade" : "1",
									"sort" : 1,
									"updated_at" : null,
									"created_at" : null
								}, {
									"id" : 27395,
									"task_id" : 12579,
									"value" : "\u305f\u3044\u304e\u3093",
									"grade" : "0",
									"sort" : 2,
									"updated_at" : null,
									"created_at" : null
								} ],
								"12580" : [ {
									"id" : 27396,
									"task_id" : 12580,
									"value" : "\u3060\u3044\u308a",
									"grade" : "1",
									"sort" : 1,
									"updated_at" : null,
									"created_at" : null
								}, {
									"id" : 27397,
									"task_id" : 12580,
									"value" : "\u305f\u3044\u308a",
									"grade" : "0",
									"sort" : 2,
									"updated_at" : null,
									"created_at" : null
								} ],
								"12581" : [ {
									"id" : 27398,
									"task_id" : 12581,
									"value" : "\u3058\u3060\u3044\u3000",
									"grade" : "1",
									"sort" : 1,
									"updated_at" : null,
									"created_at" : null
								}, {
									"id" : 27399,
									"task_id" : 12581,
									"value" : "\u3058\u305f\u3044",
									"grade" : "0",
									"sort" : 2,
									"updated_at" : null,
									"created_at" : null
								} ],
								"12582" : [ {
									"id" : 27400,
									"task_id" : 12582,
									"value" : "\u3068\u3057\u3060\u3044",
									"grade" : "0",
									"sort" : 1,
									"updated_at" : null,
									"created_at" : null
								}, {
									"id" : 27401,
									"task_id" : 12582,
									"value" : "\u306d\u3093\u3060\u3044",
									"grade" : "1",
									"sort" : 2,
									"updated_at" : null,
									"created_at" : null
								} ],
								"12583" : [
										{
											"id" : 27402,
											"task_id" : 12583,
											"value" : "\u3057\u3087\u304f\u3058\u3060\u3044\u3001\u30db\u30c6\u30eb\u3060\u3044\u3000\u3000\u3000",
											"grade" : "1",
											"sort" : 1,
											"updated_at" : null,
											"created_at" : null
										},
										{
											"id" : 27403,
											"task_id" : 12583,
											"value" : "\u3057\u3087\u304f\u3058\u3072\u3001\u30db\u30c6\u30eb\u3072",
											"grade" : "0",
											"sort" : 2,
											"updated_at" : null,
											"created_at" : null
										} ],
								"12584" : [ {
									"id" : 27404,
									"task_id" : 12584,
									"value" : "\u3044\u3053\u3000",
									"grade" : "0",
									"sort" : 1,
									"updated_at" : null,
									"created_at" : null
								}, {
									"id" : 27405,
									"task_id" : 12584,
									"value" : "\u3044\u3054",
									"grade" : "1",
									"sort" : 2,
									"updated_at" : null,
									"created_at" : null
								} ],
								"12585" : [ {
									"id" : 27406,
									"task_id" : 12585,
									"value" : "\u3044\u304c\u3000\u3000",
									"grade" : "0",
									"sort" : 1,
									"updated_at" : null,
									"created_at" : null
								}, {
									"id" : 27407,
									"task_id" : 12585,
									"value" : "\u3044\u304b",
									"grade" : "1",
									"sort" : 2,
									"updated_at" : null,
									"created_at" : null
								} ],
								"12586" : [ {
									"id" : 27408,
									"task_id" : 12586,
									"value" : "\u3044\u3058\u3087\u3046\u3000",
									"grade" : "1",
									"sort" : 1,
									"updated_at" : null,
									"created_at" : null
								}, {
									"id" : 27409,
									"task_id" : 12586,
									"value" : "\u3044\u3057\u3087\u3046",
									"grade" : "0",
									"sort" : 2,
									"updated_at" : null,
									"created_at" : null
								} ],
								"12587" : [ {
									"id" : 27410,
									"task_id" : 12587,
									"value" : "\u3057\u3054\u3068\u3000\u3000",
									"grade" : "1",
									"sort" : 1,
									"updated_at" : null,
									"created_at" : null
								}, {
									"id" : 27411,
									"task_id" : 12587,
									"value" : "\u3058\u3054\u3068",
									"grade" : "0",
									"sort" : 2,
									"updated_at" : null,
									"created_at" : null
								} ],
								"12588" : [
										{
											"id" : 27412,
											"task_id" : 12588,
											"value" : "\u3057\u304b\u305f\u304c\u306a\u3044",
											"grade" : "1",
											"sort" : 1,
											"updated_at" : null,
											"created_at" : null
										},
										{
											"id" : 27413,
											"task_id" : 12588,
											"value" : "\u3057\u304c\u305f\u304c\u306a\u3044",
											"grade" : "0",
											"sort" : 2,
											"updated_at" : null,
											"created_at" : null
										} ],
								"12589" : [ {
									"id" : 27414,
									"task_id" : 12589,
									"value" : "\u3058\u304a\u304f\u308a",
									"grade" : "0",
									"sort" : 1,
									"updated_at" : null,
									"created_at" : null
								}, {
									"id" : 27415,
									"task_id" : 12589,
									"value" : "\u3057\u304a\u304f\u308a",
									"grade" : "1",
									"sort" : 2,
									"updated_at" : null,
									"created_at" : null
								} ],
								"12590" : [ {
									"id" : 27416,
									"task_id" : 12590,
									"value" : "\u307e\u305b\u305f",
									"grade" : "0",
									"sort" : 1,
									"updated_at" : null,
									"created_at" : null
								}, {
									"id" : 27417,
									"task_id" : 12590,
									"value" : "\u307e\u304b\u305b\u305f",
									"grade" : "1",
									"sort" : 2,
									"updated_at" : null,
									"created_at" : null
								} ],
								"12591" : [ {
									"id" : 27418,
									"task_id" : 12591,
									"value" : "\u3058\u306b\u3093\u3000",
									"grade" : "1",
									"sort" : 1,
									"updated_at" : null,
									"created_at" : null
								}, {
									"id" : 27419,
									"task_id" : 12591,
									"value" : "\u305b\u306b\u3093",
									"grade" : "0",
									"sort" : 2,
									"updated_at" : null,
									"created_at" : null
								} ],
								"12592" : [ {
									"id" : 27420,
									"task_id" : 12592,
									"value" : "\u3060\u3093\u306b\u3093",
									"grade" : "0",
									"sort" : 1,
									"updated_at" : null,
									"created_at" : null
								}, {
									"id" : 27421,
									"task_id" : 12592,
									"value" : "\u305f\u3093\u306b\u3093",
									"grade" : "1",
									"sort" : 2,
									"updated_at" : null,
									"created_at" : null
								} ],
								"12593" : [
										{
											"id" : 27422,
											"task_id" : 12593,
											"value" : "\u3059\u3050\u308c\u3066\u3044\u308b\u3000",
											"grade" : "1",
											"sort" : 1,
											"updated_at" : null,
											"created_at" : null
										},
										{
											"id" : 27423,
											"task_id" : 12593,
											"value" : "\u307e\u3055\u308c\u3066\u3044\u308b",
											"grade" : "0",
											"sort" : 2,
											"updated_at" : null,
											"created_at" : null
										} ],
								"12594" : [ {
									"id" : 27424,
									"task_id" : 12594,
									"value" : "\u304b\u306a\u3057\u3044",
									"grade" : "0",
									"sort" : 1,
									"updated_at" : null,
									"created_at" : null
								}, {
									"id" : 27425,
									"task_id" : 12594,
									"value" : "\u3084\u3055\u3057\u3044",
									"grade" : "1",
									"sort" : 2,
									"updated_at" : null,
									"created_at" : null
								} ],
								"12595" : [ {
									"id" : 27426,
									"task_id" : 12595,
									"value" : "\u3086\u3046\u305b\u3093\u3000",
									"grade" : "1",
									"sort" : 1,
									"updated_at" : null,
									"created_at" : null
								}, {
									"id" : 27427,
									"task_id" : 12595,
									"value" : "\u3086\u3046\u305c\u3093",
									"grade" : "0",
									"sort" : 2,
									"updated_at" : null,
									"created_at" : null
								} ],
								"12596" : [ {
									"id" : 27428,
									"task_id" : 12596,
									"value" : "\u3086\u3046\u3057\u3087\u3000",
									"grade" : "0",
									"sort" : 1,
									"updated_at" : null,
									"created_at" : null
								}, {
									"id" : 27429,
									"task_id" : 12596,
									"value" : "\u3086\u3046\u3057\u3087\u3046",
									"grade" : "1",
									"sort" : 2,
									"updated_at" : null,
									"created_at" : null
								} ],
								"12597" : [ {
									"id" : 27430,
									"task_id" : 12597,
									"value" : "\u3057\u3093\u3054\u3046",
									"grade" : "1",
									"sort" : 1,
									"updated_at" : null,
									"created_at" : null
								}, {
									"id" : 27431,
									"task_id" : 12597,
									"value" : "\u3057\u3093\u3053\u3046",
									"grade" : "0",
									"sort" : 2,
									"updated_at" : null,
									"created_at" : null
								} ],
								"12598" : [
										{
											"id" : 27432,
											"task_id" : 12598,
											"value" : "\u3058\u3085\u3058\u3089\u308c\u306a\u3044",
											"grade" : "0",
											"sort" : 1,
											"updated_at" : null,
											"created_at" : null
										},
										{
											"id" : 27433,
											"task_id" : 12598,
											"value" : "\u3057\u3093\u3058\u3089\u308c\u306a\u3044",
											"grade" : "1",
											"sort" : 2,
											"updated_at" : null,
											"created_at" : null
										} ],
								"12599" : [ {
									"id" : 27434,
									"task_id" : 12599,
									"value" : "\u3057\u3093\u3088\u3046",
									"grade" : "1",
									"sort" : 1,
									"updated_at" : null,
									"created_at" : null
								}, {
									"id" : 27435,
									"task_id" : 12599,
									"value" : "\u3057\u3088\u3046",
									"grade" : "0",
									"sort" : 2,
									"updated_at" : null,
									"created_at" : null
								} ],
								"12600" : [ {
									"id" : 27436,
									"task_id" : 12600,
									"value" : "\u3057\u3093\u3056\u3044\u3000",
									"grade" : "0",
									"sort" : 1,
									"updated_at" : null,
									"created_at" : null
								}, {
									"id" : 27437,
									"task_id" : 12600,
									"value" : "\u3057\u3093\u3089\u3044",
									"grade" : "1",
									"sort" : 2,
									"updated_at" : null,
									"created_at" : null
								} ],
								"12601" : [ {
									"id" : 27438,
									"task_id" : 12601,
									"value" : "\u3064\u305f\u3048\u308b\u3000",
									"grade" : "1",
									"sort" : 1,
									"updated_at" : null,
									"created_at" : null
								}, {
									"id" : 27439,
									"task_id" : 12601,
									"value" : "\u3042\u305f\u3048\u308b",
									"grade" : "0",
									"sort" : 2,
									"updated_at" : null,
									"created_at" : null
								} ],
								"12602" : [ {
									"id" : 27440,
									"task_id" : 12602,
									"value" : "\u3076\u3063\u3051\u3093\u3000",
									"grade" : "1",
									"sort" : 1,
									"updated_at" : null,
									"created_at" : null
								}, {
									"id" : 27441,
									"task_id" : 12602,
									"value" : "\u3075\u3063\u3051\u3093",
									"grade" : "0",
									"sort" : 2,
									"updated_at" : null,
									"created_at" : null
								} ],
								"12603" : [ {
									"id" : 27442,
									"task_id" : 12603,
									"value" : "\u3051\u3093\u305a\u3046",
									"grade" : "0",
									"sort" : 1,
									"updated_at" : null,
									"created_at" : null
								}, {
									"id" : 27443,
									"task_id" : 12603,
									"value" : "\u3051\u3093\u3059\u3046",
									"grade" : "1",
									"sort" : 2,
									"updated_at" : null,
									"created_at" : null
								} ],
								"12604" : [ {
									"id" : 27444,
									"task_id" : 12604,
									"value" : "\u304b\u305f\u3065\u3051\u308b",
									"grade" : "1",
									"sort" : 1,
									"updated_at" : null,
									"created_at" : null
								}, {
									"id" : 27445,
									"task_id" : 12604,
									"value" : "\u304b\u305f\u305a\u3051\u308b",
									"grade" : "0",
									"sort" : 2,
									"updated_at" : null,
									"created_at" : null
								} ],
								"12605" : [
										{
											"id" : 27446,
											"task_id" : 12605,
											"value" : "\u30a4\u30f3\u30af\u304c\u3064\u3044\u3066",
											"grade" : "1",
											"sort" : 1,
											"updated_at" : null,
											"created_at" : null
										},
										{
											"id" : 27447,
											"task_id" : 12605,
											"value" : "\u30a4\u30f3\u30af\u304c\u3065\u3044\u3066",
											"grade" : "0",
											"sort" : 2,
											"updated_at" : null,
											"created_at" : null
										} ],
								"12606" : [ {
									"id" : 27448,
									"task_id" : 12606,
									"value" : "\u307f\u306b\u3065\u3051\u308b",
									"grade" : "0",
									"sort" : 1,
									"updated_at" : null,
									"created_at" : null
								}, {
									"id" : 27449,
									"task_id" : 12606,
									"value" : "\u307f\u306b\u3064\u3051\u308b",
									"grade" : "1",
									"sort" : 2,
									"updated_at" : null,
									"created_at" : null
								} ]
							};
							lesson_lesson = {
								"id" : 1432,
								"group_id" : "182",
								"course_id" : "3",
								"author_id" : 1,
								"name" : "Test 1A",
								"link" : "",
								"link_data" : null,
								"common_data" : null,
								"avatar_id" : 0,
								"avatar_name" : "",
								"banner_id" : 0,
								"banner_name" : "",
								"description" : "",
								"price_option" : 0,
								"discount" : 0,
								"price" : 0,
								"watch_config" : 0,
								"watch_times" : 0,
								"watch_expired" : 0,
								"feature" : 0,
								"noindex" : 0,
								"allow_comment" : 1,
								"sort_order" : 3,
								"created" : 1519887600,
								"updated" : 1520852344,
								"expired" : 0,
								"expired_option" : 0,
								"show" : 1,
								"SEOtitle" : "",
								"SEOurl" : "test-1a-1",
								"SEOdescription" : "",
								"SEOkeywords" : "",
								"comment_count" : 35,
								"rate_total" : 0,
								"rate_one" : 0,
								"rate_two" : 0,
								"rate_three" : 0,
								"rate_four" : 0,
								"rate_five" : 0,
								"rate" : 0,
								"count_view" : 8217,
								"count_buy" : 0,
								"user_id" : 0,
								"user_options" : "{\"status\":\"0\",\"amount\":0,\"amount_type\":\"1\",\"user_id\":0}",
								"affiliate_options" : null,
								"course_group_id" : "{\"3\":[\"182\"]}",
								"is_examination" : 1,
								"total_marks_calculation" : 0,
								"total_marks" : 30,
								"pass_marks" : 20,
								"schedule_at" : null,
								"updated_at" : "2018-10-10 14:47:12",
								"created_at" : "2018-03-01 21:00:00",
								"is_online_exam" : 0,
								"author_name" : "Nguy\u1ec5n V\u0103n D\u0169ng",
								"video" : null,
								"course_name" : "N3",
								"course_url" : "khoa-n3",
								"get_group_of_lesson" : {
									"id" : 182,
									"course_id" : 3,
									"parent_id" : 0,
									"name" : "Ch\u1eef H\u00e1n",
									"description" : "",
									"sort" : 10,
									"show" : 1,
									"is_step" : 0,
									"is_specialezed" : 0,
									"is_exam" : 0,
									"updated_at" : "2018-06-26 13:49:39",
									"created_at" : null,
									"get_course_of_group" : {
										"id" : 3,
										"cat_id" : 10,
										"author_id" : "[\"1\",\"2\"]",
										"name" : "N3",
										"avatar_id" : 1704,
										"avatar_name" : "lo-trinh-n3_1495461460.jpg",
										"brief" : "N\u1ed9i dung \u0111ang c\u1eadp nh\u1eadp",
										"banner_id" : 1705,
										"banner_name" : "lo-trinh-n3_1495461465.jpg",
										"description" : "<p>\n\t<span style=\"font-size:16.0pt\"><span new=\"\" style=\"font-family:\" times=\"\">N3<\/span><\/span><\/p>\n<p>\n\t<span new=\"\" style=\"font-family:\" times=\"\">H&agrave;ng n\u0103m, c\u1ee9 sau m\u1ed7i m&ugrave;a thi JLPT l&agrave; trong c&aacute;c trang nh&oacute;m l\u1edbp h\u1ecdc c\u1ee7a Nihongonomori l\u1ea1i c&oacute; r\u1ea5t nhi\u1ec1u nh\u1eefng tin nh\u1eafn b&aacute;o \u0111\u1ed7 nh\u01b0 th\u1ebf n&agrave;y.<\/span><\/p>\n<p>\n\t<span new=\"\" style=\"font-family:\" times=\"\">V\u1eady th&igrave; l&agrave;m th\u1ebf n&agrave;o \u0111\u1ec3 c&oacute; th\u1ec3 v\u01b0\u1ee3t qua c&aacute;c k&igrave; thi n&agrave;y nh\u1ec9?<\/span><\/p>\n<p>\n\t<span new=\"\" style=\"font-family:\" times=\"\">C&aacute;c b\u1ea1n bi\u1ebft \u0111&oacute; l&agrave; g&igrave; kh&ocirc;ng? M&igrave;nh tin ch\u1eafc r\u1eb1ng t\u1ea5t c\u1ea3 c&aacute;c b\u1ea1n \u0111&atilde; t\u1eebng h\u1ecdc v&agrave; \u0111\u1ed7 s\u1ebd \u0111\u1ec1u c&oacute; chung m\u1ed9t c&acirc;u tr\u1ea3 l\u1eddi: \u0110i\u1ec3m m\u1ea5u ch\u1ed1t ch&iacute;nh l&agrave; L\u1ed9 tr&igrave;nh h\u1ecdc. N\u1ebfu kh&ocirc;ng c&oacute; m\u1ed9t l\u1ed9 tr&igrave;nh h\u1ecdc h\u1ee3p l&iacute; th&igrave; d&ugrave; c&oacute; gi&aacute;o tr&igrave;nh hay nh\u1ea5t, th\u1ea7y c&ocirc; gi&aacute;o gi\u1ecfi nh\u1ea5t th&igrave; con \u0111\u01b0\u1eddng chinh ph\u1ee5c ti\u1ebfng Nh\u1eadt s\u1ebd c&ograve;n xa l\u1eafm nh&eacute;.<\/span><\/p>\n<p>\n\t<span new=\"\" style=\"font-family:\" times=\"\">D\u1ef1a v&agrave;o kinh nghi\u1ec7m gi\u1ea3ng d\u1ea1y qua nhi\u1ec1u kh&oacute;a, Dungmori \u0111&atilde; x&acirc;y d\u1ef1ng m\u1ed9t l\u1ed9 tr&igrave;nh &ocirc;n thi N3 online Ng\u1eafn nh\u1ea5t v&agrave; Hi\u1ec7u qu\u1ea3 nh\u1ea5t. H&atilde;y c&ugrave;ng t&igrave;m hi\u1ec3u xem, v\u1edbi Dungmori ch&uacute;ng ta s\u1ebd h\u1ecdc nh\u01b0 th\u1ebf n&agrave;o \u0111\u1ec3 ch\u1eafc ch\u1eafn \u0111\u1ed7 nh&eacute;.<\/span><\/p>\n<p>\n\t<span new=\"\" style=\"font-family:\" times=\"\">Kh&oacute;a h\u1ecdc \u0111\u01b0\u1ee3c chia ra th&agrave;nh t\u1eebng k\u0129 n\u0103ng trong b&agrave;i thi JLPT g\u1ed3m Kanji, t\u1eeb v\u1ef1ng, Ng\u1eef ph&aacute;p, \u0110\u1ecdc hi\u1ec3u, Nghe hi\u1ec3u v&agrave; cu\u1ed1i c&ugrave;ng l&agrave; ph\u1ea7n Luy\u1ec7n \u0111\u1ec1 thi th\u1eed.<\/span><\/p>\n<p>\n\t<span new=\"\" style=\"font-family:\" times=\"\">\u0110\u1eebng h\u1ecdc song song c\u1ea3 \u0111\u1ecdc hi\u1ec3u nghe hi\u1ec3u ngay t\u1eeb \u0111\u1ea7u. V\u1ee9t n&oacute; \u0111i. V&igrave; trong b&agrave;i \u0111\u1ecdc hi\u1ec3u, nghe hi\u1ec3u N3 d\u0129 nhi&ecirc;n s\u1ebd c&oacute; r\u1ea5t nhi\u1ec1u nh\u1eefng ch\u1eef H&aacute;n, t\u1eeb v\u1ef1ng, ng\u1eef ph&aacute;p N3, n&ecirc;n n\u1ebfu nh\u01b0 kh&ocirc;ng c&oacute; v\u1ed1n li\u1ebfng t\u1eeb v&agrave; ng\u1eef ph&aacute;p \u0111\u1ea7y \u0111\u1ee7 ch&uacute;ng ta s\u1ebd ph\u1ea3i ng\u1ed3i \u0111\u1ecdc v&agrave; ng\u1ed3i nghe nh\u01b0 m\u1ed9t ch&uacute; v\u1ecbt nghe s\u1ea5m lu&ocirc;n.<\/span><\/p>\n<p>\n\t<span new=\"\" style=\"font-family:\" times=\"\">Th\u1ebf n&ecirc;n, Ch&uacute;ng ta h&atilde;y chia qu&aacute; tr&igrave;nh h\u1ecdc ra l&agrave;m 2 giai \u0111o\u1ea1n. Giai \u0111o\u1ea1n \u0111\u1ea7u l&agrave; gia \u0111o\u1ea1n c&oacute;p nh\u1eb7t v\u1ed1n t\u1eeb v&agrave; ng\u1eef ph&aacute;p v\u1edbi 3 ph\u1ea7n Kanji, T\u1eeb v\u1ef1ng, Ng\u1eef ph&aacute;p. H&atilde;y h\u1ecdc th\u1eadt ch\u1eafc, Th\u1eadt ch\u1eafc, Th\u1eadt ch\u1eafc.<\/span><\/p>\n<ol>\n\t<li>\n\t\t<span new=\"\" style=\"font-family:\" times=\"\">Tr\u01b0\u1edbc ti&ecirc;n l&agrave; 15 b&agrave;i Kanji do th\u1ea7y D\u0169ng v&agrave; c&ocirc; Thanh gi\u1ea3ng d\u1ea1y. G\u1ea7n 380 ch\u1eef H&aacute;n thu\u1ed9c c\u1ea5p \u0111\u1ed9 N3 s\u1ebd \u0111\u01b0\u1ee3c s\u1eafp x\u1ebfp&nbsp; theo t\u1eebng b\u1ed9 trong ti\u1ebfng Nh\u1eadt. M\u1ed1i li&ecirc;n k\u1ebft v\u1ec1 ngh\u0129a gi\u1eefa c&aacute;c ch\u1eef H&aacute;n s\u1ebd gi&uacute;p c&aacute;c b\u1ea1n th\u1ea5y ch\u1eef H&aacute;n ch\u1eb3ng kh&oacute; t\u1eb9o n&agrave;o. Khi h\u1ecdc, nh\u1edb l&agrave; ph\u1ea3i mang gi\u1ea5y b&uacute;t ra ghi ch&eacute;p l\u1ea1i c&aacute;c v&iacute; d\u1ee5, \u0111\u1ecdc \u0111i \u0111\u1ecdc l\u1ea1i n&oacute; nhi\u1ec1u cho nh\u1edb r\u1ed3i \u0111\u1eebng qu&ecirc;n click v&agrave;o ph\u1ea7n 3 b&agrave;i t\u1eadp b&ecirc;n d\u01b0\u1edbi \u0111\u1ec3 \u0111i\u1ec1n c&aacute;ch \u0111\u1ecdc c\u1ee7a c&aacute;c t\u01b0 \u0111&atilde; h\u1ecdc v&agrave;o \u0111&acirc;y nha.<\/span><br \/>\n\t\t&nbsp;<\/li>\n\t<li>\n\t\t<span new=\"\" style=\"font-family:\" times=\"\">Ti\u1ebfp theo l&agrave; 12 b&agrave;i T\u1eeb v\u1ef1ng. do Th\u1ea7y Shimakawa, Miyamoto v&agrave; c&ocirc; Thanh gi\u1ea3ng d\u1ea1y. Trong m\u1ed7i m\u1ed9t clip, c\u1ea3 th\u1ea7y ng\u01b0\u1eddi Nh\u1eadt v&agrave; c&ocirc; gi&aacute;o Ng\u01b0\u1eddi Vi\u1ec7t s\u1ebd c&ugrave;ng xu\u1ea5t hi&ecirc;n. Gi&aacute;o vi&ecirc;n ng\u01b0\u1eddi Nh\u1eadt s\u1ebd \u0111&oacute;ng vai tr&ograve; ph&aacute;t &acirc;m t\u1eebng t\u1eeb v\u1ef1ng v&agrave; \u0111\u1ecdc v&iacute; d\u1ee5, c&ograve;n gi&aacute;o vi&ecirc;n ng\u01b0\u1eddi Vi\u1ec7t th&igrave; ngay l\u1eadp t\u1ee9c s\u1ebd \u0111\u01b0a ra l&iacute; gi\u1ea3i b\u1eb1ng ti\u1ebfng Vi\u1ec7t. C&aacute;ch h\u1ecdc n&agrave;y t\u01b0\u1edfng ch\u1eebng nh\u01b0 \u0111\u01a1n gi\u1ea3n nh\u01b0ng th\u1ef1c t\u1ebf s\u1ebd mang l\u1ea1i hi\u1ec7u qu\u1ea3 v&ocirc; c&ugrave;ng cao v&igrave; ch&uacute;ng ta s\u1ebd hi\u1ec3u \u0111\u01b0\u1ee3c lu&ocirc;n &yacute; ngh\u0129a c\u1ee7a t\u1eeb v\u1ef1ng v&agrave; c&aacute;ch d&ugrave;ng c\u1ee7a n&oacute; m\u1ed9t c&aacute;ch nhanh ch&oacute;ng v&agrave; ch&iacute;nh x&aacute;c nh\u1ea5t. T\u1ea5t nhi&ecirc;n, ph\u1ea7n t\u1eeb v\u1ef1ng c\u0169ng s\u1ebd c&oacute; ph\u1ea7n Test theo dang \u0111\u1ec1 gi\u1ed1ng nh\u01b0 \u0111\u1ec1 thi v\u1eady. Nh\u1edb l&agrave;m h\u1ebft v&agrave; nh\u1ea5t \u0111\u1ecbnh ph\u1ea3i \u0111\u01b0\u1ee3c 80 \u0111i\u1ec3m tr\u1edf n&ecirc;n nh&eacute;.<\/span><br \/>\n\t\t&nbsp;<\/li>\n\t<li>\n\t\t<span new=\"\" style=\"font-family:\" times=\"\">V&agrave; m\u1ed9t ph\u1ea7n n\u1eefa, c\u0169ng quan tr\u1ecdng kh&ocirc;ng k&eacute;m trong ch\u1eb7ng \u0111\u01b0\u1eddng \u0111\u1ea7u ti&ecirc;n chinh ph\u1ee5c N3 n&agrave;y \u0111&oacute; l&agrave; 22 clip d\u1ea1y ng\u1eef ph&aacute;p do c&ocirc; Thanh ph\u1ee5 tr&aacute;ch. Ch&uacute;ng ta \u0111&atilde; t\u1eebng xem r\u1ea5t nhi\u1ec1u clip d\u1ea1y ng\u1eef ph&aacute;p N3 c\u1ee7a c&ocirc; Thanh tr&ecirc;n Youtube r\u1ed3i, nh\u01b0ng trong 22 b&agrave;i gi\u1ea3ng tr&ecirc;n Dungmori online, c&aacute;c b\u1ea1n s\u1ebd th\u1ea5y m\u1ed9t c&aacute;ch tr&igrave;nh b&agrave;y v&agrave; thi\u1ebft k\u1ebf b&agrave;i gi\u1ea3ng v&ocirc; c&ugrave;ng d\u1ec5 hi\u1ec3u theo t&agrave;i li\u1ec7u gi&aacute;o tr&igrave;nh \u0111\u01b0\u1ee3c bi&ecirc;n so\u1ea1n \u0111\u1ea7y \u0111\u1ee7 t\u1eeb m\u1eabu c&acirc;u \u0111\u1ebfn b&agrave;i t\u1eadp.<\/span><\/li>\n<\/ol>\n<p style=\"margin-left:.5in\">\n\t<span new=\"\" style=\"font-family:\" times=\"\">T\u1ea5t nhi&ecirc;n, trong ph\u1ea7n ng\u1eef ph&aacute;p n&agrave;y, sau m\u1ed7i clip \u0111\u1ec1u s\u1ebd c&oacute; b&agrave;i t\u1eadp \u1ee9ng d\u1ee5ng ngay l\u1eadp t\u1ee9c, n&ecirc;n \u0111\u1eebng bao gi\u1edd lo l\u1eafng v\u1ec1 vi\u1ec7c s\u1ebd \u0111&aacute;nh r\u01a1i ki\u1ebfn th\u1ee9c \u1edf m\u1ed9t n\u01a1i n&agrave;o \u0111&oacute; nh&eacute;.<\/span><\/p>\n<p>\n\t<span new=\"\" style=\"font-family:\" times=\"\">Sau khi ho&agrave;n th&agrave;nh xong ch\u1eb7ng \u0111\u01b0\u1eddng \u0111\u1ea7u ti&ecirc;n n&agrave;y r\u1ed3i, ch&uacute;ng ta h&atilde;y c&ugrave;ng b\u1eaft tay v&agrave;o ch\u1eb7ng \u0111\u01b0\u1eddng ti\u1ebfp theo v\u1edbi 3 ph\u1ea7n: \u0110\u1ecdc hi\u1ec3u, Nghe hi\u1ec3u v&agrave; luy\u1ec7n b&agrave;i t\u1eadp v&agrave; \u0111\u1ec1 thi th\u1eed.<\/span><\/p>\n<ol>\n\t<li>\n\t\t<span new=\"\" style=\"font-family:\" times=\"\">\u0110\u1ecdc hi\u1ec3u s\u1ebd do c&ocirc; Thanh, nghe hi\u1ec3u s\u1ebd do th\u1ea7y D\u0169ng gi\u1ea3ng d\u1ea1y. Trong c&aacute;c clip n&agrave;y, 2 th\u1ea7y c&ocirc; s\u1ebd h\u01b0\u1edbng d\u1eabn cho ch&uacute;ng ta t\u1ec9 m\u1ec9 c&aacute;ch l&agrave;m th\u1ebf n&agrave;o \u0111\u1ec3 gi\u1ea3i quy\u1ebft t\u1eebng ph\u1ea7n t\u1eebng ph\u1ea7n trong b&agrave;i thi. N&ecirc;n y&ecirc;n t&acirc;m, n\u1ebfu nh\u01b0 \u0111&atilde; h\u1ecdc ch\u1eafc t\u1eeb v&agrave; ng\u1eef ph&aacute;p tr\u01b0\u1edbc \u0111&oacute; r\u1ed3i th&igrave; \u0111\u1ecdc hi\u1ec3u v&agrave; nghe hi\u1ec3u ch\u1ec9 l&agrave; chuy\u1ec7n nh\u1ecf th&ocirc;i. T\u1ea5t nhi&ecirc;n, sau khi \u0111\u01b0\u1ee3c th\u1ea7y c&ocirc; h\u01b0\u1edbng d\u1eabn c\u01a1 b\u1ea3n c&aacute;ch l&agrave;m qua t\u1eebng b&agrave;i r\u1ed3i, ch&uacute;ng ta s\u1ebd c&oacute; r\u1ea5t nhi\u1ec1u b&agrave;i t\u1eadp \u0111\u1ec3 luy\u1ec7n t\u1eadp ngay sau \u0111&oacute;.<\/span><br \/>\n\t\t&nbsp;<\/li>\n\t<li>\n\t\t<span new=\"\" style=\"font-family:\" times=\"\">V&agrave; cu\u1ed1i c&ugrave;ng, h&atilde;y c&ugrave;ng ki\u1ec3m ch\u1ee9ng kh\u1ea3 n\u0103ng c\u1ee7a m&igrave;nh b\u1eb1ng nh\u1eefng \u0111\u1ec1 thi th\u1eed nh&eacute;.<\/span><\/li>\n<\/ol>\n<p>\n\t<span new=\"\" style=\"font-family:\" times=\"\">C&oacute; m\u1ed9t \u0111i\u1ec1u l\u01b0u &yacute; \u0111&oacute; l&agrave;, ngay c\u1ea3 khi ch&uacute;ng ta b\u01b0\u1edbc v&agrave;o l&agrave;m \u0111\u1ec1 r\u1ed3i th&igrave; c\u0169ng \u0111\u1eebng qu&ecirc;n m\u1edf ra nghe \u0111i nghe l\u1ea1i nh\u1eefng b&agrave;i gi\u1ea3ng ph\u1ea7n t\u1eeb v\u1ef1ng, ch\u1eef H&aacute;n, ng\u1eef ph&aacute;p k\u1ec3 c\u1ea3 tr\u01b0\u1edbc khi ng\u1ee7, khi ng\u1ed3i xe bus, khi n\u1ea5u c\u01a1m \u0111\u1ec3 cho nh\u1eefng ki\u1ebfn th\u1ee9c n&agrave;y t\u1ef1 th\u1ea5m v&agrave;o \u0111\u1ea7u nh&eacute;.<\/span><\/p>\n<p>\n\t<span new=\"\" style=\"font-family:\" times=\"\">V\u1edbi l\u1ed9 tr&igrave;nh n&agrave;y, th&igrave; th\u1ef1c s\u1ef1 ch\u1eb3ng c&oacute; l&iacute; do g&igrave; m&agrave; ch&uacute;ng ta kh&ocirc;ng t\u1ef1 tin khi \u0111i thi c\u1ea3.<\/span><\/p>\n<p>\n\t<span new=\"\" style=\"font-family:\" times=\"\">M\u1ee5c ti&ecirc;u c\u1ee7a N3 Dungmori online th&igrave; \u0111\u01a1n gi\u1ea3n th&ocirc;i: \u0110&oacute; ch&iacute;nh l&agrave; \u0111\u1ed7 N3.<\/span><\/p>\n<p>\n\t<span new=\"\" style=\"font-family:\" times=\"\">Mu\u1ed1n \u0111\u1ed7 N3 &agrave;, \u0111\u1ebfn Trung t&acirc;m l&agrave;m g&igrave;. M\u1edf Dungmori ra m&agrave; h\u1ecdc.<\/span><\/p>\n<p style=\"text-align:left\">\n\t<span new=\"\" style=\"font-family:\" times=\"\">N3 Dungmori Gi&aacute;o vi&ecirc;n t\u1ed1t, b&agrave;i gi\u1ea3ng hay<\/span><\/p>",
										"intro" : "<span style=\"color:#3498db\"><span style=\"font-size:16px\"><strong>L\u1ed9 tr&igrave;nh h\u1ecdc N3 hi\u1ec7u qu\u1ea3 nh\u1ea5t&nbsp;<\/strong><\/span><\/span>",
										"intro_video" : null,
										"price" : 1290000,
										"link" : "https:\/\/www.youtube.com\/watch?v=49PiSZ1TMqs&feature=youtu.be",
										"link_data" : "{\"server\":\"2\",\"link\":\"49PiSZ1TMqs\",\"sub\":[]}",
										"common_data" : "null",
										"stats_data" : "{\"lesson\":\"10\",\"time\":\"6\",\"video\":\"70\"}",
										"discount" : 0,
										"price_option" : 1,
										"watch_config" : 1,
										"watch_times" : 0,
										"watch_expired" : 180,
										"feature" : 0,
										"new" : 1,
										"noindex" : 0,
										"comment_allow" : 2,
										"comment_fb_allow" : 0,
										"rate_allow" : 0,
										"sort_order" : 5,
										"created" : 0,
										"updated" : 1522738950,
										"expired" : 1478710140,
										"expired_option" : 0,
										"show" : 1,
										"show_in_menu" : 1,
										"has_lesson_free" : 1,
										"SEOtitle" : "L\u1ed9 tr\u00ecnh \u00f4n thi JLPT N3 hi\u1ec7u qu\u1ea3 nh\u1ea5t!",
										"SEOurl" : "khoa-n3",
										"SEOdescription" : "\"...\u0110\u1eebng h\u1ecdc song song c\u1ea3 \u0111\u1ecdc hi\u1ec3u nghe hi\u1ec3u ngay t\u1eeb \u0111\u1ea7u. V\u1ee9t n\u00f3 \u0111i. V\u00ec trong b\u00e0i \u0111\u1ecdc hi\u1ec3u, nghe hi\u1ec3u N3 d\u0129 nhi\u00ean s\u1ebd c\u00f3 r\u1ea5t nhi\u1ec1u nh\u1eefng ch\u1eef H\u00e1n, t\u1eeb v\u1ef1ng, ng\u1eef ph\u00e1p N3, n\u00ean n\u1ebfu nh\u01b0 kh\u00f4ng c\u00f3 v\u1ed1n li\u1ebfng t\u1eeb",
										"SEOkeywords" : "L\u1ed9 tr\u00ecnh \u00f4n thi JLPT N3 hi\u1ec7u qu\u1ea3 nh\u1ea5t!",
										"comment_count" : 926,
										"rate_total" : 0,
										"rate_one" : 0,
										"rate_two" : 0,
										"rate_three" : 0,
										"rate_four" : 0,
										"rate_five" : 0,
										"rate" : 5,
										"count_view" : 479452,
										"count_buy" : 0,
										"user_id" : 0,
										"user_options" : "{\"status\":\"0\",\"amount\":50,\"amount_type\":\"2\",\"user_id\":0}",
										"affiliate_options" : null,
										"updated_at" : "2018-09-24 16:12:33",
										"created_at" : "2018-03-01 21:40:46",
										"expired_day" : "2016-11-09",
										"jpy_price" : 6500,
										"exam_minute" : 0,
										"exam_hours" : null,
										"exam_minute_2" : 0,
										"exam_minute_3" : 0
									}
								},
								"get_author" : {
									"id" : 1,
									"name" : "Nguy\u1ec5n V\u0103n D\u0169ng",
									"youtube_intro" : "https:\/\/www.youtube.com\/watch?v=a1Nbt0bsfpE",
									"image_intro" : "bai-31_1493888276.jpg",
									"information" : "\"Khi \u0111\u00e3 tr\u1ea3i qua m\u1ed9t ch\u1eb7ng \u0111\u01b0\u1eddng d\u00e0i g\u1eafn b\u00f3 v\u1edbi ti\u1ebfng Nh\u1eadt, t\u00f4i b\u1eaft \u0111\u1ea7u c\u00f3 suy ngh\u0129 l\u00e0m th\u1ebf n\u00e0o \u0111\u1ec3 t\u1ea5t c\u1ea3 nh\u1eefng ng\u01b0\u1eddi Vi\u1ec7t Nam \u0111ang h\u1ecdc ti\u1ebfng Nh\u1eadt d\u00f9 \u1edf b\u1ea5t k\u00ec \u0111\u00e2u c\u0169ng c\u00f3 th\u1ec3 h\u1ecdc n\u00f3 m\u1ed9t c\u00e1ch d\u1ec5 d\u00e0ng..",
									"avatar_id" : 1104,
									"avatar_name" : "1523865681_12345_05f037.png",
									"avartar_detail" : "1524019245_5641665_a22261.png",
									"description" : "<p style=\"text-align: justify;\">\r\n\t<span style=\"font-size:16px;\"><span style=\"font-family:arial,helvetica,sans-serif;\">&ldquo;Khi \u0111&atilde; tr\u1ea3i qua m\u1ed9t ch\u1eb7ng \u0111\u01b0\u1eddng d&agrave;i g\u1eafn b&oacute; v\u1edbi ti\u1ebfng Nh\u1eadt, t&ocirc;i b\u1eaft \u0111\u1ea7u c&oacute; suy ngh\u0129 l&agrave;m th\u1ebf n&agrave;o \u0111\u1ec3 t\u1ea5t c\u1ea3 nh\u1eefng ng\u01b0\u1eddi Vi\u1ec7t Nam \u0111ang h\u1ecdc ti\u1ebfng Nh\u1eadt d&ugrave; \u1edf b\u1ea5t k&igrave; \u0111&acirc;u c\u0169ng c&oacute; th\u1ec3 h\u1ecdc n&oacute; m\u1ed9t c&aacute;ch d\u1ec5 d&agrave;ng.<br \/>\r\n\tV&agrave; Dungmori online ra \u0111\u1eddi. G\u1eedi g\u1eafm qua m\u1ed7i b&agrave;i gi\u1ea3ng l&agrave; c\u1ea3 t\u1ea5m l&ograve;ng c\u1ee7a ng\u01b0\u1eddi th\u1ea7y d\u1ea1y ch\u1eef.<br \/>\r\n\tNgay t\u1eeb ph&uacute;t gi&acirc;y \u0111\u0103ng nh\u1eadp v&agrave;o website n&agrave;y, h&atilde;y c&ugrave;ng t&ocirc;i t&igrave;m ra con \u0111\u01b0\u1eddng chinh ph\u1ee5c ti\u1ebfng Nh\u1eadt ng\u1eafn nh\u1ea5t v&agrave; th&uacute; v\u1ecb nh\u1ea5t nh&eacute;.&rdquo;<\/span><\/span><br \/>\r\n\t&nbsp;<\/p>",
									"description1" : "<p>\r\n\t<em><span style=\"font-size:16px\">Ti\u1ec3u s\u1eed:&nbsp;<\/span><\/em><\/p>\r\n<p>\r\n\t<span style=\"font-size:16px\"><strong>4\/2009:<\/strong> B\u1eaft \u0111\u1ea7u h\u1ecdc tr\u01b0\u1eddng H\u1ecdc vi&ecirc;n giao l\u01b0u qu\u1ed1c t\u1ebf Tokyo<\/span><\/p>\r\n<p>\r\n\t<span style=\"font-size:16px\"><strong>2\/2011:<\/strong> T\u1ed1t nghi\u1ec7p tr\u01b0\u1eddng H\u1ecdc vi&ecirc;n giao l\u01b0u qu\u1ed1c t\u1ebf Tokyo<\/span><\/p>\r\n<p>\r\n\t<span style=\"font-size:16px\"><strong>4\/2011:<\/strong> V&agrave;o tr\u01b0\u1eddng \u0111\u1ea1i h\u1ecdc Nihon, khoa Gi&aacute;o d\u1ee5c<\/span><\/p>\r\n<p>\r\n\t<span style=\"font-size:16px\"><strong>12\/2012:<\/strong> Nh\u1eadn h\u1ecdc b\u1ed5ng c\u1ee7a h\u1ed9i Ph\u1eadt gi&aacute;o Tokyo<\/span><\/p>\r\n<p>\r\n\t<span style=\"font-size:16px\"><strong>4\/2013:<\/strong> Nh\u1eadn h\u1ecdc b\u1ed5ng Mitsubishi (trong 2 n\u0103m)<\/span><\/p>\r\n<p>\r\n\t<span style=\"font-size:16px\"><strong>11\/2013:<\/strong> B\u1eaft \u0111\u1ea7u l&agrave;m clip d\u1ea1y h\u1ecdc tr&ecirc;n Youtube c&ugrave;ng v\u1edbi Nihongonomori t\u1ea1i Nh\u1eadt<\/span><\/p>\r\n<p>\r\n\t<span style=\"font-size:16px\"><strong>2\/2015:<\/strong> T\u1ed1t nghi\u1ec7p \u0111\u1ea1i h\u1ecdc Nihon, khoa Gi&aacute;o d\u1ee5c<\/span><\/p>\r\n<p>\r\n\t<span style=\"font-size:16px\"><strong>3\/2015 \u0111\u1ebfn nay:<\/strong> V\u1ec1 Vi\u1ec7t Nam th&agrave;nh l\u1eadp Nh\u1eadt ng\u1eef Nihongonomori t\u1ea1i H&agrave; N\u1ed9i<\/span><\/p>",
									"feature" : 1,
									"show" : 1,
									"protected" : 1,
									"SEOtitle" : "",
									"SEOurl" : "nguyen-van-dung",
									"SEOdescription" : "",
									"SEOkeywords" : "",
									"phone" : "",
									"email" : "",
									"facebook" : "",
									"twitter" : "",
									"updated_at" : "2018-04-24 10:42:54",
									"created_at" : null
								},
								"get_course" : {
									"id" : 3,
									"cat_id" : 10,
									"author_id" : "[\"1\",\"2\"]",
									"name" : "N3",
									"avatar_id" : 1704,
									"avatar_name" : "lo-trinh-n3_1495461460.jpg",
									"brief" : "N\u1ed9i dung \u0111ang c\u1eadp nh\u1eadp",
									"banner_id" : 1705,
									"banner_name" : "lo-trinh-n3_1495461465.jpg",
									"description" : "<p>\n\t<span style=\"font-size:16.0pt\"><span new=\"\" style=\"font-family:\" times=\"\">N3<\/span><\/span><\/p>\n<p>\n\t<span new=\"\" style=\"font-family:\" times=\"\">H&agrave;ng n\u0103m, c\u1ee9 sau m\u1ed7i m&ugrave;a thi JLPT l&agrave; trong c&aacute;c trang nh&oacute;m l\u1edbp h\u1ecdc c\u1ee7a Nihongonomori l\u1ea1i c&oacute; r\u1ea5t nhi\u1ec1u nh\u1eefng tin nh\u1eafn b&aacute;o \u0111\u1ed7 nh\u01b0 th\u1ebf n&agrave;y.<\/span><\/p>\n<p>\n\t<span new=\"\" style=\"font-family:\" times=\"\">V\u1eady th&igrave; l&agrave;m th\u1ebf n&agrave;o \u0111\u1ec3 c&oacute; th\u1ec3 v\u01b0\u1ee3t qua c&aacute;c k&igrave; thi n&agrave;y nh\u1ec9?<\/span><\/p>\n<p>\n\t<span new=\"\" style=\"font-family:\" times=\"\">C&aacute;c b\u1ea1n bi\u1ebft \u0111&oacute; l&agrave; g&igrave; kh&ocirc;ng? M&igrave;nh tin ch\u1eafc r\u1eb1ng t\u1ea5t c\u1ea3 c&aacute;c b\u1ea1n \u0111&atilde; t\u1eebng h\u1ecdc v&agrave; \u0111\u1ed7 s\u1ebd \u0111\u1ec1u c&oacute; chung m\u1ed9t c&acirc;u tr\u1ea3 l\u1eddi: \u0110i\u1ec3m m\u1ea5u ch\u1ed1t ch&iacute;nh l&agrave; L\u1ed9 tr&igrave;nh h\u1ecdc. N\u1ebfu kh&ocirc;ng c&oacute; m\u1ed9t l\u1ed9 tr&igrave;nh h\u1ecdc h\u1ee3p l&iacute; th&igrave; d&ugrave; c&oacute; gi&aacute;o tr&igrave;nh hay nh\u1ea5t, th\u1ea7y c&ocirc; gi&aacute;o gi\u1ecfi nh\u1ea5t th&igrave; con \u0111\u01b0\u1eddng chinh ph\u1ee5c ti\u1ebfng Nh\u1eadt s\u1ebd c&ograve;n xa l\u1eafm nh&eacute;.<\/span><\/p>\n<p>\n\t<span new=\"\" style=\"font-family:\" times=\"\">D\u1ef1a v&agrave;o kinh nghi\u1ec7m gi\u1ea3ng d\u1ea1y qua nhi\u1ec1u kh&oacute;a, Dungmori \u0111&atilde; x&acirc;y d\u1ef1ng m\u1ed9t l\u1ed9 tr&igrave;nh &ocirc;n thi N3 online Ng\u1eafn nh\u1ea5t v&agrave; Hi\u1ec7u qu\u1ea3 nh\u1ea5t. H&atilde;y c&ugrave;ng t&igrave;m hi\u1ec3u xem, v\u1edbi Dungmori ch&uacute;ng ta s\u1ebd h\u1ecdc nh\u01b0 th\u1ebf n&agrave;o \u0111\u1ec3 ch\u1eafc ch\u1eafn \u0111\u1ed7 nh&eacute;.<\/span><\/p>\n<p>\n\t<span new=\"\" style=\"font-family:\" times=\"\">Kh&oacute;a h\u1ecdc \u0111\u01b0\u1ee3c chia ra th&agrave;nh t\u1eebng k\u0129 n\u0103ng trong b&agrave;i thi JLPT g\u1ed3m Kanji, t\u1eeb v\u1ef1ng, Ng\u1eef ph&aacute;p, \u0110\u1ecdc hi\u1ec3u, Nghe hi\u1ec3u v&agrave; cu\u1ed1i c&ugrave;ng l&agrave; ph\u1ea7n Luy\u1ec7n \u0111\u1ec1 thi th\u1eed.<\/span><\/p>\n<p>\n\t<span new=\"\" style=\"font-family:\" times=\"\">\u0110\u1eebng h\u1ecdc song song c\u1ea3 \u0111\u1ecdc hi\u1ec3u nghe hi\u1ec3u ngay t\u1eeb \u0111\u1ea7u. V\u1ee9t n&oacute; \u0111i. V&igrave; trong b&agrave;i \u0111\u1ecdc hi\u1ec3u, nghe hi\u1ec3u N3 d\u0129 nhi&ecirc;n s\u1ebd c&oacute; r\u1ea5t nhi\u1ec1u nh\u1eefng ch\u1eef H&aacute;n, t\u1eeb v\u1ef1ng, ng\u1eef ph&aacute;p N3, n&ecirc;n n\u1ebfu nh\u01b0 kh&ocirc;ng c&oacute; v\u1ed1n li\u1ebfng t\u1eeb v&agrave; ng\u1eef ph&aacute;p \u0111\u1ea7y \u0111\u1ee7 ch&uacute;ng ta s\u1ebd ph\u1ea3i ng\u1ed3i \u0111\u1ecdc v&agrave; ng\u1ed3i nghe nh\u01b0 m\u1ed9t ch&uacute; v\u1ecbt nghe s\u1ea5m lu&ocirc;n.<\/span><\/p>\n<p>\n\t<span new=\"\" style=\"font-family:\" times=\"\">Th\u1ebf n&ecirc;n, Ch&uacute;ng ta h&atilde;y chia qu&aacute; tr&igrave;nh h\u1ecdc ra l&agrave;m 2 giai \u0111o\u1ea1n. Giai \u0111o\u1ea1n \u0111\u1ea7u l&agrave; gia \u0111o\u1ea1n c&oacute;p nh\u1eb7t v\u1ed1n t\u1eeb v&agrave; ng\u1eef ph&aacute;p v\u1edbi 3 ph\u1ea7n Kanji, T\u1eeb v\u1ef1ng, Ng\u1eef ph&aacute;p. H&atilde;y h\u1ecdc th\u1eadt ch\u1eafc, Th\u1eadt ch\u1eafc, Th\u1eadt ch\u1eafc.<\/span><\/p>\n<ol>\n\t<li>\n\t\t<span new=\"\" style=\"font-family:\" times=\"\">Tr\u01b0\u1edbc ti&ecirc;n l&agrave; 15 b&agrave;i Kanji do th\u1ea7y D\u0169ng v&agrave; c&ocirc; Thanh gi\u1ea3ng d\u1ea1y. G\u1ea7n 380 ch\u1eef H&aacute;n thu\u1ed9c c\u1ea5p \u0111\u1ed9 N3 s\u1ebd \u0111\u01b0\u1ee3c s\u1eafp x\u1ebfp&nbsp; theo t\u1eebng b\u1ed9 trong ti\u1ebfng Nh\u1eadt. M\u1ed1i li&ecirc;n k\u1ebft v\u1ec1 ngh\u0129a gi\u1eefa c&aacute;c ch\u1eef H&aacute;n s\u1ebd gi&uacute;p c&aacute;c b\u1ea1n th\u1ea5y ch\u1eef H&aacute;n ch\u1eb3ng kh&oacute; t\u1eb9o n&agrave;o. Khi h\u1ecdc, nh\u1edb l&agrave; ph\u1ea3i mang gi\u1ea5y b&uacute;t ra ghi ch&eacute;p l\u1ea1i c&aacute;c v&iacute; d\u1ee5, \u0111\u1ecdc \u0111i \u0111\u1ecdc l\u1ea1i n&oacute; nhi\u1ec1u cho nh\u1edb r\u1ed3i \u0111\u1eebng qu&ecirc;n click v&agrave;o ph\u1ea7n 3 b&agrave;i t\u1eadp b&ecirc;n d\u01b0\u1edbi \u0111\u1ec3 \u0111i\u1ec1n c&aacute;ch \u0111\u1ecdc c\u1ee7a c&aacute;c t\u01b0 \u0111&atilde; h\u1ecdc v&agrave;o \u0111&acirc;y nha.<\/span><br \/>\n\t\t&nbsp;<\/li>\n\t<li>\n\t\t<span new=\"\" style=\"font-family:\" times=\"\">Ti\u1ebfp theo l&agrave; 12 b&agrave;i T\u1eeb v\u1ef1ng. do Th\u1ea7y Shimakawa, Miyamoto v&agrave; c&ocirc; Thanh gi\u1ea3ng d\u1ea1y. Trong m\u1ed7i m\u1ed9t clip, c\u1ea3 th\u1ea7y ng\u01b0\u1eddi Nh\u1eadt v&agrave; c&ocirc; gi&aacute;o Ng\u01b0\u1eddi Vi\u1ec7t s\u1ebd c&ugrave;ng xu\u1ea5t hi&ecirc;n. Gi&aacute;o vi&ecirc;n ng\u01b0\u1eddi Nh\u1eadt s\u1ebd \u0111&oacute;ng vai tr&ograve; ph&aacute;t &acirc;m t\u1eebng t\u1eeb v\u1ef1ng v&agrave; \u0111\u1ecdc v&iacute; d\u1ee5, c&ograve;n gi&aacute;o vi&ecirc;n ng\u01b0\u1eddi Vi\u1ec7t th&igrave; ngay l\u1eadp t\u1ee9c s\u1ebd \u0111\u01b0a ra l&iacute; gi\u1ea3i b\u1eb1ng ti\u1ebfng Vi\u1ec7t. C&aacute;ch h\u1ecdc n&agrave;y t\u01b0\u1edfng ch\u1eebng nh\u01b0 \u0111\u01a1n gi\u1ea3n nh\u01b0ng th\u1ef1c t\u1ebf s\u1ebd mang l\u1ea1i hi\u1ec7u qu\u1ea3 v&ocirc; c&ugrave;ng cao v&igrave; ch&uacute;ng ta s\u1ebd hi\u1ec3u \u0111\u01b0\u1ee3c lu&ocirc;n &yacute; ngh\u0129a c\u1ee7a t\u1eeb v\u1ef1ng v&agrave; c&aacute;ch d&ugrave;ng c\u1ee7a n&oacute; m\u1ed9t c&aacute;ch nhanh ch&oacute;ng v&agrave; ch&iacute;nh x&aacute;c nh\u1ea5t. T\u1ea5t nhi&ecirc;n, ph\u1ea7n t\u1eeb v\u1ef1ng c\u0169ng s\u1ebd c&oacute; ph\u1ea7n Test theo dang \u0111\u1ec1 gi\u1ed1ng nh\u01b0 \u0111\u1ec1 thi v\u1eady. Nh\u1edb l&agrave;m h\u1ebft v&agrave; nh\u1ea5t \u0111\u1ecbnh ph\u1ea3i \u0111\u01b0\u1ee3c 80 \u0111i\u1ec3m tr\u1edf n&ecirc;n nh&eacute;.<\/span><br \/>\n\t\t&nbsp;<\/li>\n\t<li>\n\t\t<span new=\"\" style=\"font-family:\" times=\"\">V&agrave; m\u1ed9t ph\u1ea7n n\u1eefa, c\u0169ng quan tr\u1ecdng kh&ocirc;ng k&eacute;m trong ch\u1eb7ng \u0111\u01b0\u1eddng \u0111\u1ea7u ti&ecirc;n chinh ph\u1ee5c N3 n&agrave;y \u0111&oacute; l&agrave; 22 clip d\u1ea1y ng\u1eef ph&aacute;p do c&ocirc; Thanh ph\u1ee5 tr&aacute;ch. Ch&uacute;ng ta \u0111&atilde; t\u1eebng xem r\u1ea5t nhi\u1ec1u clip d\u1ea1y ng\u1eef ph&aacute;p N3 c\u1ee7a c&ocirc; Thanh tr&ecirc;n Youtube r\u1ed3i, nh\u01b0ng trong 22 b&agrave;i gi\u1ea3ng tr&ecirc;n Dungmori online, c&aacute;c b\u1ea1n s\u1ebd th\u1ea5y m\u1ed9t c&aacute;ch tr&igrave;nh b&agrave;y v&agrave; thi\u1ebft k\u1ebf b&agrave;i gi\u1ea3ng v&ocirc; c&ugrave;ng d\u1ec5 hi\u1ec3u theo t&agrave;i li\u1ec7u gi&aacute;o tr&igrave;nh \u0111\u01b0\u1ee3c bi&ecirc;n so\u1ea1n \u0111\u1ea7y \u0111\u1ee7 t\u1eeb m\u1eabu c&acirc;u \u0111\u1ebfn b&agrave;i t\u1eadp.<\/span><\/li>\n<\/ol>\n<p style=\"margin-left:.5in\">\n\t<span new=\"\" style=\"font-family:\" times=\"\">T\u1ea5t nhi&ecirc;n, trong ph\u1ea7n ng\u1eef ph&aacute;p n&agrave;y, sau m\u1ed7i clip \u0111\u1ec1u s\u1ebd c&oacute; b&agrave;i t\u1eadp \u1ee9ng d\u1ee5ng ngay l\u1eadp t\u1ee9c, n&ecirc;n \u0111\u1eebng bao gi\u1edd lo l\u1eafng v\u1ec1 vi\u1ec7c s\u1ebd \u0111&aacute;nh r\u01a1i ki\u1ebfn th\u1ee9c \u1edf m\u1ed9t n\u01a1i n&agrave;o \u0111&oacute; nh&eacute;.<\/span><\/p>\n<p>\n\t<span new=\"\" style=\"font-family:\" times=\"\">Sau khi ho&agrave;n th&agrave;nh xong ch\u1eb7ng \u0111\u01b0\u1eddng \u0111\u1ea7u ti&ecirc;n n&agrave;y r\u1ed3i, ch&uacute;ng ta h&atilde;y c&ugrave;ng b\u1eaft tay v&agrave;o ch\u1eb7ng \u0111\u01b0\u1eddng ti\u1ebfp theo v\u1edbi 3 ph\u1ea7n: \u0110\u1ecdc hi\u1ec3u, Nghe hi\u1ec3u v&agrave; luy\u1ec7n b&agrave;i t\u1eadp v&agrave; \u0111\u1ec1 thi th\u1eed.<\/span><\/p>\n<ol>\n\t<li>\n\t\t<span new=\"\" style=\"font-family:\" times=\"\">\u0110\u1ecdc hi\u1ec3u s\u1ebd do c&ocirc; Thanh, nghe hi\u1ec3u s\u1ebd do th\u1ea7y D\u0169ng gi\u1ea3ng d\u1ea1y. Trong c&aacute;c clip n&agrave;y, 2 th\u1ea7y c&ocirc; s\u1ebd h\u01b0\u1edbng d\u1eabn cho ch&uacute;ng ta t\u1ec9 m\u1ec9 c&aacute;ch l&agrave;m th\u1ebf n&agrave;o \u0111\u1ec3 gi\u1ea3i quy\u1ebft t\u1eebng ph\u1ea7n t\u1eebng ph\u1ea7n trong b&agrave;i thi. N&ecirc;n y&ecirc;n t&acirc;m, n\u1ebfu nh\u01b0 \u0111&atilde; h\u1ecdc ch\u1eafc t\u1eeb v&agrave; ng\u1eef ph&aacute;p tr\u01b0\u1edbc \u0111&oacute; r\u1ed3i th&igrave; \u0111\u1ecdc hi\u1ec3u v&agrave; nghe hi\u1ec3u ch\u1ec9 l&agrave; chuy\u1ec7n nh\u1ecf th&ocirc;i. T\u1ea5t nhi&ecirc;n, sau khi \u0111\u01b0\u1ee3c th\u1ea7y c&ocirc; h\u01b0\u1edbng d\u1eabn c\u01a1 b\u1ea3n c&aacute;ch l&agrave;m qua t\u1eebng b&agrave;i r\u1ed3i, ch&uacute;ng ta s\u1ebd c&oacute; r\u1ea5t nhi\u1ec1u b&agrave;i t\u1eadp \u0111\u1ec3 luy\u1ec7n t\u1eadp ngay sau \u0111&oacute;.<\/span><br \/>\n\t\t&nbsp;<\/li>\n\t<li>\n\t\t<span new=\"\" style=\"font-family:\" times=\"\">V&agrave; cu\u1ed1i c&ugrave;ng, h&atilde;y c&ugrave;ng ki\u1ec3m ch\u1ee9ng kh\u1ea3 n\u0103ng c\u1ee7a m&igrave;nh b\u1eb1ng nh\u1eefng \u0111\u1ec1 thi th\u1eed nh&eacute;.<\/span><\/li>\n<\/ol>\n<p>\n\t<span new=\"\" style=\"font-family:\" times=\"\">C&oacute; m\u1ed9t \u0111i\u1ec1u l\u01b0u &yacute; \u0111&oacute; l&agrave;, ngay c\u1ea3 khi ch&uacute;ng ta b\u01b0\u1edbc v&agrave;o l&agrave;m \u0111\u1ec1 r\u1ed3i th&igrave; c\u0169ng \u0111\u1eebng qu&ecirc;n m\u1edf ra nghe \u0111i nghe l\u1ea1i nh\u1eefng b&agrave;i gi\u1ea3ng ph\u1ea7n t\u1eeb v\u1ef1ng, ch\u1eef H&aacute;n, ng\u1eef ph&aacute;p k\u1ec3 c\u1ea3 tr\u01b0\u1edbc khi ng\u1ee7, khi ng\u1ed3i xe bus, khi n\u1ea5u c\u01a1m \u0111\u1ec3 cho nh\u1eefng ki\u1ebfn th\u1ee9c n&agrave;y t\u1ef1 th\u1ea5m v&agrave;o \u0111\u1ea7u nh&eacute;.<\/span><\/p>\n<p>\n\t<span new=\"\" style=\"font-family:\" times=\"\">V\u1edbi l\u1ed9 tr&igrave;nh n&agrave;y, th&igrave; th\u1ef1c s\u1ef1 ch\u1eb3ng c&oacute; l&iacute; do g&igrave; m&agrave; ch&uacute;ng ta kh&ocirc;ng t\u1ef1 tin khi \u0111i thi c\u1ea3.<\/span><\/p>\n<p>\n\t<span new=\"\" style=\"font-family:\" times=\"\">M\u1ee5c ti&ecirc;u c\u1ee7a N3 Dungmori online th&igrave; \u0111\u01a1n gi\u1ea3n th&ocirc;i: \u0110&oacute; ch&iacute;nh l&agrave; \u0111\u1ed7 N3.<\/span><\/p>\n<p>\n\t<span new=\"\" style=\"font-family:\" times=\"\">Mu\u1ed1n \u0111\u1ed7 N3 &agrave;, \u0111\u1ebfn Trung t&acirc;m l&agrave;m g&igrave;. M\u1edf Dungmori ra m&agrave; h\u1ecdc.<\/span><\/p>\n<p style=\"text-align:left\">\n\t<span new=\"\" style=\"font-family:\" times=\"\">N3 Dungmori Gi&aacute;o vi&ecirc;n t\u1ed1t, b&agrave;i gi\u1ea3ng hay<\/span><\/p>",
									"intro" : "<span style=\"color:#3498db\"><span style=\"font-size:16px\"><strong>L\u1ed9 tr&igrave;nh h\u1ecdc N3 hi\u1ec7u qu\u1ea3 nh\u1ea5t&nbsp;<\/strong><\/span><\/span>",
									"intro_video" : null,
									"price" : 1290000,
									"link" : "https:\/\/www.youtube.com\/watch?v=49PiSZ1TMqs&feature=youtu.be",
									"link_data" : "{\"server\":\"2\",\"link\":\"49PiSZ1TMqs\",\"sub\":[]}",
									"common_data" : "null",
									"stats_data" : "{\"lesson\":\"10\",\"time\":\"6\",\"video\":\"70\"}",
									"discount" : 0,
									"price_option" : 1,
									"watch_config" : 1,
									"watch_times" : 0,
									"watch_expired" : 180,
									"feature" : 0,
									"new" : 1,
									"noindex" : 0,
									"comment_allow" : 2,
									"comment_fb_allow" : 0,
									"rate_allow" : 0,
									"sort_order" : 5,
									"created" : 0,
									"updated" : 1522738950,
									"expired" : 1478710140,
									"expired_option" : 0,
									"show" : 1,
									"show_in_menu" : 1,
									"has_lesson_free" : 1,
									"SEOtitle" : "L\u1ed9 tr\u00ecnh \u00f4n thi JLPT N3 hi\u1ec7u qu\u1ea3 nh\u1ea5t!",
									"SEOurl" : "khoa-n3",
									"SEOdescription" : "\"...\u0110\u1eebng h\u1ecdc song song c\u1ea3 \u0111\u1ecdc hi\u1ec3u nghe hi\u1ec3u ngay t\u1eeb \u0111\u1ea7u. V\u1ee9t n\u00f3 \u0111i. V\u00ec trong b\u00e0i \u0111\u1ecdc hi\u1ec3u, nghe hi\u1ec3u N3 d\u0129 nhi\u00ean s\u1ebd c\u00f3 r\u1ea5t nhi\u1ec1u nh\u1eefng ch\u1eef H\u00e1n, t\u1eeb v\u1ef1ng, ng\u1eef ph\u00e1p N3, n\u00ean n\u1ebfu nh\u01b0 kh\u00f4ng c\u00f3 v\u1ed1n li\u1ebfng t\u1eeb",
									"SEOkeywords" : "L\u1ed9 tr\u00ecnh \u00f4n thi JLPT N3 hi\u1ec7u qu\u1ea3 nh\u1ea5t!",
									"comment_count" : 926,
									"rate_total" : 0,
									"rate_one" : 0,
									"rate_two" : 0,
									"rate_three" : 0,
									"rate_four" : 0,
									"rate_five" : 0,
									"rate" : 5,
									"count_view" : 479452,
									"count_buy" : 0,
									"user_id" : 0,
									"user_options" : "{\"status\":\"0\",\"amount\":50,\"amount_type\":\"2\",\"user_id\":0}",
									"affiliate_options" : null,
									"updated_at" : "2018-09-24 16:12:33",
									"created_at" : "2018-03-01 21:40:46",
									"expired_day" : "2016-11-09",
									"jpy_price" : 6500,
									"exam_minute" : 0,
									"exam_hours" : null,
									"exam_minute_2" : 0,
									"exam_minute_3" : 0
								}
							};
							lesson_results = [];
							lesson_writeQuestions = [];
							course = "N3"; //Them khoa hoc cho JLPT
							posExam = null; //tu dong load cho bai thi sau
							is_exam = "0"; //check xem co phải là bài thi hay ko
						</script>

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

								<comments tbid="1432" tbname="lesson" num-posts="15"
									background="#fff" ref="comment"> </comments>

							</div>
							<div id="facebook-comment-content" class="tab-pane fade">
								<comment-fb
									url="http://dungmori.com/khoa-hoc/khoa-n3/1432-test-1a-1"></comment-fb>
							</div>

						</div>
					</div>

				</div>

			</div>
		</div>
		<div class="go-top">
			<i class="fa fa-sort-asc"></i>
		</div>
		<script src="${contextPath}/resources/js/lazyload.min.js"></script>
		<script type="text/javascript">
			window.addEventListener("load", function(event) {
				lazyload();
			});
		</script>
		<script type="text/javascript">
			var lastFingerprint = 0;
		</script>
		<script src="${contextPath}/resources/js/vue.min.js"></script>
		<script src="${contextPath}/resources/js/app.js"></script>

		<script type="text/javascript">
			var enableFIV = false;
		</script>
		<script src="${contextPath}/resources/js/detail_lesson.js"></script>
	</div>
</body>
</html>