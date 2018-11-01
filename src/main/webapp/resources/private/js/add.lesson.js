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
	var lg = $(".scrollContent tr").length;
	var hirakana = document.getElementById("hirakana").value;
	var kanji = document.getElementById("kanji").value;
	var translate = document.getElementById("translate").value;
	var row = table.insertRow(lg);
	if (id == 'o') {
		id = 'num-'+ lg;
	} else {
		document.getElementById("edit-voca").value = 'o';
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
	row.parentNode.removeChild(row);
}

function fixRow(btn) {
	var row = btn.parentNode.parentNode;
	document.getElementById("hirakana").value = row.cells.item(0).innerHTML;
	document.getElementById("kanji").value = row.cells.item(1).innerHTML;
	document.getElementById("translate").value = row.cells.item(2).innerHTML;
	document.getElementById("edit-voca").value = row.id;
	row.parentNode.removeChild(row);
}