<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>HaiLDX - Thêm bài học mới.</title>
<link rel="icon" href="${contextPath}/resources/public/img/fav.png" />
<title>AdminLTE 2 | Editors</title>
<script src="../ckeditor/ckeditor.js"></script>
<script src="../ckfinder/ckfinder.js"></script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="menu.jsp"></jsp:include>
		<div class="content-wrapper">
			<section class="content-header">
				<span><h1 style="text-align: center;">
						Thêm bài bài học mới : <a href="" style="color: #00c0ef">Khóa
							học N3</a>
					</h1></span>
			</section>
			<form:form action="${contextPath}/admin/fix-course"
				modelAttribute="courseIlmForm" enctype="multipart/form-data">
				<form:input path="courseIlmId" type="hidden" />
				<!-- Main content -->
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-info">
								<!-- /.box-header -->
								<div class="box-body pad">
									<div class="box-body">
										<div class="form-group" style="width: 100%">
											<div style="float: left;">
												<h4>
													<label>Loại Bài Học :</label>
												</h4>
											</div>
											<div style="width: 220px; margin-left: 120px;">
												<form:select class="form-control" path="courseIlmType">
													<form:options items="${courseIlmType}"
														itemLabel="courseIlmTypeName" itemValue="courseIlmTypeId" />
												</form:select>
											</div>
										</div>
										<div class="form-group" style="width: 975px;">
											<h4>
												<label> Tên Bài Học</label>
											</h4>
											<form:input type="text" class="form-control"
												name="lessonName" path="lessonName" id="lessonName"
												placeholder="Tên Bài Học" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-xs-12">
							<div class="box">
								<div class="box-header">
									<h4>
										<label style="margin-left: 12px;"> Từ Mới</label>
									</h4>
								</div>

								<div class="box-body" style="margin-left: 12px;">
									<div id="example2_wrapper"
										class="dataTables_wrapper form-inline dt-bootstrap">
										<div class="row">
											<div class="col-sm-12 tableContainer"
												id="detail-voca tableContainer">
												<table id="data-voca"
													class="scrollTable table table-bordered table-hover dataTable no-footer scrollTable"
													role="grid" aria-describedby="example2_info">
													<thead class="fixedHeader">
														<tr style="background-color: #cbe1f2;">
															<td width="140px"><label>Hirakana/Katakana</label></td>
															<td width="80px"><label>Kanji</label></td>
															<td width="295px"><label>Ý Nghĩa</label></td>
															<td width="303px"><label>Ví dụ</label></td>
															<td width="53px"><label>Audio</label></td>
															<td width="95px"></td>
														</tr>
													</thead>
													<tbody id="list-voca" class="scrollContent">
														<tr style="width: 1px; margin: 0px">
															<td width="140px"></td>
															<td width="80px"></td>
															<td width="295px"></td>
															<td width="303px"></td>
															<td width="53px"></td>
															<td width="80px"></td>
														</tr>
														<c:if test="${courseIlmForm != null}">
															<c:forEach items="${courseIlmForm.vocaCourseIlms}"
																var="voca" varStatus="id">
																<tr id="${voca.vocaCourseIlmId}">
																	<td>${voca.hirakana}</td>
																	<td>${voca.kanji}</td>
																	<td>${voca.translate}</td>
																	<td>${voca.example}</td>
																	<td style="text-align: center;"><audio id="mp3Mini_${id.index}" preload="none">
																			<source type="audio/mpeg"
																				src="${contextPath}/reponsitory/${courseIlmForm.getCourse().getCourseName()}/voca/${voca.audio}">
																			<source type="audio/ogg"
																				src="${contextPath}/reponsitory/N5/voca/watashi.ogg">
																		</audio><span id="mp3MiniPlayer_${id.index}"
																		class="jp-audio mp4"><span
																			class="jp-type-single"><span
																				class="jp-gui jp-interface"><span
																					class="jp-controls"><a
																						href="javascript:void(0);" class="jp-play"
																						id="jp-play-${id.index}" tabindex="1"
																						onclick="playMp4(${id.index})"><i
																							class="fa fa-fw fa-play-circle-o"></i></a><a
																						href="javascript:void(0);" class="jp-pause"
																						id="jp-pause-${id.index}" tabindex="1"
																						onClick="pauseMp4(${id.index})"><i
																							class="fa fa-fw fa-pause"></i></a></span></span></span></span></td>
																	<td><a class="del-voca" onclick="deleteRow(this)"
																		href="javascript:void(0);">&nbsp;<i
																			class="fa fa-trash-o">&nbsp;</i></a><a
																		onclick="fixRow(this)" href="javascript:void(0);">&nbsp;<i
																			class="fa fa-pencil"></i></a></td>
																</tr>
															</c:forEach>
														</c:if>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
								<div style="width: 100%; font-size: 20px; margin-left: 15px">
									<a onclick="showMnVc()" href="javascript:void(0);">&nbsp;<i
										class="fa fa-fw fa-plus-square-o"></i></a>

								</div>
								<div class="mana-voca" style="display: none;">
									<div class="form-group">
										<div class="col-xs-3 ">
											<label style="margin-left: 10px;">Hirakana/Katakana</label> <input
												id="hirakana" type="text" class="form-control"
												placeholder="Hirakana/Katakana.." style="margin-left: 5px">
										</div>
										<div class="col-xs-3">
											<label style="margin-left: 5px">Kanji</label> <input
												type="text" id="kanji" class="form-control"
												placeholder="Kanji..">
										</div>
										<div class="col-xs-5">
											<label style="margin-left: 5px">Dịch nghĩa</label> <input
												type="text" id="translate" class="form-control"
												placeholder="Dịch nghĩa..">
										</div>
										<div style="width: 100%; height: 1px;"></div>
										<textarea style="width: 88.5%; margin: 60px 0 0 20px"
											id="example" class="form-control" placeholder="Ví dụ.."></textarea>
										<div class="col-xs-1 btn btn-default btn-file"
											style="margin: 5px 30px 0 20px">
											<i class="fa fa-fw fa-file-image-o"></i>Audio<input
												type="file" name="file-img" id="audio-upload"> <input
												type="hidden" id="audio-name">
										</div>
										<div>
											<button type="button" onclick="addVoca()"
												class="btn btn-info btn-flat btn-add-member"
												style="margin-top: 5px">Thêm</button>
										</div>
									</div>
								</div>
								<div style="width: 100%; height: 1px;"></div>
								<!-- /.box-body -->
							</div>
							<!-- /.box -->

						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</section>

				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-info">
								<!-- /.box-header -->
								<div class="box-body pad">
									<div class="box-body">
										<div class="form-group" style="width: 100%"></div>
										<div class="form-group">
											<h4>
												<label>Ngữ Pháp</label>
											</h4>
											<form:textarea class="ckeditor" id="introduce"
												name="introduce" path="introduce" required="true" rows="12"></form:textarea>
										</div>
									</div>

								</div>

							</div>
							<!-- /.box -->
						</div>
						<!-- /.col-->
					</div>
					<!-- ./row -->
				</section>
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-info">
								<!-- /.box-header -->
								<div class="box-body pad">
									<div class="box-body">
										<div class="form-group" style="width: 100%"></div>
										<div class="form-group">
											<h4>
												<label>Video Hội Thoại</label>
											</h4>
											<form:textarea class="ckeditor" id="script" name="introduce"
												path="introduce" required="true" rows="12"></form:textarea>
										</div>
										<div class="form-group">
											<h4>
												<label> Video Bài Học</label>
											</h4>
											<div class="btn btn-default btn-file">
												<i class="fa fa-fw fa-file-image-o"></i> Ảnh Nền Video<input
													type="file" name="file-img">
											</div>
											&nbsp;&nbsp;
											<div class="btn btn-default btn-file">
												<i class="fa fa-fw fa-file-video-o"></i> Video Bài Học Đính
												Kèm(Max.32MB)<input type="file" name="file-video">
											</div>
										</div>
										<button class="btn btn-primary" onclick="addCourse();">
											<i class="fa fa-fw fa-check"></i>Cập Nhật
										</button>
									</div>

								</div>

							</div>
							<!-- /.box -->
						</div>
						<!-- /.col-->
					</div>
					<!-- ./row -->
				</section>
				<input type="hidden" name="edit-voca" id="edit-voca" value="o"
					index="o" />
				<input type="hidden" name="list-current" id="list-current" />
				<input type="hidden" name="dele-old" id="dele-old" value="[]" />
			</form:form>
			<div></div>
			<!-- /.content -->
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- /.content-wrapper -->
		<script>
			CKEDITOR
					.replace(
							'introduce',
							{
								filebrowserBrowseUrl : '../ckfinder/ckfinder.html',
								filebrowserImageBrowseUrl : '../ckfinder/ckfinder.html?type=Images',
								filebrowserFlashBrowseUrl : '../ckfinder/ckfinder.html?type=Flash',
								filebrowserUploadUrl : '../ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files',
								filebrowserImageUploadUrl : '../ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images',
								filebrowserFlashUploadUrl : '../ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash'
							});
		</script>
		<script>
			CKEDITOR
					.replace(
							'script',
							{
								filebrowserBrowseUrl : '../ckfinder/ckfinder.html',
								filebrowserImageBrowseUrl : '../ckfinder/ckfinder.html?type=Images',
								filebrowserFlashBrowseUrl : '../ckfinder/ckfinder.html?type=Flash',
								filebrowserUploadUrl : '../ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files',
								filebrowserImageUploadUrl : '../ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images',
								filebrowserFlashUploadUrl : '../ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash'
							});
		</script>
		<%-- 		<script src="${contextPath}/resources/private/js/jquery.min.js"></script> --%>
		<!-- 		<script -->
		<%-- 			src="${contextPath}/resources/private/js/jquery.dataTables.min.js"></script> --%>
		<!-- 		<script -->
		<%-- 			src="${contextPath}/resources/private/js/dataTables.bootstrap.min.js"></script> --%>
		<script src="${contextPath}/resources/private/js/up.lesson.js"></script>
<%-- 		<script src="${contextPath}/resources/public/js/detail_lesson.js"></script> --%>
	</div>
</body>

</html>
