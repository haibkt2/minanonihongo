function addMember(el) {
			var listVoca = [];
			var id = null;
			var i = "";
			var listAdd = document.getElementById("listAdd").value;
			var obj = JSON.parse(listAdd);
			window.onload = function() {
				console.log("init done!!");
				init();
			}
			var num = $(".table-member-tr").length + 1;
			var hirakana = document.getElementById("hirakana").value;
			var kanji = document.getElementById("kanji").value;
			var translate = document.getElementById("translate").value;
			if (inArray(hirakana, listVoca)) {
				alert("Từ mới : " + hirakana + " đã có!");
			} else {
				var newVoca = "<tr role=\"row\" class=\"table-member-tr\">"
						+ "<td class=\"sorting_1\">"
						+ num
						+ "</td>"
						+ "<td>"
						+ hirakana
						+ "</td><td>"
						+ kanji
						+ "</td>"
						+ "<td>"
						+ translate
						+ "</td>"
						+ "<td><a class =\"dele-voca\">&nbsp;<i class=\"fa fa-trash-o\">&nbsp;</i></a>&nbsp;<a>&nbsp;<i class=\"fa fa-pencil\">&nbsp;</i></a></td>";
				$("#data-voca tbody").append(newVoca);
				obj.push({
					"id" : num,
					"hirakana" : hirakana,
					"kanji" : kanji,
					"translate" : translate
				});
				// 				listAdd = JSON.stringify(listAdd);
				if (listAdd != "")
					i = ",";
				document.getElementById('listAdd').value = JSON.stringify(obj);
				;
			}

		}
		function inArray(needle, haystack) {
			var length = haystack.length;
			for (var i = 0; i < length; i++) {
				if (haystack[i] == needle)
					return true;
			}
			return false;
		}