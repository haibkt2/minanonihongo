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
function updateExam(e,c) {
    if ('no' == e) {
        return window.location.href = window.location.origin + "/admin/courses/"+c;
    }
    if ('ok' == e) {
        $('.mess-exam').css('display','none');
        $('.mn-exam').css('display','block');
    }
}
function addAnswer(){
	var ltb = $(".detail-exam-ct table").length;
	var an = $('.ct-answser').val();
	var c = $(".right-wrong").is(":checked");
	var ac = '<a class="del-voca" onclick="delAns(this)" href="javascript:void(0);">&nbsp;<i class="fa fa-trash-o">&nbsp;</i></a><a onclick="fixAns(this)" href="javascript:void(0);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-pencil"></i></a>';
	var gr;
	if(c){
		gr = '<input type="radio" name="qtid'+ltb+'" disabled checked>&nbsp;&nbsp;&nbsp;';
	} else gr = '<input type="radio" name="qtid'+ltb+'" disabled>&nbsp;&nbsp;&nbsp;';
	var lg = $(".list-ans-add tr").length;
	var table = document.getElementById("data-ans").getElementsByTagName('tbody')[0];
	var row;
	row = table.insertRow(lg);
	row.id = "idans";
	var cell0 = row.insertCell(0);
	var cell1 = row.insertCell(1);
	cell0.innerHTML = gr+an;
	cell1.innerHTML = ac;
	$(".right-wrong").prop("checked", false); 
	$('.ct-answser').val('');
	
}
function addExam() {
	var lg = $(".list-ans-add tr").length,
	qt = CKEDITOR.instances['question-add'].getData(),
	c = false,
	ltb = $(".detail-exam-ct table").length,
	ac = $('#ac-add-exam').val();
	if('add' == ac){
		for( var i = 2; i <= lg; i++){
			if($('.list-ans-add tr:nth-child(' + i +') input').is(":checked")) {
				c = true;
				break;
			}
		}
		if(!c) alert("Chưa có câu trả lời đúng !!") 
		else {
			if(''==qt.trim()){
				alert("Chưa nhập câu hỏi !!")
			}else {
			var isA = '<a onclick="fixAns(this)" href="javascript:void(0);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-pencil"></i></a>',
			table = document.getElementById("data-ans").getElementsByTagName('tbody')[0],
			row = table.insertRow(lg),
			cell0 = row.insertCell(0),
			cell1 = row.insertCell(1);
			cell0.innerHTML = '';
			cell1.innerHTML = isA;
			
			
				
				
				
				
			$('.list-ans-add tr:nth-child(1)').remove();
			$('.add-exam-an-dt table').addClass('qtid'+ltb);
			$('#data-ans').removeAttr("id");
			$('.add-exam-an-dt table').attr('id','data-exam');
			$('.list-ans-add').removeAttr("class");
			$('.add-exam-an-dt table tbody').attr('class','list-ans');
			$('.add-exam-an-dt table tfoot').attr('id','tfoot-qtid'+ltb);
			$('.nd-qt').removeAttr("class");
			$('.nd-explain').removeAttr("class");
			$('.add-exam-an-dt table thead').attr('id','qtid'+ltb);
			
			$('.add-exam-an-dt table thead tr td:nth-child(2) a:nth-child(1)').attr('onclick','delQt(\'qtid'+ltb+'\')');
			$('.add-exam-an-dt table thead tr td:nth-child(2) a:nth-child(2)').attr('onclick','fixQt(this)');
			
//			.add-exam-an-dt table thead tr td:nth-child(2) a:nth-child(1)
			
			$('.add-exam-an-dt table tfoot tr td:nth-child(2) a').removeAttr("style");
			
			var o = $('.detail-exam-ct').html(), n = $('.add-exam-an-dt').html();
			
			$('.detail-exam-ct').html(o+n);
			
			$('.add-exam-an-dt #data-exam').attr('id','data-exam');
			$('.add-exam-an-dt table').attr('id','data-ans');
			$('.add-exam-an-dt table tbody').removeAttr("class");
			$('.add-exam-an-dt table tbody').attr('class','list-ans-add');	
			$('#data-ans thead tr td label').attr('class','nd-qt');	
			$('#data-ans tfoot tr td:first-child').attr('class','nd-explain');
			cl = $("#data-ans").attr("class").replace("qtid"+ltb, "");
			$("#data-ans").attr("class", cl);
			$('.add-exam-an-dt table tfoot').removeAttr('id');
			var table = document.getElementById("data-ans"),
			row = table.insertRow(1),
			cell0 = row.insertCell(0),
			cell1 = row.insertCell(1);
			cell0.innerHTML = '';
			cell1.innerHTML = '';
			for( var n = 2; n <= lg+1; lg--){
				$('.list-ans-add tr:nth-child(' + n +')').remove();
			}
			$('.nd-explain').val('');
			$('.add-exam-an-dt table thead').removeAttr('id');
			CKEDITOR.instances['question-add'] .setData('');
			CKEDITOR.instances['explain-add'] .setData('');
		}
		}
	} else {
		var fl = $('#ac-add-exam').attr('name'),
		nd,
		l = fl.split('-')[0];
		if('tfoot' == l) {nd = CKEDITOR.instances['explain-add'] .getData();
		$('.'+fl.split('-')[1]).attr('change-data','c');
		}
		else {nd = CKEDITOR.instances['question-add'] .getData();
		$('.'+fl).attr('change-data','c');
		}
		$('#'+fl+' tr td:nth-child(1)').html(nd);
		CKEDITOR.instances['question-add'] .setData('');
		CKEDITOR.instances['explain-add'] .setData('');
		$('#ac-add-exam').val('add')
	}
}

