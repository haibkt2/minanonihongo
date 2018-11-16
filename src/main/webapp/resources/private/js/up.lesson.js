function playMp4(a) {
    var b = $("#mp3Mini_" + a)[0];
    b.play(), $("#jp-play-" + a).hide(), $("#jp-pause-" + a).css("display", "inline-block"), b.addEventListener("ended", function(b) {
        pauseMp4(a)
    })
}
function pauseMp4(a) {
    var b = $("#mp3Mini_" + a)[0];
    b.pause(), b.currentTime = 0, $("#jp-play-" + a).show(), $("#jp-pause-" + a).hide()
}
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
	var an;
	var id;
	var c;
	var hirakana;
	var kanji;
	var translate;
	var listVoca = '[]';
	var obj = JSON.parse(listVoca);
	for (var i = 2; i <= lg; i++) {
		id = $('#list-voca tr:nth-child(' + i + ')').attr("id");
		an = $('#list-voca tr:nth-child(' + i + ')').attr("audio-name");
		c = $('#list-voca tr:nth-child(' + i + ')').attr("change-data");
		hirakana = document.getElementById("data-voca").rows[i].cells.item(0).innerHTML;
		kanji = document.getElementById("data-voca").rows[i].cells.item(1).innerHTML;
		translate = document.getElementById("data-voca").rows[i].cells.item(2).innerHTML;
		example = document.getElementById("data-voca").rows[i].cells.item(3).innerHTML;
		obj.push({
			"id" : id,
			"hirakana" : hirakana,
			"kanji" : kanji,
			"translate" : translate,
			"example" : example,
			"audio" : an,
			"change" : c
		});
	}
	document.getElementById('list-current').value = JSON.stringify(obj);
}
function addVoca() {
	addAudio();
	var lg = $(".scrollContent tr").length;
	var id = $('#edit-voca').attr("value");
	var audio = $('#edit-voca-audio').attr("value");
	var ac = "<a onclick = \"deleteRow(this)\" "
			+ "class=\"del-voca\" href=\"javascript:void(0);\">&nbsp;<i class=\"fa fa-trash-o\">&nbsp;</i></a>&nbsp;&nbsp;"
			+ "<a onclick = \"fixRow(this)\" href=\"javascript:void(0);\">&nbsp;<i class=\"fa fa-pencil\"></i></a></td></tr>";
	var table = document.getElementById("data-voca");
	var hirakana = document.getElementById("hirakana").value;
	var kanji = document.getElementById("kanji").value;
	var translate = document.getElementById("translate").value;
	var an = $("#audio-name").val();
	var example = document.getElementById("example").value;
	var row;
	index = $('#edit-voca').attr("index");
	var c = $("#course-name").val();
	if (id == 'o') {
		id = 'num-' + lg;
		var aid = id.split("-")[1]+100;
		if(an=='') audio = '';
		else {
		audio = '<audio id="mp3Mini_'+aid+'" preload="none"> <source type="audio/mpeg" src="/reponsitory/'+c+'/rb/'+an+'">'
		+ ' <source type="audio/ogg" src="/reponsitory/N5/voca/watashi.ogg"> </audio><span id="mp3MiniPlayer_'+aid+'" class="jp-audio mp4"><span'
		+ ' class="jp-type-single"><span class="jp-gui jp-interface"><span class="jp-controls"><a href="javascript:void(0);" class="jp-play"'
		+' id="jp-play-'+aid+'" tabindex="1" onclick="playMp4('+aid+')"><i class="fa fa-fw fa-play-circle-o"></i></a><a href="javascript:void(0);" class="jp-pause"'
		+' id="jp-pause-'+aid+'" tabindex="1" onClick="pauseMp4('+aid+')"><i class="fa fa-fw fa-pause"></i></a></span></span></span></span>';}
	} else {
		var aid = parseInt(id.substring(4, 15));
		document.getElementById("edit-voca").value = 'o';
		document.getElementById("edit-voca-audio").value = 'o';
		if(an !='') {
			  audio = '<audio id="mp3Mini_'+aid+'" preload="none"> <source type="audio/mpeg" src="/reponsitory/'+c+'/rb/'+an+'">'
		+ ' <source type="audio/ogg" src="/reponsitory/N5/voca/watashi.ogg"> </audio><span id="mp3MiniPlayer_'+aid+'" class="jp-audio mp4"><span'
		+ ' class="jp-type-single"><span class="jp-gui jp-interface"><span class="jp-controls"><a href="javascript:void(0);" class="jp-play"'
		+' id="jp-play-'+aid+'" tabindex="1" onclick="playMp4('+aid+')"><i class="fa fa-fw fa-play-circle-o"></i></a><a href="javascript:void(0);" class="jp-pause"'
		+' id="jp-pause-'+aid+'" tabindex="1" onClick="pauseMp4('+aid+')"><i class="fa fa-fw fa-pause"></i></a></span></span></span></span>';;
	}}
	if (index == 'o') {
		row = table.insertRow(lg + 1);
	} else {
		row = table.insertRow(index);
		var d = document.getElementById("edit-voca");
		d.setAttribute("index", 'o');
	}
	row.id = id;
	row.setAttribute("audio-name", an);
	row.setAttribute("change-data", '1');
	var cell0 = row.insertCell(0);
	var cell1 = row.insertCell(1);
	var cell2 = row.insertCell(2);
	var cell3 = row.insertCell(3);
	var cell4 = row.insertCell(4);
	cell4.className = 'ad-audio';
	var cell5 = row.insertCell(5);
	cell0.innerHTML = hirakana;
	cell1.innerHTML = kanji;
	cell2.innerHTML = translate;
	cell3.innerHTML = example;
	cell4.innerHTML = audio;
	cell5.innerHTML = ac;
	document.getElementById("hirakana").value = "";
	document.getElementById("kanji").value = "";
	document.getElementById("translate").value = "";
	document.getElementById("example").value = "";
	document.getElementById("audio-upload").value = "";
	document.getElementById("audio-name").value = "";
//	$('#audio-upload')[0].reset();
}
//
//$(document).ready(function() {
//	$("#submit-vc").click(function(event) {
//		event.preventDefault();
//		addAudio();
//	});
//});

