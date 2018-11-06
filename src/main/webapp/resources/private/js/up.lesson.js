function inArray(needle, haystack) {
	var length = haystack.length;
	for (var i = 0; i < length; i++) {
		if (haystack[i] == needle)
			return true;
	}
	return false;
}
function addCourse(btn) {
	var lg = $(".scrollContent tr").length;
	var id;
	var hirakana;
	var kanji;
	var translate;
	var listVoca = '[]';
	var obj = JSON.parse(listVoca);
	for (var i = 2; i <= lg; i++) {
		id = $('#list-voca tr:nth-child(' + i + ')').attr("id");
		hirakana = document.getElementById("data-voca").rows[i].cells.item(0).innerHTML;
		kanji = document.getElementById("data-voca").rows[i].cells.item(1).innerHTML;
		translate = document.getElementById("data-voca").rows[i].cells.item(2).innerHTML;
		obj.push({
			"id" : id,
			"hirakana" : hirakana,
			"kanji" : kanji,
			"translate" : translate
		});
	}
	document.getElementById('list-current').value = JSON.stringify(obj);
	alert(JSON.stringify(obj));
}
function addVoca() {
	var lg = $(".scrollContent tr").length;
	var id = $('#edit-voca').attr("value");
	var ac = "<a onclick = \"deleteRow(this)\" "
			+ "class=\"del-voca\" href=\"javascript:void(0);\">&nbsp;<i class=\"fa fa-trash-o\">&nbsp;</i></a>&nbsp;&nbsp;"
			+ "<a onclick = \"fixRow(this)\" href=\"javascript:void(0);\">&nbsp;<i class=\"fa fa-pencil\"></i></a></td></tr>";
	var table = document.getElementById("data-voca");
	var hirakana = document.getElementById("hirakana").value;
	var kanji = document.getElementById("kanji").value;
	var translate = document.getElementById("translate").value;
	var row;
	index = $('#edit-voca').attr("index");
	if (id == 'o') {
		id = 'num-' + lg;
	} else {
		document.getElementById("edit-voca").value = 'o';
	}
	if (index == 'o') {
		row = table.insertRow(lg + 1);
	} else {
		row = table.insertRow(index);
		var d = document.getElementById("edit-voca");
		d.setAttribute("index", 'o');
	}
	row.id = id;
	var cell1 = row.insertCell(0);
	var cell2 = row.insertCell(1);
	var cell3 = row.insertCell(2);
	var cell4 = row.insertCell(3);
	cell1.innerHTML = hirakana;
	cell2.innerHTML = kanji;
	cell3.innerHTML = translate;
	cell4.innerHTML = ac;
	document.getElementById("hirakana").value = "";
	document.getElementById("kanji").value = "";
	document.getElementById("translate").value = "";
}

function deleteRow(btn) {
	var row = btn.parentNode.parentNode;
	var id = row.id.split('-')[0];
	if (id != 'num') {
		var deleVoca = '[]';
		var obj = JSON.parse(deleVoca);
		hirakana = row.cells.item(0).innerHTML;
		kanji = row.cells.item(1).innerHTML;
		translate = row.cells.item(2).innerHTML;
		obj.push({
			"id" : id,
			"hirakana" : hirakana,
			"kanji" : kanji,
			"translate" : translate
		});
		document.getElementById('dele-old').value = JSON.stringify(obj);
	}
	row.parentNode.removeChild(row);
}

function fixRow(btn) {
	var row = btn.parentNode.parentNode;
	var index = row.rowIndex;
	document.getElementById("hirakana").value = row.cells.item(0).innerHTML;
	document.getElementById("kanji").value = row.cells.item(1).innerHTML;
	document.getElementById("translate").value = row.cells.item(2).innerHTML;
	document.getElementById("edit-voca").value = row.id;
	var d = document.getElementById("edit-voca");
	d.setAttribute("index", index);
	row.parentNode.removeChild(row);
}
$('.movie-play').on('click', function(ev) {
	var id = $(this).attr("id");
	var vid = document.getElementById("video-" + id.split('-')[1]);
	$('#' + id).css("display", "none");
	$('#video-' + id).css("display", "block");
	vid.play();
	ev.preventDefault();
});
$("#file-upload").change(function() {
	$("#file-name").val(this.files[0].name);
	$("#submit-file").prop("disabled", false);
});

$(document).ready(function() {
	var nf = $('#file-name').attr("value");
	if (nf == '') {
		$("#submit-file").prop("disabled", true);
	} else {
		$("#submit-file").prop("disabled", false);
	}
	$("#submit-file").click(function(event) {
		event.preventDefault();
		addDoc();
	});
});
function addDoc() {
	var form = $('#fileUploadForm')[0];
	var data = new FormData(form);
	$.ajax({
		type : "POST",
		enctype : 'multipart/form-data',
		url : "/admin/upload-doc",
		data : data,
		dataType : "html",
		processData : false,
		contentType : false,
		cache : false,
		success : function(data) {
			$("#submit-file").prop("disabled", true);
			$("#result").html(data);
			$('#fileUploadForm')[0].reset();
		},
		error : function() {
			console.log("FAIL : ", "ERROR");
		}
	});
}
$(".bt-dele-doc").click(function(e) {
	e.preventDefault();
	var id = $(this).attr("id");
	var course = $(this).attr("course");
	var url = "/admin/dele-doc/"+course+"/"+id;
	$.ajax({
		url : url,
		type : "POST",
		data: id,
		dataType : "text",
		success : function(data) {
			$("#result").html(data);
		},
		error : function(e) {
			alert("Sorry! ");
		}
	});
});
$(".bt-dele-course").click(function(e) {
	e.preventDefault();
	var course = $(this).attr("course");
	var id = $(this).attr("id");
	var url = "/admin/dele-course/"+course+"/"+id;
	$.ajax({
		url : url,
		type : "POST",
		data: id,
		dataType : "text",
		success : function(data) {
			$(".box-body").html(data);
		},
		error : function(e) {
			alert("Sorry! ");
		}
	});
});