function addJLPT() {
	var lg = $(".list-ans-add tr").length,
	qt = CKEDITOR.instances['question-add'].getData(),
	c = false,
	ltb = $(".detail-exam-ct table").length,
	ac = $('#ac-add-exam').val();
	if('add' == ac){
		for( var i = 2; i <= lg; i++){
			if($('.list-ans-add tr:nth-child(' + i +') input').is(":checked")) {
				c = true;
				break;
			}
		}
		if(!c) alert("Chưa có câu trả lời đúng !!") 
		else {
			if(''==qt.trim()){
				alert("Chưa nhập câu hỏi !!")
			}else {
			var isA = '<a onclick="fixAns(this)" href="javascript:void(0);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-pencil"></i></a>',
			table = document.getElementById("data-ans").getElementsByTagName('tbody')[0],
			row = table.insertRow(lg),
			cell0 = row.insertCell(0),
			cell1 = row.insertCell(1);
			cell0.innerHTML = '';
			cell1.innerHTML = isA;
				
				
				
			$('.list-ans-add tr:nth-child(1)').remove();
			$('.add-exam-an-dt table').addClass('qtid'+ltb);
			$('#data-ans').removeAttr("id");
			$('.add-exam-an-dt table').attr('id','data-exam');
			$('.list-ans-add').removeAttr("class");
			$('.add-exam-an-dt table tbody').attr('class','list-ans');
			$('.add-exam-an-dt table tfoot').attr('id','tfoot-qtid'+ltb);
			$('.nd-qt').removeAttr("class");
			$('.nd-explain').removeAttr("class");
			$('.add-exam-an-dt table thead').attr('id','qtid'+ltb);
			
			$('.add-exam-an-dt table thead tr td:nth-child(2) a:nth-child(1)').attr('onclick','delQt(\'qtid'+ltb+'\')');
			$('.add-exam-an-dt table thead tr td:nth-child(2) a:nth-child(2)').attr('onclick','fixQt(this)');
			
//			.add-exam-an-dt table thead tr td:nth-child(2) a:nth-child(1)
			
			$('.add-exam-an-dt table tfoot tr td:nth-child(2) a').removeAttr("style");
			
			var qty = $(".select-qtp option:selected").val(), n = $('.add-exam-an-dt').html();
			
			$('.'+qty).append(n);
			
			$('.add-exam-an-dt #data-exam').attr('id','data-exam');
			$('.add-exam-an-dt table').attr('id','data-ans');
			$('.add-exam-an-dt table tbody').removeAttr("class");
			$('.add-exam-an-dt table tbody').attr('class','list-ans-add');	
			$('#data-ans thead tr td label').attr('class','nd-qt');	
			$('#data-ans tfoot tr td:first-child').attr('class','nd-explain');
			cl = $("#data-ans").attr("class").replace("qtid"+ltb, "");
			$("#data-ans").attr("class", cl);
			$('.add-exam-an-dt table tfoot').removeAttr('id');
			var table = document.getElementById("data-ans"),
			row = table.insertRow(1),
			cell0 = row.insertCell(0),
			cell1 = row.insertCell(1);
			cell0.innerHTML = '';
			cell1.innerHTML = '';
			for( var n = 2; n <= lg+1; lg--){
				$('.list-ans-add tr:nth-child(' + n +')').remove();
			}
			$('.nd-explain').val('');
			$('.add-exam-an-dt table thead').removeAttr('id');
			CKEDITOR.instances['question-add'] .setData('');
			CKEDITOR.instances['explain-add'] .setData('');
		}
		}
	} else {
		var fl = $('#ac-add-exam').attr('name'),
		nd,
		l = fl.split('-')[0];
		if('tfoot' == l) {nd = CKEDITOR.instances['explain-add'] .getData();
		$('.'+fl.split('-')[1]).attr('change-data','c');
		}
		else {nd = CKEDITOR.instances['question-add'] .getData();
		$('.'+fl).attr('change-data','c');
		}
		$('#'+fl+' tr td:nth-child(1)').html(nd);
		CKEDITOR.instances['question-add'] .setData('');
		CKEDITOR.instances['explain-add'] .setData('');
		$('#ac-add-exam').val('add')
	}
}

