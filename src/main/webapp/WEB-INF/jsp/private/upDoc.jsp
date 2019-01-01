<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<div style="margin-left: 15px; font-size: 16px">
	<br> <strong>Tài liệu <c:out value="${courseName}"></c:out>
	</strong> <br>
	<table id="data-show-doc" class="table table-bordered table-hover"
		style="width: 80%">
		<thead>
			<tr>
				<th width="30%" style="text-align: center;">Mô Tả</th>
				<th width="65%" style="text-align: center;">Tên File</th>
				<th width="5%"></th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${not empty course.getDocuments()}">
				<c:forEach items="${course.getDocuments()}" var="doc" varStatus="d">
					<tr>
						<td id="ds-nd-fix-${d.index}"><p
								class="mt ds-nd-fix-${d.index}" value="${doc.descrip}"
								id="${doc.docId}">${doc.descrip}<a
									style="float: right; margin-right: 8px"
									href="javascript:void(0);" onclick="fixDoc(this)">&nbsp;&nbsp;&nbsp;<i
									class="fa fa-pencil"></i></a>
							</p>
							<div id="ds-nd-fix" class="ip-fix ds-nd-fix-${d.index}">
								<input class="form-control ds-nd-fix-${d.index}" type="text"><a
									style="float: left; margin-left: 8px"
									href="javascript:void(0);" onclick="upMtDoc(this)"><i
									class="fa fa-fw fa-upload"></i></a><a
									style="float: right; margin-right: 8px"
									href="javascript:void(0);" onclick="delMtDoc(this)"><i
									class="fa fa-fw fa-times"></i></a>
							</div></td>
						<td>${doc.locaFileDoc}</td>
						<td style="min-height: 30px;"><a class="del-voca"
							data-toggle="modal" data-target="#modal-dele-doc-${d.index}"
							href="javascript:void(0);">&nbsp;<i class="fa fa-trash-o">&nbsp;</i></a></td>
					</tr>
					<div class="modal fade in" id="modal-dele-doc-${d.index}"
						style="padding-right: 17px;">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">×</span>
									</button>
									<h4 class="modal-title" style="text-align: center; color: red">Bạn
										có chắc muốn xóa :</h4>
								</div>
								<div class="modal-body">
									<p>File tài liêu : ${doc.locaFileDoc}</p>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default pull-left"
										data-dismiss="modal">Hủy</button>
									<button type="button" class="btn btn-primary bt-dele-doc"
										 id="${doc.docId}"
										course="${doc.course.courseId}" data-dismiss="modal">Xóa</button>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
</div>

<br>
<script>
	$(".bt-dele-doc").click(function(e) {
		e.preventDefault();
		var id = $(this).attr("id");
		var course = $(this).attr("course");
		var url = "/admin/dele-doc/" + course + "/" + id;
		//	$('.modal-backdrop').css('position','initial');
		$.ajax({
			url : url,
			type : "POST",
			data : id,
			dataType : "text",
			success : function(data) {
				$("#result").html(data);
			},
			error : function(e) {
				alert("Sorry! ");
			}
		});
	});
</script>
