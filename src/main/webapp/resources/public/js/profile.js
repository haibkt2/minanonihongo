var user = new Vue({
    el: "#user-info",
    data: {
        currentField: "",
        changeName: !1,
        changeEmail: !1,
        changePass: !1,
        changeBirthday: !1,
        changePhone: !1,
        changeAddress: !1,
        allowPress: !0,
        displaySendMailBtn: !1,
        isReadyToSendMail: !0,
        user: {
            name: "",
            email: "",
            password: "",
            birthday: "",
            phone: "",
            address: ""
        },
        errors: [],
        birthday: {
            day: "",
            month: "",
            year: ""
        }
    },
    methods: {
        printInfo: function(e) {
            return null == e || "" == e ? '<span class="empty-info">Chưa có thông tin</span>' : e
        },
        mouseOver: function() {
            var e = this;
            e.displaySendMailBtn = !e.displaySendMailBtn
        },
        sendMailVerify: function() {
            var e = this;
            e.displaySendMailBtn = !e.displaySendMailBtn,
            e.isReadyToSendMail && (e.isReadyToSendMail = !1,
            $.ajax({
                url: window.location.origin + "/gui-mail-xac-thuc-email",
                type: "GET",
                error: function() {
                    e.isReadyToSendMail = !0
                },
                success: function(a) {
                    e.isReadyToSendMail = !0,
                    e.displaySendMailBtn = !1,
                    console.log(a)
                }
            }))
        },
        showEditer: function(e) {
            var a = this;
            switch (a.errors = [],
            a.currentField = e,
            e) {
            case "name":
                a.changeName = !0;
                break;
            case "email":
                a.changeEmail = !0;
                break;
            case "password":
                a.changePass = !0;
                break;
            case "birthday":
                a.changeBirthday = !0;
                break;
            case "phone":
                a.changePhone = !0;
                break;
            case "address":
                a.changeAddress = !0;
                break
            }
        },
        hideEditer: function(e) {
            var a = this;
            switch (a.errors = [],
            a.currentField = "",
            e) {
            case "name":
                a.changeName = !1;
                break;
            case "password":
                a.changePass = !1,
                a.errors = [];
                break;
            case "email":
                a.changeEmail = !1;
                break;
            case "birthday":
                a.changeBirthday = !1;
                break;
            case "phone":
                a.changePhone = !1;
                break;
            case "address":
                a.changeAddress = !1;
                break
            }
        },
        saveChange: function(e) {
            var a = this;
            if (a.allowPress)
                switch (a.errors = [],
                a.currentField = e,
                e) {
                case "name":
                    a.ajaxSaveChange("name", "account-name");
                    break;
                case "email":
                    a.ajaxSaveChange("email", "account-email");
                    break;
                case "birthday":
                    a.ajaxSaveChange("birthday", "");
                    break;
                case "phone":
                    a.ajaxSaveChange("phone", "account-phone");
                    break;
                case "address":
                    a.ajaxSaveChange("address", "account-address");
                    break;
                case "password":
                    a.ajaxChangePassWord()
                }
        },
        ajaxSaveChange: function(e, a) {
            var r = this;
            if ("birthday" === e) {
                var s = parseInt(r.birthday.day);
                r.birthday.day = s < 10 ? "0" + s : s;
                var t = parseInt(r.birthday.month);
                r.birthday.month = t < 10 ? "0" + t : t,
                r.user.birthday = r.birthday.day + "-" + r.birthday.month + "-" + r.birthday.year,
                newValue = r.birthday.year + "-" + r.birthday.month + "-" + r.birthday.day;
                var o = new Date(newValue);
                if (o.getFullYear() != parseInt(r.birthday.year) && o.getMonth() != parseInt(t) && o.getDate() != parseInt(s))
                    return r.errors = [],
                    void r.errors.push("Không thành công! Vui lòng kiểm tra lại")
            } else
                newValue = $("#" + a).val();
            if (void 0 == newValue || null == newValue || "" == newValue)
                return $(".error-list").css("color", "red"),
                r.errors = [],
                void r.errors.push("Thông tin còn trống");
            if ("phone" === e && isNaN(newValue))
                return $(".error-list").css("color", "red"),
                r.errors = [],
                void r.errors.push("Số điện thoại không đúng");
            if (checkspecialSymbol(newValue))
                return $(".error-list").css("color", "red"),
                r.errors = [],
                void r.errors.push("Thông tin không được chứa ký tự đặc biệt");
            var c = {
                field: e,
                value: newValue
            };
            r.allowPress = !1,
            $.ajax({
                url: window.location.origin + "/tai-khoan/change-info",
                type: "POST",
                data: c,
                async: !0,
                error: function() {
                    return $(".error-list").css("color", "red"),
                    r.errors = [],
                    r.errors.push("Không thành công. Vui lòng kiểm tra lại (Lưu ý: Thông tin không được để trống và không được chứa ký tự đặc biệt)"),
                    r.allowPress = !0,
                    !1
                },
                success: function(a) {
                	if(a=='ermail') {
                		return $(".error-list").css("color", "red"),
                        r.errors = [],
                        r.errors.push("Mail này đã đăng ký!"),
                        r.allowPress = !0,
                        !1
                	}else {
                        switch ($(".error-list").css("color", "#588d3f"),
                        r.errors = [],
                        r.errors.push("Bạn đã đổi thông tin thành công"),
                        e) {
                        case "name":
                            r.user.name = newValue;
                            break;
                        case "phone":
                            r.user.phone = newValue;
                            break;
                        case "address":
                            r.user.address = newValue;
                            break;
                        case "email":
                            r.user.email = newValue;
                            break;
                        }
                        setTimeout(function() {
                            switch (e) {
                            case "name":
                                r.changeName = !1;
                                break;
                            case "birthday":
                                r.changeBirthday = !1;
                                break;
                            case "phone":
                                r.changePhone = !1;
                                break;
                            case "address":
                                r.changeAddress = !1;
                                break;
                            case "email":
                                r.changeEmail = !1;
                                break;
                            }
                            r.allowPress = !0
                        }, 2e3)
                	}
                }
            })
        },
        ajaxChangePassWord: function(e) {
            var a = this
              , n = $("#old-password").val()
              , s = $("#new-password").val()
              , t = $("#retype-password").val();
            if (s != t)
                return $(".error-list").css("color", "red"),
                a.errors = [],
                void a.errors.push("Xác nhận mật khẩu không chính xác");
            if (s.lenght < 6 )
                return $(".error-list").css("color", "red"),
                a.errors = [],
                void a.errors.push("Mật khẩu quá ngắn");
            var o = {
                "old-password": n,
                "new-password": s,
            };
            a.allowPress = !1,
            $.ajax({
                url: window.location.origin + "/tai-khoan/change-password",
                type: "POST",
                data: o,
                async: !0,
                error: function() {
                    $(".error-list").css("color", "red"),
                    a.errors = [],
                    a.errors.push("Thông tin không chính xác. Vui lòng kiểm tra lại thông tin hoặc thay đổi mã xác nhận"),
                    a.allowPress = !0
                },
                success: function(e) {
                    "Invalid password" == e ? ($(".error-list").css("color", "red"),
                    a.errors = [],
                    a.errors.push("Mật khẩu không chính xác"),
                    a.allowPress = !0) : "success" == e && ($(".error-list").css("color", "#588d3f"),
                    a.errors = [],
                    a.errors.push("Bạn đã đổi mật khẩu thành công"),
                    setTimeout(function() {
                        a.changePass = !1,
                        a.allowPress = !0
                    }, 2e3))
                }
            })
        },
        updateJapaneseLevel: function(e) {
            this.japaneseLevel = e
        },
        updateCountry: function(e) {
            this.country = e
        }
    },
    mounted: function() {
        var e = this;
        if (e.user.name = user_name,
        e.user.birthday = user_birthday,
        e.user.phone = user_phone,
        e.user.email = user_email,
        e.user.address = user_address,
        null != e.user.birthday && "" != e.user.birthday) {
            var a = new Date(e.user.birthday)
              , r = a.getDate();
            e.birthday.day = r < 10 ? "0" + r : r;
            var n = a.getMonth() + 1;
            e.birthday.month = n < 10 ? "0" + n : n,
            e.birthday.year = a.getFullYear(),
            e.user.birthday = e.birthday.day + "/" + e.birthday.month + "/" + e.birthday.year
        }
        $("#user-info-table").css("display", "table")
    }
});
