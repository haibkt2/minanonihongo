var user = new Vue({
    el: "#lesson-content-detail",
    data: function() {
        return {
            tasks: lesson_tasks,
            answers: lesson_answers,
            lesson: lesson_lesson,
            results: lesson_results,
            writeQuestions: lesson_writeQuestions,
            currentResult: {},
            resultData: {},
            userScore: 0,
            tokenPlayMp3: 0,
            currentIndex: -1,
            checkFinish: 0,
            disable: 0,
            course: course,
            resultExam: [],
            totalScore: 0,
            checkPass: 1,
            dateExam: "",
            posExam: posExam,
            timer: "00:00",
            is_exam: is_exam,
            client: 0,
            itemExist: !1
        }
    },
    methods: {
        checkEmptyAnswer: function() {
            for (var e = this, t = 0; t < e.tasks.length; t++) {
                var s = e.tasks[t].id;
                if (3 == e.tasks[t].type) {
                    for (var n = 0; n < e.answers[s].length; n++)
                        if ($("#answer" + e.answers[s][n].id).is(":checked")) return !1
                } else if (6 == e.tasks[t].type)
                    for (var n = 0; n < e.writeQuestions[s].length; n++)
                        if (null != $("#write-question" + s + "-" + e.writeQuestions[s][n].id).val() && void 0 != $("#write-question" + s + "-" + e.writeQuestions[s][n].id).val() && "" != $("#write-question" + s + "-" + e.writeQuestions[s][n].id).val()) return !1
            }
            return !0
        },
        sendTestResult: function(e, t) {
            var s = this;
            if (s.checkEmptyAnswer()) return void $("#empty_answers").modal("toggle");
            for (var n = 0, r = {}, a = 0; a < s.tasks.length; a++) {
                var i = s.tasks[a].id;
                if (3 == s.tasks[a].type) {
                    var o = $("input[name='task" + i + "']:checked").next().text(),
                        u = $("input[name='task" + i + "']:checked").prev().text(),
                        c = {};
                    c.value = u + "", r[i] = c, void 0 != o && null != o && "" != o || (o = 0), n += parseInt(o), $("input[name='task" + i + "']:checked").prop("checked", !1), localStorage.removeItem(i)
                } 
//                else if (6 == s.tasks[a].type) {
//                    for (var l = {}, d = 0; d < s.writeQuestions[i].length; d++) {
//                        var h = s.writeQuestions[i][d].id,
//                            c = $("#write-question" + i + "-" + h).val();
//                        l[h + ""] = c, c == s.writeQuestions[i][d].answer && (n += parseInt(s.writeQuestions[i][d].grade)), $("#write-question" + i + "-" + h).val("")
//                    }
//                    r[i] = l
//                }
            }
            if (3 == t && (s.checkFinish = t), s.disable = 1, s.userScore = n, $("#myMessage").modal()) {
                r = JSON.stringify(r);
                alert(r);
                var f = n >= s.lesson.pass_marks,
                    m = new Date;
                    m = Math.floor(m.getTime() / 1e3), 
                    dataResult = {
                    lesson_id: s.lesson.id,
                    grade: n,
                    data: r,
                    total_grade: s.lesson.total_marks,
                    passed: f,
                    created: m,
                    _id: t,
                    course: s.course
                };
                    alert(window.location.origin);
                $.ajax({
                    url: window.location.origin + "/test/gui-ket-qua",
                    type: "GET",
                    dataType: "json",
                    contentType : 'application/json; charset=utf-8',
                    data: dataResult,
                    error: function() {alert("error");},
                    success: function(e) {
                    	alert("ok");
                        if ("fail" == e) {s.itemExist = !0;
                        }
                        else if (void 0 == e.length) s.itemExist = !1, s.results.unshift(e);
                        else {
                            s.itemExist = !1, s.resultExam = e, s.resultExam.forEach(function(e) {
                                0 == e.passed && (s.checkPass = 0), s.totalScore += e.grade
                            });
                            var t = new Date;
                            s.dateExam = t.getFullYear() + "年" + (t.getMonth() + 1) + "月" + t.getDate() + "日"
                        }
                    }
                })
            }
        },
        autoLoad: function() {
            var e = this;
            1 == e.posExam.length && (window.location.href = window.location.origin + "/khoa-hoc/khoa-" + e.course + "/" + e.posExam[0].id + "-1-" + e.posExam[0].SEOurl)
        },
        printTime: function(e) {
            var t = this,
                s = new Date(1e3 * e);
            return t.convertNumber(s.getHours()) + ":" + t.convertNumber(s.getMinutes())
        },
        printDate: function(e) {
            var t = this,
                s = new Date(1e3 * e);
            return t.convertNumber(s.getDate()) + "/" + t.convertNumber(s.getMonth() + 1) + "/" + s.getFullYear()
        },
        convertNumber: function(e) {
            return e < 10 ? "0" + e : e + ""
        },
        reviewTestResult: function(e) {
            var t = this;
            t.currentResult = t.results[e], t.resultData = JSON.parse(t.currentResult.data);
            for (var s = 0; s < t.tasks.length; s++) {
                var n = t.tasks[s].id;
                if (3 == parseInt(t.tasks[s].type)) {
                    var r = t.resultData[t.tasks[s].id];
                    if (void 0 != r && void 0 != r.value && "" != r.value) {
                        answerValue = r.value;
                        for (var a = 0; a < t.answers[n].length; a++) t.answers[n][a].checked = !1, t.answers[n][a].id == answerValue && (t.answers[n][a].checked = !0)
                    } else
                        for (var a = 0; a < t.answers[n].length; a++) t.answers[n][a].checked = !1
                }
            }
        },
        removeTestResult: function(e) {
            var t = this;
            t.currentIndex = e
        },
        confirmRemove: function() {
            var e = this,
                t = {
                    result_id: e.results[e.currentIndex].id
                };
            $.ajax({
                url: window.location.origin + "/account/delete-test-result",
                type: "DELETE",
                data: t,
                async: !0,
                error: function() {},
                success: function(e) {}
            }), e.results.splice(e.currentIndex, 1), $("#removeResult").modal("toggle")
        },
        storeValueToLocal: function(e, t) {
            localStorage.setItem(e, t)
        }
    }
});