function addQTy() {
	nd = $('.ct-q-ty-add').val(),
	lg = $(".detail-exam-ct div").length, op = '<option value="add-'+lg+'" selected="selected" id="add-'+lg+'">'+nd+'</option>',
	tb = '<div class="add-'+lg+'"><label>'+nd+'</label></div>'
	$(tb).insertBefore('.ahihihi');
	$('#select-qtp').append(op);
	$('.ct-q-ty-add').val('');
}

function delQt(id) {
	var de = $('#ac-del-exam').val(),
	id = $('.'+id+' thead').attr('id');	
	de = JSON.parse(de);
	de.push({
		"id" : id
	}),
	$('#ac-del-exam').val(JSON.stringify(de));
	$('.'+id).empty();	
}

function delAns(btn) {
	var row = btn.parentNode.parentNode;
	row.parentNode.removeChild(row);
}
function fixQt(btn) {
	CKEDITOR.instances['explain-add'] .setData('');
	showMnGr();
	var row = btn.parentNode.parentNode,
	cc = row.cells.item(0).innerHTML,
	id = row.offsetParent.tHead.id;
	CKEDITOR.instances['question-add'].setData(cc);
	$('#ac-add-exam').val('fix'),$('#ac-add-exam').attr('name',id);
	$([document.documentElement, document.body]).animate({
        scrollTop: $(".mana-gr").offset().top
    }, 1000);
}
function fixAns(btn) {
	var row = btn.parentNode.parentNode,
	c='',
	ad = btn.parentNode.parentNode.children[0].childNodes[0];
	if(typeof(ad) == 'undefined') cd = false,
	n = btn.parentNode.parentNode.id,
	t = '',
	a = 'insAns';
	else cd = btn.parentNode.parentNode.children[0].childNodes[0].checked,
	n = btn.parentNode.parentNode.children[0].childNodes[0].name,
	a = 'upAnswer',
	t = btn.parentNode.parentNode.children[0].childNodes[1].textContent;
	if(cd == true ) c='checked';
	dc ='<div class="input-group"><span class="input-group-addon"> <input class="right-wrong" type="checkbox" '+c+' name="'+n+'">'
			+ '</span> <input type="text" class="form-control" value="'+t+'">' 
			+ '<span class="input-group-btn"><button type="button" onclick="'+a+'(this)"class="btn btn-info btn-flat add-ans"><i class="fa fa-fw fa-upload"></i></button></span></div>'
	cn = '<a onclick="canAns(this)" href="javascript:void(0);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-fw fa-times"></i></a>';
	row.cells.item(1).innerHTML =cn;
	row.cells.item(0).innerHTML =dc;
}
function canAns(btn) {
	var row = btn.parentNode.parentNode,
	cn = '<a onclick="fixAns(this)" href="javascript:void(0);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-fw fa-plus-square-o"></i></a>';
	row.cells.item(1).innerHTML =cn;
	row.cells.item(0).innerHTML ='';
}
function insAns(e) {
	var r = e.parentNode.parentNode,
	ans = r.children[1].value,
	lg = r.parentNode.parentNode.parentNode.childElementCount,
	cl = r.parentNode.parentNode.parentNode.parentNode.tHead.id,
	cd = $('.'+cl+' tbody tr:nth-child('+lg+') td:nth-child(1) input:nth-child(1)').is(':checked'),
	tb = document.getElementsByClassName(cl)[0],
	row = tb.insertRow(lg);
	row.id = 'idans',
	c = '';
	if(cd == true) c='checked';
	i = '<input type="radio" name="'+cl+'" disabled '+c+'>&nbsp;&nbsp;&nbsp;&nbsp;'+ans;
	$('.'+cl).attr('change-data','c'),
	ac = '<a class="del-voca" onclick="delAns(this)" href="javascript:void(0);">&nbsp;<i class="fa fa-trash-o">&nbsp;</i></a><a onclick="fixAns(this)" href="javascript:void(0);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-pencil"></i></a>';
	cell0 = row.insertCell(0),
	cell1 = row.insertCell(1),
	cell0.innerHTML = i,
	cell1.innerHTML = ac,
	r.children[1].value = '',
	f = lg + 1,
	$('.'+cl+' tbody tr:nth-child('+f+') td:nth-child(1)').html('')
}
function upAnswer(e) {
	var row = e.parentNode.parentNode,
	cd = e.parentNode.parentNode.children[0].children[0].checked,
	c='',
	v = e.parentNode.parentNode.children[1].value,
	n = e.parentNode.parentNode.children[0].children[0].name;
	if(cd == true) c='checked';
	i = '<input type="radio" name="'+n+'" disabled '+c+' style="margin-right: 10px">'+v;
	row.parentNode.innerHTML =i;
	$('.'+n).attr('change-data','c');
}
function fixEx(btn) {
	CKEDITOR.instances['question-add'] .setData('');
	showMnCv();
	var row = btn.parentNode.parentNode,
	cc = row.cells.item(0).innerHTML,
	id = row.offsetParent.tFoot.id;
	CKEDITOR.instances['explain-add'].setData(cc);
	$('#ac-add-exam').val('fix'),$('#ac-add-exam').attr('name',id);
	$([document.documentElement, document.body]).animate({
        scrollTop: $(".mana-cv").offset().top
    }, 1000);
}
//function addJlpt() {
//	var data = [{id : 1,
//		question : "sdada",
//		  anser: [
//		    {"id": "1", "name": "Snatch", "type": "crime"},
//		    {"id": "1", "name": "Snatch", "type": "crime"},
//		    {"id": "1", "name": "Snatch", "type": "crime"},
//		    {"id": "1", "name": "Snatch", "type": "crime"},
//		    {"id": "1", "name": "Snatch", "type": "crime"},
//		    {"id": "1", "name": "Snatch", "type": "crime"}
//		]}];
//
//		data.push(
//		    {id: "7", 
//		     question : "",
//		     anser : [{
//		       id :"2",
//		       name: "Douglas Adams", 
//		     type: "comedy"}
//		     ]
//		    }
//		);
//		console.log(data)
//}
function saveExam() { // btn
	var lg = $(".detail-exam-ct table").length;
	var iq,ia,q,a,e,g,c,u,ta,
	lex = '[]',
	oe = JSON.parse(lex);
	for (var i = 1; i <= lg; i++) {
		ta = $('.detail-exam-ct table:nth-child('+ i +')').is(':empty');
		if(ta == true) continue;
		iq = $('.detail-exam-ct table:nth-child('+ i +') thead').attr("id"),
		u = $('.detail-exam-ct table:nth-child('+ i +')').attr("change-data"),
		q = $('#'+iq+' tr td:nth-child(1)').html(),
		e = $('#tfoot-'+iq+' tr td:nth-child(1)').html(),
		lan = '[]',
		oa = JSON.parse(lan),
		la = $('.'+iq + ' tbody tr').length;
		for(var j = 1; j < la; j++){
			ia = $('.' + iq + ' tbody tr:nth-child('+j+')').attr('id'),
			c = $('.' + iq + ' tbody tr:nth-child('+j+')' + ' td:nth-child(1) input').is(":checked");;
			if(c == false) g = '0';
			else g = '1';
			a = $('.' + iq + ' tbody tr:nth-child('+j+')' + ' td:nth-child(1)').text();
			oa.push({
				"ia" : ia,
				"g" : g,
				"a" : a
			})
		}
		oe.push(
			    {"iq": iq, 
			     "qt" : q.toString(),
			     "ex" : e.toString(),
			     "c" : u,
			     "ans" : oa}
			);
	}
	$('#l-exam').val(JSON.stringify(oe));
}
function saveJLPT() { // btn
	var qtl = $(".detail-exam-ct div").length;
	var iq,ia,q,a,e,g,c,u,ta,qti,qt
	var qt = '[]',
	oq = JSON.parse(qt);
	for (var k = 1; k < qtl; k++) {
		qa = $('.detail-exam-ct div:nth-child('+ k +') table').length;
		if(qa == 0) continue;
		var lex = '[]',
		oe = JSON.parse(lex),
		lg = $('.detail-exam-ct div:nth-child('+ k +') table thead').length;
	for (var i = 0; i < lg; i++) {
//		ta = $('.detail-exam-ct table:nth-child('+ i +')').is(':empty');
//		if(ta == true) continue;
		iq = $('.detail-exam-ct div:nth-child('+ k +') table thead').slice(i,i+1).attr("id"),
		u = $('.detail-exam-ct div:nth-child('+ k +') table').slice(i,i+1).attr("change-data"),
		q = $('#'+iq+' tr td:nth-child(1)').html(),
		e = $('#tfoot-'+iq+' tr td:nth-child(1)').html(),
		lan = '[]',
		oa = JSON.parse(lan),
		la = $('.'+iq + ' tbody tr').length;
		for(var j = 1; j < la; j++){
			ia = $('.' + iq + ' tbody tr:nth-child('+j+')').attr('id'),
			c = $('.' + iq + ' tbody tr:nth-child('+j+')' + ' td:nth-child(1) input').is(":checked");;
			if(c == false) g = '0';
			else g = '1';
			a = $('.' + iq + ' tbody tr:nth-child('+j+')' + ' td:nth-child(1)').text();
			oa.push({
				"ia" : ia,
				"g" : g,
				"a" : a
			})
		}
		oe.push(
			    {"iq": iq, 
			     "qt" : q.toString(),
			     "ex" : e.toString(),
			     "c" : u,
			     "ans" : oa}
			);
	}
	qti = $('.detail-exam-ct div:nth-child('+ k +')').attr('class'),
	qt = $('#select-qtp #'+qti).text();
	oq.push(
		    {"qti": qti, 
		     "qt" : qt,
		     "qs" : oe}
		);
}
	$('#l-jlpt').val(JSON.stringify(oq));
}
function addCourse() { // btn
	doing = $('#edit-voca').attr('doing');
	if('fix' == doing) {
		alert("Chưa update giá trị đang chỉnh sửa!!");
		return false;
	} else {
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
	return true;
}
}
function addVoca() {
	if(false==addAudio()){
		alert("Định dạng lỗi");
	} else {
	var lg = $(".scrollContent tr").length;
	var id = $('#edit-voca').attr("value");
	var audio = $('#edit-voca-audio').attr("value");
	var ac = '<a onclick = "deleteRow(this)" class="del-voca" href="javascript:void(0);">&nbsp;<i class="fa fa-trash-o">&nbsp;</i></a>&nbsp;&nbsp;<a onclick = "fixRow(this)" href="javascript:void(0);">&nbsp;<i class="fa fa-pencil"></i></a></td></tr>';
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
	$('#edit-voca').attr('doing','add');
//	$('#audio-upload')[0].reset();
}}
//
//$(document).ready(function() {
//	$("#submit-vc").click(function(event) {
//		event.preventDefault();
//		addAudio();
//	});
//});

