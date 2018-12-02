var user = new Vue({
  el: '#result-test-profile',
  data: {
    listResults: result_ListResults,
    listLessons: result_ListLessons,
    currentResult: {
    },
    tasks: [
    ],
    resultData: {
    },
    answers: [
    ],
    currentIndex: - 1,
    currentLessonId: - 1
  },
  methods: {
    printTime: function (e) {
      var t = this,
      s = new Date(e);
      return s.getHours() + ':' + s.getMinutes()
    },
    printDate: function (e) {
      var t = this,
      s = new Date(e);
      return t.convertNumber(s.getDate()) + '/' + t.convertNumber(s.getMonth() + 1) + '/' + s.getFullYear()
    },
    convertNumber: function (e) {
      return e < 10 ? '0' + e : e + ''
    },
    reviewTestResult: function (e, t) {
      var s = this;
      s.currentResult = s.listResults[e][t];
      var r = {
        rs_id: e
      };
      $.ajax({
        url: window.location.origin + '/tai-khoan/get-test-result-info',
        type: 'POST',
        data: r,
        async: !0,
        error: function () {
        },
        success: function (e) {
          s.tasks = e.tasks,
          s.answers = e.answers,
          s.resultData = JSON.parse(s.currentResult.data);
          for (var t = 0; t < s.tasks.length; t++) {
            var r = s.tasks[t].id;
            if (3 == parseInt(s.tasks[t].type)) {
              var n = s.resultData[r];
              if (void 0 != n && void 0 != n.value && '' != n.value) {
                answerValue = n.value;
                for (var u = 0; u < s.answers[r].length; u++) s.answers[r][u].checked = !1,
                s.answers[r][u].id == answerValue && (s.answers[r][u].checked = !0)
              } else for (var u = 0; u < s.answers[r].length; u++) s.answers[r][u].checked = !1
            }
          }
        }
      })
    },
    removeTestResult: function (e, t) {
      var s = this;
      s.currentIndex = t,
      s.currentLessonId = e
    },
    confirmRemoveResult: function () {
      var e = this,
      t = {
        result_id: e.listResults[e.currentLessonId][e.currentIndex].id
      };
      $.ajax({
        url: window.location.origin + '/tai-khoan/delete-test-result',
        type: 'DELETE',
        data: t,
        async: !0,
        error: function () {
        },
        success: function (e) {
        }
      }),
      e.listResults[e.currentLessonId].splice(e.currentIndex, 1),
      $('#removeTestResult').modal('toggle')
    }
  },
  mounted: function () {
    $('#result-test-profile').css('display', 'block')
  }
});
