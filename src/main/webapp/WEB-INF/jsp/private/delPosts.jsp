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
<title>HaiLDX</title>
<link rel="icon" href="${contextPath}/resources/public/img/fav.png" />
<title></title>
</head>

							<div class="box-body">
								<br>
								<table id="data-show" class="table table-bordered table-hover">
									<thead>
										<tr>
											<th width="3%" style="font-size: 16px">STT</th>
											<th width="30%" style="font-size: 16px">Tên Bài Đăng</th>
											<th width="60%" style="font-size: 16px">Nội dung</th>
											<th width="6%"></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${post}" var="pt" varStatus="id">
											<tr class="${pt.postId}">
												<td>${id.index+1}</td>
												<td>${pt.postTitle}</td>
												<td><span class="brief-post">${pt.postContent}</span></td>
												<td style="min-height: 30px;"><a class="del-voca"
													data-toggle="modal"
													data-target="#modal-dele-course-${id.index}"
													href="javascript:void(0);">&nbsp;<i
														class="fa fa-trash-o">&nbsp;</i></a> &nbsp;&nbsp;<a
													href="${contextPath}/admin/fix-post?id=${pt.postId}">&nbsp;<i
														class="fa fa-pencil"></i></a></td>
											</tr>
											<div class="modal fade in" id="modal-dele-course-${id.index}"
												style="padding-right: 17px;">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close">
																<span aria-hidden="true">×</span>
															</button>
															<h4 class="modal-title"
																style="text-align: center; color: red">Bạn có chắc
																muốn xóa :</h4>
														</div>
														<div class="modal-body">
															<p style="font-size: 18px">
																Bài viết : ${pt.postTitle}
															</p>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-default pull-left"
																data-dismiss="modal">Hủy</button>
															<button type="button"
																class="btn btn-primary bt-dele-post"
																id="${pt.postId}" course="${pt.postId}"
																data-dismiss="modal">Xóa</button>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</tbody>
								</table>
							</div>
						
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
<%-- 		<script src="${contextPath}/resources/private/js/jquery.min.js"></script> --%>
<!-- 		<script -->
<%-- 			src="${contextPath}/resources/private/js/jquery.dataTables.min.js"></script> --%>
<!-- 		<script -->
<%-- 			src="${contextPath}/resources/private/js/dataTables.bootstrap.min.js"></script> --%>
		<script src="${contextPath}/resources/private/js/up.lesson.js"></script>
</body>

</html>
