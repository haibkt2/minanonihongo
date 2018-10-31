<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Editors</title>
<script src="ckeditor/ckeditor.js"></script>
<script src="ckfinder/ckfinder.js"></script>
</head>

<body class="hold-transition skin-blue sidebar-mini">
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<span><h1 style="text-align: center;">
					Thêm bài bài học mới : <a href="" style="color: #00c0ef">Khóa
						học N3</a>
				</h1></span>
		</section>
		<form>
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
										<div style="width: 15%; margin-left: 120px;">
											<select class="form-control">
												<option>Mustard</option>
												<option>Ketchup</option>
												<option>Relish</option>
											</select>
										</div>
									</div>
									<div class="form-group" style="">
										<h4>
											<label> Tên Bài Học</label>
										</h4>
										<input type="text" class="form-control" required="true"
											name="title" path="notifyTitle" id="fullname"
											placeholder="Enter fullname" style="width: 80%;" />
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
					<div class="col-xs-12">
						<div class="box">
							<div class="box-header">
								<h4>
									<label style="margin-left: 12px;"> Từ Mới</label>
								</h4>
							</div>
							<!-- /.box-header -->
							<div class="box-body" style="margin-left: 12px;">
								<div id="example2_wrapper"
									class="dataTables_wrapper form-inline dt-bootstrap">
									<div class="row">
										<div class="col-sm-6"></div>
										<div class="col-sm-6"></div>
									</div>
									<div class="row">
										<div class="col-sm-12" style="width: 80%;">
											<table id="example2"
												class="table table-bordered table-hover dataTable no-footer"
												role="grid" aria-describedby="example2_info">
												<thead>
													<tr role="row">
														<th class="sorting_asc" tabindex="0"
															aria-controls="example2" rowspan="1" colspan="1"
															aria-label="Số: activate to sort column descending"
															style="width: 5%" aria-sort="ascending">Số</th>
														<th class="sorting" tabindex="0" aria-controls="example2"
															rowspan="1" colspan="1"
															aria-label="Hiragana/Katakana: activate to sort column ascending"
															style="width: 20%">Hiragana/Katakana</th>
														<th class="sorting" tabindex="0" aria-controls="example2"
															rowspan="1" colspan="1"
															aria-label="Kanji: activate to sort column ascending"
															style="width: 20%">Kanji</th>
														<th class="sorting" tabindex="0" aria-controls="example2"
															rowspan="1" colspan="1"
															aria-label="Ý Nghĩa: activate to sort column ascending"
															style="width: 50%">Ý Nghĩa</th>
														<th class="sorting" tabindex="0" aria-controls="example2"
															rowspan="1" colspan="1"
															aria-label=": activate to sort column ascending"
															style="width: 5%"></th>
													</tr>
												</thead>
												<tbody id="list-voca">

													<tr role="row" class="table-member-tr odd">
														<td class="sorting_1">Gecko</td>
														<td>Firefox 1.0</td>
														<td>Win 98+ / OSX.2+</td>
														<td>1.7</td>
														<td><a class="dele-voca">&nbsp;<i
																class="fa fa-trash-o">&nbsp;</i></a>&nbsp;<a>&nbsp;<i
																class="fa fa-pencil">&nbsp;</i></a></td>
													</tr>
													<tr role="row" class="table-member-tr">
														<td class="sorting_1">2</td>
														<td>1</td>
														<td>1</td>
														<td>1</td>
														<td><a class="dele-voca">&nbsp;<i
																class="fa fa-trash-o">&nbsp;</i></a>&nbsp;<a>&nbsp;<i
																class="fa fa-pencil">&nbsp;</i></a></td>
													</tr>
													<tr role="row" class="table-member-tr">
														<td class="sorting_1">3</td>
														<td>2</td>
														<td>3</td>
														<td>4</td>
														<td><a class="dele-voca">&nbsp;<i
																class="fa fa-trash-o">&nbsp;</i></a>&nbsp;<a>&nbsp;<i
																class="fa fa-pencil">&nbsp;</i></a></td>
													</tr>
													<tr role="row" class="table-member-tr">
														<td class="sorting_1">4</td>
														<td>6</td>
														<td>6</td>
														<td>67</td>
														<td><a class="dele-voca">&nbsp;<i
																class="fa fa-trash-o">&nbsp;</i></a>&nbsp;<a>&nbsp;<i
																class="fa fa-pencil">&nbsp;</i></a></td>
													</tr>
													<tr role="row" class="table-member-tr">
														<td class="sorting_1">5</td>
														<td>fdg</td>
														<td>dsadas</td>
														<td>dasdas</td>
														<td><a class="dele-voca">&nbsp;<i
																class="fa fa-trash-o">&nbsp;</i></a>&nbsp;<a>&nbsp;<i
																class="fa fa-pencil">&nbsp;</i></a></td>
													</tr>
													<tr role="row" class="table-member-tr">
														<td class="sorting_1">6</td>
														<td>dsadasd</td>
														<td>dsadas</td>
														<td>dsada</td>
														<td><a class="dele-voca">&nbsp;<i
																class="fa fa-trash-o">&nbsp;</i></a>&nbsp;<a>&nbsp;<i
																class="fa fa-pencil">&nbsp;</i></a></td>
													</tr>
													<tr role="row" class="table-member-tr">
														<td class="sorting_1">7</td>
														<td>sadas</td>
														<td>dasda</td>
														<td>dasda</td>
														<td><a class="dele-voca">&nbsp;<i
																class="fa fa-trash-o">&nbsp;</i></a>&nbsp;<a>&nbsp;<i
																class="fa fa-pencil">&nbsp;</i></a></td>
													</tr>
													<tr role="row" class="table-member-tr">
														<td class="sorting_1">8</td>
														<td>dsadas</td>
														<td>dasdas</td>
														<td>asdasd</td>
														<td><a class="dele-voca">&nbsp;<i
																class="fa fa-trash-o">&nbsp;</i></a>&nbsp;<a>&nbsp;<i
																class="fa fa-pencil">&nbsp;</i></a></td>
													</tr>
													<tr role="row" class="table-member-tr">
														<td class="sorting_1">9</td>
														<td>dasdasd</td>
														<td>dsada</td>
														<td>dasda</td>
														<td><a class="dele-voca">&nbsp;<i
																class="fa fa-trash-o">&nbsp;</i></a>&nbsp;<a>&nbsp;<i
																class="fa fa-pencil">&nbsp;</i></a></td>
													</tr>
													<tr role="row" class="table-member-tr">
														<td class="sorting_1">10</td>
														<td>dasaa</td>
														<td>aaaa</td>
														<td>adsada</td>
														<td><a class="dele-voca">&nbsp;<i
																class="fa fa-trash-o">&nbsp;</i></a>&nbsp;<a>&nbsp;<i
																class="fa fa-pencil">&nbsp;</i></a></td>
													</tr>
													<tr role="row" class="table-member-tr">
														<td class="sorting_1">11</td>
														<td>dsadas</td>
														<td>dsadasd</td>
														<td>dadada</td>
														<td><a class="dele-voca">&nbsp;<i
																class="fa fa-trash-o">&nbsp;</i></a>&nbsp;<a>&nbsp;<i
																class="fa fa-pencil">&nbsp;</i></a></td>
													</tr>
													<tr role="row" class="table-member-tr">
														<td class="sorting_1">12</td>
														<td>dasdas</td>
														<td>dasda</td>
														<td>dadad</td>
														<td><a class="dele-voca">&nbsp;<i
																class="fa fa-trash-o">&nbsp;</i></a>&nbsp;<a>&nbsp;<i
																class="fa fa-pencil">&nbsp;</i></a></td>
													</tr>
													<tr role="row" class="table-member-tr">
														<td class="sorting_1">13</td>
														<td>dadas</td>
														<td>dsadas</td>
														<td>dasda</td>
														<td><a class="dele-voca">&nbsp;<i
																class="fa fa-trash-o">&nbsp;</i></a>&nbsp;<a>&nbsp;<i
																class="fa fa-pencil">&nbsp;</i></a></td>
													</tr>
													<tr role="row" class="table-member-tr">
														<td class="sorting_1">14</td>
														<td>dsada</td>
														<td>dasda</td>
														<td>dada</td>
														<td><a class="dele-voca">&nbsp;<i
																class="fa fa-trash-o">&nbsp;</i></a>&nbsp;<a>&nbsp;<i
																class="fa fa-pencil">&nbsp;</i></a></td>
													</tr>
													<tr role="row" class="table-member-tr">
														<td class="sorting_1">15</td>
														<td>dsadas</td>
														<td>dasda</td>
														<td>dasda</td>
														<td><a class="dele-voca">&nbsp;<i
																class="fa fa-trash-o">&nbsp;</i></a>&nbsp;<a>&nbsp;<i
																class="fa fa-pencil">&nbsp;</i></a></td>
													</tr>
													<tr role="row" class="table-member-tr">
														<td class="sorting_1">16</td>
														<td>dsadas</td>
														<td>dasda</td>
														<td>dada</td>
														<td><a class="dele-voca">&nbsp;<i
																class="fa fa-trash-o">&nbsp;</i></a>&nbsp;<a>&nbsp;<i
																class="fa fa-pencil">&nbsp;</i></a></td>
													</tr>
													<tr role="row" class="table-member-tr">
														<td class="sorting_1">17</td>
														<td>sdad</td>
														<td>dsadas</td>
														<td>dasda</td>
														<td><a class="dele-voca">&nbsp;<i
																class="fa fa-trash-o">&nbsp;</i></a>&nbsp;<a>&nbsp;<i
																class="fa fa-pencil">&nbsp;</i></a></td>
													</tr>
													<tr role="row" class="table-member-tr">
														<td class="sorting_1">18</td>
														<td>dsadas</td>
														<td>dsadas</td>
														<td>dsadasda</td>
														<td><a class="dele-voca">&nbsp;<i
																class="fa fa-trash-o">&nbsp;</i></a>&nbsp;<a>&nbsp;<i
																class="fa fa-pencil">&nbsp;</i></a></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-2">
									<label style="margin-left: 5px;">Hirakana/Katakana</label> <input
										id="hirakana" required="true" type="text" class="form-control"
										placeholder=".col-xs-3" style="margin-left: 5px">
								</div>
								<div class="col-xs-2">
									<label>Kanji</label> <input type="text" id="kanji"
										class="form-control" placeholder=".col-xs-4">
								</div>
								<div class="col-xs-5">
									<label>Dịch nghĩa</label> <input type="text" id="translate"
										class="form-control" placeholder=".col-xs-5">
								</div>
								<div>
									<button type="button"
										class="btn btn-info btn-flat btn-add-member"
										style="margin-top: 25px">Thêm</button>
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
								<div class="box-body" style="width: 80%;">
									<div class="form-group" style="width: 100%"></div>
									<div class="form-group">
										<h4>
											<label> Nội Dung Bài Học</label>
										</h4>
										<textarea class="ckeditor" id="content" name="content"
											required="true" rows="12"></textarea>
									</div>

									<div class="form-group">
										<h4>
											<label> Video Bài Học</label>
										</h4>
										<div class="btn btn-default btn-file">
											<i class="fa fa-fw fa-file-image-o"></i> Ảnh Nền Video<input
												type="file" name="attachment">
										</div>
										&nbsp;&nbsp;
										<div class="btn btn-default btn-file">
											<i class="fa fa-fw fa-file-video-o"></i> Video Bài Học Đính
											Kèm(Max.32MB)<input type="file" name="attachment">
										</div>
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
			<input type="hidden" name="listadd" value="[]" id="listAdd" /> <input
				type="hidden" name="listfix" value="[]" id="listFix" /> <input
				type="hidden" name="listdel" value="[]" id="listDel" />
		</form>
		<div></div>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
	<script>
		CKEDITOR
				.replace(
						'content',
						{
							filebrowserBrowseUrl : 'ckfinder/ckfinder.html',
							filebrowserImageBrowseUrl : 'ckfinder/ckfinder.html?type=Images',
							filebrowserFlashBrowseUrl : 'ckfinder/ckfinder.html?type=Flash',
							filebrowserUploadUrl : 'ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files',
							filebrowserImageUploadUrl : 'ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images',
							filebrowserFlashUploadUrl : 'ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash'
						});
	</script>
	<script src="${contextPath}/resources/private/js/jquery.min.js"></script>
	<script
		src="${contextPath}/resources/private/js/jquery.dataTables.min.js"></script>
	<script
		src="${contextPath}/resources/private/js/dataTables.bootstrap.min.js"></script>
	<script src="${contextPath}/resources/private/js/add.lesson.js"></script>
	<script
		src="${contextPath}/resources/private/js/bootstrap-table.min.js"></script>
	<script>
		$(function() {
			$('#example2').DataTable({
				'paging' : true,
				'lengthChange' : false,
				'searching' : true,
				'ordering' : true,
				'info' : true,
				'autoWidth' : false
			})
		})
	</script>

	<script>
		$(".btn-add-member").click(function() {
			addMember($(this));
			var listAdd = document.getElementById("listAdd").value;
			document.getElementById("hirakana").value = "";	
			document.getElementById("kanji").value = "";
			document.getElementById("translate").value = "";
		});
				$(".btn-add-member").click(function() {
					alert("s");
					var mydata = {
						"Số" : "hai",
						"Hiragana/Katakana" : 21,
						"Kanji" : 3,
						"Ý Nghĩa" : 4,
						"s" : "okk"
					};
					$('#example2').bootstrapTable('append', mydata);
				})
	</script>
</body>
</html>