function addAudio() {
	var fa = $("#audio-upload").prop("files")[0];
	var data = new FormData();
	var c = $("#course-name").val();
	data.append("file", fa);
	data.append("c", c);
	$.ajax({
		type : "POST",
		enctype : 'multipart/form-data',
		url : "/admin/upload-audio",
		data : data,
		processData : false,
		contentType : false,
		cache : false,
		success : function(data) {
			console.log("ss : ", "ok");
		},
		error : function() {
			console.log("FAIL : ", "ERROR");
		}
	});
}
function deleteRow(btn) {
	var row = btn.parentNode.parentNode;
	var id = row.id.split('-')[0];
	var l_d = $('#dele-old').attr("value");
	var obj = JSON.parse(l_d);
	if (id != 'num') {
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
	var an = $(row).attr("audio-name");
	document.getElementById("hirakana").value = row.cells.item(0).innerHTML;
	document.getElementById("kanji").value = row.cells.item(1).innerHTML;
	document.getElementById("translate").value = row.cells.item(2).innerHTML;
	document.getElementById("example").value = row.cells.item(3).innerHTML;
	document.getElementById("edit-voca").value = row.id;
	document.getElementById("edit-voca-audio").value = row.cells.item(4).innerHTML;
	document.getElementById("audio-name").value = an;
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
$("#audio-upload").change(function() {
	$("#audio-name").val(this.files[0].name);
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
function fixDoc(fx) {
	var row = fx.parentNode.parentNode;
	var index = row.id;
	var mt = $(".mt."+index).attr("value");
	$(".mt."+index).css("display", "none");
	$(".ip-fix."+index).css("display", "block");
	$(".ip-fix."+index+" input").val(mt);
}
function delMtDoc(fx) {
	var row = fx.parentNode.parentNode;
	var index = row.id;
	$(".mt."+index).css("display", "block");
	$(".ip-fix."+index).css("display", "none");
}
function upMtDoc(fx) {
	var row = fx.parentNode.parentNode;
	var index = row.id;
	var nd = $(".form-control."+index).val();
	var idv = $(".mt."+index).attr("id");
	var url = "/admin/upload-doc-descrip/"+idv+"/"+nd;
	$.ajax({
		type : "POST",
		url : url,
		dataType : "html",
		cache : false,
		success : function(data) {
			$("#result").html(data);
		},
		error : function() {
			console.log("FAIL : ", "ERROR");
		}
	});
}
function showMnGr() {
	var dp = $('.mana-gr').css("display");
	if(dp == 'none') {
		$('.mana-gr').css("display", 'block');
		$('.hiden-ma-gr').css("display", 'block');
		$('.show-ma-gr').css("display", 'none');
	} else {
		$('.mana-gr').css("display", 'none');
		$('.hiden-ma-gr').css("display", 'none');
		$('.show-ma-gr').css("display", 'block');
	}
}
function showMnVc() {
	var dp = $('.mana-voca').css("display");
	if(dp == 'none') {
		$('.mana-voca').css("display", 'block');
		$('.hiden-ma-vc').css("display", 'block');
		$('.show-ma-vc').css("display", 'none');
	} else {
		$('.hiden-ma-vc').css("display", 'none');
		$('.show-ma-vc').css("display", 'block');
		$('.mana-voca').css("display", 'none');
	}
}
function showMnCv() {
	var dp = $('.mana-cv').css("display");
	if(dp == 'none') {
		$('.mana-cv').css("display", 'block');
		$('.hiden-ma-cv').css("display", 'block');
		$('.show-ma-cv').css("display", 'none');
	} else {
		$('.mana-cv').css("display", 'none');
		$('.hiden-ma-cv').css("display", 'none');
		$('.show-ma-cv').css("display", 'block');
	}
}