function addAudio() {
	var fa = $("#audio-upload").prop("files")[0];
	if(fa != null) {
	if("audio/mp3"==fa.type || "audio/mpeg" == fa.type){
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
}else {
	$("#audio-upload").val('');
	return false;}
	}}
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
	
	var row = btn.parentNode.parentNode,
	index = row.rowIndex,
	an = $(row).attr("audio-name"),
		doing = $('#edit-voca').attr('doing');
		if('fix' == doing) {
			alert("Chưa update giá trị đang chỉnh sửa!!")
		} else {
		showMnVc();
		$([document.documentElement, document.body]).animate({
	        scrollTop: $(".mana-voca").offset().top
	    }, 1000);
		document.getElementById("hirakana").value = row.cells.item(0).innerHTML;
		document.getElementById("kanji").value = row.cells.item(1).innerHTML;
		document.getElementById("translate").value = row.cells.item(2).innerHTML;
		document.getElementById("example").value = row.cells.item(3).innerHTML;
		document.getElementById("edit-voca").value = row.id;
		document.getElementById("edit-voca-audio").value = row.cells.item(4).innerHTML;
		document.getElementById("audio-name").value = an;
		var d = document.getElementById("edit-voca");
		$('#edit-voca').attr('doing','fix');
		d.setAttribute("index", index);
		row.parentNode.removeChild(row);
	}
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
			$("."+id).css("display","none");
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
function addJlpt() {
	var data = [{id : 1,
		question : "sdada",
		  anser: [
		    {"id": "1", "name": "Snatch", "type": "crime"},
		    {"id": "1", "name": "Snatch", "type": "crime"},
		    {"id": "1", "name": "Snatch", "type": "crime"},
		    {"id": "1", "name": "Snatch", "type": "crime"},
		    {"id": "1", "name": "Snatch", "type": "crime"},
		    {"id": "1", "name": "Snatch", "type": "crime"}
		]}];

		data.push(
		    {id: "7", 
		     question : "",
		     anser : [{
		       id :"2",
		       name: "Douglas Adams", 
		     type: "comedy"}
		     ]
		    }
		);
		console.log(data)
}