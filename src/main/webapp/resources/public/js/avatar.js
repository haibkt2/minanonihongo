function readURL(a) {
  if (a.files && a.files[0]) {
    var e = new FileReader;
    e.onload = function (a) {
      console.log(a),
      $('#user-avatar-preview').attr('src', a.target.result),
      $('.save-avatar').css('display', 'inline'),
      $('.change-avatar').css('display', 'none'),
      $('.clear-preview-upload').css('display', 'block')
    },
    e.readAsDataURL(a.files[0])
  }
}
$('.change-avatar').click(function () {
  console.log('change avatar'),
  $('#inputAvatar').click()
}),
$('.save-avatar').click(function () {
  console.log('Lưu lại');
  var a = new FormData($('#avatar-form') [0]);
  console.log(a),
  $.ajax({
    url: window.location.origin + '/tai-khoan/change-avatar',
    type: 'post',
    processData: !1,
    contentType: !1,
    data: a,
    success: function (a) {
      console.log(a),
      'success' == a ? location.reload()  : 'imagesize' == a ? (alert('Lỗi dung lượng ảnh vượt quá giới hạn cho phép 3 MB'), location.reload())  : 'imageType' == a ? (alert('Định dạng ảnh không hợp lệ'), location.reload())  : (alert('Lỗi khi up ảnh'), location.reload())
    }
  })
}),
$('.clear-preview-upload').click(function () {
  $('.clear-preview-upload').css('display', 'none'),
  $('.save-avatar').css('display', 'none'),
  $('.change-avatar').css('display', 'inline'),
  $('#user-avatar-preview').attr('src', userAvatar),
  $('#inputAvatar').val('')
});
