<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:if test="${not empty course.getDocuments()}">
										<div style="margin-left: 15px; font-size: 16px">
											<br> <strong>Tài liệu <c:out
													value="${courseName}"></c:out> :
											</strong> <br> <br>
											<table id="data-show-doc"
												class="table table-bordered table-hover" style="width: 80%">
												<thead>
													<tr>
														<th width="20%">Mô Tả</th>
														<th width="75%" style="text-align: center;">Tên File</th>
														<th width="5%"></th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${course.getDocuments()}" var="doc"
														varStatus="d">
														<tr>
															<td>${doc.descrip}</td>
															<td>${doc.locaFileDoc}</td>
															<td style="min-height: 30px;"><a class="del-voca"
																data-toggle="modal" data-target="#modal-dele-${d.index}"
																 href="javascript:void(0);">&nbsp;<i
																	class="fa fa-trash-o">&nbsp;</i></a></td>
														</tr>
														<div class="modal fade in" id="modal-dele-${d.index}"
															style="padding-right: 17px;">
															<div class="modal-dialog">
																<div class="modal-content">
																	<div class="modal-header">
																		<button type="button" class="close"
																			data-dismiss="modal" aria-label="Close">
																			<span aria-hidden="true">×</span>
																		</button>
																		<h4 class="modal-title"
																			style="text-align: center; color: red">Bạn có
																			chắc muốn xóa :</h4>
																	</div>
																	<div class="modal-body">
																		<p>${doc.locaFileDoc}</p>
																	</div>
																	<div class="modal-footer">
																		<button type="button"
																			class="btn btn-default pull-left"
																			data-dismiss="modal">Hủy</button>
																		<button type="button" class="btn btn-primary bt-dele-doc" onclick="deleteCourse(this)"
																			id="${doc.docId}" course="${doc.course.courseId}">Xóa</button>
																	</div>
																</div>
																<!-- /.modal-content -->
															</div>
															<!-- /.modal-dialog -->
														</div>
													</c:forEach>
												</tbody>
											</table>
										</div>
										<br>
</c:if>
<script src="${contextPath}/resources/private/js/add.lesson.js"></script>
