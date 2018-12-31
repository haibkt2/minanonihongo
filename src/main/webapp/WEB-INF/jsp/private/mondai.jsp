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
<title>HaiLDX - Trình quản lý</title>
<link rel="icon" href="${contextPath}/resources/public/img/fav.png" />
<title></title>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="menu.jsp"></jsp:include>
		<div class="content-wrapper">
			<section class="content">
				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<div class="box-hesader">
								<section class="content-header"
									style="margin-bottom: 15px; text-align: center;">
									<h3 class="box-title" style="float: center;">Quản lý
										Mondai câu hỏi</h3>
								</section>
							</div>
							<div style="margin-left: 15px;">
								<br> <br>
								<div id="result">
									<div style="margin-left: 15px; font-size: 16px;width: 95%">
										<table id="data-show-mondai"
											class="table table-bordered table-hover">
											<thead>
												<tr>
													<th style="text-align: center;"></th>
												</tr>
											</thead>
											<tbody>
												<c:if test="${not empty qt}">
													<c:forEach items="${qt}" var="qt" varStatus="d">
														<tr>
															<td id="ds-nd-fix-${d.index}"><p
																	class="mt ds-nd-fix-${d.index}"
																	value="${qt.jlptQTypeName}" id="${qt.jlptQTypeId}">${qt.jlptQTypeName}<a
																		style="float: right; margin-right: 8px"
																		href="javascript:void(0);" onclick="fixDoc(this)">&nbsp;&nbsp;&nbsp;<i
																		class="fa fa-pencil"></i></a>
																</p>
																<div id="ds-nd-fix" class="ip-fix ds-nd-fix-${d.index}">
																	<input class="form-control ds-nd-fix-${d.index}"
																		type="text"><a
																		style="float: left; margin-left: 8px"
																		href="javascript:void(0);" onclick="upMondai(this)"><i
																		class="fa fa-fw fa-upload"></i></a><a
																		style="float: right; margin-right: 8px"
																		href="javascript:void(0);" onclick="delMtDoc(this)"><i
																		class="fa fa-fw fa-times"></i></a>
																</div></td>
														</tr>

													</c:forEach>
												</c:if>
											</tbody>
										</table>
										<div class="input-group">
											<input type="text" class="form-control ct-q-ty-add"
												placeholder="Mondai câu hỏi mới ..."> <span
												class="input-group-btn">
												<button type="button" onclick="addMondai()"
													class="btn btn-info btn-flat add-ans">
													<i class="fa fa-fw fa-upload"></i>
												</button>
											</span>
											<!-- /input-group -->
										</div>
									</div>
									<br>
								</div>
							</div>

						</div>
					</div>
				</div>
			</section>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
		<script>
			$(function() {
				$('#data-show').DataTable({
					'paging' : true,
					'lengthChange' : false,
					'searching' : true,
					'ordering' : true,
					'info' : true,
					'autoWidth' : false
				})
			})
		</script>
		<script src="${contextPath}/resources/private/js/jquery.min.js"></script>
		<script
			src="${contextPath}/resources/private/js/jquery.dataTables.min.js"></script>
		<script
			src="${contextPath}/resources/private/js/dataTables.bootstrap.min.js"></script>
		<script src="${contextPath}/resources/private/js/up.lesson.js"></script>
	</div>
</body>

</html>
