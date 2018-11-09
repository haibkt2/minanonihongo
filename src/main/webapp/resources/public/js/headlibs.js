var startDate = new Date();
function getServerTime() {
	var diff = new Date().getTime() - startDate.getTime();
	var serverTimezone = document.getElementById("serverTimezone").value;
	var serverTime = document.getElementById("serverTime").value;
	var userTimezone = document.getElementById("userTimezone").value;
	var mytime;

	if (userTimezone == "null") {
		serverTimezone = userTimezone = 1;
		startDate = mytime = new Date();
	} else {
		mytime = new Date(parseInt(serverTime));
	}

	mytime.setMilliseconds(mytime.getMilliseconds()
			- ((serverTimezone - userTimezone) * 3600000));
	mytime.setMilliseconds(mytime.getMilliseconds() + diff);

	var month = [ "01", "02", "03", "04", "05", "06", "07", "08", "09", "10",
			"11", "12" ];
	var year = mytime.getFullYear();
	var day = addZero(mytime.getDate());
	var hours = addZero(mytime.getHours());
	var minutes = addZero(mytime.getMinutes());
	var seconds = addZero(mytime.getSeconds());

	var currentTime = " <span style='font-size: 25px;'> " + year + "/"
			+ month[mytime.getMonth()] + "/" + day + "</span> <span>  " + hours
			+ ":" + minutes + ":" + seconds + "</span></h4>";

	document.getElementById("header-time").innerHTML = currentTime;

	var t = setTimeout(getServerTime, 500);
}

function validateForm() {
				if ($('#register-password').val().length < 6) {
					$('#message-error').html('<i class="zmdi zmdi-alert-octagon"></i>&nbsp;Mật khẩu quá ngắn').css('color', 'red');
					return false;
				} 
				if ($('#register-password').val() != $('#register-password-confirm').val()) {
					$('#message-error').html('<i class="zmdi zmdi-alert-octagon"></i>&nbsp;Xác nhận mật khẩu chưa đúng').css('color', 'red');
					return false;
				} 
				if (!$("#agree-checkbox").is(':checked')) {
					return false;
				} 
		}
function setCookie(e, t, n) {
    var o;
    if (n) {
        var i = new Date;
        i.setTime(i.getTime() + 24 * n * 60 * 60 * 1e3), o = "; expires=" + i.toGMTString()
    } else o = "";
    document.cookie = e + "=" + t + o + "; path=/"
}
function getsJson(id, ls) {
	var url = "/detail-lesson/"+ls+"?id=" + id;
	$.ajax({
				url : url,
				dataType : "json",
				contentType : "application/json;charset=utf-8",
				success : function(obj) {
					var j = JSON.stringify(obj);
					if(document.getElementById('course-heading') != null) 
						document.getElementById('course-heading').innerHTML = obj.lessonName;
					if(document.getElementById('introduce') != null)
						document.getElementById('introduce').innerHTML = obj.introduce;
					if(document.getElementById('total-number-test') != null)
						document.getElementById('total-number-test').innerHTML = obj.courseGlobal["totalNumber"];
					if(document.getElementById('document') != null) {
						for (var doc in obj.course["documents"]) {
							document.getElementById('document').innerHTML = '<i class="zmdi zmdi-dns">&nbsp;</i><strong>Tài liệu học cho khóa hoc '+obj.course["courseName"]+'</strong> : <a href="${contextPath}/downloadFile?file='+obj.course["documents"][doc].locaFileDoc+'" id="file-doc">'+obj.course["documents"][doc].locaFileDoc+'</a><br>'
							}
					}
					if(document.getElementById('course-name') != null)
						document.getElementById('course-name').innerHTML = obj.course["courseName"];
					if(document.getElementById('videoImg') != null)
						document.getElementById('videoImg').src = window.location.origin + "/resources/img/"
								+ "Bảng chữ cái Tiếng Nhật.jpg";
					if(document.getElementById('srVideo') != null)
						document.getElementById('srVideo').src = window.location.origin + "/reponsitory/N5/"
								+ "Bai-1.mp4";
					var video = document.getElementById('cVideo');
					if(video != null) {
						video.load();
						$(".movie-play").css("display", "block");
						$("#iframe-video").css("display", "none");	
					}
				},
				error : function(e) {
					alert("Sorry! Dữ liệu lỗi.");
				}
			});
}
function getCookie(e) {
    return document.cookie.length > 0 && (c_start = document.cookie.indexOf(e + "="), c_start != -1) ? (c_start = c_start + e.length + 1, c_end = document.cookie.indexOf(";", c_start), c_end == -1 && (c_end = document.cookie.length), unescape(document.cookie.substring(c_start, c_end))) : ""
}

function showSearchInput() {
    $("#logo").css("display", "none"), $("#account-container").css("display", "none"), $("#search-input-mobile").css("display", "inline")
}

function closeSearchBox() {
    $("#search-input-mobile").css("display", "none"), $("#logo").css("display", "inline"), $("#account-container").css("display", "block")
}

function enterToLogin(e, t) {
//    if (13 == e.keyCode && null != $("#email").val() && void 0 != $("#email").val() && "" != $("#email").val() && null != $("#password").val() && void 0 != $("#password").val() && "" != $("#password").val()) return $("#login-submit").click(), !1
}

function swichTab(e) {
    $(".li-tab").removeClass("active"), $("." + e + "-tab").addClass("active"), $(".tab-pane").removeClass("in active"), $("#" + e + "-content").addClass("in active"), "login" == e ? $(".auth-featured-image").attr("src", window.location.origin + "/resources/public/img/login-banner.jpg") : $(".auth-featured-image").attr("src", window.location.origin + "/resources/public/img/register-banner.jpg")
}

function search(e, t) {
    if (13 == e.keyCode) {
        var n = t.value;
        if (n = n.replace("/", " "), n = n.replace("<", " "), n = n.replace(">", " "), n = n.replace("'", " "), n = n.replace('"', " "), n = n.replace("&", " "), n = standardizeString(n), null == n || "" == n) return;
        return window.location.href = window.location.origin + "/tim-kiem/" + n, !1
    }
}

function authBySocicalAccount() {
    var e = new ClientJS;
    setCookie("current_browser", e.getBrowser(), 1), setCookie("current_os", e.getOS(), 1), setCookie("current_fingerprint", e.getFingerprint(), 1), setCookie("url_after_social_redirect", window.location.href, 1)
}

function logout() {
        console.log("Đăng xuất"), $.get(window.location.origin + "/account/logout", function(e, t) {
            "success" == e ;
             location.reload();
            
        })
    }! function(e, t) {
        "object" == typeof module && "object" == typeof module.exports ? module.exports = e.document ? t(e, !0) : function(e) {
            if (!e.document) throw new Error("jQuery requires a window with a document");
            return t(e)
        } : t(e)
    }("undefined" != typeof window ? window : this, function(e, t) {
        function n(e) {
            var t = e.length,
                n = J.type(e);
            return "function" !== n && !J.isWindow(e) && (!(1 !== e.nodeType || !t) || ("array" === n || 0 === t || "number" == typeof t && t > 0 && t - 1 in e))
        }

        function o(e, t, n) {
            if (J.isFunction(t)) return J.grep(e, function(e, o) {
                return !!t.call(e, o, e) !== n
            });
            if (t.nodeType) return J.grep(e, function(e) {
                return e === t !== n
            });
            if ("string" == typeof t) {
                if (se.test(t)) return J.filter(t, e, n);
                t = J.filter(t, e)
            }
            return J.grep(e, function(e) {
                return Y.call(t, e) >= 0 !== n
            })
        }

        function i(e, t) {
            for (;
                (e = e[t]) && 1 !== e.nodeType;);
            return e
        }

        function r(e) {
            var t = he[e] = {};
            return J.each(e.match(pe) || [], function(e, n) {
                t[n] = !0
            }), t
        }

        function a() {
            G.removeEventListener("DOMContentLoaded", a, !1), e.removeEventListener("load", a, !1), J.ready()
        }

        function s() {
            Object.defineProperty(this.cache = {}, 0, {
                get: function() {
                    return {}
                }
            }), this.expando = J.expando + s.uid++
        }

        function c(e, t, n) {
            var o;
            if (void 0 === n && 1 === e.nodeType)
                if (o = "data-" + t.replace(xe, "-$1").toLowerCase(), n = e.getAttribute(o), "string" == typeof n) {
                    try {
                        n = "true" === n || "false" !== n && ("null" === n ? null : +n + "" === n ? +n : be.test(n) ? J.parseJSON(n) : n)
                    } catch (i) {}
                    ye.set(e, t, n)
                } else n = void 0;
            return n
        }

        function l() {
            return !0
        }

        function u() {
            return !1
        }

        function f() {
            try {
                return G.activeElement
            } catch (e) {}
        }

        function d(e, t) {
            return J.nodeName(e, "table") && J.nodeName(11 !== t.nodeType ? t : t.firstChild, "tr") ? e.getElementsByTagName("tbody")[0] || e.appendChild(e.ownerDocument.createElement("tbody")) : e
        }

        function p(e) {
            return e.type = (null !== e.getAttribute("type")) + "/" + e.type, e
        }

        function h(e) {
            var t = qe.exec(e.type);
            return t ? e.type = t[1] : e.removeAttribute("type"), e
        }

        function g(e, t) {
            for (var n = 0, o = e.length; o > n; n++) ve.set(e[n], "globalEval", !t || ve.get(t[n], "globalEval"))
        }

        function m(e, t) {
            var n, o, i, r, a, s, c, l;
            if (1 === t.nodeType) {
                if (ve.hasData(e) && (r = ve.access(e), a = ve.set(t, r), l = r.events)) {
                    delete a.handle, a.events = {};
                    for (i in l)
                        for (n = 0, o = l[i].length; o > n; n++) J.event.add(t, i, l[i][n])
                }
                ye.hasData(e) && (s = ye.access(e), c = J.extend({}, s), ye.set(t, c))
            }
        }

        function v(e, t) {
            var n = e.getElementsByTagName ? e.getElementsByTagName(t || "*") : e.querySelectorAll ? e.querySelectorAll(t || "*") : [];
            return void 0 === t || t && J.nodeName(e, t) ? J.merge([e], n) : n
        }

        function y(e, t) {
            var n = t.nodeName.toLowerCase();
            "input" === n && Se.test(e.type) ? t.checked = e.checked : ("input" === n || "textarea" === n) && (t.defaultValue = e.defaultValue)
        }

        function b(t, n) {
            var o, i = J(n.createElement(t)).appendTo(n.body),
                r = e.getDefaultComputedStyle && (o = e.getDefaultComputedStyle(i[0])) ? o.display : J.css(i[0], "display");
            return i.detach(), r
        }

        function x(e) {
            var t = G,
                n = Re[e];
            return n || (n = b(e, t), "none" !== n && n || (He = (He || J("<iframe frameborder='0' width='0' height='0'/>")).appendTo(t.documentElement), t = He[0].contentDocument, t.write(), t.close(), n = b(e, t), He.detach()), Re[e] = n), n
        }

        function w(e, t, n) {
            var o, i, r, a, s = e.style;
            return n = n || We(e), n && (a = n.getPropertyValue(t) || n[t]), n && ("" !== a || J.contains(e.ownerDocument, e) || (a = J.style(e, t)), Be.test(a) && ze.test(t) && (o = s.width, i = s.minWidth, r = s.maxWidth, s.minWidth = s.maxWidth = s.width = a, a = n.width, s.width = o, s.minWidth = i, s.maxWidth = r)), void 0 !== a ? a + "" : a
        }

        function C(e, t) {
            return {
                get: function() {
                    return e() ? void delete this.get : (this.get = t).apply(this, arguments)
                }
            }
        }

        function T(e, t) {
            if (t in e) return t;
            for (var n = t[0].toUpperCase() + t.slice(1), o = t, i = Ze.length; i--;)
                if (t = Ze[i] + n, t in e) return t;
            return o
        }

        function S(e, t, n) {
            var o = Xe.exec(t);
            return o ? Math.max(0, o[1] - (n || 0)) + (o[2] || "px") : t
        }

        function $(e, t, n, o, i) {
            for (var r = n === (o ? "border" : "content") ? 4 : "width" === t ? 1 : 0, a = 0; 4 > r; r += 2) "margin" === n && (a += J.css(e, n + Ce[r], !0, i)), o ? ("content" === n && (a -= J.css(e, "padding" + Ce[r], !0, i)), "margin" !== n && (a -= J.css(e, "border" + Ce[r] + "Width", !0, i))) : (a += J.css(e, "padding" + Ce[r], !0, i), "padding" !== n && (a += J.css(e, "border" + Ce[r] + "Width", !0, i)));
            return a
        }

        function E(e, t, n) {
            var o = !0,
                i = "width" === t ? e.offsetWidth : e.offsetHeight,
                r = We(e),
                a = "border-box" === J.css(e, "boxSizing", !1, r);
            if (0 >= i || null == i) {
                if (i = w(e, t, r), (0 > i || null == i) && (i = e.style[t]), Be.test(i)) return i;
                o = a && (Q.boxSizingReliable() || i === e.style[t]), i = parseFloat(i) || 0
            }
            return i + $(e, t, n || (a ? "border" : "content"), o, r) + "px"
        }

        function k(e, t) {
            for (var n, o, i, r = [], a = 0, s = e.length; s > a; a++) o = e[a], o.style && (r[a] = ve.get(o, "olddisplay"), n = o.style.display, t ? (r[a] || "none" !== n || (o.style.display = ""), "" === o.style.display && Te(o) && (r[a] = ve.access(o, "olddisplay", x(o.nodeName)))) : (i = Te(o), "none" === n && i || ve.set(o, "olddisplay", i ? n : J.css(o, "display"))));
            for (a = 0; s > a; a++) o = e[a], o.style && (t && "none" !== o.style.display && "" !== o.style.display || (o.style.display = t ? r[a] || "" : "none"));
            return e
        }

        function P(e, t, n, o, i) {
            return new P.prototype.init(e, t, n, o, i)
        }

        function L() {
            return setTimeout(function() {
                Qe = void 0
            }), Qe = J.now()
        }

        function A(e, t) {
            var n, o = 0,
                i = {
                    height: e
                };
            for (t = t ? 1 : 0; 4 > o; o += 2 - t) n = Ce[o], i["margin" + n] = i["padding" + n] = e;
            return t && (i.opacity = i.width = e), i
        }

        function D(e, t, n) {
            for (var o, i = (nt[t] || []).concat(nt["*"]), r = 0, a = i.length; a > r; r++)
                if (o = i[r].call(n, t, e)) return o
        }

        function N(e, t, n) {
            var o, i, r, a, s, c, l, u, f = this,
                d = {},
                p = e.style,
                h = e.nodeType && Te(e),
                g = ve.get(e, "fxshow");
            n.queue || (s = J._queueHooks(e, "fx"), null == s.unqueued && (s.unqueued = 0, c = s.empty.fire, s.empty.fire = function() {
                s.unqueued || c()
            }), s.unqueued++, f.always(function() {
                f.always(function() {
                    s.unqueued--, J.queue(e, "fx").length || s.empty.fire()
                })
            })), 1 === e.nodeType && ("height" in t || "width" in t) && (n.overflow = [p.overflow, p.overflowX, p.overflowY], l = J.css(e, "display"), u = "none" === l ? ve.get(e, "olddisplay") || x(e.nodeName) : l, "inline" === u && "none" === J.css(e, "float") && (p.display = "inline-block")), n.overflow && (p.overflow = "hidden", f.always(function() {
                p.overflow = n.overflow[0], p.overflowX = n.overflow[1], p.overflowY = n.overflow[2]
            }));
            for (o in t)
                if (i = t[o], Ke.exec(i)) {
                    if (delete t[o], r = r || "toggle" === i, i === (h ? "hide" : "show")) {
                        if ("show" !== i || !g || void 0 === g[o]) continue;
                        h = !0
                    }
                    d[o] = g && g[o] || J.style(e, o)
                } else l = void 0;
            if (J.isEmptyObject(d)) "inline" === ("none" === l ? x(e.nodeName) : l) && (p.display = l);
            else {
                g ? "hidden" in g && (h = g.hidden) : g = ve.access(e, "fxshow", {}), r && (g.hidden = !h), h ? J(e).show() : f.done(function() {
                    J(e).hide()
                }), f.done(function() {
                    var t;
                    ve.remove(e, "fxshow");
                    for (t in d) J.style(e, t, d[t])
                });
                for (o in d) a = D(h ? g[o] : 0, o, f), o in g || (g[o] = a.start, h && (a.end = a.start, a.start = "width" === o || "height" === o ? 1 : 0))
            }
        }

        function M(e, t) {
            var n, o, i, r, a;
            for (n in e)
                if (o = J.camelCase(n), i = t[o], r = e[n], J.isArray(r) && (i = r[1], r = e[n] = r[0]), n !== o && (e[o] = r, delete e[n]), a = J.cssHooks[o], a && "expand" in a) {
                    r = a.expand(r), delete e[o];
                    for (n in r) n in e || (e[n] = r[n], t[n] = i)
                } else t[o] = i
        }

        function F(e, t, n) {
            var o, i, r = 0,
                a = tt.length,
                s = J.Deferred().always(function() {
                    delete c.elem
                }),
                c = function() {
                    if (i) return !1;
                    for (var t = Qe || L(), n = Math.max(0, l.startTime + l.duration - t), o = n / l.duration || 0, r = 1 - o, a = 0, c = l.tweens.length; c > a; a++) l.tweens[a].run(r);
                    return s.notifyWith(e, [l, r, n]), 1 > r && c ? n : (s.resolveWith(e, [l]), !1)
                },
                l = s.promise({
                    elem: e,
                    props: J.extend({}, t),
                    opts: J.extend(!0, {
                        specialEasing: {}
                    }, n),
                    originalProperties: t,
                    originalOptions: n,
                    startTime: Qe || L(),
                    duration: n.duration,
                    tweens: [],
                    createTween: function(t, n) {
                        var o = J.Tween(e, l.opts, t, n, l.opts.specialEasing[t] || l.opts.easing);
                        return l.tweens.push(o), o
                    },
                    stop: function(t) {
                        var n = 0,
                            o = t ? l.tweens.length : 0;
                        if (i) return this;
                        for (i = !0; o > n; n++) l.tweens[n].run(1);
                        return t ? s.resolveWith(e, [l, t]) : s.rejectWith(e, [l, t]), this
                    }
                }),
                u = l.props;
            for (M(u, l.opts.specialEasing); a > r; r++)
                if (o = tt[r].call(l, e, u, l.opts)) return o;
            return J.map(u, D, l), J.isFunction(l.opts.start) && l.opts.start.call(e, l), J.fx.timer(J.extend(c, {
                elem: e,
                anim: l,
                queue: l.opts.queue
            })), l.progress(l.opts.progress).done(l.opts.done, l.opts.complete).fail(l.opts.fail).always(l.opts.always)
        }

        function j(e) {
            return function(t, n) {
                "string" != typeof t && (n = t, t = "*");
                var o, i = 0,
                    r = t.toLowerCase().match(pe) || [];
                if (J.isFunction(n))
                    for (; o = r[i++];) "+" === o[0] ? (o = o.slice(1) || "*", (e[o] = e[o] || []).unshift(n)) : (e[o] = e[o] || []).push(n)
            }
        }

        function q(e, t, n, o) {
            function i(s) {
                var c;
                return r[s] = !0, J.each(e[s] || [], function(e, s) {
                    var l = s(t, n, o);
                    return "string" != typeof l || a || r[l] ? a ? !(c = l) : void 0 : (t.dataTypes.unshift(l), i(l), !1)
                }), c
            }
            var r = {},
                a = e === bt;
            return i(t.dataTypes[0]) || !r["*"] && i("*")
        }

        function O(e, t) {
            var n, o, i = J.ajaxSettings.flatOptions || {};
            for (n in t) void 0 !== t[n] && ((i[n] ? e : o || (o = {}))[n] = t[n]);
            return o && J.extend(!0, e, o), e
        }

        function I(e, t, n) {
            for (var o, i, r, a, s = e.contents, c = e.dataTypes;
                "*" === c[0];) c.shift(), void 0 === o && (o = e.mimeType || t.getResponseHeader("Content-Type"));
            if (o)
                for (i in s)
                    if (s[i] && s[i].test(o)) {
                        c.unshift(i);
                        break
                    }
            if (c[0] in n) r = c[0];
            else {
                for (i in n) {
                    if (!c[0] || e.converters[i + " " + c[0]]) {
                        r = i;
                        break
                    }
                    a || (a = i)
                }
                r = r || a
            }
            return r ? (r !== c[0] && c.unshift(r), n[r]) : void 0
        }

        function H(e, t, n, o) {
            var i, r, a, s, c, l = {},
                u = e.dataTypes.slice();
            if (u[1])
                for (a in e.converters) l[a.toLowerCase()] = e.converters[a];
            for (r = u.shift(); r;)
                if (e.responseFields[r] && (n[e.responseFields[r]] = t), !c && o && e.dataFilter && (t = e.dataFilter(t, e.dataType)), c = r, r = u.shift())
                    if ("*" === r) r = c;
                    else if ("*" !== c && c !== r) {
                if (a = l[c + " " + r] || l["* " + r], !a)
                    for (i in l)
                        if (s = i.split(" "), s[1] === r && (a = l[c + " " + s[0]] || l["* " + s[0]])) {
                            a === !0 ? a = l[i] : l[i] !== !0 && (r = s[0], u.unshift(s[1]));
                            break
                        }
                if (a !== !0)
                    if (a && e["throws"]) t = a(t);
                    else try {
                        t = a(t)
                    } catch (f) {
                        return {
                            state: "parsererror",
                            error: a ? f : "No conversion from " + c + " to " + r
                        }
                    }
            }
            return {
                state: "success",
                data: t
            }
        }

        function R(e, t, n, o) {
            var i;
            if (J.isArray(t)) J.each(t, function(t, i) {
                n || St.test(e) ? o(e, i) : R(e + "[" + ("object" == typeof i ? t : "") + "]", i, n, o)
            });
            else if (n || "object" !== J.type(t)) o(e, t);
            else
                for (i in t) R(e + "[" + i + "]", t[i], n, o)
        }

        function z(e) {
            return J.isWindow(e) ? e : 9 === e.nodeType && e.defaultView
        }
        var B = [],
            W = B.slice,
            _ = B.concat,
            X = B.push,
            Y = B.indexOf,
            U = {},
            V = U.toString,
            Z = U.hasOwnProperty,
            Q = {},
            G = e.document,
            K = "2.1.3",
            J = function(e, t) {
                return new J.fn.init(e, t)
            },
            ee = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g,
            te = /^-ms-/,
            ne = /-([\da-z])/gi,
            oe = function(e, t) {
                return t.toUpperCase()
            };
        J.fn = J.prototype = {
            jquery: K,
            constructor: J,
            selector: "",
            length: 0,
            toArray: function() {
                return W.call(this)
            },
            get: function(e) {
                return null != e ? 0 > e ? this[e + this.length] : this[e] : W.call(this)
            },
            pushStack: function(e) {
                var t = J.merge(this.constructor(), e);
                return t.prevObject = this, t.context = this.context, t
            },
            each: function(e, t) {
                return J.each(this, e, t)
            },
            map: function(e) {
                return this.pushStack(J.map(this, function(t, n) {
                    return e.call(t, n, t)
                }))
            },
            slice: function() {
                return this.pushStack(W.apply(this, arguments))
            },
            first: function() {
                return this.eq(0)
            },
            last: function() {
                return this.eq(-1)
            },
            eq: function(e) {
                var t = this.length,
                    n = +e + (0 > e ? t : 0);
                return this.pushStack(n >= 0 && t > n ? [this[n]] : [])
            },
            end: function() {
                return this.prevObject || this.constructor(null)
            },
            push: X,
            sort: B.sort,
            splice: B.splice
        }, J.extend = J.fn.extend = function() {
            var e, t, n, o, i, r, a = arguments[0] || {},
                s = 1,
                c = arguments.length,
                l = !1;
            for ("boolean" == typeof a && (l = a, a = arguments[s] || {}, s++), "object" == typeof a || J.isFunction(a) || (a = {}), s === c && (a = this, s--); c > s; s++)
                if (null != (e = arguments[s]))
                    for (t in e) n = a[t], o = e[t], a !== o && (l && o && (J.isPlainObject(o) || (i = J.isArray(o))) ? (i ? (i = !1, r = n && J.isArray(n) ? n : []) : r = n && J.isPlainObject(n) ? n : {}, a[t] = J.extend(l, r, o)) : void 0 !== o && (a[t] = o));
            return a
        }, J.extend({
            expando: "jQuery" + (K + Math.random()).replace(/\D/g, ""),
            isReady: !0,
            error: function(e) {
                throw new Error(e)
            },
            noop: function() {},
            isFunction: function(e) {
                return "function" === J.type(e)
            },
            isArray: Array.isArray,
            isWindow: function(e) {
                return null != e && e === e.window
            },
            isNumeric: function(e) {
                return !J.isArray(e) && e - parseFloat(e) + 1 >= 0
            },
            isPlainObject: function(e) {
                return "object" === J.type(e) && !e.nodeType && !J.isWindow(e) && !(e.constructor && !Z.call(e.constructor.prototype, "isPrototypeOf"))
            },
            isEmptyObject: function(e) {
                var t;
                for (t in e) return !1;
                return !0
            },
            type: function(e) {
                return null == e ? e + "" : "object" == typeof e || "function" == typeof e ? U[V.call(e)] || "object" : typeof e
            },
            globalEval: function(e) {
                var t, n = eval;
                e = J.trim(e), e && (1 === e.indexOf("use strict") ? (t = G.createElement("script"), t.text = e, G.head.appendChild(t).parentNode.removeChild(t)) : n(e))
            },
            camelCase: function(e) {
                return e.replace(te, "ms-").replace(ne, oe)
            },
            nodeName: function(e, t) {
                return e.nodeName && e.nodeName.toLowerCase() === t.toLowerCase()
            },
            each: function(e, t, o) {
                var i, r = 0,
                    a = e.length,
                    s = n(e);
                if (o) {
                    if (s)
                        for (; a > r && (i = t.apply(e[r], o), i !== !1); r++);
                    else
                        for (r in e)
                            if (i = t.apply(e[r], o), i === !1) break
                } else if (s)
                    for (; a > r && (i = t.call(e[r], r, e[r]), i !== !1); r++);
                else
                    for (r in e)
                        if (i = t.call(e[r], r, e[r]), i === !1) break; return e
            },
            trim: function(e) {
                return null == e ? "" : (e + "").replace(ee, "")
            },
            makeArray: function(e, t) {
                var o = t || [];
                return null != e && (n(Object(e)) ? J.merge(o, "string" == typeof e ? [e] : e) : X.call(o, e)), o
            },
            inArray: function(e, t, n) {
                return null == t ? -1 : Y.call(t, e, n)
            },
            merge: function(e, t) {
                for (var n = +t.length, o = 0, i = e.length; n > o; o++) e[i++] = t[o];
                return e.length = i, e
            },
            grep: function(e, t, n) {
                for (var o, i = [], r = 0, a = e.length, s = !n; a > r; r++) o = !t(e[r], r), o !== s && i.push(e[r]);
                return i
            },
            map: function(e, t, o) {
                var i, r = 0,
                    a = e.length,
                    s = n(e),
                    c = [];
                if (s)
                    for (; a > r; r++) i = t(e[r], r, o), null != i && c.push(i);
                else
                    for (r in e) i = t(e[r], r, o), null != i && c.push(i);
                return _.apply([], c)
            },
            guid: 1,
            proxy: function(e, t) {
                var n, o, i;
                return "string" == typeof t && (n = e[t], t = e, e = n), J.isFunction(e) ? (o = W.call(arguments, 2), i = function() {
                    return e.apply(t || this, o.concat(W.call(arguments)))
                }, i.guid = e.guid = e.guid || J.guid++, i) : void 0
            },
            now: Date.now,
            support: Q
        }), J.each("Boolean Number String Function Array Date RegExp Object Error".split(" "), function(e, t) {
            U["[object " + t + "]"] = t.toLowerCase()
        });
        var ie = function(e) {
            function t(e, t, n, o) {
                var i, r, a, s, c, l, f, p, h, g;
                if ((t ? t.ownerDocument || t : R) !== N && D(t), t = t || N, n = n || [], s = t.nodeType, "string" != typeof e || !e || 1 !== s && 9 !== s && 11 !== s) return n;
                if (!o && F) {
                    if (11 !== s && (i = ye.exec(e)))
                        if (a = i[1]) {
                            if (9 === s) {
                                if (r = t.getElementById(a), !r || !r.parentNode) return n;
                                if (r.id === a) return n.push(r), n
                            } else if (t.ownerDocument && (r = t.ownerDocument.getElementById(a)) && I(t, r) && r.id === a) return n.push(r), n
                        } else {
                            if (i[2]) return K.apply(n, t.getElementsByTagName(e)), n;
                            if ((a = i[3]) && w.getElementsByClassName) return K.apply(n, t.getElementsByClassName(a)), n
                        }
                    if (w.qsa && (!j || !j.test(e))) {
                        if (p = f = H, h = t, g = 1 !== s && e, 1 === s && "object" !== t.nodeName.toLowerCase()) {
                            for (l = $(e), (f = t.getAttribute("id")) ? p = f.replace(xe, "\\$&") : t.setAttribute("id", p), p = "[id='" + p + "'] ", c = l.length; c--;) l[c] = p + d(l[c]);
                            h = be.test(e) && u(t.parentNode) || t, g = l.join(",")
                        }
                        if (g) try {
                            return K.apply(n, h.querySelectorAll(g)), n
                        } catch (m) {} finally {
                            f || t.removeAttribute("id")
                        }
                    }
                }
                return k(e.replace(ce, "$1"), t, n, o)
            }

            function n() {
                function e(n, o) {
                    return t.push(n + " ") > C.cacheLength && delete e[t.shift()], e[n + " "] = o
                }
                var t = [];
                return e
            }

            function o(e) {
                return e[H] = !0, e
            }

            function i(e) {
                var t = N.createElement("div");
                try {
                    return !!e(t)
                } catch (n) {
                    return !1
                } finally {
                    t.parentNode && t.parentNode.removeChild(t), t = null
                }
            }

            function r(e, t) {
                for (var n = e.split("|"), o = e.length; o--;) C.attrHandle[n[o]] = t
            }

            function a(e, t) {
                var n = t && e,
                    o = n && 1 === e.nodeType && 1 === t.nodeType && (~t.sourceIndex || U) - (~e.sourceIndex || U);
                if (o) return o;
                if (n)
                    for (; n = n.nextSibling;)
                        if (n === t) return -1;
                return e ? 1 : -1
            }

            function s(e) {
                return function(t) {
                    var n = t.nodeName.toLowerCase();
                    return "input" === n && t.type === e
                }
            }

            function c(e) {
                return function(t) {
                    var n = t.nodeName.toLowerCase();
                    return ("input" === n || "button" === n) && t.type === e
                }
            }

            function l(e) {
                return o(function(t) {
                    return t = +t, o(function(n, o) {
                        for (var i, r = e([], n.length, t), a = r.length; a--;) n[i = r[a]] && (n[i] = !(o[i] = n[i]))
                    })
                })
            }

            function u(e) {
                return e && "undefined" != typeof e.getElementsByTagName && e
            }

            function f() {}

            function d(e) {
                for (var t = 0, n = e.length, o = ""; n > t; t++) o += e[t].value;
                return o
            }

            function p(e, t, n) {
                var o = t.dir,
                    i = n && "parentNode" === o,
                    r = B++;
                return t.first ? function(t, n, r) {
                    for (; t = t[o];)
                        if (1 === t.nodeType || i) return e(t, n, r)
                } : function(t, n, a) {
                    var s, c, l = [z, r];
                    if (a) {
                        for (; t = t[o];)
                            if ((1 === t.nodeType || i) && e(t, n, a)) return !0
                    } else
                        for (; t = t[o];)
                            if (1 === t.nodeType || i) {
                                if (c = t[H] || (t[H] = {}), (s = c[o]) && s[0] === z && s[1] === r) return l[2] = s[2];
                                if (c[o] = l, l[2] = e(t, n, a)) return !0
                            }
                }
            }

            function h(e) {
                return e.length > 1 ? function(t, n, o) {
                    for (var i = e.length; i--;)
                        if (!e[i](t, n, o)) return !1;
                    return !0
                } : e[0]
            }

            function g(e, n, o) {
                for (var i = 0, r = n.length; r > i; i++) t(e, n[i], o);
                return o
            }

            function m(e, t, n, o, i) {
                for (var r, a = [], s = 0, c = e.length, l = null != t; c > s; s++)(r = e[s]) && (!n || n(r, o, i)) && (a.push(r), l && t.push(s));
                return a
            }

            function v(e, t, n, i, r, a) {
                return i && !i[H] && (i = v(i)), r && !r[H] && (r = v(r, a)), o(function(o, a, s, c) {
                    var l, u, f, d = [],
                        p = [],
                        h = a.length,
                        v = o || g(t || "*", s.nodeType ? [s] : s, []),
                        y = !e || !o && t ? v : m(v, d, e, s, c),
                        b = n ? r || (o ? e : h || i) ? [] : a : y;
                    if (n && n(y, b, s, c), i)
                        for (l = m(b, p), i(l, [], s, c), u = l.length; u--;)(f = l[u]) && (b[p[u]] = !(y[p[u]] = f));
                    if (o) {
                        if (r || e) {
                            if (r) {
                                for (l = [], u = b.length; u--;)(f = b[u]) && l.push(y[u] = f);
                                r(null, b = [], l, c)
                            }
                            for (u = b.length; u--;)(f = b[u]) && (l = r ? ee(o, f) : d[u]) > -1 && (o[l] = !(a[l] = f))
                        }
                    } else b = m(b === a ? b.splice(h, b.length) : b), r ? r(null, a, b, c) : K.apply(a, b)
                })
            }

            function y(e) {
                for (var t, n, o, i = e.length, r = C.relative[e[0].type], a = r || C.relative[" "], s = r ? 1 : 0, c = p(function(e) {
                        return e === t
                    }, a, !0), l = p(function(e) {
                        return ee(t, e) > -1
                    }, a, !0), u = [function(e, n, o) {
                        var i = !r && (o || n !== P) || ((t = n).nodeType ? c(e, n, o) : l(e, n, o));
                        return t = null, i
                    }]; i > s; s++)
                    if (n = C.relative[e[s].type]) u = [p(h(u), n)];
                    else {
                        if (n = C.filter[e[s].type].apply(null, e[s].matches), n[H]) {
                            for (o = ++s; i > o && !C.relative[e[o].type]; o++);
                            return v(s > 1 && h(u), s > 1 && d(e.slice(0, s - 1).concat({
                                value: " " === e[s - 2].type ? "*" : ""
                            })).replace(ce, "$1"), n, o > s && y(e.slice(s, o)), i > o && y(e = e.slice(o)), i > o && d(e))
                        }
                        u.push(n)
                    }
                return h(u)
            }

            function b(e, n) {
                var i = n.length > 0,
                    r = e.length > 0,
                    a = function(o, a, s, c, l) {
                        var u, f, d, p = 0,
                            h = "0",
                            g = o && [],
                            v = [],
                            y = P,
                            b = o || r && C.find.TAG("*", l),
                            x = z += null == y ? 1 : Math.random() || .1,
                            w = b.length;
                        for (l && (P = a !== N && a); h !== w && null != (u = b[h]); h++) {
                            if (r && u) {
                                for (f = 0; d = e[f++];)
                                    if (d(u, a, s)) {
                                        c.push(u);
                                        break
                                    }
                                l && (z = x)
                            }
                            i && ((u = !d && u) && p--, o && g.push(u))
                        }
                        if (p += h, i && h !== p) {
                            for (f = 0; d = n[f++];) d(g, v, a, s);
                            if (o) {
                                if (p > 0)
                                    for (; h--;) g[h] || v[h] || (v[h] = Q.call(c));
                                v = m(v)
                            }
                            K.apply(c, v), l && !o && v.length > 0 && p + n.length > 1 && t.uniqueSort(c)
                        }
                        return l && (z = x, P = y), g
                    };
                return i ? o(a) : a
            }
            var x, w, C, T, S, $, E, k, P, L, A, D, N, M, F, j, q, O, I, H = "sizzle" + 1 * new Date,
                R = e.document,
                z = 0,
                B = 0,
                W = n(),
                _ = n(),
                X = n(),
                Y = function(e, t) {
                    return e === t && (A = !0), 0
                },
                U = 1 << 31,
                V = {}.hasOwnProperty,
                Z = [],
                Q = Z.pop,
                G = Z.push,
                K = Z.push,
                J = Z.slice,
                ee = function(e, t) {
                    for (var n = 0, o = e.length; o > n; n++)
                        if (e[n] === t) return n;
                    return -1
                },
                te = "checked|selected|async|autofocus|autoplay|controls|defer|disabled|hidden|ismap|loop|multiple|open|readonly|required|scoped",
                ne = "[\\x20\\t\\r\\n\\f]",
                oe = "(?:\\\\.|[\\w-]|[^\\x00-\\xa0])+",
                ie = oe.replace("w", "w#"),
                re = "\\[" + ne + "*(" + oe + ")(?:" + ne + "*([*^$|!~]?=)" + ne + "*(?:'((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\"|(" + ie + "))|)" + ne + "*\\]",
                ae = ":(" + oe + ")(?:\\((('((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\")|((?:\\\\.|[^\\\\()[\\]]|" + re + ")*)|.*)\\)|)",
                se = new RegExp(ne + "+", "g"),
                ce = new RegExp("^" + ne + "+|((?:^|[^\\\\])(?:\\\\.)*)" + ne + "+$", "g"),
                le = new RegExp("^" + ne + "*," + ne + "*"),
                ue = new RegExp("^" + ne + "*([>+~]|" + ne + ")" + ne + "*"),
                fe = new RegExp("=" + ne + "*([^\\]'\"]*?)" + ne + "*\\]", "g"),
                de = new RegExp(ae),
                pe = new RegExp("^" + ie + "$"),
                he = {
                    ID: new RegExp("^#(" + oe + ")"),
                    CLASS: new RegExp("^\\.(" + oe + ")"),
                    TAG: new RegExp("^(" + oe.replace("w", "w*") + ")"),
                    ATTR: new RegExp("^" + re),
                    PSEUDO: new RegExp("^" + ae),
                    CHILD: new RegExp("^:(only|first|last|nth|nth-last)-(child|of-type)(?:\\(" + ne + "*(even|odd|(([+-]|)(\\d*)n|)" + ne + "*(?:([+-]|)" + ne + "*(\\d+)|))" + ne + "*\\)|)", "i"),
                    bool: new RegExp("^(?:" + te + ")$", "i"),
                    needsContext: new RegExp("^" + ne + "*[>+~]|:(even|odd|eq|gt|lt|nth|first|last)(?:\\(" + ne + "*((?:-\\d)?\\d*)" + ne + "*\\)|)(?=[^-]|$)", "i")
                },
                ge = /^(?:input|select|textarea|button)$/i,
                me = /^h\d$/i,
                ve = /^[^{]+\{\s*\[native \w/,
                ye = /^(?:#([\w-]+)|(\w+)|\.([\w-]+))$/,
                be = /[+~]/,
                xe = /'|\\/g,
                we = new RegExp("\\\\([\\da-f]{1,6}" + ne + "?|(" + ne + ")|.)", "ig"),
                Ce = function(e, t, n) {
                    var o = "0x" + t - 65536;
                    return o !== o || n ? t : 0 > o ? String.fromCharCode(o + 65536) : String.fromCharCode(o >> 10 | 55296, 1023 & o | 56320)
                },
                Te = function() {
                    D()
                };
            try {
                K.apply(Z = J.call(R.childNodes), R.childNodes), Z[R.childNodes.length].nodeType
            } catch (Se) {
                K = {
                    apply: Z.length ? function(e, t) {
                        G.apply(e, J.call(t))
                    } : function(e, t) {
                        for (var n = e.length, o = 0; e[n++] = t[o++];);
                        e.length = n - 1
                    }
                }
            }
            w = t.support = {}, S = t.isXML = function(e) {
                var t = e && (e.ownerDocument || e).documentElement;
                return !!t && "HTML" !== t.nodeName
            }, D = t.setDocument = function(e) {
                var t, n, o = e ? e.ownerDocument || e : R;
                return o !== N && 9 === o.nodeType && o.documentElement ? (N = o, M = o.documentElement, n = o.defaultView, n && n !== n.top && (n.addEventListener ? n.addEventListener("unload", Te, !1) : n.attachEvent && n.attachEvent("onunload", Te)), F = !S(o), w.attributes = i(function(e) {
                    return e.className = "i", !e.getAttribute("className")
                }), w.getElementsByTagName = i(function(e) {
                    return e.appendChild(o.createComment("")), !e.getElementsByTagName("*").length
                }), w.getElementsByClassName = ve.test(o.getElementsByClassName), w.getById = i(function(e) {
                    return M.appendChild(e).id = H, !o.getElementsByName || !o.getElementsByName(H).length
                }), w.getById ? (C.find.ID = function(e, t) {
                    if ("undefined" != typeof t.getElementById && F) {
                        var n = t.getElementById(e);
                        return n && n.parentNode ? [n] : []
                    }
                }, C.filter.ID = function(e) {
                    var t = e.replace(we, Ce);
                    return function(e) {
                        return e.getAttribute("id") === t
                    }
                }) : (delete C.find.ID, C.filter.ID = function(e) {
                    var t = e.replace(we, Ce);
                    return function(e) {
                        var n = "undefined" != typeof e.getAttributeNode && e.getAttributeNode("id");
                        return n && n.value === t
                    }
                }), C.find.TAG = w.getElementsByTagName ? function(e, t) {
                    return "undefined" != typeof t.getElementsByTagName ? t.getElementsByTagName(e) : w.qsa ? t.querySelectorAll(e) : void 0
                } : function(e, t) {
                    var n, o = [],
                        i = 0,
                        r = t.getElementsByTagName(e);
                    if ("*" === e) {
                        for (; n = r[i++];) 1 === n.nodeType && o.push(n);
                        return o
                    }
                    return r
                }, C.find.CLASS = w.getElementsByClassName && function(e, t) {
                    return F ? t.getElementsByClassName(e) : void 0
                }, q = [], j = [], (w.qsa = ve.test(o.querySelectorAll)) && (i(function(e) {
                    M.appendChild(e).innerHTML = "<a id='" + H + "'></a><select id='" + H + "-\f]' msallowcapture=''><option selected=''></option></select>", e.querySelectorAll("[msallowcapture^='']").length && j.push("[*^$]=" + ne + "*(?:''|\"\")"), e.querySelectorAll("[selected]").length || j.push("\\[" + ne + "*(?:value|" + te + ")"), e.querySelectorAll("[id~=" + H + "-]").length || j.push("~="), e.querySelectorAll(":checked").length || j.push(":checked"), e.querySelectorAll("a#" + H + "+*").length || j.push(".#.+[+~]")
                }), i(function(e) {
                    var t = o.createElement("input");
                    t.setAttribute("type", "hidden"), e.appendChild(t).setAttribute("name", "D"), e.querySelectorAll("[name=d]").length && j.push("name" + ne + "*[*^$|!~]?="), e.querySelectorAll(":enabled").length || j.push(":enabled", ":disabled"), e.querySelectorAll("*,:x"), j.push(",.*:")
                })), (w.matchesSelector = ve.test(O = M.matches || M.webkitMatchesSelector || M.mozMatchesSelector || M.oMatchesSelector || M.msMatchesSelector)) && i(function(e) {
                    w.disconnectedMatch = O.call(e, "div"), O.call(e, "[s!='']:x"), q.push("!=", ae)
                }), j = j.length && new RegExp(j.join("|")), q = q.length && new RegExp(q.join("|")), t = ve.test(M.compareDocumentPosition), I = t || ve.test(M.contains) ? function(e, t) {
                    var n = 9 === e.nodeType ? e.documentElement : e,
                        o = t && t.parentNode;
                    return e === o || !(!o || 1 !== o.nodeType || !(n.contains ? n.contains(o) : e.compareDocumentPosition && 16 & e.compareDocumentPosition(o)))
                } : function(e, t) {
                    if (t)
                        for (; t = t.parentNode;)
                            if (t === e) return !0;
                    return !1
                }, Y = t ? function(e, t) {
                    if (e === t) return A = !0, 0;
                    var n = !e.compareDocumentPosition - !t.compareDocumentPosition;
                    return n ? n : (n = (e.ownerDocument || e) === (t.ownerDocument || t) ? e.compareDocumentPosition(t) : 1, 1 & n || !w.sortDetached && t.compareDocumentPosition(e) === n ? e === o || e.ownerDocument === R && I(R, e) ? -1 : t === o || t.ownerDocument === R && I(R, t) ? 1 : L ? ee(L, e) - ee(L, t) : 0 : 4 & n ? -1 : 1)
                } : function(e, t) {
                    if (e === t) return A = !0, 0;
                    var n, i = 0,
                        r = e.parentNode,
                        s = t.parentNode,
                        c = [e],
                        l = [t];
                    if (!r || !s) return e === o ? -1 : t === o ? 1 : r ? -1 : s ? 1 : L ? ee(L, e) - ee(L, t) : 0;
                    if (r === s) return a(e, t);
                    for (n = e; n = n.parentNode;) c.unshift(n);
                    for (n = t; n = n.parentNode;) l.unshift(n);
                    for (; c[i] === l[i];) i++;
                    return i ? a(c[i], l[i]) : c[i] === R ? -1 : l[i] === R ? 1 : 0
                }, o) : N
            }, t.matches = function(e, n) {
                return t(e, null, null, n)
            }, t.matchesSelector = function(e, n) {
                if ((e.ownerDocument || e) !== N && D(e), n = n.replace(fe, "='$1']"), !(!w.matchesSelector || !F || q && q.test(n) || j && j.test(n))) try {
                    var o = O.call(e, n);
                    if (o || w.disconnectedMatch || e.document && 11 !== e.document.nodeType) return o
                } catch (i) {}
                return t(n, N, null, [e]).length > 0
            }, t.contains = function(e, t) {
                return (e.ownerDocument || e) !== N && D(e), I(e, t)
            }, t.attr = function(e, t) {
                (e.ownerDocument || e) !== N && D(e);
                var n = C.attrHandle[t.toLowerCase()],
                    o = n && V.call(C.attrHandle, t.toLowerCase()) ? n(e, t, !F) : void 0;
                return void 0 !== o ? o : w.attributes || !F ? e.getAttribute(t) : (o = e.getAttributeNode(t)) && o.specified ? o.value : null
            }, t.error = function(e) {
                throw new Error("Syntax error, unrecognized expression: " + e)
            }, t.uniqueSort = function(e) {
                var t, n = [],
                    o = 0,
                    i = 0;
                if (A = !w.detectDuplicates, L = !w.sortStable && e.slice(0), e.sort(Y), A) {
                    for (; t = e[i++];) t === e[i] && (o = n.push(i));
                    for (; o--;) e.splice(n[o], 1)
                }
                return L = null, e
            }, T = t.getText = function(e) {
                var t, n = "",
                    o = 0,
                    i = e.nodeType;
                if (i) {
                    if (1 === i || 9 === i || 11 === i) {
                        if ("string" == typeof e.textContent) return e.textContent;
                        for (e = e.firstChild; e; e = e.nextSibling) n += T(e)
                    } else if (3 === i || 4 === i) return e.nodeValue
                } else
                    for (; t = e[o++];) n += T(t);
                return n
            }, C = t.selectors = {
                cacheLength: 50,
                createPseudo: o,
                match: he,
                attrHandle: {},
                find: {},
                relative: {
                    ">": {
                        dir: "parentNode",
                        first: !0
                    },
                    " ": {
                        dir: "parentNode"
                    },
                    "+": {
                        dir: "previousSibling",
                        first: !0
                    },
                    "~": {
                        dir: "previousSibling"
                    }
                },
                preFilter: {
                    ATTR: function(e) {
                        return e[1] = e[1].replace(we, Ce), e[3] = (e[3] || e[4] || e[5] || "").replace(we, Ce), "~=" === e[2] && (e[3] = " " + e[3] + " "), e.slice(0, 4)
                    },
                    CHILD: function(e) {
                        return e[1] = e[1].toLowerCase(), "nth" === e[1].slice(0, 3) ? (e[3] || t.error(e[0]), e[4] = +(e[4] ? e[5] + (e[6] || 1) : 2 * ("even" === e[3] || "odd" === e[3])), e[5] = +(e[7] + e[8] || "odd" === e[3])) : e[3] && t.error(e[0]), e
                    },
                    PSEUDO: function(e) {
                        var t, n = !e[6] && e[2];
                        return he.CHILD.test(e[0]) ? null : (e[3] ? e[2] = e[4] || e[5] || "" : n && de.test(n) && (t = $(n, !0)) && (t = n.indexOf(")", n.length - t) - n.length) && (e[0] = e[0].slice(0, t), e[2] = n.slice(0, t)), e.slice(0, 3))
                    }
                },
                filter: {
                    TAG: function(e) {
                        var t = e.replace(we, Ce).toLowerCase();
                        return "*" === e ? function() {
                            return !0
                        } : function(e) {
                            return e.nodeName && e.nodeName.toLowerCase() === t
                        }
                    },
                    CLASS: function(e) {
                        var t = W[e + " "];
                        return t || (t = new RegExp("(^|" + ne + ")" + e + "(" + ne + "|$)")) && W(e, function(e) {
                            return t.test("string" == typeof e.className && e.className || "undefined" != typeof e.getAttribute && e.getAttribute("class") || "")
                        })
                    },
                    ATTR: function(e, n, o) {
                        return function(i) {
                            var r = t.attr(i, e);
                            return null == r ? "!=" === n : !n || (r += "", "=" === n ? r === o : "!=" === n ? r !== o : "^=" === n ? o && 0 === r.indexOf(o) : "*=" === n ? o && r.indexOf(o) > -1 : "$=" === n ? o && r.slice(-o.length) === o : "~=" === n ? (" " + r.replace(se, " ") + " ").indexOf(o) > -1 : "|=" === n && (r === o || r.slice(0, o.length + 1) === o + "-"))
                        }
                    },
                    CHILD: function(e, t, n, o, i) {
                        var r = "nth" !== e.slice(0, 3),
                            a = "last" !== e.slice(-4),
                            s = "of-type" === t;
                        return 1 === o && 0 === i ? function(e) {
                            return !!e.parentNode
                        } : function(t, n, c) {
                            var l, u, f, d, p, h, g = r !== a ? "nextSibling" : "previousSibling",
                                m = t.parentNode,
                                v = s && t.nodeName.toLowerCase(),
                                y = !c && !s;
                            if (m) {
                                if (r) {
                                    for (; g;) {
                                        for (f = t; f = f[g];)
                                            if (s ? f.nodeName.toLowerCase() === v : 1 === f.nodeType) return !1;
                                        h = g = "only" === e && !h && "nextSibling"
                                    }
                                    return !0
                                }
                                if (h = [a ? m.firstChild : m.lastChild], a && y) {
                                    for (u = m[H] || (m[H] = {}), l = u[e] || [], p = l[0] === z && l[1], d = l[0] === z && l[2], f = p && m.childNodes[p]; f = ++p && f && f[g] || (d = p = 0) || h.pop();)
                                        if (1 === f.nodeType && ++d && f === t) {
                                            u[e] = [z, p, d];
                                            break
                                        }
                                } else if (y && (l = (t[H] || (t[H] = {}))[e]) && l[0] === z) d = l[1];
                                else
                                    for (;
                                        (f = ++p && f && f[g] || (d = p = 0) || h.pop()) && ((s ? f.nodeName.toLowerCase() !== v : 1 !== f.nodeType) || !++d || (y && ((f[H] || (f[H] = {}))[e] = [z, d]), f !== t)););
                                return d -= i, d === o || d % o === 0 && d / o >= 0
                            }
                        }
                    },
                    PSEUDO: function(e, n) {
                        var i, r = C.pseudos[e] || C.setFilters[e.toLowerCase()] || t.error("unsupported pseudo: " + e);
                        return r[H] ? r(n) : r.length > 1 ? (i = [e, e, "", n], C.setFilters.hasOwnProperty(e.toLowerCase()) ? o(function(e, t) {
                            for (var o, i = r(e, n), a = i.length; a--;) o = ee(e, i[a]), e[o] = !(t[o] = i[a])
                        }) : function(e) {
                            return r(e, 0, i)
                        }) : r
                    }
                },
                pseudos: {
                    not: o(function(e) {
                        var t = [],
                            n = [],
                            i = E(e.replace(ce, "$1"));
                        return i[H] ? o(function(e, t, n, o) {
                            for (var r, a = i(e, null, o, []), s = e.length; s--;)(r = a[s]) && (e[s] = !(t[s] = r))
                        }) : function(e, o, r) {
                            return t[0] = e, i(t, null, r, n), t[0] = null, !n.pop()
                        }
                    }),
                    has: o(function(e) {
                        return function(n) {
                            return t(e, n).length > 0
                        }
                    }),
                    contains: o(function(e) {
                        return e = e.replace(we, Ce),
                            function(t) {
                                return (t.textContent || t.innerText || T(t)).indexOf(e) > -1
                            }
                    }),
                    lang: o(function(e) {
                        return pe.test(e || "") || t.error("unsupported lang: " + e), e = e.replace(we, Ce).toLowerCase(),
                            function(t) {
                                var n;
                                do
                                    if (n = F ? t.lang : t.getAttribute("xml:lang") || t.getAttribute("lang")) return n = n.toLowerCase(), n === e || 0 === n.indexOf(e + "-");
                                while ((t = t.parentNode) && 1 === t.nodeType);
                                return !1
                            }
                    }),
                    target: function(t) {
                        var n = e.location && e.location.hash;
                        return n && n.slice(1) === t.id
                    },
                    root: function(e) {
                        return e === M
                    },
                    focus: function(e) {
                        return e === N.activeElement && (!N.hasFocus || N.hasFocus()) && !!(e.type || e.href || ~e.tabIndex)
                    },
                    enabled: function(e) {
                        return e.disabled === !1
                    },
                    disabled: function(e) {
                        return e.disabled === !0
                    },
                    checked: function(e) {
                        var t = e.nodeName.toLowerCase();
                        return "input" === t && !!e.checked || "option" === t && !!e.selected
                    },
                    selected: function(e) {
                        return e.parentNode && e.parentNode.selectedIndex, e.selected === !0
                    },
                    empty: function(e) {
                        for (e = e.firstChild; e; e = e.nextSibling)
                            if (e.nodeType < 6) return !1;
                        return !0
                    },
                    parent: function(e) {
                        return !C.pseudos.empty(e)
                    },
                    header: function(e) {
                        return me.test(e.nodeName)
                    },
                    input: function(e) {
                        return ge.test(e.nodeName)
                    },
                    button: function(e) {
                        var t = e.nodeName.toLowerCase();
                        return "input" === t && "button" === e.type || "button" === t
                    },
                    text: function(e) {
                        var t;
                        return "input" === e.nodeName.toLowerCase() && "text" === e.type && (null == (t = e.getAttribute("type")) || "text" === t.toLowerCase())
                    },
                    first: l(function() {
                        return [0]
                    }),
                    last: l(function(e, t) {
                        return [t - 1]
                    }),
                    eq: l(function(e, t, n) {
                        return [0 > n ? n + t : n]
                    }),
                    even: l(function(e, t) {
                        for (var n = 0; t > n; n += 2) e.push(n);
                        return e
                    }),
                    odd: l(function(e, t) {
                        for (var n = 1; t > n; n += 2) e.push(n);
                        return e
                    }),
                    lt: l(function(e, t, n) {
                        for (var o = 0 > n ? n + t : n; --o >= 0;) e.push(o);
                        return e
                    }),
                    gt: l(function(e, t, n) {
                        for (var o = 0 > n ? n + t : n; ++o < t;) e.push(o);
                        return e
                    })
                }
            }, C.pseudos.nth = C.pseudos.eq;
            for (x in {
                    radio: !0,
                    checkbox: !0,
                    file: !0,
                    password: !0,
                    image: !0
                }) C.pseudos[x] = s(x);
            for (x in {
                    submit: !0,
                    reset: !0
                }) C.pseudos[x] = c(x);
            return f.prototype = C.filters = C.pseudos, C.setFilters = new f, $ = t.tokenize = function(e, n) {
                var o, i, r, a, s, c, l, u = _[e + " "];
                if (u) return n ? 0 : u.slice(0);
                for (s = e, c = [], l = C.preFilter; s;) {
                    (!o || (i = le.exec(s))) && (i && (s = s.slice(i[0].length) || s), c.push(r = [])), o = !1, (i = ue.exec(s)) && (o = i.shift(), r.push({
                        value: o,
                        type: i[0].replace(ce, " ")
                    }), s = s.slice(o.length));
                    for (a in C.filter) !(i = he[a].exec(s)) || l[a] && !(i = l[a](i)) || (o = i.shift(), r.push({
                        value: o,
                        type: a,
                        matches: i
                    }), s = s.slice(o.length));
                    if (!o) break
                }
                return n ? s.length : s ? t.error(e) : _(e, c).slice(0);
            }, E = t.compile = function(e, t) {
                var n, o = [],
                    i = [],
                    r = X[e + " "];
                if (!r) {
                    for (t || (t = $(e)), n = t.length; n--;) r = y(t[n]), r[H] ? o.push(r) : i.push(r);
                    r = X(e, b(i, o)), r.selector = e
                }
                return r
            }, k = t.select = function(e, t, n, o) {
                var i, r, a, s, c, l = "function" == typeof e && e,
                    f = !o && $(e = l.selector || e);
                if (n = n || [], 1 === f.length) {
                    if (r = f[0] = f[0].slice(0), r.length > 2 && "ID" === (a = r[0]).type && w.getById && 9 === t.nodeType && F && C.relative[r[1].type]) {
                        if (t = (C.find.ID(a.matches[0].replace(we, Ce), t) || [])[0], !t) return n;
                        l && (t = t.parentNode), e = e.slice(r.shift().value.length)
                    }
                    for (i = he.needsContext.test(e) ? 0 : r.length; i-- && (a = r[i], !C.relative[s = a.type]);)
                        if ((c = C.find[s]) && (o = c(a.matches[0].replace(we, Ce), be.test(r[0].type) && u(t.parentNode) || t))) {
                            if (r.splice(i, 1), e = o.length && d(r), !e) return K.apply(n, o), n;
                            break
                        }
                }
                return (l || E(e, f))(o, t, !F, n, be.test(e) && u(t.parentNode) || t), n
            }, w.sortStable = H.split("").sort(Y).join("") === H, w.detectDuplicates = !!A, D(), w.sortDetached = i(function(e) {
                return 1 & e.compareDocumentPosition(N.createElement("div"))
            }), i(function(e) {
                return e.innerHTML = "<a href='#'></a>", "#" === e.firstChild.getAttribute("href")
            }) || r("type|href|height|width", function(e, t, n) {
                return n ? void 0 : e.getAttribute(t, "type" === t.toLowerCase() ? 1 : 2)
            }), w.attributes && i(function(e) {
                return e.innerHTML = "<input/>", e.firstChild.setAttribute("value", ""), "" === e.firstChild.getAttribute("value")
            }) || r("value", function(e, t, n) {
                return n || "input" !== e.nodeName.toLowerCase() ? void 0 : e.defaultValue
            }), i(function(e) {
                return null == e.getAttribute("disabled")
            }) || r(te, function(e, t, n) {
                var o;
                return n ? void 0 : e[t] === !0 ? t.toLowerCase() : (o = e.getAttributeNode(t)) && o.specified ? o.value : null
            }), t
        }(e);
        J.find = ie, J.expr = ie.selectors, J.expr[":"] = J.expr.pseudos, J.unique = ie.uniqueSort, J.text = ie.getText, J.isXMLDoc = ie.isXML, J.contains = ie.contains;
        var re = J.expr.match.needsContext,
            ae = /^<(\w+)\s*\/?>(?:<\/\1>|)$/,
            se = /^.[^:#\[\.,]*$/;
        J.filter = function(e, t, n) {
            var o = t[0];
            return n && (e = ":not(" + e + ")"), 1 === t.length && 1 === o.nodeType ? J.find.matchesSelector(o, e) ? [o] : [] : J.find.matches(e, J.grep(t, function(e) {
                return 1 === e.nodeType
            }))
        }, J.fn.extend({
            find: function(e) {
                var t, n = this.length,
                    o = [],
                    i = this;
                if ("string" != typeof e) return this.pushStack(J(e).filter(function() {
                    for (t = 0; n > t; t++)
                        if (J.contains(i[t], this)) return !0
                }));
                for (t = 0; n > t; t++) J.find(e, i[t], o);
                return o = this.pushStack(n > 1 ? J.unique(o) : o), o.selector = this.selector ? this.selector + " " + e : e, o
            },
            filter: function(e) {
                return this.pushStack(o(this, e || [], !1))
            },
            not: function(e) {
                return this.pushStack(o(this, e || [], !0))
            },
            is: function(e) {
                return !!o(this, "string" == typeof e && re.test(e) ? J(e) : e || [], !1).length
            }
        });
        var ce, le = /^(?:\s*(<[\w\W]+>)[^>]*|#([\w-]*))$/,
            ue = J.fn.init = function(e, t) {
                var n, o;
                if (!e) return this;
                if ("string" == typeof e) {
                    if (n = "<" === e[0] && ">" === e[e.length - 1] && e.length >= 3 ? [null, e, null] : le.exec(e), !n || !n[1] && t) return !t || t.jquery ? (t || ce).find(e) : this.constructor(t).find(e);
                    if (n[1]) {
                        if (t = t instanceof J ? t[0] : t, J.merge(this, J.parseHTML(n[1], t && t.nodeType ? t.ownerDocument || t : G, !0)), ae.test(n[1]) && J.isPlainObject(t))
                            for (n in t) J.isFunction(this[n]) ? this[n](t[n]) : this.attr(n, t[n]);
                        return this
                    }
                    return o = G.getElementById(n[2]), o && o.parentNode && (this.length = 1, this[0] = o), this.context = G, this.selector = e, this
                }
                return e.nodeType ? (this.context = this[0] = e, this.length = 1, this) : J.isFunction(e) ? "undefined" != typeof ce.ready ? ce.ready(e) : e(J) : (void 0 !== e.selector && (this.selector = e.selector, this.context = e.context), J.makeArray(e, this))
            };
        ue.prototype = J.fn, ce = J(G);
        var fe = /^(?:parents|prev(?:Until|All))/,
            de = {
                children: !0,
                contents: !0,
                next: !0,
                prev: !0
            };
        J.extend({
            dir: function(e, t, n) {
                for (var o = [], i = void 0 !== n;
                    (e = e[t]) && 9 !== e.nodeType;)
                    if (1 === e.nodeType) {
                        if (i && J(e).is(n)) break;
                        o.push(e)
                    }
                return o
            },
            sibling: function(e, t) {
                for (var n = []; e; e = e.nextSibling) 1 === e.nodeType && e !== t && n.push(e);
                return n
            }
        }), J.fn.extend({
            has: function(e) {
                var t = J(e, this),
                    n = t.length;
                return this.filter(function() {
                    for (var e = 0; n > e; e++)
                        if (J.contains(this, t[e])) return !0
                })
            },
            closest: function(e, t) {
                for (var n, o = 0, i = this.length, r = [], a = re.test(e) || "string" != typeof e ? J(e, t || this.context) : 0; i > o; o++)
                    for (n = this[o]; n && n !== t; n = n.parentNode)
                        if (n.nodeType < 11 && (a ? a.index(n) > -1 : 1 === n.nodeType && J.find.matchesSelector(n, e))) {
                            r.push(n);
                            break
                        }
                return this.pushStack(r.length > 1 ? J.unique(r) : r)
            },
            index: function(e) {
                return e ? "string" == typeof e ? Y.call(J(e), this[0]) : Y.call(this, e.jquery ? e[0] : e) : this[0] && this[0].parentNode ? this.first().prevAll().length : -1
            },
            add: function(e, t) {
                return this.pushStack(J.unique(J.merge(this.get(), J(e, t))))
            },
            addBack: function(e) {
                return this.add(null == e ? this.prevObject : this.prevObject.filter(e))
            }
        }), J.each({
            parent: function(e) {
                var t = e.parentNode;
                return t && 11 !== t.nodeType ? t : null
            },
            parents: function(e) {
                return J.dir(e, "parentNode")
            },
            parentsUntil: function(e, t, n) {
                return J.dir(e, "parentNode", n)
            },
            next: function(e) {
                return i(e, "nextSibling")
            },
            prev: function(e) {
                return i(e, "previousSibling")
            },
            nextAll: function(e) {
                return J.dir(e, "nextSibling")
            },
            prevAll: function(e) {
                return J.dir(e, "previousSibling")
            },
            nextUntil: function(e, t, n) {
                return J.dir(e, "nextSibling", n)
            },
            prevUntil: function(e, t, n) {
                return J.dir(e, "previousSibling", n)
            },
            siblings: function(e) {
                return J.sibling((e.parentNode || {}).firstChild, e)
            },
            children: function(e) {
                return J.sibling(e.firstChild)
            },
            contents: function(e) {
                return e.contentDocument || J.merge([], e.childNodes)
            }
        }, function(e, t) {
            J.fn[e] = function(n, o) {
                var i = J.map(this, t, n);
                return "Until" !== e.slice(-5) && (o = n), o && "string" == typeof o && (i = J.filter(o, i)), this.length > 1 && (de[e] || J.unique(i), fe.test(e) && i.reverse()), this.pushStack(i)
            }
        });
        var pe = /\S+/g,
            he = {};
        J.Callbacks = function(e) {
            e = "string" == typeof e ? he[e] || r(e) : J.extend({}, e);
            var t, n, o, i, a, s, c = [],
                l = !e.once && [],
                u = function(r) {
                    for (t = e.memory && r, n = !0, s = i || 0, i = 0, a = c.length, o = !0; c && a > s; s++)
                        if (c[s].apply(r[0], r[1]) === !1 && e.stopOnFalse) {
                            t = !1;
                            break
                        }
                    o = !1, c && (l ? l.length && u(l.shift()) : t ? c = [] : f.disable())
                },
                f = {
                    add: function() {
                        if (c) {
                            var n = c.length;
                            ! function r(t) {
                                J.each(t, function(t, n) {
                                    var o = J.type(n);
                                    "function" === o ? e.unique && f.has(n) || c.push(n) : n && n.length && "string" !== o && r(n)
                                })
                            }(arguments), o ? a = c.length : t && (i = n, u(t))
                        }
                        return this
                    },
                    remove: function() {
                        return c && J.each(arguments, function(e, t) {
                            for (var n;
                                (n = J.inArray(t, c, n)) > -1;) c.splice(n, 1), o && (a >= n && a--, s >= n && s--)
                        }), this
                    },
                    has: function(e) {
                        return e ? J.inArray(e, c) > -1 : !(!c || !c.length)
                    },
                    empty: function() {
                        return c = [], a = 0, this
                    },
                    disable: function() {
                        return c = l = t = void 0, this
                    },
                    disabled: function() {
                        return !c
                    },
                    lock: function() {
                        return l = void 0, t || f.disable(), this
                    },
                    locked: function() {
                        return !l
                    },
                    fireWith: function(e, t) {
                        return !c || n && !l || (t = t || [], t = [e, t.slice ? t.slice() : t], o ? l.push(t) : u(t)), this
                    },
                    fire: function() {
                        return f.fireWith(this, arguments), this
                    },
                    fired: function() {
                        return !!n
                    }
                };
            return f
        }, J.extend({
            Deferred: function(e) {
                var t = [
                        ["resolve", "done", J.Callbacks("once memory"), "resolved"],
                        ["reject", "fail", J.Callbacks("once memory"), "rejected"],
                        ["notify", "progress", J.Callbacks("memory")]
                    ],
                    n = "pending",
                    o = {
                        state: function() {
                            return n
                        },
                        always: function() {
                            return i.done(arguments).fail(arguments), this
                        },
                        then: function() {
                            var e = arguments;
                            return J.Deferred(function(n) {
                                J.each(t, function(t, r) {
                                    var a = J.isFunction(e[t]) && e[t];
                                    i[r[1]](function() {
                                        var e = a && a.apply(this, arguments);
                                        e && J.isFunction(e.promise) ? e.promise().done(n.resolve).fail(n.reject).progress(n.notify) : n[r[0] + "With"](this === o ? n.promise() : this, a ? [e] : arguments)
                                    })
                                }), e = null
                            }).promise()
                        },
                        promise: function(e) {
                            return null != e ? J.extend(e, o) : o
                        }
                    },
                    i = {};
                return o.pipe = o.then, J.each(t, function(e, r) {
                    var a = r[2],
                        s = r[3];
                    o[r[1]] = a.add, s && a.add(function() {
                        n = s
                    }, t[1 ^ e][2].disable, t[2][2].lock), i[r[0]] = function() {
                        return i[r[0] + "With"](this === i ? o : this, arguments), this
                    }, i[r[0] + "With"] = a.fireWith
                }), o.promise(i), e && e.call(i, i), i
            },
            when: function(e) {
                var t, n, o, i = 0,
                    r = W.call(arguments),
                    a = r.length,
                    s = 1 !== a || e && J.isFunction(e.promise) ? a : 0,
                    c = 1 === s ? e : J.Deferred(),
                    l = function(e, n, o) {
                        return function(i) {
                            n[e] = this, o[e] = arguments.length > 1 ? W.call(arguments) : i, o === t ? c.notifyWith(n, o) : --s || c.resolveWith(n, o)
                        }
                    };
                if (a > 1)
                    for (t = new Array(a), n = new Array(a), o = new Array(a); a > i; i++) r[i] && J.isFunction(r[i].promise) ? r[i].promise().done(l(i, o, r)).fail(c.reject).progress(l(i, n, t)) : --s;
                return s || c.resolveWith(o, r), c.promise()
            }
        });
        var ge;
        J.fn.ready = function(e) {
            return J.ready.promise().done(e), this
        }, J.extend({
            isReady: !1,
            readyWait: 1,
            holdReady: function(e) {
                e ? J.readyWait++ : J.ready(!0)
            },
            ready: function(e) {
                (e === !0 ? --J.readyWait : J.isReady) || (J.isReady = !0, e !== !0 && --J.readyWait > 0 || (ge.resolveWith(G, [J]), J.fn.triggerHandler && (J(G).triggerHandler("ready"), J(G).off("ready"))))
            }
        }), J.ready.promise = function(t) {
            return ge || (ge = J.Deferred(), "complete" === G.readyState ? setTimeout(J.ready) : (G.addEventListener("DOMContentLoaded", a, !1), e.addEventListener("load", a, !1))), ge.promise(t)
        }, J.ready.promise();
        var me = J.access = function(e, t, n, o, i, r, a) {
            var s = 0,
                c = e.length,
                l = null == n;
            if ("object" === J.type(n)) {
                i = !0;
                for (s in n) J.access(e, t, s, n[s], !0, r, a)
            } else if (void 0 !== o && (i = !0, J.isFunction(o) || (a = !0), l && (a ? (t.call(e, o), t = null) : (l = t, t = function(e, t, n) {
                    return l.call(J(e), n)
                })), t))
                for (; c > s; s++) t(e[s], n, a ? o : o.call(e[s], s, t(e[s], n)));
            return i ? e : l ? t.call(e) : c ? t(e[0], n) : r
        };
        J.acceptData = function(e) {
            return 1 === e.nodeType || 9 === e.nodeType || !+e.nodeType
        }, s.uid = 1, s.accepts = J.acceptData, s.prototype = {
            key: function(e) {
                if (!s.accepts(e)) return 0;
                var t = {},
                    n = e[this.expando];
                if (!n) {
                    n = s.uid++;
                    try {
                        t[this.expando] = {
                            value: n
                        }, Object.defineProperties(e, t)
                    } catch (o) {
                        t[this.expando] = n, J.extend(e, t)
                    }
                }
                return this.cache[n] || (this.cache[n] = {}), n
            },
            set: function(e, t, n) {
                var o, i = this.key(e),
                    r = this.cache[i];
                if ("string" == typeof t) r[t] = n;
                else if (J.isEmptyObject(r)) J.extend(this.cache[i], t);
                else
                    for (o in t) r[o] = t[o];
                return r
            },
            get: function(e, t) {
                var n = this.cache[this.key(e)];
                return void 0 === t ? n : n[t]
            },
            access: function(e, t, n) {
                var o;
                return void 0 === t || t && "string" == typeof t && void 0 === n ? (o = this.get(e, t), void 0 !== o ? o : this.get(e, J.camelCase(t))) : (this.set(e, t, n), void 0 !== n ? n : t)
            },
            remove: function(e, t) {
                var n, o, i, r = this.key(e),
                    a = this.cache[r];
                if (void 0 === t) this.cache[r] = {};
                else {
                    J.isArray(t) ? o = t.concat(t.map(J.camelCase)) : (i = J.camelCase(t), t in a ? o = [t, i] : (o = i, o = o in a ? [o] : o.match(pe) || [])), n = o.length;
                    for (; n--;) delete a[o[n]]
                }
            },
            hasData: function(e) {
                return !J.isEmptyObject(this.cache[e[this.expando]] || {})
            },
            discard: function(e) {
                e[this.expando] && delete this.cache[e[this.expando]]
            }
        };
        var ve = new s,
            ye = new s,
            be = /^(?:\{[\w\W]*\}|\[[\w\W]*\])$/,
            xe = /([A-Z])/g;
        J.extend({
            hasData: function(e) {
                return ye.hasData(e) || ve.hasData(e)
            },
            data: function(e, t, n) {
                return ye.access(e, t, n)
            },
            removeData: function(e, t) {
                ye.remove(e, t)
            },
            _data: function(e, t, n) {
                return ve.access(e, t, n)
            },
            _removeData: function(e, t) {
                ve.remove(e, t)
            }
        }), J.fn.extend({
            data: function(e, t) {
                var n, o, i, r = this[0],
                    a = r && r.attributes;
                if (void 0 === e) {
                    if (this.length && (i = ye.get(r), 1 === r.nodeType && !ve.get(r, "hasDataAttrs"))) {
                        for (n = a.length; n--;) a[n] && (o = a[n].name, 0 === o.indexOf("data-") && (o = J.camelCase(o.slice(5)), c(r, o, i[o])));
                        ve.set(r, "hasDataAttrs", !0)
                    }
                    return i
                }
                return "object" == typeof e ? this.each(function() {
                    ye.set(this, e)
                }) : me(this, function(t) {
                    var n, o = J.camelCase(e);
                    if (r && void 0 === t) {
                        if (n = ye.get(r, e), void 0 !== n) return n;
                        if (n = ye.get(r, o), void 0 !== n) return n;
                        if (n = c(r, o, void 0), void 0 !== n) return n
                    } else this.each(function() {
                        var n = ye.get(this, o);
                        ye.set(this, o, t), -1 !== e.indexOf("-") && void 0 !== n && ye.set(this, e, t)
                    })
                }, null, t, arguments.length > 1, null, !0)
            },
            removeData: function(e) {
                return this.each(function() {
                    ye.remove(this, e)
                })
            }
        }), J.extend({
            queue: function(e, t, n) {
                var o;
                return e ? (t = (t || "fx") + "queue", o = ve.get(e, t), n && (!o || J.isArray(n) ? o = ve.access(e, t, J.makeArray(n)) : o.push(n)), o || []) : void 0
            },
            dequeue: function(e, t) {
                t = t || "fx";
                var n = J.queue(e, t),
                    o = n.length,
                    i = n.shift(),
                    r = J._queueHooks(e, t),
                    a = function() {
                        J.dequeue(e, t)
                    };
                "inprogress" === i && (i = n.shift(), o--), i && ("fx" === t && n.unshift("inprogress"), delete r.stop, i.call(e, a, r)), !o && r && r.empty.fire()
            },
            _queueHooks: function(e, t) {
                var n = t + "queueHooks";
                return ve.get(e, n) || ve.access(e, n, {
                    empty: J.Callbacks("once memory").add(function() {
                        ve.remove(e, [t + "queue", n])
                    })
                })
            }
        }), J.fn.extend({
            queue: function(e, t) {
                var n = 2;
                return "string" != typeof e && (t = e, e = "fx", n--), arguments.length < n ? J.queue(this[0], e) : void 0 === t ? this : this.each(function() {
                    var n = J.queue(this, e, t);
                    J._queueHooks(this, e), "fx" === e && "inprogress" !== n[0] && J.dequeue(this, e)
                })
            },
            dequeue: function(e) {
                return this.each(function() {
                    J.dequeue(this, e)
                })
            },
            clearQueue: function(e) {
                return this.queue(e || "fx", [])
            },
            promise: function(e, t) {
                var n, o = 1,
                    i = J.Deferred(),
                    r = this,
                    a = this.length,
                    s = function() {
                        --o || i.resolveWith(r, [r])
                    };
                for ("string" != typeof e && (t = e, e = void 0), e = e || "fx"; a--;) n = ve.get(r[a], e + "queueHooks"), n && n.empty && (o++, n.empty.add(s));
                return s(), i.promise(t)
            }
        });
        var we = /[+-]?(?:\d*\.|)\d+(?:[eE][+-]?\d+|)/.source,
            Ce = ["Top", "Right", "Bottom", "Left"],
            Te = function(e, t) {
                return e = t || e, "none" === J.css(e, "display") || !J.contains(e.ownerDocument, e)
            },
            Se = /^(?:checkbox|radio)$/i;
        ! function() {
            var e = G.createDocumentFragment(),
                t = e.appendChild(G.createElement("div")),
                n = G.createElement("input");
            n.setAttribute("type", "radio"), n.setAttribute("checked", "checked"), n.setAttribute("name", "t"), t.appendChild(n), Q.checkClone = t.cloneNode(!0).cloneNode(!0).lastChild.checked, t.innerHTML = "<textarea>x</textarea>", Q.noCloneChecked = !!t.cloneNode(!0).lastChild.defaultValue
        }();
        var $e = "undefined";
        Q.focusinBubbles = "onfocusin" in e;
        var Ee = /^key/,
            ke = /^(?:mouse|pointer|contextmenu)|click/,
            Pe = /^(?:focusinfocus|focusoutblur)$/,
            Le = /^([^.]*)(?:\.(.+)|)$/;
        J.event = {
            global: {},
            add: function(e, t, n, o, i) {
                var r, a, s, c, l, u, f, d, p, h, g, m = ve.get(e);
                if (m)
                    for (n.handler && (r = n, n = r.handler, i = r.selector), n.guid || (n.guid = J.guid++), (c = m.events) || (c = m.events = {}), (a = m.handle) || (a = m.handle = function(t) {
                            return typeof J !== $e && J.event.triggered !== t.type ? J.event.dispatch.apply(e, arguments) : void 0
                        }), t = (t || "").match(pe) || [""], l = t.length; l--;) s = Le.exec(t[l]) || [], p = g = s[1], h = (s[2] || "").split(".").sort(), p && (f = J.event.special[p] || {}, p = (i ? f.delegateType : f.bindType) || p, f = J.event.special[p] || {}, u = J.extend({
                        type: p,
                        origType: g,
                        data: o,
                        handler: n,
                        guid: n.guid,
                        selector: i,
                        needsContext: i && J.expr.match.needsContext.test(i),
                        namespace: h.join(".")
                    }, r), (d = c[p]) || (d = c[p] = [], d.delegateCount = 0, f.setup && f.setup.call(e, o, h, a) !== !1 || e.addEventListener && e.addEventListener(p, a, !1)), f.add && (f.add.call(e, u), u.handler.guid || (u.handler.guid = n.guid)), i ? d.splice(d.delegateCount++, 0, u) : d.push(u), J.event.global[p] = !0)
            },
            remove: function(e, t, n, o, i) {
                var r, a, s, c, l, u, f, d, p, h, g, m = ve.hasData(e) && ve.get(e);
                if (m && (c = m.events)) {
                    for (t = (t || "").match(pe) || [""], l = t.length; l--;)
                        if (s = Le.exec(t[l]) || [], p = g = s[1], h = (s[2] || "").split(".").sort(), p) {
                            for (f = J.event.special[p] || {}, p = (o ? f.delegateType : f.bindType) || p, d = c[p] || [], s = s[2] && new RegExp("(^|\\.)" + h.join("\\.(?:.*\\.|)") + "(\\.|$)"), a = r = d.length; r--;) u = d[r], !i && g !== u.origType || n && n.guid !== u.guid || s && !s.test(u.namespace) || o && o !== u.selector && ("**" !== o || !u.selector) || (d.splice(r, 1), u.selector && d.delegateCount--, f.remove && f.remove.call(e, u));
                            a && !d.length && (f.teardown && f.teardown.call(e, h, m.handle) !== !1 || J.removeEvent(e, p, m.handle), delete c[p])
                        } else
                            for (p in c) J.event.remove(e, p + t[l], n, o, !0);
                    J.isEmptyObject(c) && (delete m.handle, ve.remove(e, "events"))
                }
            },
            trigger: function(t, n, o, i) {
                var r, a, s, c, l, u, f, d = [o || G],
                    p = Z.call(t, "type") ? t.type : t,
                    h = Z.call(t, "namespace") ? t.namespace.split(".") : [];
                if (a = s = o = o || G, 3 !== o.nodeType && 8 !== o.nodeType && !Pe.test(p + J.event.triggered) && (p.indexOf(".") >= 0 && (h = p.split("."), p = h.shift(), h.sort()), l = p.indexOf(":") < 0 && "on" + p, t = t[J.expando] ? t : new J.Event(p, "object" == typeof t && t), t.isTrigger = i ? 2 : 3, t.namespace = h.join("."), t.namespace_re = t.namespace ? new RegExp("(^|\\.)" + h.join("\\.(?:.*\\.|)") + "(\\.|$)") : null, t.result = void 0, t.target || (t.target = o), n = null == n ? [t] : J.makeArray(n, [t]), f = J.event.special[p] || {}, i || !f.trigger || f.trigger.apply(o, n) !== !1)) {
                    if (!i && !f.noBubble && !J.isWindow(o)) {
                        for (c = f.delegateType || p, Pe.test(c + p) || (a = a.parentNode); a; a = a.parentNode) d.push(a), s = a;
                        s === (o.ownerDocument || G) && d.push(s.defaultView || s.parentWindow || e)
                    }
                    for (r = 0;
                        (a = d[r++]) && !t.isPropagationStopped();) t.type = r > 1 ? c : f.bindType || p, u = (ve.get(a, "events") || {})[t.type] && ve.get(a, "handle"), u && u.apply(a, n), u = l && a[l], u && u.apply && J.acceptData(a) && (t.result = u.apply(a, n), t.result === !1 && t.preventDefault());
                    return t.type = p, i || t.isDefaultPrevented() || f._default && f._default.apply(d.pop(), n) !== !1 || !J.acceptData(o) || l && J.isFunction(o[p]) && !J.isWindow(o) && (s = o[l], s && (o[l] = null), J.event.triggered = p, o[p](), J.event.triggered = void 0, s && (o[l] = s)), t.result
                }
            },
            dispatch: function(e) {
                e = J.event.fix(e);
                var t, n, o, i, r, a = [],
                    s = W.call(arguments),
                    c = (ve.get(this, "events") || {})[e.type] || [],
                    l = J.event.special[e.type] || {};
                if (s[0] = e, e.delegateTarget = this, !l.preDispatch || l.preDispatch.call(this, e) !== !1) {
                    for (a = J.event.handlers.call(this, e, c), t = 0;
                        (i = a[t++]) && !e.isPropagationStopped();)
                        for (e.currentTarget = i.elem, n = 0;
                            (r = i.handlers[n++]) && !e.isImmediatePropagationStopped();)(!e.namespace_re || e.namespace_re.test(r.namespace)) && (e.handleObj = r, e.data = r.data, o = ((J.event.special[r.origType] || {}).handle || r.handler).apply(i.elem, s), void 0 !== o && (e.result = o) === !1 && (e.preventDefault(), e.stopPropagation()));
                    return l.postDispatch && l.postDispatch.call(this, e), e.result
                }
            },
            handlers: function(e, t) {
                var n, o, i, r, a = [],
                    s = t.delegateCount,
                    c = e.target;
                if (s && c.nodeType && (!e.button || "click" !== e.type))
                    for (; c !== this; c = c.parentNode || this)
                        if (c.disabled !== !0 || "click" !== e.type) {
                            for (o = [], n = 0; s > n; n++) r = t[n], i = r.selector + " ", void 0 === o[i] && (o[i] = r.needsContext ? J(i, this).index(c) >= 0 : J.find(i, this, null, [c]).length), o[i] && o.push(r);
                            o.length && a.push({
                                elem: c,
                                handlers: o
                            })
                        }
                return s < t.length && a.push({
                    elem: this,
                    handlers: t.slice(s)
                }), a
            },
            props: "altKey bubbles cancelable ctrlKey currentTarget eventPhase metaKey relatedTarget shiftKey target timeStamp view which".split(" "),
            fixHooks: {},
            keyHooks: {
                props: "char charCode key keyCode".split(" "),
                filter: function(e, t) {
                    return null == e.which && (e.which = null != t.charCode ? t.charCode : t.keyCode), e
                }
            },
            mouseHooks: {
                props: "button buttons clientX clientY offsetX offsetY pageX pageY screenX screenY toElement".split(" "),
                filter: function(e, t) {
                    var n, o, i, r = t.button;
                    return null == e.pageX && null != t.clientX && (n = e.target.ownerDocument || G, o = n.documentElement, i = n.body, e.pageX = t.clientX + (o && o.scrollLeft || i && i.scrollLeft || 0) - (o && o.clientLeft || i && i.clientLeft || 0), e.pageY = t.clientY + (o && o.scrollTop || i && i.scrollTop || 0) - (o && o.clientTop || i && i.clientTop || 0)), e.which || void 0 === r || (e.which = 1 & r ? 1 : 2 & r ? 3 : 4 & r ? 2 : 0), e
                }
            },
            fix: function(e) {
                if (e[J.expando]) return e;
                var t, n, o, i = e.type,
                    r = e,
                    a = this.fixHooks[i];
                for (a || (this.fixHooks[i] = a = ke.test(i) ? this.mouseHooks : Ee.test(i) ? this.keyHooks : {}), o = a.props ? this.props.concat(a.props) : this.props, e = new J.Event(r), t = o.length; t--;) n = o[t], e[n] = r[n];
                return e.target || (e.target = G), 3 === e.target.nodeType && (e.target = e.target.parentNode), a.filter ? a.filter(e, r) : e
            },
            special: {
                load: {
                    noBubble: !0
                },
                focus: {
                    trigger: function() {
                        return this !== f() && this.focus ? (this.focus(), !1) : void 0
                    },
                    delegateType: "focusin"
                },
                blur: {
                    trigger: function() {
                        return this === f() && this.blur ? (this.blur(), !1) : void 0
                    },
                    delegateType: "focusout"
                },
                click: {
                    trigger: function() {
                        return "checkbox" === this.type && this.click && J.nodeName(this, "input") ? (this.click(), !1) : void 0
                    },
                    _default: function(e) {
                        return J.nodeName(e.target, "a")
                    }
                },
                beforeunload: {
                    postDispatch: function(e) {
                        void 0 !== e.result && e.originalEvent && (e.originalEvent.returnValue = e.result)
                    }
                }
            },
            simulate: function(e, t, n, o) {
                var i = J.extend(new J.Event, n, {
                    type: e,
                    isSimulated: !0,
                    originalEvent: {}
                });
                o ? J.event.trigger(i, null, t) : J.event.dispatch.call(t, i), i.isDefaultPrevented() && n.preventDefault()
            }
        }, J.removeEvent = function(e, t, n) {
            e.removeEventListener && e.removeEventListener(t, n, !1)
        }, J.Event = function(e, t) {
            return this instanceof J.Event ? (e && e.type ? (this.originalEvent = e, this.type = e.type, this.isDefaultPrevented = e.defaultPrevented || void 0 === e.defaultPrevented && e.returnValue === !1 ? l : u) : this.type = e, t && J.extend(this, t), this.timeStamp = e && e.timeStamp || J.now(), void(this[J.expando] = !0)) : new J.Event(e, t)
        }, J.Event.prototype = {
            isDefaultPrevented: u,
            isPropagationStopped: u,
            isImmediatePropagationStopped: u,
            preventDefault: function() {
                var e = this.originalEvent;
                this.isDefaultPrevented = l, e && e.preventDefault && e.preventDefault()
            },
            stopPropagation: function() {
                var e = this.originalEvent;
                this.isPropagationStopped = l, e && e.stopPropagation && e.stopPropagation()
            },
            stopImmediatePropagation: function() {
                var e = this.originalEvent;
                this.isImmediatePropagationStopped = l, e && e.stopImmediatePropagation && e.stopImmediatePropagation(), this.stopPropagation()
            }
        }, J.each({
            mouseenter: "mouseover",
            mouseleave: "mouseout",
            pointerenter: "pointerover",
            pointerleave: "pointerout"
        }, function(e, t) {
            J.event.special[e] = {
                delegateType: t,
                bindType: t,
                handle: function(e) {
                    var n, o = this,
                        i = e.relatedTarget,
                        r = e.handleObj;
                    return (!i || i !== o && !J.contains(o, i)) && (e.type = r.origType, n = r.handler.apply(this, arguments), e.type = t), n
                }
            }
        }), Q.focusinBubbles || J.each({
            focus: "focusin",
            blur: "focusout"
        }, function(e, t) {
            var n = function(e) {
                J.event.simulate(t, e.target, J.event.fix(e), !0)
            };
            J.event.special[t] = {
                setup: function() {
                    var o = this.ownerDocument || this,
                        i = ve.access(o, t);
                    i || o.addEventListener(e, n, !0), ve.access(o, t, (i || 0) + 1)
                },
                teardown: function() {
                    var o = this.ownerDocument || this,
                        i = ve.access(o, t) - 1;
                    i ? ve.access(o, t, i) : (o.removeEventListener(e, n, !0), ve.remove(o, t))
                }
            }
        }), J.fn.extend({
            on: function(e, t, n, o, i) {
                var r, a;
                if ("object" == typeof e) {
                    "string" != typeof t && (n = n || t, t = void 0);
                    for (a in e) this.on(a, t, n, e[a], i);
                    return this
                }
                if (null == n && null == o ? (o = t, n = t = void 0) : null == o && ("string" == typeof t ? (o = n, n = void 0) : (o = n, n = t, t = void 0)), o === !1) o = u;
                else if (!o) return this;
                return 1 === i && (r = o, o = function(e) {
                    return J().off(e), r.apply(this, arguments)
                }, o.guid = r.guid || (r.guid = J.guid++)), this.each(function() {
                    J.event.add(this, e, o, n, t)
                })
            },
            one: function(e, t, n, o) {
                return this.on(e, t, n, o, 1)
            },
            off: function(e, t, n) {
                var o, i;
                if (e && e.preventDefault && e.handleObj) return o = e.handleObj, J(e.delegateTarget).off(o.namespace ? o.origType + "." + o.namespace : o.origType, o.selector, o.handler), this;
                if ("object" == typeof e) {
                    for (i in e) this.off(i, t, e[i]);
                    return this
                }
                return (t === !1 || "function" == typeof t) && (n = t, t = void 0), n === !1 && (n = u), this.each(function() {
                    J.event.remove(this, e, n, t)
                })
            },
            trigger: function(e, t) {
                return this.each(function() {
                    J.event.trigger(e, t, this)
                })
            },
            triggerHandler: function(e, t) {
                var n = this[0];
                return n ? J.event.trigger(e, t, n, !0) : void 0
            }
        });
        var Ae = /<(?!area|br|col|embed|hr|img|input|link|meta|param)(([\w:]+)[^>]*)\/>/gi,
            De = /<([\w:]+)/,
            Ne = /<|&#?\w+;/,
            Me = /<(?:script|style|link)/i,
            Fe = /checked\s*(?:[^=]|=\s*.checked.)/i,
            je = /^$|\/(?:java|ecma)script/i,
            qe = /^true\/(.*)/,
            Oe = /^\s*<!(?:\[CDATA\[|--)|(?:\]\]|--)>\s*$/g,
            Ie = {
                option: [1, "<select multiple='multiple'>", "</select>"],
                thead: [1, "<table>", "</table>"],
                col: [2, "<table><colgroup>", "</colgroup></table>"],
                tr: [2, "<table><tbody>", "</tbody></table>"],
                td: [3, "<table><tbody><tr>", "</tr></tbody></table>"],
                _default: [0, "", ""]
            };
        Ie.optgroup = Ie.option, Ie.tbody = Ie.tfoot = Ie.colgroup = Ie.caption = Ie.thead, Ie.th = Ie.td, J.extend({
            clone: function(e, t, n) {
                var o, i, r, a, s = e.cloneNode(!0),
                    c = J.contains(e.ownerDocument, e);
                if (!(Q.noCloneChecked || 1 !== e.nodeType && 11 !== e.nodeType || J.isXMLDoc(e)))
                    for (a = v(s), r = v(e), o = 0, i = r.length; i > o; o++) y(r[o], a[o]);
                if (t)
                    if (n)
                        for (r = r || v(e), a = a || v(s), o = 0, i = r.length; i > o; o++) m(r[o], a[o]);
                    else m(e, s);
                return a = v(s, "script"), a.length > 0 && g(a, !c && v(e, "script")), s
            },
            buildFragment: function(e, t, n, o) {
                for (var i, r, a, s, c, l, u = t.createDocumentFragment(), f = [], d = 0, p = e.length; p > d; d++)
                    if (i = e[d], i || 0 === i)
                        if ("object" === J.type(i)) J.merge(f, i.nodeType ? [i] : i);
                        else if (Ne.test(i)) {
                    for (r = r || u.appendChild(t.createElement("div")), a = (De.exec(i) || ["", ""])[1].toLowerCase(), s = Ie[a] || Ie._default, r.innerHTML = s[1] + i.replace(Ae, "<$1></$2>") + s[2], l = s[0]; l--;) r = r.lastChild;
                    J.merge(f, r.childNodes), r = u.firstChild, r.textContent = ""
                } else f.push(t.createTextNode(i));
                for (u.textContent = "", d = 0; i = f[d++];)
                    if ((!o || -1 === J.inArray(i, o)) && (c = J.contains(i.ownerDocument, i), r = v(u.appendChild(i), "script"), c && g(r), n))
                        for (l = 0; i = r[l++];) je.test(i.type || "") && n.push(i);
                return u
            },
            cleanData: function(e) {
                for (var t, n, o, i, r = J.event.special, a = 0; void 0 !== (n = e[a]); a++) {
                    if (J.acceptData(n) && (i = n[ve.expando], i && (t = ve.cache[i]))) {
                        if (t.events)
                            for (o in t.events) r[o] ? J.event.remove(n, o) : J.removeEvent(n, o, t.handle);
                        ve.cache[i] && delete ve.cache[i]
                    }
                    delete ye.cache[n[ye.expando]]
                }
            }
        }), J.fn.extend({
            text: function(e) {
                return me(this, function(e) {
                    return void 0 === e ? J.text(this) : this.empty().each(function() {
                        (1 === this.nodeType || 11 === this.nodeType || 9 === this.nodeType) && (this.textContent = e)
                    })
                }, null, e, arguments.length)
            },
            append: function() {
                return this.domManip(arguments, function(e) {
                    if (1 === this.nodeType || 11 === this.nodeType || 9 === this.nodeType) {
                        var t = d(this, e);
                        t.appendChild(e)
                    }
                })
            },
            prepend: function() {
                return this.domManip(arguments, function(e) {
                    if (1 === this.nodeType || 11 === this.nodeType || 9 === this.nodeType) {
                        var t = d(this, e);
                        t.insertBefore(e, t.firstChild)
                    }
                })
            },
            before: function() {
                return this.domManip(arguments, function(e) {
                    this.parentNode && this.parentNode.insertBefore(e, this)
                })
            },
            after: function() {
                return this.domManip(arguments, function(e) {
                    this.parentNode && this.parentNode.insertBefore(e, this.nextSibling)
                })
            },
            remove: function(e, t) {
                for (var n, o = e ? J.filter(e, this) : this, i = 0; null != (n = o[i]); i++) t || 1 !== n.nodeType || J.cleanData(v(n)), n.parentNode && (t && J.contains(n.ownerDocument, n) && g(v(n, "script")), n.parentNode.removeChild(n));
                return this
            },
            empty: function() {
                for (var e, t = 0; null != (e = this[t]); t++) 1 === e.nodeType && (J.cleanData(v(e, !1)), e.textContent = "");
                return this
            },
            clone: function(e, t) {
                return e = null != e && e, t = null == t ? e : t, this.map(function() {
                    return J.clone(this, e, t)
                })
            },
            html: function(e) {
                return me(this, function(e) {
                    var t = this[0] || {},
                        n = 0,
                        o = this.length;
                    if (void 0 === e && 1 === t.nodeType) return t.innerHTML;
                    if ("string" == typeof e && !Me.test(e) && !Ie[(De.exec(e) || ["", ""])[1].toLowerCase()]) {
                        e = e.replace(Ae, "<$1></$2>");
                        try {
                            for (; o > n; n++) t = this[n] || {}, 1 === t.nodeType && (J.cleanData(v(t, !1)), t.innerHTML = e);
                            t = 0
                        } catch (i) {}
                    }
                    t && this.empty().append(e)
                }, null, e, arguments.length)
            },
            replaceWith: function() {
                var e = arguments[0];
                return this.domManip(arguments, function(t) {
                    e = this.parentNode, J.cleanData(v(this)), e && e.replaceChild(t, this)
                }), e && (e.length || e.nodeType) ? this : this.remove()
            },
            detach: function(e) {
                return this.remove(e, !0)
            },
            domManip: function(e, t) {
                e = _.apply([], e);
                var n, o, i, r, a, s, c = 0,
                    l = this.length,
                    u = this,
                    f = l - 1,
                    d = e[0],
                    g = J.isFunction(d);
                if (g || l > 1 && "string" == typeof d && !Q.checkClone && Fe.test(d)) return this.each(function(n) {
                    var o = u.eq(n);
                    g && (e[0] = d.call(this, n, o.html())), o.domManip(e, t)
                });
                if (l && (n = J.buildFragment(e, this[0].ownerDocument, !1, this), o = n.firstChild, 1 === n.childNodes.length && (n = o), o)) {
                    for (i = J.map(v(n, "script"), p), r = i.length; l > c; c++) a = n, c !== f && (a = J.clone(a, !0, !0), r && J.merge(i, v(a, "script"))), t.call(this[c], a, c);
                    if (r)
                        for (s = i[i.length - 1].ownerDocument, J.map(i, h), c = 0; r > c; c++) a = i[c], je.test(a.type || "") && !ve.access(a, "globalEval") && J.contains(s, a) && (a.src ? J._evalUrl && J._evalUrl(a.src) : J.globalEval(a.textContent.replace(Oe, "")))
                }
                return this
            }
        }), J.each({
            appendTo: "append",
            prependTo: "prepend",
            insertBefore: "before",
            insertAfter: "after",
            replaceAll: "replaceWith"
        }, function(e, t) {
            J.fn[e] = function(e) {
                for (var n, o = [], i = J(e), r = i.length - 1, a = 0; r >= a; a++) n = a === r ? this : this.clone(!0), J(i[a])[t](n), X.apply(o, n.get());
                return this.pushStack(o)
            }
        });
        var He, Re = {},
            ze = /^margin/,
            Be = new RegExp("^(" + we + ")(?!px)[a-z%]+$", "i"),
            We = function(t) {
                return t.ownerDocument.defaultView.opener ? t.ownerDocument.defaultView.getComputedStyle(t, null) : e.getComputedStyle(t, null)
            };
        ! function() {
            function t() {
                a.style.cssText = "-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;display:block;margin-top:1%;top:1%;border:1px;padding:1px;width:4px;position:absolute", a.innerHTML = "", i.appendChild(r);
                var t = e.getComputedStyle(a, null);
                n = "1%" !== t.top, o = "4px" === t.width, i.removeChild(r)
            }
            var n, o, i = G.documentElement,
                r = G.createElement("div"),
                a = G.createElement("div");
            a.style && (a.style.backgroundClip = "content-box", a.cloneNode(!0).style.backgroundClip = "", Q.clearCloneStyle = "content-box" === a.style.backgroundClip, r.style.cssText = "border:0;width:0;height:0;top:0;left:-9999px;margin-top:1px;position:absolute", r.appendChild(a), e.getComputedStyle && J.extend(Q, {
                pixelPosition: function() {
                    return t(), n
                },
                boxSizingReliable: function() {
                    return null == o && t(), o
                },
                reliableMarginRight: function() {
                    var t, n = a.appendChild(G.createElement("div"));
                    return n.style.cssText = a.style.cssText = "-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box;display:block;margin:0;border:0;padding:0", n.style.marginRight = n.style.width = "0", a.style.width = "1px", i.appendChild(r), t = !parseFloat(e.getComputedStyle(n, null).marginRight), i.removeChild(r), a.removeChild(n), t
                }
            }))
        }(), J.swap = function(e, t, n, o) {
            var i, r, a = {};
            for (r in t) a[r] = e.style[r], e.style[r] = t[r];
            i = n.apply(e, o || []);
            for (r in t) e.style[r] = a[r];
            return i
        };
        var _e = /^(none|table(?!-c[ea]).+)/,
            Xe = new RegExp("^(" + we + ")(.*)$", "i"),
            Ye = new RegExp("^([+-])=(" + we + ")", "i"),
            Ue = {
                position: "absolute",
                visibility: "hidden",
                display: "block"
            },
            Ve = {
                letterSpacing: "0",
                fontWeight: "400"
            },
            Ze = ["Webkit", "O", "Moz", "ms"];
        J.extend({
            cssHooks: {
                opacity: {
                    get: function(e, t) {
                        if (t) {
                            var n = w(e, "opacity");
                            return "" === n ? "1" : n
                        }
                    }
                }
            },
            cssNumber: {
                columnCount: !0,
                fillOpacity: !0,
                flexGrow: !0,
                flexShrink: !0,
                fontWeight: !0,
                lineHeight: !0,
                opacity: !0,
                order: !0,
                orphans: !0,
                widows: !0,
                zIndex: !0,
                zoom: !0
            },
            cssProps: {
                "float": "cssFloat"
            },
            style: function(e, t, n, o) {
                if (e && 3 !== e.nodeType && 8 !== e.nodeType && e.style) {
                    var i, r, a, s = J.camelCase(t),
                        c = e.style;
                    return t = J.cssProps[s] || (J.cssProps[s] = T(c, s)), a = J.cssHooks[t] || J.cssHooks[s], void 0 === n ? a && "get" in a && void 0 !== (i = a.get(e, !1, o)) ? i : c[t] : (r = typeof n, "string" === r && (i = Ye.exec(n)) && (n = (i[1] + 1) * i[2] + parseFloat(J.css(e, t)), r = "number"), void(null != n && n === n && ("number" !== r || J.cssNumber[s] || (n += "px"), Q.clearCloneStyle || "" !== n || 0 !== t.indexOf("background") || (c[t] = "inherit"), a && "set" in a && void 0 === (n = a.set(e, n, o)) || (c[t] = n))))
                }
            },
            css: function(e, t, n, o) {
                var i, r, a, s = J.camelCase(t);
                return t = J.cssProps[s] || (J.cssProps[s] = T(e.style, s)), a = J.cssHooks[t] || J.cssHooks[s], a && "get" in a && (i = a.get(e, !0, n)), void 0 === i && (i = w(e, t, o)), "normal" === i && t in Ve && (i = Ve[t]), "" === n || n ? (r = parseFloat(i), n === !0 || J.isNumeric(r) ? r || 0 : i) : i
            }
        }), J.each(["height", "width"], function(e, t) {
            J.cssHooks[t] = {
                get: function(e, n, o) {
                    return n ? _e.test(J.css(e, "display")) && 0 === e.offsetWidth ? J.swap(e, Ue, function() {
                        return E(e, t, o)
                    }) : E(e, t, o) : void 0
                },
                set: function(e, n, o) {
                    var i = o && We(e);
                    return S(e, n, o ? $(e, t, o, "border-box" === J.css(e, "boxSizing", !1, i), i) : 0)
                }
            }
        }), J.cssHooks.marginRight = C(Q.reliableMarginRight, function(e, t) {
            return t ? J.swap(e, {
                display: "inline-block"
            }, w, [e, "marginRight"]) : void 0
        }), J.each({
            margin: "",
            padding: "",
            border: "Width"
        }, function(e, t) {
            J.cssHooks[e + t] = {
                expand: function(n) {
                    for (var o = 0, i = {}, r = "string" == typeof n ? n.split(" ") : [n]; 4 > o; o++) i[e + Ce[o] + t] = r[o] || r[o - 2] || r[0];
                    return i
                }
            }, ze.test(e) || (J.cssHooks[e + t].set = S)
        }), J.fn.extend({
            css: function(e, t) {
                return me(this, function(e, t, n) {
                    var o, i, r = {},
                        a = 0;
                    if (J.isArray(t)) {
                        for (o = We(e), i = t.length; i > a; a++) r[t[a]] = J.css(e, t[a], !1, o);
                        return r
                    }
                    return void 0 !== n ? J.style(e, t, n) : J.css(e, t)
                }, e, t, arguments.length > 1)
            },
            show: function() {
                return k(this, !0)
            },
            hide: function() {
                return k(this)
            },
            toggle: function(e) {
                return "boolean" == typeof e ? e ? this.show() : this.hide() : this.each(function() {
                    Te(this) ? J(this).show() : J(this).hide()
                })
            }
        }), J.Tween = P, P.prototype = {
            constructor: P,
            init: function(e, t, n, o, i, r) {
                this.elem = e, this.prop = n, this.easing = i || "swing", this.options = t, this.start = this.now = this.cur(), this.end = o, this.unit = r || (J.cssNumber[n] ? "" : "px")
            },
            cur: function() {
                var e = P.propHooks[this.prop];
                return e && e.get ? e.get(this) : P.propHooks._default.get(this)
            },
            run: function(e) {
                var t, n = P.propHooks[this.prop];
                return this.pos = t = this.options.duration ? J.easing[this.easing](e, this.options.duration * e, 0, 1, this.options.duration) : e, this.now = (this.end - this.start) * t + this.start, this.options.step && this.options.step.call(this.elem, this.now, this), n && n.set ? n.set(this) : P.propHooks._default.set(this), this
            }
        }, P.prototype.init.prototype = P.prototype, P.propHooks = {
            _default: {
                get: function(e) {
                    var t;
                    return null == e.elem[e.prop] || e.elem.style && null != e.elem.style[e.prop] ? (t = J.css(e.elem, e.prop, ""), t && "auto" !== t ? t : 0) : e.elem[e.prop]
                },
                set: function(e) {
                    J.fx.step[e.prop] ? J.fx.step[e.prop](e) : e.elem.style && (null != e.elem.style[J.cssProps[e.prop]] || J.cssHooks[e.prop]) ? J.style(e.elem, e.prop, e.now + e.unit) : e.elem[e.prop] = e.now
                }
            }
        }, P.propHooks.scrollTop = P.propHooks.scrollLeft = {
            set: function(e) {
                e.elem.nodeType && e.elem.parentNode && (e.elem[e.prop] = e.now)
            }
        }, J.easing = {
            linear: function(e) {
                return e
            },
            swing: function(e) {
                return .5 - Math.cos(e * Math.PI) / 2
            }
        }, J.fx = P.prototype.init, J.fx.step = {};
        var Qe, Ge, Ke = /^(?:toggle|show|hide)$/,
            Je = new RegExp("^(?:([+-])=|)(" + we + ")([a-z%]*)$", "i"),
            et = /queueHooks$/,
            tt = [N],
            nt = {
                "*": [function(e, t) {
                    var n = this.createTween(e, t),
                        o = n.cur(),
                        i = Je.exec(t),
                        r = i && i[3] || (J.cssNumber[e] ? "" : "px"),
                        a = (J.cssNumber[e] || "px" !== r && +o) && Je.exec(J.css(n.elem, e)),
                        s = 1,
                        c = 20;
                    if (a && a[3] !== r) {
                        r = r || a[3], i = i || [], a = +o || 1;
                        do s = s || ".5", a /= s, J.style(n.elem, e, a + r); while (s !== (s = n.cur() / o) && 1 !== s && --c)
                    }
                    return i && (a = n.start = +a || +o || 0, n.unit = r, n.end = i[1] ? a + (i[1] + 1) * i[2] : +i[2]), n
                }]
            };
        J.Animation = J.extend(F, {
                tweener: function(e, t) {
                    J.isFunction(e) ? (t = e, e = ["*"]) : e = e.split(" ");
                    for (var n, o = 0, i = e.length; i > o; o++) n = e[o], nt[n] = nt[n] || [], nt[n].unshift(t)
                },
                prefilter: function(e, t) {
                    t ? tt.unshift(e) : tt.push(e)
                }
            }), J.speed = function(e, t, n) {
                var o = e && "object" == typeof e ? J.extend({}, e) : {
                    complete: n || !n && t || J.isFunction(e) && e,
                    duration: e,
                    easing: n && t || t && !J.isFunction(t) && t
                };
                return o.duration = J.fx.off ? 0 : "number" == typeof o.duration ? o.duration : o.duration in J.fx.speeds ? J.fx.speeds[o.duration] : J.fx.speeds._default, (null == o.queue || o.queue === !0) && (o.queue = "fx"), o.old = o.complete, o.complete = function() {
                    J.isFunction(o.old) && o.old.call(this), o.queue && J.dequeue(this, o.queue)
                }, o
            }, J.fn.extend({
                fadeTo: function(e, t, n, o) {
                    return this.filter(Te).css("opacity", 0).show().end().animate({
                        opacity: t
                    }, e, n, o)
                },
                animate: function(e, t, n, o) {
                    var i = J.isEmptyObject(e),
                        r = J.speed(t, n, o),
                        a = function() {
                            var t = F(this, J.extend({}, e), r);
                            (i || ve.get(this, "finish")) && t.stop(!0)
                        };
                    return a.finish = a, i || r.queue === !1 ? this.each(a) : this.queue(r.queue, a)
                },
                stop: function(e, t, n) {
                    var o = function(e) {
                        var t = e.stop;
                        delete e.stop, t(n)
                    };
                    return "string" != typeof e && (n = t, t = e, e = void 0), t && e !== !1 && this.queue(e || "fx", []), this.each(function() {
                        var t = !0,
                            i = null != e && e + "queueHooks",
                            r = J.timers,
                            a = ve.get(this);
                        if (i) a[i] && a[i].stop && o(a[i]);
                        else
                            for (i in a) a[i] && a[i].stop && et.test(i) && o(a[i]);
                        for (i = r.length; i--;) r[i].elem !== this || null != e && r[i].queue !== e || (r[i].anim.stop(n), t = !1, r.splice(i, 1));
                        (t || !n) && J.dequeue(this, e)
                    })
                },
                finish: function(e) {
                    return e !== !1 && (e = e || "fx"), this.each(function() {
                        var t, n = ve.get(this),
                            o = n[e + "queue"],
                            i = n[e + "queueHooks"],
                            r = J.timers,
                            a = o ? o.length : 0;
                        for (n.finish = !0, J.queue(this, e, []), i && i.stop && i.stop.call(this, !0), t = r.length; t--;) r[t].elem === this && r[t].queue === e && (r[t].anim.stop(!0), r.splice(t, 1));
                        for (t = 0; a > t; t++) o[t] && o[t].finish && o[t].finish.call(this);
                        delete n.finish
                    })
                }
            }), J.each(["toggle", "show", "hide"], function(e, t) {
                var n = J.fn[t];
                J.fn[t] = function(e, o, i) {
                    return null == e || "boolean" == typeof e ? n.apply(this, arguments) : this.animate(A(t, !0), e, o, i)
                }
            }), J.each({
                slideDown: A("show"),
                slideUp: A("hide"),
                slideToggle: A("toggle"),
                fadeIn: {
                    opacity: "show"
                },
                fadeOut: {
                    opacity: "hide"
                },
                fadeToggle: {
                    opacity: "toggle"
                }
            }, function(e, t) {
                J.fn[e] = function(e, n, o) {
                    return this.animate(t, e, n, o)
                }
            }), J.timers = [], J.fx.tick = function() {
                var e, t = 0,
                    n = J.timers;
                for (Qe = J.now(); t < n.length; t++) e = n[t], e() || n[t] !== e || n.splice(t--, 1);
                n.length || J.fx.stop(), Qe = void 0
            }, J.fx.timer = function(e) {
                J.timers.push(e), e() ? J.fx.start() : J.timers.pop()
            }, J.fx.interval = 13, J.fx.start = function() {
                Ge || (Ge = setInterval(J.fx.tick, J.fx.interval))
            }, J.fx.stop = function() {
                clearInterval(Ge), Ge = null
            }, J.fx.speeds = {
                slow: 600,
                fast: 200,
                _default: 400
            }, J.fn.delay = function(e, t) {
                return e = J.fx ? J.fx.speeds[e] || e : e, t = t || "fx", this.queue(t, function(t, n) {
                    var o = setTimeout(t, e);
                    n.stop = function() {
                        clearTimeout(o)
                    }
                })
            },
            function() {
                var e = G.createElement("input"),
                    t = G.createElement("select"),
                    n = t.appendChild(G.createElement("option"));
                e.type = "checkbox", Q.checkOn = "" !== e.value, Q.optSelected = n.selected, t.disabled = !0, Q.optDisabled = !n.disabled, e = G.createElement("input"), e.value = "t", e.type = "radio", Q.radioValue = "t" === e.value
            }();
        var ot, it, rt = J.expr.attrHandle;
        J.fn.extend({
            attr: function(e, t) {
                return me(this, J.attr, e, t, arguments.length > 1)
            },
            removeAttr: function(e) {
                return this.each(function() {
                    J.removeAttr(this, e)
                })
            }
        }), J.extend({
            attr: function(e, t, n) {
                var o, i, r = e.nodeType;
                if (e && 3 !== r && 8 !== r && 2 !== r) return typeof e.getAttribute === $e ? J.prop(e, t, n) : (1 === r && J.isXMLDoc(e) || (t = t.toLowerCase(), o = J.attrHooks[t] || (J.expr.match.bool.test(t) ? it : ot)), void 0 === n ? o && "get" in o && null !== (i = o.get(e, t)) ? i : (i = J.find.attr(e, t), null == i ? void 0 : i) : null !== n ? o && "set" in o && void 0 !== (i = o.set(e, n, t)) ? i : (e.setAttribute(t, n + ""), n) : void J.removeAttr(e, t))
            },
            removeAttr: function(e, t) {
                var n, o, i = 0,
                    r = t && t.match(pe);
                if (r && 1 === e.nodeType)
                    for (; n = r[i++];) o = J.propFix[n] || n, J.expr.match.bool.test(n) && (e[o] = !1), e.removeAttribute(n)
            },
            attrHooks: {
                type: {
                    set: function(e, t) {
                        if (!Q.radioValue && "radio" === t && J.nodeName(e, "input")) {
                            var n = e.value;
                            return e.setAttribute("type", t), n && (e.value = n), t
                        }
                    }
                }
            }
        }), it = {
            set: function(e, t, n) {
                return t === !1 ? J.removeAttr(e, n) : e.setAttribute(n, n), n
            }
        }, J.each(J.expr.match.bool.source.match(/\w+/g), function(e, t) {
            var n = rt[t] || J.find.attr;
            rt[t] = function(e, t, o) {
                var i, r;
                return o || (r = rt[t], rt[t] = i, i = null != n(e, t, o) ? t.toLowerCase() : null, rt[t] = r), i
            }
        });
        var at = /^(?:input|select|textarea|button)$/i;
        J.fn.extend({
            prop: function(e, t) {
                return me(this, J.prop, e, t, arguments.length > 1)
            },
            removeProp: function(e) {
                return this.each(function() {
                    delete this[J.propFix[e] || e]
                })
            }
        }), J.extend({
            propFix: {
                "for": "htmlFor",
                "class": "className"
            },
            prop: function(e, t, n) {
                var o, i, r, a = e.nodeType;
                if (e && 3 !== a && 8 !== a && 2 !== a) return r = 1 !== a || !J.isXMLDoc(e), r && (t = J.propFix[t] || t, i = J.propHooks[t]), void 0 !== n ? i && "set" in i && void 0 !== (o = i.set(e, n, t)) ? o : e[t] = n : i && "get" in i && null !== (o = i.get(e, t)) ? o : e[t]
            },
            propHooks: {
                tabIndex: {
                    get: function(e) {
                        return e.hasAttribute("tabindex") || at.test(e.nodeName) || e.href ? e.tabIndex : -1
                    }
                }
            }
        }), Q.optSelected || (J.propHooks.selected = {
            get: function(e) {
                var t = e.parentNode;
                return t && t.parentNode && t.parentNode.selectedIndex, null
            }
        }), J.each(["tabIndex", "readOnly", "maxLength", "cellSpacing", "cellPadding", "rowSpan", "colSpan", "useMap", "frameBorder", "contentEditable"], function() {
            J.propFix[this.toLowerCase()] = this
        });
        var st = /[\t\r\n\f]/g;
        J.fn.extend({
            addClass: function(e) {
                var t, n, o, i, r, a, s = "string" == typeof e && e,
                    c = 0,
                    l = this.length;
                if (J.isFunction(e)) return this.each(function(t) {
                    J(this).addClass(e.call(this, t, this.className))
                });
                if (s)
                    for (t = (e || "").match(pe) || []; l > c; c++)
                        if (n = this[c], o = 1 === n.nodeType && (n.className ? (" " + n.className + " ").replace(st, " ") : " ")) {
                            for (r = 0; i = t[r++];) o.indexOf(" " + i + " ") < 0 && (o += i + " ");
                            a = J.trim(o), n.className !== a && (n.className = a)
                        }
                return this
            },
            removeClass: function(e) {
                var t, n, o, i, r, a, s = 0 === arguments.length || "string" == typeof e && e,
                    c = 0,
                    l = this.length;
                if (J.isFunction(e)) return this.each(function(t) {
                    J(this).removeClass(e.call(this, t, this.className))
                });
                if (s)
                    for (t = (e || "").match(pe) || []; l > c; c++)
                        if (n = this[c], o = 1 === n.nodeType && (n.className ? (" " + n.className + " ").replace(st, " ") : "")) {
                            for (r = 0; i = t[r++];)
                                for (; o.indexOf(" " + i + " ") >= 0;) o = o.replace(" " + i + " ", " ");
                            a = e ? J.trim(o) : "", n.className !== a && (n.className = a)
                        }
                return this
            },
            toggleClass: function(e, t) {
                var n = typeof e;
                return "boolean" == typeof t && "string" === n ? t ? this.addClass(e) : this.removeClass(e) : this.each(J.isFunction(e) ? function(n) {
                    J(this).toggleClass(e.call(this, n, this.className, t), t)
                } : function() {
                    if ("string" === n)
                        for (var t, o = 0, i = J(this), r = e.match(pe) || []; t = r[o++];) i.hasClass(t) ? i.removeClass(t) : i.addClass(t);
                    else(n === $e || "boolean" === n) && (this.className && ve.set(this, "__className__", this.className), this.className = this.className || e === !1 ? "" : ve.get(this, "__className__") || "")
                })
            },
            hasClass: function(e) {
                for (var t = " " + e + " ", n = 0, o = this.length; o > n; n++)
                    if (1 === this[n].nodeType && (" " + this[n].className + " ").replace(st, " ").indexOf(t) >= 0) return !0;
                return !1
            }
        });
        var ct = /\r/g;
        J.fn.extend({
            val: function(e) {
                var t, n, o, i = this[0];
                return arguments.length ? (o = J.isFunction(e), this.each(function(n) {
                    var i;
                    1 === this.nodeType && (i = o ? e.call(this, n, J(this).val()) : e, null == i ? i = "" : "number" == typeof i ? i += "" : J.isArray(i) && (i = J.map(i, function(e) {
                        return null == e ? "" : e + ""
                    })), t = J.valHooks[this.type] || J.valHooks[this.nodeName.toLowerCase()], t && "set" in t && void 0 !== t.set(this, i, "value") || (this.value = i))
                })) : i ? (t = J.valHooks[i.type] || J.valHooks[i.nodeName.toLowerCase()], t && "get" in t && void 0 !== (n = t.get(i, "value")) ? n : (n = i.value, "string" == typeof n ? n.replace(ct, "") : null == n ? "" : n)) : void 0
            }
        }), J.extend({
            valHooks: {
                option: {
                    get: function(e) {
                        var t = J.find.attr(e, "value");
                        return null != t ? t : J.trim(J.text(e))
                    }
                },
                select: {
                    get: function(e) {
                        for (var t, n, o = e.options, i = e.selectedIndex, r = "select-one" === e.type || 0 > i, a = r ? null : [], s = r ? i + 1 : o.length, c = 0 > i ? s : r ? i : 0; s > c; c++)
                            if (n = o[c], !(!n.selected && c !== i || (Q.optDisabled ? n.disabled : null !== n.getAttribute("disabled")) || n.parentNode.disabled && J.nodeName(n.parentNode, "optgroup"))) {
                                if (t = J(n).val(), r) return t;
                                a.push(t)
                            }
                        return a
                    },
                    set: function(e, t) {
                        for (var n, o, i = e.options, r = J.makeArray(t), a = i.length; a--;) o = i[a], (o.selected = J.inArray(o.value, r) >= 0) && (n = !0);
                        return n || (e.selectedIndex = -1), r
                    }
                }
            }
        }), J.each(["radio", "checkbox"], function() {
            J.valHooks[this] = {
                set: function(e, t) {
                    return J.isArray(t) ? e.checked = J.inArray(J(e).val(), t) >= 0 : void 0
                }
            }, Q.checkOn || (J.valHooks[this].get = function(e) {
                return null === e.getAttribute("value") ? "on" : e.value
            })
        }), J.each("blur focus focusin focusout load resize scroll unload click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup error contextmenu".split(" "), function(e, t) {
            J.fn[t] = function(e, n) {
                return arguments.length > 0 ? this.on(t, null, e, n) : this.trigger(t)
            }
        }), J.fn.extend({
            hover: function(e, t) {
                return this.mouseenter(e).mouseleave(t || e)
            },
            bind: function(e, t, n) {
                return this.on(e, null, t, n)
            },
            unbind: function(e, t) {
                return this.off(e, null, t)
            },
            delegate: function(e, t, n, o) {
                return this.on(t, e, n, o)
            },
            undelegate: function(e, t, n) {
                return 1 === arguments.length ? this.off(e, "**") : this.off(t, e || "**", n)
            }
        });
        var lt = J.now(),
            ut = /\?/;
        J.parseJSON = function(e) {
            return JSON.parse(e + "")
        }, J.parseXML = function(e) {
            var t, n;
            if (!e || "string" != typeof e) return null;
            try {
                n = new DOMParser, t = n.parseFromString(e, "text/xml")
            } catch (o) {
                t = void 0
            }
            return (!t || t.getElementsByTagName("parsererror").length) && J.error("Invalid XML: " + e), t
        };
        var ft = /#.*$/,
            dt = /([?&])_=[^&]*/,
            pt = /^(.*?):[ \t]*([^\r\n]*)$/gm,
            ht = /^(?:about|app|app-storage|.+-extension|file|res|widget):$/,
            gt = /^(?:GET|HEAD)$/,
            mt = /^\/\//,
            vt = /^([\w.+-]+:)(?:\/\/(?:[^\/?#]*@|)([^\/?#:]*)(?::(\d+)|)|)/,
            yt = {},
            bt = {},
            xt = "*/".concat("*"),
            wt = e.location.href,
            Ct = vt.exec(wt.toLowerCase()) || [];
        J.extend({
            active: 0,
            lastModified: {},
            etag: {},
            ajaxSettings: {
                url: wt,
                type: "GET",
                isLocal: ht.test(Ct[1]),
                global: !0,
                processData: !0,
                async: !0,
                contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                accepts: {
                    "*": xt,
                    text: "text/plain",
                    html: "text/html",
                    xml: "application/xml, text/xml",
                    json: "application/json, text/javascript"
                },
                contents: {
                    xml: /xml/,
                    html: /html/,
                    json: /json/
                },
                responseFields: {
                    xml: "responseXML",
                    text: "responseText",
                    json: "responseJSON"
                },
                converters: {
                    "* text": String,
                    "text html": !0,
                    "text json": J.parseJSON,
                    "text xml": J.parseXML
                },
                flatOptions: {
                    url: !0,
                    context: !0
                }
            },
            ajaxSetup: function(e, t) {
                return t ? O(O(e, J.ajaxSettings), t) : O(J.ajaxSettings, e)
            },
            ajaxPrefilter: j(yt),
            ajaxTransport: j(bt),
            ajax: function(e, t) {
                function n(e, t, n, a) {
                    var c, u, v, y, x, C = t;
                    2 !== b && (b = 2, s && clearTimeout(s), o = void 0, r = a || "", w.readyState = e > 0 ? 4 : 0, c = e >= 200 && 300 > e || 304 === e, n && (y = I(f, w, n)), y = H(f, y, w, c), c ? (f.ifModified && (x = w.getResponseHeader("Last-Modified"), x && (J.lastModified[i] = x), x = w.getResponseHeader("etag"), x && (J.etag[i] = x)), 204 === e || "HEAD" === f.type ? C = "nocontent" : 304 === e ? C = "notmodified" : (C = y.state, u = y.data, v = y.error, c = !v)) : (v = C, (e || !C) && (C = "error", 0 > e && (e = 0))), w.status = e, w.statusText = (t || C) + "", c ? h.resolveWith(d, [u, C, w]) : h.rejectWith(d, [w, C, v]), w.statusCode(m), m = void 0, l && p.trigger(c ? "ajaxSuccess" : "ajaxError", [w, f, c ? u : v]), g.fireWith(d, [w, C]), l && (p.trigger("ajaxComplete", [w, f]), --J.active || J.event.trigger("ajaxStop")))
                }
                "object" == typeof e && (t = e, e = void 0), t = t || {};
                var o, i, r, a, s, c, l, u, f = J.ajaxSetup({}, t),
                    d = f.context || f,
                    p = f.context && (d.nodeType || d.jquery) ? J(d) : J.event,
                    h = J.Deferred(),
                    g = J.Callbacks("once memory"),
                    m = f.statusCode || {},
                    v = {},
                    y = {},
                    b = 0,
                    x = "canceled",
                    w = {
                        readyState: 0,
                        getResponseHeader: function(e) {
                            var t;
                            if (2 === b) {
                                if (!a)
                                    for (a = {}; t = pt.exec(r);) a[t[1].toLowerCase()] = t[2];
                                t = a[e.toLowerCase()]
                            }
                            return null == t ? null : t
                        },
                        getAllResponseHeaders: function() {
                            return 2 === b ? r : null
                        },
                        setRequestHeader: function(e, t) {
                            var n = e.toLowerCase();
                            return b || (e = y[n] = y[n] || e, v[e] = t), this
                        },
                        overrideMimeType: function(e) {
                            return b || (f.mimeType = e), this
                        },
                        statusCode: function(e) {
                            var t;
                            if (e)
                                if (2 > b)
                                    for (t in e) m[t] = [m[t], e[t]];
                                else w.always(e[w.status]);
                            return this
                        },
                        abort: function(e) {
                            var t = e || x;
                            return o && o.abort(t), n(0, t), this
                        }
                    };
                if (h.promise(w).complete = g.add, w.success = w.done, w.error = w.fail, f.url = ((e || f.url || wt) + "").replace(ft, "").replace(mt, Ct[1] + "//"), f.type = t.method || t.type || f.method || f.type, f.dataTypes = J.trim(f.dataType || "*").toLowerCase().match(pe) || [""], null == f.crossDomain && (c = vt.exec(f.url.toLowerCase()), f.crossDomain = !(!c || c[1] === Ct[1] && c[2] === Ct[2] && (c[3] || ("http:" === c[1] ? "80" : "443")) === (Ct[3] || ("http:" === Ct[1] ? "80" : "443")))), f.data && f.processData && "string" != typeof f.data && (f.data = J.param(f.data, f.traditional)), q(yt, f, t, w), 2 === b) return w;
                l = J.event && f.global, l && 0 === J.active++ && J.event.trigger("ajaxStart"), f.type = f.type.toUpperCase(), f.hasContent = !gt.test(f.type), i = f.url, f.hasContent || (f.data && (i = f.url += (ut.test(i) ? "&" : "?") + f.data, delete f.data), f.cache === !1 && (f.url = dt.test(i) ? i.replace(dt, "$1_=" + lt++) : i + (ut.test(i) ? "&" : "?") + "_=" + lt++)), f.ifModified && (J.lastModified[i] && w.setRequestHeader("If-Modified-Since", J.lastModified[i]), J.etag[i] && w.setRequestHeader("If-None-Match", J.etag[i])), (f.data && f.hasContent && f.contentType !== !1 || t.contentType) && w.setRequestHeader("Content-Type", f.contentType), w.setRequestHeader("Accept", f.dataTypes[0] && f.accepts[f.dataTypes[0]] ? f.accepts[f.dataTypes[0]] + ("*" !== f.dataTypes[0] ? ", " + xt + "; q=0.01" : "") : f.accepts["*"]);
                for (u in f.headers) w.setRequestHeader(u, f.headers[u]);
                if (f.beforeSend && (f.beforeSend.call(d, w, f) === !1 || 2 === b)) return w.abort();
                x = "abort";
                for (u in {
                        success: 1,
                        error: 1,
                        complete: 1
                    }) w[u](f[u]);
                if (o = q(bt, f, t, w)) {
                    w.readyState = 1, l && p.trigger("ajaxSend", [w, f]), f.async && f.timeout > 0 && (s = setTimeout(function() {
                        w.abort("timeout")
                    }, f.timeout));
                    try {
                        b = 1, o.send(v, n)
                    } catch (C) {
                        if (!(2 > b)) throw C;
                        n(-1, C)
                    }
                } else n(-1, "No Transport");
                return w
            },
            getJSON: function(e, t, n) {
                return J.get(e, t, n, "json")
            },
            getScript: function(e, t) {
                return J.get(e, void 0, t, "script")
            }
        }), J.each(["get", "post"], function(e, t) {
            J[t] = function(e, n, o, i) {
                return J.isFunction(n) && (i = i || o, o = n, n = void 0), J.ajax({
                    url: e,
                    type: t,
                    dataType: i,
                    data: n,
                    success: o
                })
            }
        }), J._evalUrl = function(e) {
            return J.ajax({
                url: e,
                type: "GET",
                dataType: "script",
                async: !1,
                global: !1,
                "throws": !0
            })
        }, J.fn.extend({
            wrapAll: function(e) {
                var t;
                return J.isFunction(e) ? this.each(function(t) {
                    J(this).wrapAll(e.call(this, t))
                }) : (this[0] && (t = J(e, this[0].ownerDocument).eq(0).clone(!0), this[0].parentNode && t.insertBefore(this[0]), t.map(function() {
                    for (var e = this; e.firstElementChild;) e = e.firstElementChild;
                    return e
                }).append(this)), this)
            },
            wrapInner: function(e) {
                return this.each(J.isFunction(e) ? function(t) {
                    J(this).wrapInner(e.call(this, t))
                } : function() {
                    var t = J(this),
                        n = t.contents();
                    n.length ? n.wrapAll(e) : t.append(e)
                })
            },
            wrap: function(e) {
                var t = J.isFunction(e);
                return this.each(function(n) {
                    J(this).wrapAll(t ? e.call(this, n) : e)
                })
            },
            unwrap: function() {
                return this.parent().each(function() {
                    J.nodeName(this, "body") || J(this).replaceWith(this.childNodes)
                }).end()
            }
        }), J.expr.filters.hidden = function(e) {
            return e.offsetWidth <= 0 && e.offsetHeight <= 0
        }, J.expr.filters.visible = function(e) {
            return !J.expr.filters.hidden(e)
        };
        var Tt = /%20/g,
            St = /\[\]$/,
            $t = /\r?\n/g,
            Et = /^(?:submit|button|image|reset|file)$/i,
            kt = /^(?:input|select|textarea|keygen)/i;
        J.param = function(e, t) {
            var n, o = [],
                i = function(e, t) {
                    t = J.isFunction(t) ? t() : null == t ? "" : t, o[o.length] = encodeURIComponent(e) + "=" + encodeURIComponent(t)
                };
            if (void 0 === t && (t = J.ajaxSettings && J.ajaxSettings.traditional), J.isArray(e) || e.jquery && !J.isPlainObject(e)) J.each(e, function() {
                i(this.name, this.value)
            });
            else
                for (n in e) R(n, e[n], t, i);
            return o.join("&").replace(Tt, "+")
        }, J.fn.extend({
            serialize: function() {
                return J.param(this.serializeArray())
            },
            serializeArray: function() {
                return this.map(function() {
                    var e = J.prop(this, "elements");
                    return e ? J.makeArray(e) : this
                }).filter(function() {
                    var e = this.type;
                    return this.name && !J(this).is(":disabled") && kt.test(this.nodeName) && !Et.test(e) && (this.checked || !Se.test(e))
                }).map(function(e, t) {
                    var n = J(this).val();
                    return null == n ? null : J.isArray(n) ? J.map(n, function(e) {
                        return {
                            name: t.name,
                            value: e.replace($t, "\r\n")
                        }
                    }) : {
                        name: t.name,
                        value: n.replace($t, "\r\n")
                    }
                }).get()
            }
        }), J.ajaxSettings.xhr = function() {
            try {
                return new XMLHttpRequest
            } catch (e) {}
        };
        var Pt = 0,
            Lt = {},
            At = {
                0: 200,
                1223: 204
            },
            Dt = J.ajaxSettings.xhr();
        e.attachEvent && e.attachEvent("onunload", function() {
            for (var e in Lt) Lt[e]()
        }), Q.cors = !!Dt && "withCredentials" in Dt, Q.ajax = Dt = !!Dt, J.ajaxTransport(function(e) {
            var t;
            return Q.cors || Dt && !e.crossDomain ? {
                send: function(n, o) {
                    var i, r = e.xhr(),
                        a = ++Pt;
                    if (r.open(e.type, e.url, e.async, e.username, e.password), e.xhrFields)
                        for (i in e.xhrFields) r[i] = e.xhrFields[i];
                    e.mimeType && r.overrideMimeType && r.overrideMimeType(e.mimeType), e.crossDomain || n["X-Requested-With"] || (n["X-Requested-With"] = "XMLHttpRequest");
                    for (i in n) r.setRequestHeader(i, n[i]);
                    t = function(e) {
                        return function() {
                            t && (delete Lt[a], t = r.onload = r.onerror = null, "abort" === e ? r.abort() : "error" === e ? o(r.status, r.statusText) : o(At[r.status] || r.status, r.statusText, "string" == typeof r.responseText ? {
                                text: r.responseText
                            } : void 0, r.getAllResponseHeaders()))
                        }
                    }, r.onload = t(), r.onerror = t("error"), t = Lt[a] = t("abort");
                    try {
                        r.send(e.hasContent && e.data || null)
                    } catch (s) {
                        if (t) throw s
                    }
                },
                abort: function() {
                    t && t()
                }
            } : void 0
        }), J.ajaxSetup({
            accepts: {
                script: "text/javascript, application/javascript, application/ecmascript, application/x-ecmascript"
            },
            contents: {
                script: /(?:java|ecma)script/
            },
            converters: {
                "text script": function(e) {
                    return J.globalEval(e), e
                }
            }
        }), J.ajaxPrefilter("script", function(e) {
            void 0 === e.cache && (e.cache = !1), e.crossDomain && (e.type = "GET")
        }), J.ajaxTransport("script", function(e) {
            if (e.crossDomain) {
                var t, n;
                return {
                    send: function(o, i) {
                        t = J("<script>").prop({
                            async: !0,
                            charset: e.scriptCharset,
                            src: e.url
                        }).on("load error", n = function(e) {
                            t.remove(), n = null, e && i("error" === e.type ? 404 : 200, e.type)
                        }), G.head.appendChild(t[0])
                    },
                    abort: function() {
                        n && n()
                    }
                }
            }
        });
        var Nt = [],
            Mt = /(=)\?(?=&|$)|\?\?/;
        J.ajaxSetup({
            jsonp: "callback",
            jsonpCallback: function() {
                var e = Nt.pop() || J.expando + "_" + lt++;
                return this[e] = !0, e
            }
        }), J.ajaxPrefilter("json jsonp", function(t, n, o) {
            var i, r, a, s = t.jsonp !== !1 && (Mt.test(t.url) ? "url" : "string" == typeof t.data && !(t.contentType || "").indexOf("application/x-www-form-urlencoded") && Mt.test(t.data) && "data");
            return s || "jsonp" === t.dataTypes[0] ? (i = t.jsonpCallback = J.isFunction(t.jsonpCallback) ? t.jsonpCallback() : t.jsonpCallback, s ? t[s] = t[s].replace(Mt, "$1" + i) : t.jsonp !== !1 && (t.url += (ut.test(t.url) ? "&" : "?") + t.jsonp + "=" + i), t.converters["script json"] = function() {
                return a || J.error(i + " was not called"), a[0]
            }, t.dataTypes[0] = "json", r = e[i], e[i] = function() {
                a = arguments
            }, o.always(function() {
                e[i] = r, t[i] && (t.jsonpCallback = n.jsonpCallback, Nt.push(i)), a && J.isFunction(r) && r(a[0]), a = r = void 0
            }), "script") : void 0
        }), J.parseHTML = function(e, t, n) {
            if (!e || "string" != typeof e) return null;
            "boolean" == typeof t && (n = t, t = !1), t = t || G;
            var o = ae.exec(e),
                i = !n && [];
            return o ? [t.createElement(o[1])] : (o = J.buildFragment([e], t, i), i && i.length && J(i).remove(), J.merge([], o.childNodes))
        };
        var Ft = J.fn.load;
        J.fn.load = function(e, t, n) {
            if ("string" != typeof e && Ft) return Ft.apply(this, arguments);
            var o, i, r, a = this,
                s = e.indexOf(" ");
            return s >= 0 && (o = J.trim(e.slice(s)), e = e.slice(0, s)), J.isFunction(t) ? (n = t, t = void 0) : t && "object" == typeof t && (i = "POST"), a.length > 0 && J.ajax({
                url: e,
                type: i,
                dataType: "html",
                data: t
            }).done(function(e) {
                r = arguments, a.html(o ? J("<div>").append(J.parseHTML(e)).find(o) : e)
            }).complete(n && function(e, t) {
                a.each(n, r || [e.responseText, t, e])
            }), this
        }, J.each(["ajaxStart", "ajaxStop", "ajaxComplete", "ajaxError", "ajaxSuccess", "ajaxSend"], function(e, t) {
            J.fn[t] = function(e) {
                return this.on(t, e)
            }
        }), J.expr.filters.animated = function(e) {
            return J.grep(J.timers, function(t) {
                return e === t.elem
            }).length
        };
        var jt = e.document.documentElement;
        J.offset = {
            setOffset: function(e, t, n) {
                var o, i, r, a, s, c, l, u = J.css(e, "position"),
                    f = J(e),
                    d = {};
                "static" === u && (e.style.position = "relative"), s = f.offset(), r = J.css(e, "top"), c = J.css(e, "left"), l = ("absolute" === u || "fixed" === u) && (r + c).indexOf("auto") > -1, l ? (o = f.position(), a = o.top, i = o.left) : (a = parseFloat(r) || 0, i = parseFloat(c) || 0), J.isFunction(t) && (t = t.call(e, n, s)), null != t.top && (d.top = t.top - s.top + a), null != t.left && (d.left = t.left - s.left + i), "using" in t ? t.using.call(e, d) : f.css(d)
            }
        }, J.fn.extend({
            offset: function(e) {
                if (arguments.length) return void 0 === e ? this : this.each(function(t) {
                    J.offset.setOffset(this, e, t)
                });
                var t, n, o = this[0],
                    i = {
                        top: 0,
                        left: 0
                    },
                    r = o && o.ownerDocument;
                return r ? (t = r.documentElement, J.contains(t, o) ? (typeof o.getBoundingClientRect !== $e && (i = o.getBoundingClientRect()), n = z(r), {
                    top: i.top + n.pageYOffset - t.clientTop,
                    left: i.left + n.pageXOffset - t.clientLeft
                }) : i) : void 0
            },
            position: function() {
                if (this[0]) {
                    var e, t, n = this[0],
                        o = {
                            top: 0,
                            left: 0
                        };
                    return "fixed" === J.css(n, "position") ? t = n.getBoundingClientRect() : (e = this.offsetParent(), t = this.offset(), J.nodeName(e[0], "html") || (o = e.offset()), o.top += J.css(e[0], "borderTopWidth", !0), o.left += J.css(e[0], "borderLeftWidth", !0)), {
                        top: t.top - o.top - J.css(n, "marginTop", !0),
                        left: t.left - o.left - J.css(n, "marginLeft", !0)
                    }
                }
            },
            offsetParent: function() {
                return this.map(function() {
                    for (var e = this.offsetParent || jt; e && !J.nodeName(e, "html") && "static" === J.css(e, "position");) e = e.offsetParent;
                    return e || jt
                })
            }
        }), J.each({
            scrollLeft: "pageXOffset",
            scrollTop: "pageYOffset"
        }, function(t, n) {
            var o = "pageYOffset" === n;
            J.fn[t] = function(i) {
                return me(this, function(t, i, r) {
                    var a = z(t);
                    return void 0 === r ? a ? a[n] : t[i] : void(a ? a.scrollTo(o ? e.pageXOffset : r, o ? r : e.pageYOffset) : t[i] = r)
                }, t, i, arguments.length, null)
            }
        }), J.each(["top", "left"], function(e, t) {
            J.cssHooks[t] = C(Q.pixelPosition, function(e, n) {
                return n ? (n = w(e, t), Be.test(n) ? J(e).position()[t] + "px" : n) : void 0
            })
        }), J.each({
            Height: "height",
            Width: "width"
        }, function(e, t) {
            J.each({
                padding: "inner" + e,
                content: t,
                "": "outer" + e
            }, function(n, o) {
                J.fn[o] = function(o, i) {
                    var r = arguments.length && (n || "boolean" != typeof o),
                        a = n || (o === !0 || i === !0 ? "margin" : "border");
                    return me(this, function(t, n, o) {
                        var i;
                        return J.isWindow(t) ? t.document.documentElement["client" + e] : 9 === t.nodeType ? (i = t.documentElement, Math.max(t.body["scroll" + e], i["scroll" + e], t.body["offset" + e], i["offset" + e], i["client" + e])) : void 0 === o ? J.css(t, n, a) : J.style(t, n, o, a)
                    }, t, r ? o : void 0, r, null)
                }
            })
        }), J.fn.size = function() {
            return this.length
        }, J.fn.andSelf = J.fn.addBack, "function" == typeof define && define.amd && define("jquery", [], function() {
            return J
        });
        var qt = e.jQuery,
            Ot = e.$;
        return J.noConflict = function(t) {
            return e.$ === J && (e.$ = Ot), t && e.jQuery === J && (e.jQuery = qt), J
        }, typeof t === $e && (e.jQuery = e.$ = J), J
    }), ! function(e, t, n, o) {
        "use strict";

        function i(e) {
            var t = n(e.currentTarget),
                o = e.data ? e.data.options : {},
                i = t.attr("data-fancybox") || "",
                r = 0,
                a = [];
            e.isDefaultPrevented() || (e.preventDefault(), i ? (a = o.selector ? n(o.selector) : e.data ? e.data.items : [], a = a.length ? a.filter('[data-fancybox="' + i + '"]') : n('[data-fancybox="' + i + '"]'), r = a.index(t), r < 0 && (r = 0)) : a = [t], n.fancybox.open(a, o, r))
        }
        if (n) {
            if (n.fn.fancybox) return void("console" in e && console.log("fancyBox already initialized"));
            var r = {
                    loop: !1,
                    margin: [44, 0],
                    gutter: 50,
                    keyboard: !0,
                    arrows: !0,
                    infobar: !0,
                    toolbar: !0,
                    buttons: ["slideShow", "fullScreen", "thumbs", "share", "close"],
                    idleTime: 3,
                    smallBtn: "auto",
                    protect: !1,
                    modal: !1,
                    image: {
                        preload: "auto"
                    },
                    ajax: {
                        settings: {
                            data: {
                                fancybox: !0
                            }
                        }
                    },
                    iframe: {
                        tpl: '<iframe id="fancybox-frame{rnd}" name="fancybox-frame{rnd}" class="fancybox-iframe" frameborder="0" vspace="0" hspace="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen allowtransparency="true" src=""></iframe>',
                        preload: !0,
                        css: {},
                        attr: {
                            scrolling: "auto"
                        }
                    },
                    defaultType: "image",
                    animationEffect: "zoom",
                    animationDuration: 500,
                    zoomOpacity: "auto",
                    transitionEffect: "fade",
                    transitionDuration: 366,
                    slideClass: "",
                    baseClass: "",
                    baseTpl: '<div class="fancybox-container" role="dialog" tabindex="-1"><div class="fancybox-bg"></div><div class="fancybox-inner"><div class="fancybox-infobar"><span data-fancybox-index></span>&nbsp;/&nbsp;<span data-fancybox-count></span></div><div class="fancybox-toolbar">{{buttons}}</div><div class="fancybox-navigation">{{arrows}}</div><div class="fancybox-stage"></div><div class="fancybox-caption-wrap"><div class="fancybox-caption"></div></div></div></div>',
                    spinnerTpl: '<div class="fancybox-loading"></div>',
                    errorTpl: '<div class="fancybox-error"><p>{{ERROR}}<p></div>',
                    btnTpl: {
                        download: '<a download data-fancybox-download class="fancybox-button fancybox-button--download" title="{{DOWNLOAD}}"><svg viewBox="0 0 40 40"><path d="M20,23 L20,8 L20,23 L13,16 L20,23 L27,16 L20,23 M26,28 L13,28 L27,28 L14,28" /></svg></a>',
                        zoom: '<button data-fancybox-zoom class="fancybox-button fancybox-button--zoom" title="{{ZOOM}}"><svg viewBox="0 0 40 40"><path d="M 18,17 m-8,0 a 8,8 0 1,0 16,0 a 8,8 0 1,0 -16,0 M25,23 L31,29 L25,23" /></svg></button>',
                        close: '<button data-fancybox-close class="fancybox-button fancybox-button--close" title="{{CLOSE}}"><svg viewBox="0 0 40 40"><path d="M10,10 L30,30 M30,10 L10,30" /></svg></button>',
                        smallBtn: '<button data-fancybox-close class="fancybox-close-small" title="{{CLOSE}}"></button>',
                        arrowLeft: '<button data-fancybox-prev class="fancybox-button fancybox-button--arrow_left" title="{{PREV}}"><svg viewBox="0 0 40 40"><path d="M10,20 L30,20 L10,20 L18,28 L10,20 L18,12 L10,20"></path></svg></button>',
                        arrowRight: '<button data-fancybox-next class="fancybox-button fancybox-button--arrow_right" title="{{NEXT}}"><svg viewBox="0 0 40 40"><path d="M30,20 L10,20 L30,20 L22,28 L30,20 L22,12 L30,20"></path></svg></button>'
                    },
                    parentEl: "body",
                    autoFocus: !1,
                    backFocus: !0,
                    trapFocus: !0,
                    fullScreen: {
                        autoStart: !1
                    },
                    touch: {
                        vertical: !0,
                        momentum: !0
                    },
                    hash: null,
                    media: {},
                    slideShow: {
                        autoStart: !1,
                        speed: 4e3
                    },
                    thumbs: {
                        autoStart: !1,
                        hideOnClose: !0,
                        parentEl: ".fancybox-container",
                        axis: "y"
                    },
                    wheel: "auto",
                    onInit: n.noop,
                    beforeLoad: n.noop,
                    afterLoad: n.noop,
                    beforeShow: n.noop,
                    afterShow: n.noop,
                    beforeClose: n.noop,
                    afterClose: n.noop,
                    onActivate: n.noop,
                    onDeactivate: n.noop,
                    clickContent: function(e, t) {
                        return "image" === e.type && "zoom"
                    },
                    clickSlide: "close",
                    clickOutside: "close",
                    dblclickContent: !1,
                    dblclickSlide: !1,
                    dblclickOutside: !1,
                    mobile: {
                        idleTime: !1,
                        margin: 0,
                        clickContent: function(e, t) {
                            return "image" === e.type && "toggleControls"
                        },
                        clickSlide: function(e, t) {
                            return "image" === e.type ? "toggleControls" : "close"
                        },
                        dblclickContent: function(e, t) {
                            return "image" === e.type && "zoom"
                        },
                        dblclickSlide: function(e, t) {
                            return "image" === e.type && "zoom"
                        }
                    },
                    lang: "en",
                    i18n: {
                        en: {
                            CLOSE: "Close",
                            NEXT: "Next",
                            PREV: "Previous",
                            ERROR: "The requested content cannot be loaded. <br/> Please try again later.",
                            PLAY_START: "Start slideshow",
                            PLAY_STOP: "Pause slideshow",
                            FULL_SCREEN: "Full screen",
                            THUMBS: "Thumbnails",
                            DOWNLOAD: "Download",
                            SHARE: "Share",
                            ZOOM: "Zoom"
                        },
                        de: {
                            CLOSE: "Schliessen",
                            NEXT: "Weiter",
                            PREV: "ZurĂ¼ck",
                            ERROR: "Die angeforderten Daten konnten nicht geladen werden. <br/> Bitte versuchen Sie es spĂ¤ter nochmal.",
                            PLAY_START: "Diaschau starten",
                            PLAY_STOP: "Diaschau beenden",
                            FULL_SCREEN: "Vollbild",
                            THUMBS: "Vorschaubilder",
                            DOWNLOAD: "Herunterladen",
                            SHARE: "Teilen",
                            ZOOM: "MaĂŸstab"
                        }
                    }
                },
                a = n(e),
                s = n(t),
                c = 0,
                l = function(e) {
                    return e && e.hasOwnProperty && e instanceof n
                },
                u = function() {
                    return e.requestAnimationFrame || e.webkitRequestAnimationFrame || e.mozRequestAnimationFrame || e.oRequestAnimationFrame || function(t) {
                        return e.setTimeout(t, 1e3 / 60)
                    }
                }(),
                f = function() {
                    var e, n = t.createElement("fakeelement"),
                        i = {
                            transition: "transitionend",
                            OTransition: "oTransitionEnd",
                            MozTransition: "transitionend",
                            WebkitTransition: "webkitTransitionEnd"
                        };
                    for (e in i)
                        if (n.style[e] !== o) return i[e];
                    return "transitionend"
                }(),
                d = function(e) {
                    return e && e.length && e[0].offsetHeight
                },
                p = function(e, o, i) {
                    var r = this;
                    r.opts = n.extend(!0, {
                        index: i
                    }, n.fancybox.defaults, o || {}), n.fancybox.isMobile && (r.opts = n.extend(!0, {}, r.opts, r.opts.mobile)), o && n.isArray(o.buttons) && (r.opts.buttons = o.buttons), r.id = r.opts.id || ++c, r.group = [], r.currIndex = parseInt(r.opts.index, 10) || 0, r.prevIndex = null, r.prevPos = null, r.currPos = 0, r.firstRun = null, r.createGroup(e), r.group.length && (r.$lastFocus = n(t.activeElement).blur(), r.slides = {}, r.init())
                };
            n.extend(p.prototype, {
                init: function() {
                    var i, r, a, c = this,
                        l = c.group[c.currIndex],
                        u = l.opts,
                        f = n.fancybox.scrollbarWidth;
                    c.scrollTop = s.scrollTop(), c.scrollLeft = s.scrollLeft(), n.fancybox.getInstance() || (n("body").addClass("fancybox-active"), /iPad|iPhone|iPod/.test(navigator.userAgent) && !e.MSStream ? "image" !== l.type && n("body").css("top", n("body").scrollTop() * -1).addClass("fancybox-iosfix") : !n.fancybox.isMobile && t.body.scrollHeight > e.innerHeight && (f === o && (i = n('<div style="width:50px;height:50px;overflow:scroll;" />').appendTo("body"), f = n.fancybox.scrollbarWidth = i[0].offsetWidth - i[0].clientWidth, i.remove()), n("head").append('<style id="fancybox-style-noscroll" type="text/css">.compensate-for-scrollbar { margin-right: 0px; }</style>'), n("body").addClass("compensate-for-scrollbar"))), a = "", n.each(u.buttons, function(e, t) {
                        a += u.btnTpl[t] || ""
                    }), r = n(c.translate(c, u.baseTpl.replace("{{buttons}}", a).replace("{{arrows}}", u.btnTpl.arrowLeft + u.btnTpl.arrowRight))).attr("id", "fancybox-container-" + c.id).addClass("fancybox-is-hidden").addClass(u.baseClass).data("FancyBox", c).appendTo(u.parentEl), c.$refs = {
                        container: r
                    }, ["bg", "inner", "infobar", "toolbar", "stage", "caption", "navigation"].forEach(function(e) {
                        c.$refs[e] = r.find(".fancybox-" + e)
                    }), c.trigger("onInit"), c.activate(), c.jumpTo(c.currIndex)
                },
                translate: function(e, t) {
                    var n = e.opts.i18n[e.opts.lang];
                    return t.replace(/\{\{(\w+)\}\}/g, function(e, t) {
                        var i = n[t];
                        return i === o ? e : i
                    })
                },
                createGroup: function(e) {
                    var t = this,
                        i = n.makeArray(e);
                    n.each(i, function(e, i) {
                        var r, a, s, c, l, u = {},
                            f = {};
                        n.isPlainObject(i) ? (u = i, f = i.opts || i) : "object" === n.type(i) && n(i).length ? (r = n(i), f = r.data(), f = n.extend({}, f, f.options || {}), f.$orig = r, u.src = f.src || r.attr("href"), u.type || u.src || (u.type = "inline", u.src = i)) : u = {
                            type: "html",
                            src: i + ""
                        }, u.opts = n.extend(!0, {}, t.opts, f), n.isArray(f.buttons) && (u.opts.buttons = f.buttons), a = u.type || u.opts.type, c = u.src || "", !a && c && (c.match(/(^data:image\/[a-z0-9+\/=]*,)|(\.(jp(e|g|eg)|gif|png|bmp|webp|svg|ico)((\?|#).*)?$)/i) ? a = "image" : c.match(/\.(pdf)((\?|#).*)?$/i) ? a = "pdf" : (s = c.match(/\.(mp4|mov|ogv)((\?|#).*)?$/i)) ? (a = "video", u.opts.videoFormat || (u.opts.videoFormat = "video/" + ("ogv" === s[1] ? "ogg" : s[1]))) : "#" === c.charAt(0) && (a = "inline")), a ? u.type = a : t.trigger("objectNeedsType", u), u.index = t.group.length, u.opts.$orig && !u.opts.$orig.length && delete u.opts.$orig, !u.opts.$thumb && u.opts.$orig && (u.opts.$thumb = u.opts.$orig.find("img:first")), u.opts.$thumb && !u.opts.$thumb.length && delete u.opts.$thumb, "function" === n.type(u.opts.caption) && (u.opts.caption = u.opts.caption.apply(i, [t, u])), "function" === n.type(t.opts.caption) && (u.opts.caption = t.opts.caption.apply(i, [t, u])), u.opts.caption instanceof n || (u.opts.caption = u.opts.caption === o ? "" : u.opts.caption + ""), "ajax" === a && (l = c.split(/\s+/, 2), l.length > 1 && (u.src = l.shift(), u.opts.filter = l.shift())), "auto" == u.opts.smallBtn && (n.inArray(a, ["html", "inline", "ajax"]) > -1 ? (u.opts.toolbar = !1, u.opts.smallBtn = !0) : u.opts.smallBtn = !1), "pdf" === a && (u.type = "iframe", u.opts.iframe.preload = !1), u.opts.modal && (u.opts = n.extend(!0, u.opts, {
                            infobar: 0,
                            toolbar: 0,
                            smallBtn: 0,
                            keyboard: 0,
                            slideShow: 0,
                            fullScreen: 0,
                            thumbs: 0,
                            touch: 0,
                            clickContent: !1,
                            clickSlide: !1,
                            clickOutside: !1,
                            dblclickContent: !1,
                            dblclickSlide: !1,
                            dblclickOutside: !1
                        })), t.group.push(u)
                    })
                },
                addEvents: function() {
                    var o = this;
                    o.removeEvents(), o.$refs.container.on("click.fb-close", "[data-fancybox-close]", function(e) {
                        e.stopPropagation(), e.preventDefault(), o.close(e)
                    }).on("click.fb-prev touchend.fb-prev", "[data-fancybox-prev]", function(e) {
                        e.stopPropagation(), e.preventDefault(), o.previous()
                    }).on("click.fb-next touchend.fb-next", "[data-fancybox-next]", function(e) {
                        e.stopPropagation(), e.preventDefault(), o.next()
                    }).on("click.fb", "[data-fancybox-zoom]", function(e) {
                        o[o.isScaledDown() ? "scaleToActual" : "scaleToFit"]()
                    }), a.on("orientationchange.fb resize.fb", function(e) {
                        e && e.originalEvent && "resize" === e.originalEvent.type ? u(function() {
                            o.update()
                        }) : (o.$refs.stage.hide(), setTimeout(function() {
                            o.$refs.stage.show(), o.update()
                        }, 600))
                    }), s.on("focusin.fb", function(e) {
                        var i = n.fancybox ? n.fancybox.getInstance() : null;
                        i.isClosing || !i.current || !i.current.opts.trapFocus || n(e.target).hasClass("fancybox-container") || n(e.target).is(t) || i && "fixed" !== n(e.target).css("position") && !i.$refs.container.has(e.target).length && (e.stopPropagation(), i.focus(), a.scrollTop(o.scrollTop).scrollLeft(o.scrollLeft))
                    }), s.on("keydown.fb", function(e) {
                        var t = o.current,
                            i = e.keyCode || e.which;
                        if (t && t.opts.keyboard && !n(e.target).is("input") && !n(e.target).is("textarea")) return 8 === i || 27 === i ? (e.preventDefault(),
                            void o.close(e)) : 37 === i || 38 === i ? (e.preventDefault(), void o.previous()) : 39 === i || 40 === i ? (e.preventDefault(), void o.next()) : void o.trigger("afterKeydown", e, i)
                    }), o.group[o.currIndex].opts.idleTime && (o.idleSecondsCounter = 0, s.on("mousemove.fb-idle mouseleave.fb-idle mousedown.fb-idle touchstart.fb-idle touchmove.fb-idle scroll.fb-idle keydown.fb-idle", function(e) {
                        o.idleSecondsCounter = 0, o.isIdle && o.showControls(), o.isIdle = !1
                    }), o.idleInterval = e.setInterval(function() {
                        o.idleSecondsCounter++, o.idleSecondsCounter >= o.group[o.currIndex].opts.idleTime && !o.isDragging && (o.isIdle = !0, o.idleSecondsCounter = 0, o.hideControls())
                    }, 1e3))
                },
                removeEvents: function() {
                    var t = this;
                    a.off("orientationchange.fb resize.fb"), s.off("focusin.fb keydown.fb .fb-idle"), this.$refs.container.off(".fb-close .fb-prev .fb-next"), t.idleInterval && (e.clearInterval(t.idleInterval), t.idleInterval = null)
                },
                previous: function(e) {
                    return this.jumpTo(this.currPos - 1, e)
                },
                next: function(e) {
                    return this.jumpTo(this.currPos + 1, e)
                },
                jumpTo: function(e, t, i) {
                    var r, a, s, c, l, u, f, p = this,
                        h = p.group.length;
                    if (!(p.isDragging || p.isClosing || p.isAnimating && p.firstRun)) {
                        if (e = parseInt(e, 10), a = p.current ? p.current.opts.loop : p.opts.loop, !a && (e < 0 || e >= h)) return !1;
                        if (r = p.firstRun = null === p.firstRun, !(h < 2 && !r && p.isDragging)) {
                            if (c = p.current, p.prevIndex = p.currIndex, p.prevPos = p.currPos, s = p.createSlide(e), h > 1 && ((a || s.index > 0) && p.createSlide(e - 1), (a || s.index < h - 1) && p.createSlide(e + 1)), p.current = s, p.currIndex = s.index, p.currPos = s.pos, p.trigger("beforeShow", r), p.updateControls(), u = n.fancybox.getTranslate(s.$slide), s.isMoved = (0 !== u.left || 0 !== u.top) && !s.$slide.hasClass("fancybox-animated"), s.forcedDuration = o, n.isNumeric(t) ? s.forcedDuration = t : t = s.opts[r ? "animationDuration" : "transitionDuration"], t = parseInt(t, 10), r) return s.opts.animationEffect && t && p.$refs.container.css("transition-duration", t + "ms"), p.$refs.container.removeClass("fancybox-is-hidden"), d(p.$refs.container), p.$refs.container.addClass("fancybox-is-open"), s.$slide.addClass("fancybox-slide--current"), p.loadSlide(s), void p.preload("image");
                            n.each(p.slides, function(e, t) {
                                n.fancybox.stop(t.$slide)
                            }), s.$slide.removeClass("fancybox-slide--next fancybox-slide--previous").addClass("fancybox-slide--current"), s.isMoved ? (l = Math.round(s.$slide.width()), n.each(p.slides, function(e, o) {
                                var i = o.pos - s.pos;
                                n.fancybox.animate(o.$slide, {
                                    top: 0,
                                    left: i * l + i * o.opts.gutter
                                }, t, function() {
                                    o.$slide.removeAttr("style").removeClass("fancybox-slide--next fancybox-slide--previous"), o.pos === p.currPos && (s.isMoved = !1, p.complete())
                                })
                            })) : p.$refs.stage.children().removeAttr("style"), s.isLoaded ? p.revealContent(s) : p.loadSlide(s), p.preload("image"), c.pos !== s.pos && (f = "fancybox-slide--" + (c.pos > s.pos ? "next" : "previous"), c.$slide.removeClass("fancybox-slide--complete fancybox-slide--current fancybox-slide--next fancybox-slide--previous"), c.isComplete = !1, t && (s.isMoved || s.opts.transitionEffect) && (s.isMoved ? c.$slide.addClass(f) : (f = "fancybox-animated " + f + " fancybox-fx-" + s.opts.transitionEffect, n.fancybox.animate(c.$slide, f, t, function() {
                                c.$slide.removeClass(f).removeAttr("style")
                            }))))
                        }
                    }
                },
                createSlide: function(e) {
                    var t, o, i = this;
                    return o = e % i.group.length, o = o < 0 ? i.group.length + o : o, !i.slides[e] && i.group[o] && (t = n('<div class="fancybox-slide"></div>').appendTo(i.$refs.stage), i.slides[e] = n.extend(!0, {}, i.group[o], {
                        pos: e,
                        $slide: t,
                        isLoaded: !1
                    }), i.updateSlide(i.slides[e])), i.slides[e]
                },
                scaleToActual: function(e, t, i) {
                    var r, a, s, c, l, u = this,
                        f = u.current,
                        d = f.$content,
                        p = parseInt(f.$slide.width(), 10),
                        h = parseInt(f.$slide.height(), 10),
                        g = f.width,
                        m = f.height;
                    "image" != f.type || f.hasError || !d || u.isAnimating || (n.fancybox.stop(d), u.isAnimating = !0, e = e === o ? .5 * p : e, t = t === o ? .5 * h : t, r = n.fancybox.getTranslate(d), c = g / r.width, l = m / r.height, a = .5 * p - .5 * g, s = .5 * h - .5 * m, g > p && (a = r.left * c - (e * c - e), a > 0 && (a = 0), a < p - g && (a = p - g)), m > h && (s = r.top * l - (t * l - t), s > 0 && (s = 0), s < h - m && (s = h - m)), u.updateCursor(g, m), n.fancybox.animate(d, {
                        top: s,
                        left: a,
                        scaleX: c,
                        scaleY: l
                    }, i || 330, function() {
                        u.isAnimating = !1
                    }), u.SlideShow && u.SlideShow.isActive && u.SlideShow.stop())
                },
                scaleToFit: function(e) {
                    var t, o = this,
                        i = o.current,
                        r = i.$content;
                    "image" != i.type || i.hasError || !r || o.isAnimating || (n.fancybox.stop(r), o.isAnimating = !0, t = o.getFitPos(i), o.updateCursor(t.width, t.height), n.fancybox.animate(r, {
                        top: t.top,
                        left: t.left,
                        scaleX: t.width / r.width(),
                        scaleY: t.height / r.height()
                    }, e || 330, function() {
                        o.isAnimating = !1
                    }))
                },
                getFitPos: function(e) {
                    var t, o, i, r, a, s = this,
                        c = e.$content,
                        l = e.width,
                        u = e.height,
                        f = e.opts.margin;
                    return !(!c || !c.length || !l && !u) && ("number" === n.type(f) && (f = [f, f]), 2 == f.length && (f = [f[0], f[1], f[0], f[1]]), t = parseInt(s.$refs.stage.width(), 10) - (f[1] + f[3]), o = parseInt(s.$refs.stage.height(), 10) - (f[0] + f[2]), i = Math.min(1, t / l, o / u), r = Math.floor(i * l), a = Math.floor(i * u), {
                        top: Math.floor(.5 * (o - a)) + f[0],
                        left: Math.floor(.5 * (t - r)) + f[3],
                        width: r,
                        height: a
                    })
                },
                update: function() {
                    var e = this;
                    n.each(e.slides, function(t, n) {
                        e.updateSlide(n)
                    })
                },
                updateSlide: function(e, t) {
                    var o = this,
                        i = e && e.$content;
                    i && (e.width || e.height) && (o.isAnimating = !1, n.fancybox.stop(i), n.fancybox.setTranslate(i, o.getFitPos(e)), e.pos === o.currPos && o.updateCursor()), e.$slide.trigger("refresh"), o.trigger("onUpdate", e)
                },
                centerSlide: function(e, t) {
                    var i, r, a = this;
                    a.current && (i = Math.round(e.$slide.width()), r = e.pos - a.current.pos, n.fancybox.animate(e.$slide, {
                        top: 0,
                        left: r * i + r * e.opts.gutter,
                        opacity: 1
                    }, t === o ? 0 : t, null, !1))
                },
                updateCursor: function(e, t) {
                    var n, i = this,
                        r = i.$refs.container.removeClass("fancybox-is-zoomable fancybox-can-zoomIn fancybox-can-drag fancybox-can-zoomOut");
                    i.current && !i.isClosing && (i.isZoomable() ? (r.addClass("fancybox-is-zoomable"), n = e !== o && t !== o ? e < i.current.width && t < i.current.height : i.isScaledDown(), n ? r.addClass("fancybox-can-zoomIn") : i.current.opts.touch ? r.addClass("fancybox-can-drag") : r.addClass("fancybox-can-zoomOut")) : i.current.opts.touch && r.addClass("fancybox-can-drag"))
                },
                isZoomable: function() {
                    var e, t = this,
                        o = t.current;
                    if (o && !t.isClosing) return !!("image" === o.type && o.isLoaded && !o.hasError && ("zoom" === o.opts.clickContent || n.isFunction(o.opts.clickContent) && "zoom" === o.opts.clickContent(o)) && (e = t.getFitPos(o), o.width > e.width || o.height > e.height))
                },
                isScaledDown: function() {
                    var e = this,
                        t = e.current,
                        o = t.$content,
                        i = !1;
                    return o && (i = n.fancybox.getTranslate(o), i = i.width < t.width || i.height < t.height), i
                },
                canPan: function() {
                    var e = this,
                        t = e.current,
                        n = t.$content,
                        o = !1;
                    return n && (o = e.getFitPos(t), o = Math.abs(n.width() - o.width) > 1 || Math.abs(n.height() - o.height) > 1), o
                },
                loadSlide: function(e) {
                    var t, o, i, r = this;
                    if (!e.isLoading && !e.isLoaded) {
                        switch (e.isLoading = !0, r.trigger("beforeLoad", e), t = e.type, o = e.$slide, o.off("refresh").trigger("onReset").addClass("fancybox-slide--" + (t || "unknown")).addClass(e.opts.slideClass), t) {
                            case "image":
                                r.setImage(e);
                                break;
                            case "iframe":
                                r.setIframe(e);
                                break;
                            case "html":
                                r.setContent(e, e.src || e.content);
                                break;
                            case "inline":
                                n(e.src).length ? r.setContent(e, n(e.src)) : r.setError(e);
                                break;
                            case "ajax":
                                r.showLoading(e), i = n.ajax(n.extend({}, e.opts.ajax.settings, {
                                    url: e.src,
                                    success: function(t, n) {
                                        "success" === n && r.setContent(e, t)
                                    },
                                    error: function(t, n) {
                                        t && "abort" !== n && r.setError(e)
                                    }
                                })), o.one("onReset", function() {
                                    i.abort()
                                });
                                break;
                            case "video":
                                r.setContent(e, '<video controls><source src="' + e.src + '" type="' + e.opts.videoFormat + "\">Your browser doesn't support HTML5 video</video>");
                                break;
                            default:
                                r.setError(e)
                        }
                        return !0
                    }
                },
                setImage: function(t) {
                    var o, i, r, a, s = this,
                        c = t.opts.srcset || t.opts.image.srcset;
                    if (c) {
                        r = e.devicePixelRatio || 1, a = e.innerWidth * r, i = c.split(",").map(function(e) {
                            var t = {};
                            return e.trim().split(/\s+/).forEach(function(e, n) {
                                var o = parseInt(e.substring(0, e.length - 1), 10);
                                return 0 === n ? t.url = e : void(o && (t.value = o, t.postfix = e[e.length - 1]))
                            }), t
                        }), i.sort(function(e, t) {
                            return e.value - t.value
                        });
                        for (var l = 0; l < i.length; l++) {
                            var u = i[l];
                            if ("w" === u.postfix && u.value >= a || "x" === u.postfix && u.value >= r) {
                                o = u;
                                break
                            }
                        }!o && i.length && (o = i[i.length - 1]), o && (t.src = o.url, t.width && t.height && "w" == o.postfix && (t.height = t.width / t.height * o.value, t.width = o.value))
                    }
                    t.$content = n('<div class="fancybox-image-wrap"></div>').addClass("fancybox-is-hidden").appendTo(t.$slide), t.opts.preload !== !1 && t.opts.width && t.opts.height && (t.opts.thumb || t.opts.$thumb) ? (t.width = t.opts.width, t.height = t.opts.height, t.$ghost = n("<img />").one("error", function() {
                        n(this).remove(), t.$ghost = null, s.setBigImage(t)
                    }).one("load", function() {
                        s.afterLoad(t), s.setBigImage(t)
                    }).addClass("fancybox-image").appendTo(t.$content).attr("src", t.opts.thumb || t.opts.$thumb.attr("src"))) : s.setBigImage(t)
                },
                setBigImage: function(e) {
                    var t = this,
                        o = n("<img />");
                    e.$image = o.one("error", function() {
                        t.setError(e)
                    }).one("load", function() {
                        clearTimeout(e.timouts), e.timouts = null, t.isClosing || (e.width = e.opts.width || this.naturalWidth, e.height = e.opts.height || this.naturalHeight, e.opts.image.srcset && o.attr("sizes", "100vw").attr("srcset", e.opts.image.srcset), t.hideLoading(e), e.$ghost ? e.timouts = setTimeout(function() {
                            e.timouts = null, e.$ghost.hide()
                        }, Math.min(300, Math.max(1e3, e.height / 1600))) : t.afterLoad(e))
                    }).addClass("fancybox-image").attr("src", e.src).appendTo(e.$content), (o[0].complete || "complete" == o[0].readyState) && o[0].naturalWidth && o[0].naturalHeight ? o.trigger("load") : o[0].error ? o.trigger("error") : e.timouts = setTimeout(function() {
                        o[0].complete || e.hasError || t.showLoading(e)
                    }, 100)
                },
                setIframe: function(e) {
                    var t, i = this,
                        r = e.opts.iframe,
                        a = e.$slide;
                    e.$content = n('<div class="fancybox-content' + (r.preload ? " fancybox-is-hidden" : "") + '"></div>').css(r.css).appendTo(a), t = n(r.tpl.replace(/\{rnd\}/g, (new Date).getTime())).attr(r.attr).appendTo(e.$content), r.preload ? (i.showLoading(e), t.on("load.fb error.fb", function(t) {
                        this.isReady = 1, e.$slide.trigger("refresh"), i.afterLoad(e)
                    }), a.on("refresh.fb", function() {
                        var e, n, i, a = l.$content,
                            s = r.css.width,
                            c = r.css.height;
                        if (1 === t[0].isReady) {
                            try {
                                n = t.contents(), i = n.find("body")
                            } catch (l) {}
                            i && i.length && (s === o && (e = t[0].contentWindow.document.documentElement.scrollWidth, s = Math.ceil(i.outerWidth(!0) + (a.width() - e)), s += a.outerWidth() - a.innerWidth()), c === o && (c = Math.ceil(i.outerHeight(!0)), c += a.outerHeight() - a.innerHeight()), s && a.width(s), c && a.height(c)), a.removeClass("fancybox-is-hidden")
                        }
                    })) : this.afterLoad(e), t.attr("src", e.src), e.opts.smallBtn === !0 && e.$content.prepend(i.translate(e, e.opts.btnTpl.smallBtn)), a.one("onReset", function() {
                        try {
                            n(this).find("iframe").hide().attr("src", "//about:blank")
                        } catch (e) {}
                        n(this).empty(), e.isLoaded = !1
                    })
                },
                setContent: function(e, t) {
                    var o = this;
                    o.isClosing || (o.hideLoading(e), e.$slide.empty(), l(t) && t.parent().length ? (t.parent(".fancybox-slide--inline").trigger("onReset"), e.$placeholder = n("<div></div>").hide().insertAfter(t), t.css("display", "inline-block")) : e.hasError || ("string" === n.type(t) && (t = n("<div>").append(n.trim(t)).contents(), 3 === t[0].nodeType && (t = n("<div>").html(t))), e.opts.filter && (t = n("<div>").html(t).find(e.opts.filter))), e.$slide.one("onReset", function() {
                        n(this).find("video,audio").trigger("pause"), e.$placeholder && (e.$placeholder.after(t.hide()).remove(), e.$placeholder = null), e.$smallBtn && (e.$smallBtn.remove(), e.$smallBtn = null), e.hasError || (n(this).empty(), e.isLoaded = !1)
                    }), e.$content = n(t).appendTo(e.$slide), this.afterLoad(e))
                },
                setError: function(e) {
                    e.hasError = !0, e.$slide.removeClass("fancybox-slide--" + e.type), this.setContent(e, this.translate(e, e.opts.errorTpl))
                },
                showLoading: function(e) {
                    var t = this;
                    e = e || t.current, e && !e.$spinner && (e.$spinner = n(t.opts.spinnerTpl).appendTo(e.$slide))
                },
                hideLoading: function(e) {
                    var t = this;
                    e = e || t.current, e && e.$spinner && (e.$spinner.remove(), delete e.$spinner)
                },
                afterLoad: function(e) {
                    var t = this;
                    t.isClosing || (e.isLoading = !1, e.isLoaded = !0, t.trigger("afterLoad", e), t.hideLoading(e), e.opts.smallBtn && !e.$smallBtn && (e.$smallBtn = n(t.translate(e, e.opts.btnTpl.smallBtn)).appendTo(e.$content.filter("div,form").first())), e.opts.protect && e.$content && !e.hasError && (e.$content.on("contextmenu.fb", function(e) {
                        return 2 == e.button && e.preventDefault(), !0
                    }), "image" === e.type && n('<div class="fancybox-spaceball"></div>').appendTo(e.$content)), t.revealContent(e))
                },
                revealContent: function(e) {
                    var t, i, r, a, s, c = this,
                        l = e.$slide,
                        u = !1;
                    return t = e.opts[c.firstRun ? "animationEffect" : "transitionEffect"], r = e.opts[c.firstRun ? "animationDuration" : "transitionDuration"], r = parseInt(e.forcedDuration === o ? r : e.forcedDuration, 10), !e.isMoved && e.pos === c.currPos && r || (t = !1), "zoom" !== t || e.pos === c.currPos && r && "image" === e.type && !e.hasError && (u = c.getThumbPos(e)) || (t = "fade"), "zoom" === t ? (s = c.getFitPos(e), s.scaleX = s.width / u.width, s.scaleY = s.height / u.height, delete s.width, delete s.height, a = e.opts.zoomOpacity, "auto" == a && (a = Math.abs(e.width / e.height - u.width / u.height) > .1), a && (u.opacity = .1, s.opacity = 1), n.fancybox.setTranslate(e.$content.removeClass("fancybox-is-hidden"), u), d(e.$content), void n.fancybox.animate(e.$content, s, r, function() {
                        c.complete()
                    })) : (c.updateSlide(e), t ? (n.fancybox.stop(l), i = "fancybox-animated fancybox-slide--" + (e.pos >= c.prevPos ? "next" : "previous") + " fancybox-fx-" + t, l.removeAttr("style").removeClass("fancybox-slide--current fancybox-slide--next fancybox-slide--previous").addClass(i), e.$content.removeClass("fancybox-is-hidden"), d(l), void n.fancybox.animate(l, "fancybox-slide--current", r, function(t) {
                        l.removeClass(i).removeAttr("style"), e.pos === c.currPos && c.complete()
                    }, !0)) : (d(l), e.$content.removeClass("fancybox-is-hidden"), void(e.pos === c.currPos && c.complete())))
                },
                getThumbPos: function(o) {
                    var i, r = this,
                        a = !1,
                        s = function(t) {
                            for (var o, i = t[0], r = i.getBoundingClientRect(), a = []; null !== i.parentElement;) "hidden" !== n(i.parentElement).css("overflow") && "auto" !== n(i.parentElement).css("overflow") || a.push(i.parentElement.getBoundingClientRect()), i = i.parentElement;
                            return o = a.every(function(e) {
                                var t = Math.min(r.right, e.right) - Math.max(r.left, e.left),
                                    n = Math.min(r.bottom, e.bottom) - Math.max(r.top, e.top);
                                return t > 0 && n > 0
                            }), o && r.bottom > 0 && r.right > 0 && r.left < n(e).width() && r.top < n(e).height()
                        },
                        c = o.opts.$thumb,
                        l = c ? c.offset() : 0;
                    return l && c[0].ownerDocument === t && s(c) && (i = r.$refs.stage.offset(), a = {
                        top: l.top - i.top + parseFloat(c.css("border-top-width") || 0),
                        left: l.left - i.left + parseFloat(c.css("border-left-width") || 0),
                        width: c.width(),
                        height: c.height(),
                        scaleX: 1,
                        scaleY: 1
                    }), a
                },
                complete: function() {
                    var e = this,
                        o = e.current,
                        i = {};
                    o.isMoved || !o.isLoaded || o.isComplete || (o.isComplete = !0, o.$slide.siblings().trigger("onReset"), e.preload("inline"), d(o.$slide), o.$slide.addClass("fancybox-slide--complete"), n.each(e.slides, function(t, o) {
                        o.pos >= e.currPos - 1 && o.pos <= e.currPos + 1 ? i[o.pos] = o : o && (n.fancybox.stop(o.$slide), o.$slide.off().remove())
                    }), e.slides = i, e.updateCursor(), e.trigger("afterShow"), o.$slide.find("video,audio").first().trigger("play"), (n(t.activeElement).is("[disabled]") || o.opts.autoFocus && "image" != o.type && "iframe" !== o.type) && e.focus())
                },
                preload: function(e) {
                    var t = this,
                        n = t.slides[t.currPos + 1],
                        o = t.slides[t.currPos - 1];
                    n && n.type === e && t.loadSlide(n), o && o.type === e && t.loadSlide(o)
                },
                focus: function() {
                    var e, t = this.current;
                    this.isClosing || (t && t.isComplete && (e = t.$slide.find("input[autofocus]:enabled:visible:first"), e.length || (e = t.$slide.find("button,:input,[tabindex],a").filter(":enabled:visible:first"))), e = e && e.length ? e : this.$refs.container, e.focus())
                },
                activate: function() {
                    var e = this;
                    n(".fancybox-container").each(function() {
                        var t = n(this).data("FancyBox");
                        t && t.id !== e.id && !t.isClosing && (t.trigger("onDeactivate"), t.removeEvents(), t.isVisible = !1)
                    }), e.isVisible = !0, (e.current || e.isIdle) && (e.update(), e.updateControls()), e.trigger("onActivate"), e.addEvents()
                },
                close: function(e, t) {
                    var o, i, r, a, s, c, l = this,
                        p = l.current,
                        h = function() {
                            l.cleanUp(e)
                        };
                    return !(l.isClosing || (l.isClosing = !0, l.trigger("beforeClose", e) === !1 ? (l.isClosing = !1, u(function() {
                        l.update()
                    }), 1) : (l.removeEvents(), p.timouts && clearTimeout(p.timouts), r = p.$content, o = p.opts.animationEffect, i = n.isNumeric(t) ? t : o ? p.opts.animationDuration : 0, p.$slide.off(f).removeClass("fancybox-slide--complete fancybox-slide--next fancybox-slide--previous fancybox-animated"), p.$slide.siblings().trigger("onReset").remove(), i && l.$refs.container.removeClass("fancybox-is-open").addClass("fancybox-is-closing"), l.hideLoading(p), l.hideControls(), l.updateCursor(), "zoom" !== o || e !== !0 && r && i && "image" === p.type && !p.hasError && (c = l.getThumbPos(p)) || (o = "fade"), "zoom" === o ? (n.fancybox.stop(r), s = n.fancybox.getTranslate(r), s.width = s.width * s.scaleX, s.height = s.height * s.scaleY, a = p.opts.zoomOpacity, "auto" == a && (a = Math.abs(p.width / p.height - c.width / c.height) > .1), a && (c.opacity = 0), s.scaleX = s.width / c.width, s.scaleY = s.height / c.height, s.width = c.width, s.height = c.height, n.fancybox.setTranslate(p.$content, s), d(p.$content), n.fancybox.animate(p.$content, c, i, h), 0) : (o && i ? e === !0 ? setTimeout(h, i) : n.fancybox.animate(p.$slide.removeClass("fancybox-slide--current"), "fancybox-animated fancybox-slide--previous fancybox-fx-" + o, i, h) : h(), 0))))
                },
                cleanUp: function(e) {
                    var o, i, r = this,
                        s = n("body");
                    r.current.$slide.trigger("onReset"), r.$refs.container.empty().remove(), r.trigger("afterClose", e), r.$lastFocus && r.current.opts.backFocus && r.$lastFocus.focus(), r.current = null, o = n.fancybox.getInstance(), o ? o.activate() : (a.scrollTop(r.scrollTop).scrollLeft(r.scrollLeft), s.removeClass("fancybox-active compensate-for-scrollbar"), s.hasClass("fancybox-iosfix") && (i = parseInt(t.body.style.top, 10), s.removeClass("fancybox-iosfix").css("top", "").scrollTop(i * -1)), n("#fancybox-style-noscroll").remove())
                },
                trigger: function(e, t) {
                    var o, i = Array.prototype.slice.call(arguments, 1),
                        r = this,
                        a = t && t.opts ? t : r.current;
                    return a ? i.unshift(a) : a = r, i.unshift(r), n.isFunction(a.opts[e]) && (o = a.opts[e].apply(a, i)), o === !1 ? o : void("afterClose" !== e && r.$refs ? r.$refs.container.trigger(e + ".fb", i) : s.trigger(e + ".fb", i))
                },
                updateControls: function(e) {
                    var t = this,
                        n = t.current,
                        o = n.index,
                        i = n.opts.caption,
                        r = t.$refs.container,
                        a = t.$refs.caption;
                    n.$slide.trigger("refresh"), t.$caption = i && i.length ? a.html(i) : null, t.isHiddenControls || t.isIdle || t.showControls(), r.find("[data-fancybox-count]").html(t.group.length), r.find("[data-fancybox-index]").html(o + 1), r.find("[data-fancybox-prev]").prop("disabled", !n.opts.loop && o <= 0), r.find("[data-fancybox-next]").prop("disabled", !n.opts.loop && o >= t.group.length - 1), "image" === n.type ? r.find("[data-fancybox-download]").attr("href", n.opts.image.src || n.src).show() : r.find("[data-fancybox-download],[data-fancybox-zoom]").hide()
                },
                hideControls: function() {
                    this.isHiddenControls = !0, this.$refs.container.removeClass("fancybox-show-infobar fancybox-show-toolbar fancybox-show-caption fancybox-show-nav")
                },
                showControls: function() {
                    var e = this,
                        t = e.current ? e.current.opts : e.opts,
                        n = e.$refs.container;
                    e.isHiddenControls = !1, e.idleSecondsCounter = 0, n.toggleClass("fancybox-show-toolbar", !(!t.toolbar || !t.buttons)).toggleClass("fancybox-show-infobar", !!(t.infobar && e.group.length > 1)).toggleClass("fancybox-show-nav", !!(t.arrows && e.group.length > 1)).toggleClass("fancybox-is-modal", !!t.modal), e.$caption ? n.addClass("fancybox-show-caption ") : n.removeClass("fancybox-show-caption")
                },
                toggleControls: function() {
                    this.isHiddenControls ? this.showControls() : this.hideControls()
                }
            }), n.fancybox = {
                version: "3.2.10",
                defaults: r,
                getInstance: function(e) {
                    var t = n('.fancybox-container:not(".fancybox-is-closing"):last').data("FancyBox"),
                        o = Array.prototype.slice.call(arguments, 1);
                    return t instanceof p && ("string" === n.type(e) ? t[e].apply(t, o) : "function" === n.type(e) && e.apply(t, o), t)
                },
                open: function(e, t, n) {
                    return new p(e, t, n)
                },
                close: function(e) {
                    var t = this.getInstance();
                    t && (t.close(), e === !0 && this.close())
                },
                destroy: function() {
                    this.close(!0), s.off("click.fb-start")
                },
                isMobile: t.createTouch !== o && /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent),
                use3d: function() {
                    var n = t.createElement("div");
                    return e.getComputedStyle && e.getComputedStyle(n).getPropertyValue("transform") && !(t.documentMode && t.documentMode < 11)
                }(),
                getTranslate: function(e) {
                    var t;
                    if (!e || !e.length) return !1;
                    if (t = e.eq(0).css("transform"), t && t.indexOf("matrix") !== -1 ? (t = t.split("(")[1], t = t.split(")")[0], t = t.split(",")) : t = [], t.length) t = t.length > 10 ? [t[13], t[12], t[0], t[5]] : [t[5], t[4], t[0], t[3]], t = t.map(parseFloat);
                    else {
                        t = [0, 0, 1, 1];
                        var n = /\.*translate\((.*)px,(.*)px\)/i,
                            o = n.exec(e.eq(0).attr("style"));
                        o && (t[0] = parseFloat(o[2]), t[1] = parseFloat(o[1]))
                    }
                    return {
                        top: t[0],
                        left: t[1],
                        scaleX: t[2],
                        scaleY: t[3],
                        opacity: parseFloat(e.css("opacity")),
                        width: e.width(),
                        height: e.height()
                    }
                },
                setTranslate: function(e, t) {
                    var n = "",
                        i = {};
                    if (e && t) return t.left === o && t.top === o || (n = (t.left === o ? e.position().left : t.left) + "px, " + (t.top === o ? e.position().top : t.top) + "px", n = this.use3d ? "translate3d(" + n + ", 0px)" : "translate(" + n + ")"), t.scaleX !== o && t.scaleY !== o && (n = (n.length ? n + " " : "") + "scale(" + t.scaleX + ", " + t.scaleY + ")"), n.length && (i.transform = n), t.opacity !== o && (i.opacity = t.opacity), t.width !== o && (i.width = t.width), t.height !== o && (i.height = t.height), e.css(i)
                },
                animate: function(e, t, i, r, a) {
                    n.isFunction(i) && (r = i, i = null), n.isPlainObject(t) || e.removeAttr("style"), e.on(f, function(i) {
                        (!i || !i.originalEvent || e.is(i.originalEvent.target) && "z-index" != i.originalEvent.propertyName) && (n.fancybox.stop(e), n.isPlainObject(t) ? (t.scaleX !== o && t.scaleY !== o && (e.css("transition-duration", ""), t.width = Math.round(e.width() * t.scaleX), t.height = Math.round(e.height() * t.scaleY), t.scaleX = 1, t.scaleY = 1, n.fancybox.setTranslate(e, t)), a === !1 && e.removeAttr("style")) : a !== !0 && e.removeClass(t), n.isFunction(r) && r(i))
                    }), n.isNumeric(i) && e.css("transition-duration", i + "ms"), n.isPlainObject(t) ? n.fancybox.setTranslate(e, t) : e.addClass(t), t.scaleX && e.hasClass("fancybox-image-wrap") && e.parent().addClass("fancybox-is-scaling"), e.data("timer", setTimeout(function() {
                        e.trigger("transitionend")
                    }, i + 16))
                },
                stop: function(e) {
                    clearTimeout(e.data("timer")), e.off("transitionend").css("transition-duration", ""), e.hasClass("fancybox-image-wrap") && e.parent().removeClass("fancybox-is-scaling")
                }
            }, n.fn.fancybox = function(e) {
                var t;
                return e = e || {}, t = e.selector || !1, t ? n("body").off("click.fb-start", t).on("click.fb-start", t, {
                    options: e
                }, i) : this.off("click.fb-start").on("click.fb-start", {
                    items: this,
                    options: e
                }, i), this
            }, s.on("click.fb-start", "[data-fancybox]", i)
        }
    }(window, document, window.jQuery || jQuery),
    function(e) {
        "use strict";
        var t = function(t, n, o) {
                if (t) return o = o || "", "object" === e.type(o) && (o = e.param(o, !0)), e.each(n, function(e, n) {
                    t = t.replace("$" + e, n || "")
                }), o.length && (t += (t.indexOf("?") > 0 ? "&" : "?") + o), t
            },
            n = {
                youtube: {
                    matcher: /(youtube\.com|youtu\.be|youtube\-nocookie\.com)\/(watch\?(.*&)?v=|v\/|u\/|embed\/?)?(videoseries\?list=(.*)|[\w-]{11}|\?listType=(.*)&list=(.*))(.*)/i,
                    params: {
                        autoplay: 1,
                        autohide: 1,
                        fs: 1,
                        rel: 0,
                        hd: 1,
                        wmode: "transparent",
                        enablejsapi: 1,
                        html5: 1
                    },
                    paramPlace: 8,
                    type: "iframe",
                    url: "//www.youtube.com/embed/$4",
                    thumb: "//img.youtube.com/vi/$4/hqdefault.jpg"
                },
                vimeo: {
                    matcher: /^.+vimeo.com\/(.*\/)?([\d]+)(.*)?/,
                    params: {
                        autoplay: 1,
                        hd: 1,
                        show_title: 1,
                        show_byline: 1,
                        show_portrait: 0,
                        fullscreen: 1,
                        api: 1
                    },
                    paramPlace: 3,
                    type: "iframe",
                    url: "//player.vimeo.com/video/$2"
                },
                metacafe: {
                    matcher: /metacafe.com\/watch\/(\d+)\/(.*)?/,
                    type: "iframe",
                    url: "//www.metacafe.com/embed/$1/?ap=1"
                },
                dailymotion: {
                    matcher: /dailymotion.com\/video\/(.*)\/?(.*)/,
                    params: {
                        additionalInfos: 0,
                        autoStart: 1
                    },
                    type: "iframe",
                    url: "//www.dailymotion.com/embed/video/$1"
                },
                vine: {
                    matcher: /vine.co\/v\/([a-zA-Z0-9\?\=\-]+)/,
                    type: "iframe",
                    url: "//vine.co/v/$1/embed/simple"
                },
                instagram: {
                    matcher: /(instagr\.am|instagram\.com)\/p\/([a-zA-Z0-9_\-]+)\/?/i,
                    type: "image",
                    url: "//$1/p/$2/media/?size=l"
                },
                gmap_place: {
                    matcher: /(maps\.)?google\.([a-z]{2,3}(\.[a-z]{2})?)\/(((maps\/(place\/(.*)\/)?\@(.*),(\d+.?\d+?)z))|(\?ll=))(.*)?/i,
                    type: "iframe",
                    url: function(e) {
                        return "//maps.google." + e[2] + "/?ll=" + (e[9] ? e[9] + "&z=" + Math.floor(e[10]) + (e[12] ? e[12].replace(/^\//, "&") : "") : e[12]) + "&output=" + (e[12] && e[12].indexOf("layer=c") > 0 ? "svembed" : "embed")
                    }
                },
                gmap_search: {
                    matcher: /(maps\.)?google\.([a-z]{2,3}(\.[a-z]{2})?)\/(maps\/search\/)(.*)/i,
                    type: "iframe",
                    url: function(e) {
                        return "//maps.google." + e[2] + "/maps?q=" + e[5].replace("query=", "q=").replace("api=1", "") + "&output=embed"
                    }
                }
            };
        e(document).on("objectNeedsType.fb", function(o, i, r) {
            var a, s, c, l, u, f, d, p = r.src || "",
                h = !1;
            a = e.extend(!0, {}, n, r.opts.media), e.each(a, function(n, o) {
                if (c = p.match(o.matcher)) {
                    if (h = o.type, f = {}, o.paramPlace && c[o.paramPlace]) {
                        u = c[o.paramPlace], "?" == u[0] && (u = u.substring(1)), u = u.split("&");
                        for (var i = 0; i < u.length; ++i) {
                            var a = u[i].split("=", 2);
                            2 == a.length && (f[a[0]] = decodeURIComponent(a[1].replace(/\+/g, " ")))
                        }
                    }
                    return l = e.extend(!0, {}, o.params, r.opts[n], f), p = "function" === e.type(o.url) ? o.url.call(this, c, l, r) : t(o.url, c, l), s = "function" === e.type(o.thumb) ? o.thumb.call(this, c, l, r) : t(o.thumb, c), "vimeo" === n && (p = p.replace("&%23", "#")), !1
                }
            }), h ? (r.src = p, r.type = h, r.opts.thumb || r.opts.$thumb && r.opts.$thumb.length || (r.opts.thumb = s), "iframe" === h && (e.extend(!0, r.opts, {
                iframe: {
                    preload: !1,
                    attr: {
                        scrolling: "no"
                    }
                }
            }), r.contentProvider = d, r.opts.slideClass += " fancybox-slide--" + ("gmap_place" == d || "gmap_search" == d ? "map" : "video"))) : p && (r.type = r.opts.defaultType)
        })
    }(window.jQuery || jQuery),
    function(e, t, n) {
        "use strict";
        var o = function() {
                return e.requestAnimationFrame || e.webkitRequestAnimationFrame || e.mozRequestAnimationFrame || e.oRequestAnimationFrame || function(t) {
                    return e.setTimeout(t, 1e3 / 60)
                }
            }(),
            i = function() {
                return e.cancelAnimationFrame || e.webkitCancelAnimationFrame || e.mozCancelAnimationFrame || e.oCancelAnimationFrame || function(t) {
                    e.clearTimeout(t)
                }
            }(),
            r = function(t) {
                var n = [];
                t = t.originalEvent || t || e.e, t = t.touches && t.touches.length ? t.touches : t.changedTouches && t.changedTouches.length ? t.changedTouches : [t];
                for (var o in t) t[o].pageX ? n.push({
                    x: t[o].pageX,
                    y: t[o].pageY
                }) : t[o].clientX && n.push({
                    x: t[o].clientX,
                    y: t[o].clientY
                });
                return n
            },
            a = function(e, t, n) {
                return t && e ? "x" === n ? e.x - t.x : "y" === n ? e.y - t.y : Math.sqrt(Math.pow(e.x - t.x, 2) + Math.pow(e.y - t.y, 2)) : 0
            },
            s = function(e) {
                if (e.is('a,area,button,[role="button"],input,label,select,summary,textarea') || n.isFunction(e.get(0).onclick) || e.data("selectable")) return !0;
                for (var t = 0, o = e[0].attributes, i = o.length; t < i; t++)
                    if ("data-fancybox-" === o[t].nodeName.substr(0, 14)) return !0;
                return !1
            },
            c = function(t) {
                var n = e.getComputedStyle(t)["overflow-y"],
                    o = e.getComputedStyle(t)["overflow-x"],
                    i = ("scroll" === n || "auto" === n) && t.scrollHeight > t.clientHeight,
                    r = ("scroll" === o || "auto" === o) && t.scrollWidth > t.clientWidth;
                return i || r
            },
            l = function(e) {
                for (var t = !1; !(t = c(e.get(0))) && (e = e.parent(), e.length && !e.hasClass("fancybox-stage") && !e.is("body")););
                return t
            },
            u = function(e) {
                var t = this;
                t.instance = e, t.$bg = e.$refs.bg, t.$stage = e.$refs.stage, t.$container = e.$refs.container, t.destroy(), t.$container.on("touchstart.fb.touch mousedown.fb.touch", n.proxy(t, "ontouchstart"))
            };
        u.prototype.destroy = function() {
            this.$container.off(".fb.touch")
        }, u.prototype.ontouchstart = function(o) {
            var i = this,
                c = n(o.target),
                u = i.instance,
                f = u.current,
                d = f.$content,
                p = "touchstart" == o.type;
            if (p && i.$container.off("mousedown.fb.touch"), (!o.originalEvent || 2 != o.originalEvent.button) && c.length && !s(c) && !s(c.parent()) && (c.is("img") || !(o.originalEvent.clientX > c[0].clientWidth + c.offset().left))) {
                if (!f || i.instance.isAnimating || i.instance.isClosing) return o.stopPropagation(), void o.preventDefault();
                if (i.realPoints = i.startPoints = r(o), i.startPoints) {
                    if (o.stopPropagation(), i.startEvent = o, i.canTap = !0, i.$target = c, i.$content = d, i.opts = f.opts.touch, i.isPanning = !1, i.isSwiping = !1, i.isZooming = !1, i.isScrolling = !1, i.sliderStartPos = i.sliderLastPos || {
                            top: 0,
                            left: 0
                        }, i.contentStartPos = n.fancybox.getTranslate(i.$content), i.contentLastPos = null, i.startTime = (new Date).getTime(), i.distanceX = i.distanceY = i.distance = 0, i.canvasWidth = Math.round(f.$slide[0].clientWidth), i.canvasHeight = Math.round(f.$slide[0].clientHeight), n(t).off(".fb.touch").on(p ? "touchend.fb.touch touchcancel.fb.touch" : "mouseup.fb.touch mouseleave.fb.touch", n.proxy(i, "ontouchend")).on(p ? "touchmove.fb.touch" : "mousemove.fb.touch", n.proxy(i, "ontouchmove")), n.fancybox.isMobile && t.addEventListener("scroll", i.onscroll, !0), !i.opts && !u.canPan() || !c.is(i.$stage) && !i.$stage.find(c).length) return void(c.is("img") && o.preventDefault());
                    n.fancybox.isMobile && (l(c) || l(c.parent())) || o.preventDefault(), 1 === i.startPoints.length && ("image" === f.type && (i.contentStartPos.width > i.canvasWidth + 1 || i.contentStartPos.height > i.canvasHeight + 1) ? (n.fancybox.stop(i.$content), i.$content.css("transition-duration", ""), i.isPanning = !0) : i.isSwiping = !0, i.$container.addClass("fancybox-controls--isGrabbing")), 2 !== i.startPoints.length || u.isAnimating || f.hasError || "image" !== f.type || !f.isLoaded && !f.$ghost || (i.canTap = !1, i.isSwiping = !1, i.isPanning = !1, i.isZooming = !0, n.fancybox.stop(i.$content), i.$content.css("transition-duration", ""), i.centerPointStartX = .5 * (i.startPoints[0].x + i.startPoints[1].x) - n(e).scrollLeft(), i.centerPointStartY = .5 * (i.startPoints[0].y + i.startPoints[1].y) - n(e).scrollTop(), i.percentageOfImageAtPinchPointX = (i.centerPointStartX - i.contentStartPos.left) / i.contentStartPos.width, i.percentageOfImageAtPinchPointY = (i.centerPointStartY - i.contentStartPos.top) / i.contentStartPos.height, i.startDistanceBetweenFingers = a(i.startPoints[0], i.startPoints[1]))
                }
            }
        }, u.prototype.onscroll = function(e) {
            self.isScrolling = !0
        }, u.prototype.ontouchmove = function(e) {
            var t = this,
                o = n(e.target);
            return t.isScrolling || !o.is(t.$stage) && !t.$stage.find(o).length ? void(t.canTap = !1) : (t.newPoints = r(e), void((t.opts || t.instance.canPan()) && t.newPoints && t.newPoints.length && (t.isSwiping && t.isSwiping === !0 || e.preventDefault(), t.distanceX = a(t.newPoints[0], t.startPoints[0], "x"), t.distanceY = a(t.newPoints[0], t.startPoints[0], "y"), t.distance = a(t.newPoints[0], t.startPoints[0]), t.distance > 0 && (t.isSwiping ? t.onSwipe(e) : t.isPanning ? t.onPan() : t.isZooming && t.onZoom()))))
        }, u.prototype.onSwipe = function(t) {
            var r, a = this,
                s = a.isSwiping,
                c = a.sliderStartPos.left || 0;
            if (s !== !0) "x" == s && (a.distanceX > 0 && (a.instance.group.length < 2 || 0 === a.instance.current.index && !a.instance.current.opts.loop) ? c += Math.pow(a.distanceX, .8) : a.distanceX < 0 && (a.instance.group.length < 2 || a.instance.current.index === a.instance.group.length - 1 && !a.instance.current.opts.loop) ? c -= Math.pow(-a.distanceX, .8) : c += a.distanceX), a.sliderLastPos = {
                top: "x" == s ? 0 : a.sliderStartPos.top + a.distanceY,
                left: c
            }, a.requestId && (i(a.requestId), a.requestId = null), a.requestId = o(function() {
                a.sliderLastPos && (n.each(a.instance.slides, function(e, t) {
                    var o = t.pos - a.instance.currPos;
                    n.fancybox.setTranslate(t.$slide, {
                        top: a.sliderLastPos.top,
                        left: a.sliderLastPos.left + o * a.canvasWidth + o * t.opts.gutter
                    })
                }), a.$container.addClass("fancybox-is-sliding"))
            });
            else if (Math.abs(a.distance) > 10) {
                if (a.canTap = !1, a.instance.group.length < 2 && a.opts.vertical ? a.isSwiping = "y" : a.instance.isDragging || a.opts.vertical === !1 || "auto" === a.opts.vertical && n(e).width() > 800 ? a.isSwiping = "x" : (r = Math.abs(180 * Math.atan2(a.distanceY, a.distanceX) / Math.PI), a.isSwiping = r > 45 && r < 135 ? "y" : "x"), a.canTap = !1, "y" === a.isSwiping && n.fancybox.isMobile && (l(a.$target) || l(a.$target.parent()))) return void(a.isScrolling = !0);
                a.instance.isDragging = a.isSwiping, a.startPoints = a.newPoints, n.each(a.instance.slides, function(e, t) {
                    n.fancybox.stop(t.$slide), t.$slide.css("transition-duration", ""), t.inTransition = !1, t.pos === a.instance.current.pos && (a.sliderStartPos.left = n.fancybox.getTranslate(t.$slide).left)
                }), a.instance.SlideShow && a.instance.SlideShow.isActive && a.instance.SlideShow.stop()
            }
        }, u.prototype.onPan = function() {
            var e = this;
            return a(e.newPoints[0], e.realPoints[0]) < (n.fancybox.isMobile ? 10 : 5) ? void(e.startPoints = e.newPoints) : (e.canTap = !1, e.contentLastPos = e.limitMovement(), e.requestId && (i(e.requestId), e.requestId = null), void(e.requestId = o(function() {
                n.fancybox.setTranslate(e.$content, e.contentLastPos)
            })))
        }, u.prototype.limitMovement = function() {
            var e, t, n, o, i, r, a = this,
                s = a.canvasWidth,
                c = a.canvasHeight,
                l = a.distanceX,
                u = a.distanceY,
                f = a.contentStartPos,
                d = f.left,
                p = f.top,
                h = f.width,
                g = f.height;
            return i = h > s ? d + l : d, r = p + u, e = Math.max(0, .5 * s - .5 * h), t = Math.max(0, .5 * c - .5 * g), n = Math.min(s - h, .5 * s - .5 * h), o = Math.min(c - g, .5 * c - .5 * g), h > s && (l > 0 && i > e && (i = e - 1 + Math.pow(-e + d + l, .8) || 0), l < 0 && i < n && (i = n + 1 - Math.pow(n - d - l, .8) || 0)), g > c && (u > 0 && r > t && (r = t - 1 + Math.pow(-t + p + u, .8) || 0), u < 0 && r < o && (r = o + 1 - Math.pow(o - p - u, .8) || 0)), {
                top: r,
                left: i,
                scaleX: f.scaleX,
                scaleY: f.scaleY
            }
        }, u.prototype.limitPosition = function(e, t, n, o) {
            var i = this,
                r = i.canvasWidth,
                a = i.canvasHeight;
            return n > r ? (e = e > 0 ? 0 : e, e = e < r - n ? r - n : e) : e = Math.max(0, r / 2 - n / 2), o > a ? (t = t > 0 ? 0 : t, t = t < a - o ? a - o : t) : t = Math.max(0, a / 2 - o / 2), {
                top: t,
                left: e
            }
        }, u.prototype.onZoom = function() {
            var t = this,
                r = t.contentStartPos.width,
                s = t.contentStartPos.height,
                c = t.contentStartPos.left,
                l = t.contentStartPos.top,
                u = a(t.newPoints[0], t.newPoints[1]),
                f = u / t.startDistanceBetweenFingers,
                d = Math.floor(r * f),
                p = Math.floor(s * f),
                h = (r - d) * t.percentageOfImageAtPinchPointX,
                g = (s - p) * t.percentageOfImageAtPinchPointY,
                m = (t.newPoints[0].x + t.newPoints[1].x) / 2 - n(e).scrollLeft(),
                v = (t.newPoints[0].y + t.newPoints[1].y) / 2 - n(e).scrollTop(),
                y = m - t.centerPointStartX,
                b = v - t.centerPointStartY,
                x = c + (h + y),
                w = l + (g + b),
                C = {
                    top: w,
                    left: x,
                    scaleX: t.contentStartPos.scaleX * f,
                    scaleY: t.contentStartPos.scaleY * f
                };
            t.canTap = !1, t.newWidth = d, t.newHeight = p, t.contentLastPos = C, t.requestId && (i(t.requestId), t.requestId = null), t.requestId = o(function() {
                n.fancybox.setTranslate(t.$content, t.contentLastPos)
            })
        }, u.prototype.ontouchend = function(e) {
            var o = this,
                a = Math.max((new Date).getTime() - o.startTime, 1),
                s = o.isSwiping,
                c = o.isPanning,
                l = o.isZooming,
                u = o.isScrolling;
            return o.endPoints = r(e), o.$container.removeClass("fancybox-controls--isGrabbing"), n(t).off(".fb.touch"), t.removeEventListener("scroll", o.onscroll, !0), o.requestId && (i(o.requestId), o.requestId = null), o.isSwiping = !1, o.isPanning = !1, o.isZooming = !1, o.isScrolling = !1, o.instance.isDragging = !1, o.canTap ? o.onTap(e) : (o.speed = 366, o.velocityX = o.distanceX / a * .5, o.velocityY = o.distanceY / a * .5, o.speedX = Math.max(.5 * o.speed, Math.min(1.5 * o.speed, 1 / Math.abs(o.velocityX) * o.speed)), void(c ? o.endPanning() : l ? o.endZooming() : o.endSwiping(s, u)))
        }, u.prototype.endSwiping = function(e, t) {
            var o = this,
                i = !1,
                r = o.instance.group.length;
            o.sliderLastPos = null, "y" == e && !t && Math.abs(o.distanceY) > 50 ? (n.fancybox.animate(o.instance.current.$slide, {
                top: o.sliderStartPos.top + o.distanceY + 150 * o.velocityY,
                opacity: 0
            }, 150), i = o.instance.close(!0, 300)) : "x" == e && o.distanceX > 50 && r > 1 ? i = o.instance.previous(o.speedX) : "x" == e && o.distanceX < -50 && r > 1 && (i = o.instance.next(o.speedX)), i !== !1 || "x" != e && "y" != e || (t || r < 2 ? o.instance.centerSlide(o.instance.current, 150) : o.instance.jumpTo(o.instance.current.index)), o.$container.removeClass("fancybox-is-sliding")
        }, u.prototype.endPanning = function() {
            var e, t, o, i = this;
            i.contentLastPos && (i.opts.momentum === !1 ? (e = i.contentLastPos.left, t = i.contentLastPos.top) : (e = i.contentLastPos.left + i.velocityX * i.speed, t = i.contentLastPos.top + i.velocityY * i.speed), o = i.limitPosition(e, t, i.contentStartPos.width, i.contentStartPos.height), o.width = i.contentStartPos.width, o.height = i.contentStartPos.height, n.fancybox.animate(i.$content, o, 330))
        }, u.prototype.endZooming = function() {
            var e, t, o, i, r = this,
                a = r.instance.current,
                s = r.newWidth,
                c = r.newHeight;
            r.contentLastPos && (e = r.contentLastPos.left, t = r.contentLastPos.top, i = {
                top: t,
                left: e,
                width: s,
                height: c,
                scaleX: 1,
                scaleY: 1
            }, n.fancybox.setTranslate(r.$content, i), s < r.canvasWidth && c < r.canvasHeight ? r.instance.scaleToFit(150) : s > a.width || c > a.height ? r.instance.scaleToActual(r.centerPointStartX, r.centerPointStartY, 150) : (o = r.limitPosition(e, t, s, c), n.fancybox.setTranslate(r.content, n.fancybox.getTranslate(r.$content)), n.fancybox.animate(r.$content, o, 150)))
        }, u.prototype.onTap = function(e) {
            var t, o = this,
                i = n(e.target),
                a = o.instance,
                s = a.current,
                c = e && r(e) || o.startPoints,
                l = c[0] ? c[0].x - o.$stage.offset().left : 0,
                u = c[0] ? c[0].y - o.$stage.offset().top : 0,
                f = function(t) {
                    var i = s.opts[t];
                    if (n.isFunction(i) && (i = i.apply(a, [s, e])), i) switch (i) {
                        case "close":
                            a.close(o.startEvent);
                            break;
                        case "toggleControls":
                            a.toggleControls(!0);
                            break;
                        case "next":
                            a.next();
                            break;
                        case "nextOrClose":
                            a.group.length > 1 ? a.next() : a.close(o.startEvent);
                            break;
                        case "zoom":
                            "image" == s.type && (s.isLoaded || s.$ghost) && (a.canPan() ? a.scaleToFit() : a.isScaledDown() ? a.scaleToActual(l, u) : a.group.length < 2 && a.close(o.startEvent))
                    }
                };
            if ((!e.originalEvent || 2 != e.originalEvent.button) && (i.is("img") || !(l > i[0].clientWidth + i.offset().left))) {
                if (i.is(".fancybox-bg,.fancybox-inner,.fancybox-outer,.fancybox-container")) t = "Outside";
                else if (i.is(".fancybox-slide")) t = "Slide";
                else {
                    if (!a.current.$content || !a.current.$content.find(i).addBack().filter(i).length) return;
                    t = "Content"
                }
                if (o.tapped) {
                    if (clearTimeout(o.tapped), o.tapped = null, Math.abs(l - o.tapX) > 50 || Math.abs(u - o.tapY) > 50) return this;
                    f("dblclick" + t)
                } else o.tapX = l, o.tapY = u, s.opts["dblclick" + t] && s.opts["dblclick" + t] !== s.opts["click" + t] ? o.tapped = setTimeout(function() {
                    o.tapped = null, f("click" + t)
                }, 500) : f("click" + t);
                return this
            }
        }, n(t).on("onActivate.fb", function(e, t) {
            t && !t.Guestures && (t.Guestures = new u(t))
        })
    }(window, document, window.jQuery || jQuery),
    function(e, t) {
        "use strict";
        t.extend(!0, t.fancybox.defaults, {
            btnTpl: {
                slideShow: '<button data-fancybox-play class="fancybox-button fancybox-button--play" title="{{PLAY_START}}"><svg viewBox="0 0 40 40"><path d="M13,12 L27,20 L13,27 Z" /><path d="M15,10 v19 M23,10 v19" /></svg></button>'
            },
            slideShow: {
                autoStart: !1,
                speed: 3e3
            }
        });
        var n = function(e) {
            this.instance = e, this.init()
        };
        t.extend(n.prototype, {
            timer: null,
            isActive: !1,
            $button: null,
            init: function() {
                var e = this;
                e.$button = e.instance.$refs.toolbar.find("[data-fancybox-play]").on("click", function() {
                    e.toggle()
                }), (e.instance.group.length < 2 || !e.instance.group[e.instance.currIndex].opts.slideShow) && e.$button.hide()
            },
            set: function(e) {
                var t = this;
                t.instance && t.instance.current && (e === !0 || t.instance.current.opts.loop || t.instance.currIndex < t.instance.group.length - 1) ? t.timer = setTimeout(function() {
                    t.isActive && t.instance.jumpTo((t.instance.currIndex + 1) % t.instance.group.length)
                }, t.instance.current.opts.slideShow.speed) : (t.stop(), t.instance.idleSecondsCounter = 0, t.instance.showControls())
            },
            clear: function() {
                var e = this;
                clearTimeout(e.timer), e.timer = null
            },
            start: function() {
                var e = this,
                    t = e.instance.current;
                t && (e.isActive = !0, e.$button.attr("title", t.opts.i18n[t.opts.lang].PLAY_STOP).removeClass("fancybox-button--play").addClass("fancybox-button--pause"), e.set(!0))
            },
            stop: function() {
                var e = this,
                    t = e.instance.current;
                e.clear(), e.$button.attr("title", t.opts.i18n[t.opts.lang].PLAY_START).removeClass("fancybox-button--pause").addClass("fancybox-button--play"), e.isActive = !1
            },
            toggle: function() {
                var e = this;
                e.isActive ? e.stop() : e.start()
            }
        }), t(e).on({
            "onInit.fb": function(e, t) {
                t && !t.SlideShow && (t.SlideShow = new n(t))
            },
            "beforeShow.fb": function(e, t, n, o) {
                var i = t && t.SlideShow;
                o ? i && n.opts.slideShow.autoStart && i.start() : i && i.isActive && i.clear()
            },
            "afterShow.fb": function(e, t, n) {
                var o = t && t.SlideShow;
                o && o.isActive && o.set()
            },
            "afterKeydown.fb": function(n, o, i, r, a) {
                var s = o && o.SlideShow;
                !s || !i.opts.slideShow || 80 !== a && 32 !== a || t(e.activeElement).is("button,a,input") || (r.preventDefault(), s.toggle())
            },
            "beforeClose.fb onDeactivate.fb": function(e, t) {
                var n = t && t.SlideShow;
                n && n.stop()
            }
        }), t(e).on("visibilitychange", function() {
            var n = t.fancybox.getInstance(),
                o = n && n.SlideShow;
            o && o.isActive && (e.hidden ? o.clear() : o.set())
        })
    }(document, window.jQuery || jQuery),
    function(e, t) {
        "use strict";
        var n = function() {
            var t, n, o, i = [
                    ["requestFullscreen", "exitFullscreen", "fullscreenElement", "fullscreenEnabled", "fullscreenchange", "fullscreenerror"],
                    ["webkitRequestFullscreen", "webkitExitFullscreen", "webkitFullscreenElement", "webkitFullscreenEnabled", "webkitfullscreenchange", "webkitfullscreenerror"],
                    ["webkitRequestFullScreen", "webkitCancelFullScreen", "webkitCurrentFullScreenElement", "webkitCancelFullScreen", "webkitfullscreenchange", "webkitfullscreenerror"],
                    ["mozRequestFullScreen", "mozCancelFullScreen", "mozFullScreenElement", "mozFullScreenEnabled", "mozfullscreenchange", "mozfullscreenerror"],
                    ["msRequestFullscreen", "msExitFullscreen", "msFullscreenElement", "msFullscreenEnabled", "MSFullscreenChange", "MSFullscreenError"]
                ],
                r = {};
            for (n = 0; n < i.length; n++)
                if (t = i[n], t && t[1] in e) {
                    for (o = 0; o < t.length; o++) r[i[0][o]] = t[o];
                    return r
                }
            return !1
        }();
        if (!n) return void(t && t.fancybox && (t.fancybox.defaults.btnTpl.fullScreen = !1));
        var o = {
            request: function(t) {
                t = t || e.documentElement, t[n.requestFullscreen](t.ALLOW_KEYBOARD_INPUT)
            },
            exit: function() {
                e[n.exitFullscreen]()
            },
            toggle: function(t) {
                t = t || e.documentElement, this.isFullscreen() ? this.exit() : this.request(t)
            },
            isFullscreen: function() {
                return Boolean(e[n.fullscreenElement])
            },
            enabled: function() {
                return Boolean(e[n.fullscreenEnabled])
            }
        };
        t.extend(!0, t.fancybox.defaults, {
            btnTpl: {
                fullScreen: '<button data-fancybox-fullscreen class="fancybox-button fancybox-button--fullscreen" title="{{FULL_SCREEN}}"><svg viewBox="0 0 40 40"><path d="M9,12 h22 v16 h-22 v-16 v16 h22 v-16 Z" /></svg></button>'
            },
            fullScreen: {
                autoStart: !1
            }
        }), t(e).on({
            "onInit.fb": function(e, t) {
                var n;
                t && t.group[t.currIndex].opts.fullScreen ? (n = t.$refs.container, n.on("click.fb-fullscreen", "[data-fancybox-fullscreen]", function(e) {
                    e.stopPropagation(), e.preventDefault(), o.toggle(n[0])
                }), t.opts.fullScreen && t.opts.fullScreen.autoStart === !0 && o.request(n[0]), t.FullScreen = o) : t && t.$refs.toolbar.find("[data-fancybox-fullscreen]").hide()
            },
            "afterKeydown.fb": function(e, t, n, o, i) {
                t && t.FullScreen && 70 === i && (o.preventDefault(), t.FullScreen.toggle(t.$refs.container[0]))
            },
            "beforeClose.fb": function(e) {
                e && e.FullScreen && o.exit()
            }
        }), t(e).on(n.fullscreenchange, function() {
            var e = o.isFullscreen(),
                n = t.fancybox.getInstance();
            n && (n.current && "image" === n.current.type && n.isAnimating && (n.current.$content.css("transition", "none"), n.isAnimating = !1, n.update(!0, !0, 0)), n.trigger("onFullscreenChange", e), n.$refs.container.toggleClass("fancybox-is-fullscreen", e))
        })
    }(document, window.jQuery || jQuery),
    function(e, t) {
        "use strict";
        t.fancybox.defaults = t.extend(!0, {
            btnTpl: {
                thumbs: '<button data-fancybox-thumbs class="fancybox-button fancybox-button--thumbs" title="{{THUMBS}}"><svg viewBox="0 0 120 120"><path d="M30,30 h14 v14 h-14 Z M50,30 h14 v14 h-14 Z M70,30 h14 v14 h-14 Z M30,50 h14 v14 h-14 Z M50,50 h14 v14 h-14 Z M70,50 h14 v14 h-14 Z M30,70 h14 v14 h-14 Z M50,70 h14 v14 h-14 Z M70,70 h14 v14 h-14 Z" /></svg></button>'
            },
            thumbs: {
                autoStart: !1,
                hideOnClose: !0,
                parentEl: ".fancybox-container",
                axis: "y"
            }
        }, t.fancybox.defaults);
        var n = function(e) {
            this.init(e)
        };
        t.extend(n.prototype, {
            $button: null,
            $grid: null,
            $list: null,
            isVisible: !1,
            isActive: !1,
            init: function(e) {
                var t = this;
                t.instance = e, e.Thumbs = t;
                var n = e.group[0],
                    o = e.group[1];
                t.opts = e.group[e.currIndex].opts.thumbs, t.$button = e.$refs.toolbar.find("[data-fancybox-thumbs]"), t.opts && n && o && ("image" == n.type || n.opts.thumb || n.opts.$thumb) && ("image" == o.type || o.opts.thumb || o.opts.$thumb) ? (t.$button.show().on("click", function() {
                    t.toggle()
                }), t.isActive = !0) : t.$button.hide()
            },
            create: function() {
                var e, n, o = this,
                    i = o.instance,
                    r = o.opts.parentEl;
                o.$grid = t('<div class="fancybox-thumbs fancybox-thumbs-' + o.opts.axis + '"></div>').appendTo(i.$refs.container.find(r).addBack().filter(r)), e = "<ul>", t.each(i.group, function(t, o) {
                    n = o.opts.thumb || (o.opts.$thumb ? o.opts.$thumb.attr("src") : null), n || "image" !== o.type || (n = o.src), n && n.length && (e += '<li data-index="' + t + '"  tabindex="0" class="fancybox-thumbs-loading"><img data-src="' + n + '" /></li>')
                }), e += "</ul>", o.$list = t(e).appendTo(o.$grid).on("click", "li", function() {
                    i.jumpTo(t(this).data("index"))
                }), o.$list.find("img").hide().one("load", function() {
                    var e, n, o, i, r = t(this).parent().removeClass("fancybox-thumbs-loading"),
                        a = r.outerWidth(),
                        s = r.outerHeight();
                    e = this.naturalWidth || this.width, n = this.naturalHeight || this.height, o = e / a, i = n / s, o >= 1 && i >= 1 && (o > i ? (e /= i, n = s) : (e = a, n /= o)), t(this).css({
                        width: Math.floor(e),
                        height: Math.floor(n),
                        "margin-top": n > s ? Math.floor(.3 * s - .3 * n) : Math.floor(.5 * s - .5 * n),
                        "margin-left": Math.floor(.5 * a - .5 * e)
                    }).show()
                }).each(function() {
                    this.src = t(this).data("src")
                }), "x" === o.opts.axis && o.$list.width(parseInt(o.$grid.css("padding-right")) + i.group.length * o.$list.children().eq(0).outerWidth(!0) + "px")
            },
            focus: function(e) {
                var t, n, o = this,
                    i = o.$list;
                o.instance.current && (t = i.children().removeClass("fancybox-thumbs-active").filter('[data-index="' + o.instance.current.index + '"]').addClass("fancybox-thumbs-active"), n = t.position(), "y" === o.opts.axis && (n.top < 0 || n.top > i.height() - t.outerHeight()) ? i.stop().animate({
                    scrollTop: i.scrollTop() + n.top
                }, e) : "x" === o.opts.axis && (n.left < i.parent().scrollLeft() || n.left > i.parent().scrollLeft() + (i.parent().width() - t.outerWidth())) && i.parent().stop().animate({
                    scrollLeft: n.left
                }, e))
            },
            update: function() {
                this.instance.$refs.container.toggleClass("fancybox-show-thumbs", this.isVisible), this.isVisible ? (this.$grid || this.create(), this.instance.trigger("onThumbsShow"), this.focus(0)) : this.$grid && this.instance.trigger("onThumbsHide"), this.instance.update()
            },
            hide: function() {
                this.isVisible = !1, this.update()
            },
            show: function() {
                this.isVisible = !0, this.update()
            },
            toggle: function() {
                this.isVisible = !this.isVisible, this.update()
            }
        }), t(e).on({
            "onInit.fb": function(e, t) {
                var o;
                t && !t.Thumbs && (o = new n(t), o.isActive && o.opts.autoStart === !0 && o.show())
            },
            "beforeShow.fb": function(e, t, n, o) {
                var i = t && t.Thumbs;
                i && i.isVisible && i.focus(o ? 0 : 250)
            },
            "afterKeydown.fb": function(e, t, n, o, i) {
                var r = t && t.Thumbs;
                r && r.isActive && 71 === i && (o.preventDefault(), r.toggle())
            },
            "beforeClose.fb": function(e, t) {
                var n = t && t.Thumbs;
                n && n.isVisible && n.opts.hideOnClose !== !1 && n.$grid.hide()
            }
        })
    }(document, window.jQuery),
    function(e, t) {
        "use strict";

        function n(e) {
            var t = {
                "&": "&amp;",
                "<": "&lt;",
                ">": "&gt;",
                '"': "&quot;",
                "'": "&#39;",
                "/": "&#x2F;",
                "`": "&#x60;",
                "=": "&#x3D;"
            };
            return String(e).replace(/[&<>"'`=\/]/g, function(e) {
                return t[e]
            })
        }
        t.extend(!0, t.fancybox.defaults, {
            btnTpl: {
                share: '<button data-fancybox-share class="fancybox-button fancybox-button--share" title="{{SHARE}}"><svg viewBox="0 0 40 40"><path d="M6,30 C8,18 19,16 23,16 L23,16 L23,10 L33,20 L23,29 L23,24 C19,24 8,27 6,30 Z"></svg></button>'
            },
            share: {
                tpl: '<div class="fancybox-share"><h1>{{SHARE}}</h1><p class="fancybox-share__links"><a class="fancybox-share__button fancybox-share__button--fb" href="https://www.facebook.com/sharer/sharer.php?u={{url}}"><svg viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="m287 456v-299c0-21 6-35 35-35h38v-63c-7-1-29-3-55-3-54 0-91 33-91 94v306m143-254h-205v72h196" /></svg><span>Facebook</span></a><a class="fancybox-share__button fancybox-share__button--pt" href="https://www.pinterest.com/pin/create/button/?url={{url}}&description={{descr}}&media={{media}}"><svg viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="m265 56c-109 0-164 78-164 144 0 39 15 74 47 87 5 2 10 0 12-5l4-19c2-6 1-8-3-13-9-11-15-25-15-45 0-58 43-110 113-110 62 0 96 38 96 88 0 67-30 122-73 122-24 0-42-19-36-44 6-29 20-60 20-81 0-19-10-35-31-35-25 0-44 26-44 60 0 21 7 36 7 36l-30 125c-8 37-1 83 0 87 0 3 4 4 5 2 2-3 32-39 42-75l16-64c8 16 31 29 56 29 74 0 124-67 124-157 0-69-58-132-146-132z" fill="#fff"/></svg><span>Pinterest</span></a><a class="fancybox-share__button fancybox-share__button--tw" href="https://twitter.com/intent/tweet?url={{url}}&text={{descr}}"><svg viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="m456 133c-14 7-31 11-47 13 17-10 30-27 37-46-15 10-34 16-52 20-61-62-157-7-141 75-68-3-129-35-169-85-22 37-11 86 26 109-13 0-26-4-37-9 0 39 28 72 65 80-12 3-25 4-37 2 10 33 41 57 77 57-42 30-77 38-122 34 170 111 378-32 359-208 16-11 30-25 41-42z" /></svg><span>Twitter</span></a></p><p><input class="fancybox-share__input" type="text" value="{{url_raw}}" /></p></div>'
            }
        }), t(e).on("click", "[data-fancybox-share]", function() {
            var e, o, i = t.fancybox.getInstance();
            i && (e = i.current.opts.hash === !1 ? i.current.src : window.location, o = i.current.opts.share.tpl.replace(/\{\{media\}\}/g, "image" === i.current.type ? encodeURIComponent(i.current.src) : "").replace(/\{\{url\}\}/g, encodeURIComponent(e)).replace(/\{\{url_raw\}\}/g, n(e)).replace(/\{\{descr\}\}/g, i.$caption ? encodeURIComponent(i.$caption.text()) : ""), t.fancybox.open({
                src: i.translate(i, o),
                type: "html",
                opts: {
                    animationEffect: "fade",
                    animationDuration: 250,
                    afterLoad: function(e, t) {
                        t.$content.find(".fancybox-share__links a").click(function() {
                            return window.open(this.href, "Share", "width=550, height=450"), !1
                        })
                    }
                }
            }))
        })
    }(document, window.jQuery || jQuery),
    function(e, t, n) {
        "use strict";

        function o() {
            var e = t.location.hash.substr(1),
                n = e.split("-"),
                o = n.length > 1 && /^\+?\d+$/.test(n[n.length - 1]) ? parseInt(n.pop(-1), 10) || 1 : 1,
                i = n.join("-");
            return o < 1 && (o = 1), {
                hash: e,
                index: o,
                gallery: i
            }
        }

        function i(e) {
            var t;
            "" !== e.gallery && (t = n("[data-fancybox='" + n.escapeSelector(e.gallery) + "']").eq(e.index - 1), t.length || (t = n("#" + n.escapeSelector(e.gallery))), t.length && (a = !1, t.trigger("click")))
        }

        function r(e) {
            var t;
            return !!e && (t = e.current ? e.current.opts : e.opts, t.hash || (t.$orig ? t.$orig.data("fancybox") : ""))
        }
        n.escapeSelector || (n.escapeSelector = function(e) {
            var t = /([\0-\x1f\x7f]|^-?\d)|^-$|[^\x80-\uFFFF\w-]/g,
                n = function(e, t) {
                    return t ? "\0" === e ? "ï¿½" : e.slice(0, -1) + "\\" + e.charCodeAt(e.length - 1).toString(16) + " " : "\\" + e
                };
            return (e + "").replace(t, n)
        });
        var a = !0,
            s = null,
            c = null;
        n(function() {
            n.fancybox.defaults.hash !== !1 && (n(e).on({
                "onInit.fb": function(e, t) {
                    var n, i;
                    t.group[t.currIndex].opts.hash !== !1 && (n = o(), i = r(t), i && n.gallery && i == n.gallery && (t.currIndex = n.index - 1))
                },
                "beforeShow.fb": function(n, o, i) {
                    var l;
                    i && i.opts.hash !== !1 && (l = r(o), l && "" !== l && (t.location.hash.indexOf(l) < 0 && (o.opts.origHash = t.location.hash), s = l + (o.group.length > 1 ? "-" + (i.index + 1) : ""), "replaceState" in t.history ? (c && clearTimeout(c), c = setTimeout(function() {
                        t.history[a ? "pushState" : "replaceState"]({}, e.title, t.location.pathname + t.location.search + "#" + s), c = null, a = !1
                    }, 300)) : t.location.hash = s))
                },
                "beforeClose.fb": function(o, i, a) {
                    var l, u;
                    c && clearTimeout(c), a.opts.hash !== !1 && (l = r(i), u = i && i.opts.origHash ? i.opts.origHash : "", l && "" !== l && ("replaceState" in history ? t.history.replaceState({}, e.title, t.location.pathname + t.location.search + u) : (t.location.hash = u, n(t).scrollTop(i.scrollTop).scrollLeft(i.scrollLeft))), s = null)
                }
            }), n(t).on("hashchange.fb", function() {
                var e = o();
                n.fancybox.getInstance() ? !s || s === e.gallery + "-" + e.index || 1 === e.index && s == e.gallery || (s = null, n.fancybox.close()) : "" !== e.gallery && i(e)
            }), setTimeout(function() {
                i(o())
            }, 50))
        })
    }(document, window, window.jQuery || jQuery),
    function(e, t) {
        "use strict";
        var n = (new Date).getTime();
        t(e).on({
            "onInit.fb": function(e, t, o) {
                t.$refs.stage.on("mousewheel DOMMouseScroll wheel MozMousePixelScroll", function(e) {
                    var o = t.current,
                        i = (new Date).getTime();
                    t.group.length < 1 || o.opts.wheel === !1 || "auto" === o.opts.wheel && "image" !== o.type || (e.preventDefault(), e.stopPropagation(), o.$slide.hasClass("fancybox-animated") || (e = e.originalEvent || e, i - n < 250 || (n = i, t[(-e.deltaY || -e.deltaX || e.wheelDelta || -e.detail) < 0 ? "next" : "previous"]())))
                })
            }
        })
    }(document, window.jQuery || jQuery), ! function(e, t) {
        if ("function" == typeof define && define.amd) define(["exports", "module"], t);
        else if ("undefined" != typeof exports && "undefined" != typeof module) t(exports, module);
        else {
            var n = {
                exports: {}
            };
            t(n.exports, n), e.autosize = n.exports
        }
    }(this, function(e, t) {
        "use strict";

        function n(e) {
            function t() {
                var t = window.getComputedStyle(e, null);
                "vertical" === t.resize ? e.style.resize = "none" : "both" === t.resize && (e.style.resize = "horizontal"), c = "content-box" === t.boxSizing ? -(parseFloat(t.paddingTop) + parseFloat(t.paddingBottom)) : parseFloat(t.borderTopWidth) + parseFloat(t.borderBottomWidth), isNaN(c) && (c = 0), s()
            }

            function n(t) {
                var n = e.style.width;
                e.style.width = "0px", e.offsetWidth, e.style.width = n, e.style.overflowY = t
            }

            function o(e) {
                for (var t = []; e && e.parentNode && e.parentNode instanceof Element;) e.parentNode.scrollTop && t.push({
                    node: e.parentNode,
                    scrollTop: e.parentNode.scrollTop
                }), e = e.parentNode;
                return t
            }

            function i() {
                var t = e.style.height,
                    n = o(e),
                    i = document.documentElement && document.documentElement.scrollTop;
                e.style.height = "";
                var r = e.scrollHeight + c;
                return 0 === e.scrollHeight ? void(e.style.height = t) : (e.style.height = r + "px", l = e.clientWidth, n.forEach(function(e) {
                    e.node.scrollTop = e.scrollTop
                }), void(i && (document.documentElement.scrollTop = i)))
            }

            function s() {
                i();
                var e = Math.round(parseFloat(s.style.height)),
                    t = window.getComputedStyle(s, null),
                    o = "content-box" === t.boxSizing ? Math.round(parseFloat(t.height)) : s.offsetHeight;
                if (o !== e ? "hidden" === t.overflowY && (n("scroll"), i(), o = "content-box" === t.boxSizing ? Math.round(parseFloat(window.getComputedStyle(s, null).height)) : s.offsetHeight) : "hidden" !== t.overflowY && (n("hidden"), i(), o = "content-box" === t.boxSizing ? Math.round(parseFloat(window.getComputedStyle(s, null).height)) : s.offsetHeight), u !== o) {
                    u = o;
                    var r = a("autosize:resized");
                    try {
                        s.dispatchEvent(r)
                    } catch (s) {}
                }
            }
            if (e && e.nodeName && "TEXTAREA" === e.nodeName && !r.has(e)) {
                var c = null,
                    l = e.clientWidth,
                    u = null,
                    f = function() {
                        e.clientWidth !== l && s()
                    },
                    d = function(t) {
                        window.removeEventListener("resize", f, !1), e.removeEventListener("input", s, !1), e.removeEventListener("keyup", s, !1), e.removeEventListener("autosize:destroy", d, !1), e.removeEventListener("autosize:update", s, !1), Object.keys(t).forEach(function(n) {
                            e.style[n] = t[n]
                        }), r["delete"](e)
                    }.bind(e, {
                        height: e.style.height,
                        resize: e.style.resize,
                        overflowY: e.style.overflowY,
                        overflowX: e.style.overflowX,
                        wordWrap: e.style.wordWrap
                    });
                e.addEventListener("autosize:destroy", d, !1), "onpropertychange" in e && "oninput" in e && e.addEventListener("keyup", s, !1), window.addEventListener("resize", f, !1), e.addEventListener("input", s, !1), e.addEventListener("autosize:update", s, !1), e.style.overflowX = "hidden", e.style.wordWrap = "break-word", r.set(e, {
                    destroy: d,
                    update: s
                }), t()
            }
        }

        function o(e) {
            var t = r.get(e);
            t && t.destroy()
        }

        function i(e) {
            var t = r.get(e);
            t && t.update()
        }
        var r = "function" == typeof Map ? new Map : function() {
                var e = [],
                    t = [];
                return {
                    has: function(t) {
                        return e.indexOf(t) > -1
                    },
                    get: function(n) {
                        return t[e.indexOf(n)]
                    },
                    set: function(n, o) {
                        e.indexOf(n) === -1 && (e.push(n), t.push(o))
                    },
                    "delete": function(n) {
                        var o = e.indexOf(n);
                        o > -1 && (e.splice(o, 1), t.splice(o, 1))
                    }
                }
            }(),
            a = function(e) {
                return new Event(e, {
                    bubbles: !0
                })
            };
        try {
            new Event("test")
        } catch (e) {
            a = function(e) {
                var t = document.createEvent("Event");
                return t.initEvent(e, !0, !1), t
            }
        }
        var s = null;
        "undefined" == typeof window || "function" != typeof window.getComputedStyle ? (s = function(e) {
            return e
        }, s.destroy = function(e) {
            return e
        }, s.update = function(e) {
            return e
        }) : (s = function(e, t) {
            return e && Array.prototype.forEach.call(e.length ? e : [e], function(e) {
                return n(e, t)
            }), e
        }, s.destroy = function(e) {
            return e && Array.prototype.forEach.call(e.length ? e : [e], o), e
        }, s.update = function(e) {
            return e && Array.prototype.forEach.call(e.length ? e : [e], i), e
        }), t.exports = s
    }), $.ajaxSetup({
        headers: {
            "X-CSRF-TOKEN": document.querySelector('meta[name="csrf-token"]').getAttribute("content")
        }
    }), 0 == window.location.hostname.indexOf("www") && (window.location = window.location.href.replace("www.", "")), $(document).ready(function() {
        function e(e) {
            if ("undefined" != typeof e) {
                var t = e.offset().top,
                    n = $(window);
                n.on("scroll", function() {
                    n.scrollTop() >= t ? e.addClass("fixed") : e.removeClass("fixed")
                })
            }
        }
        $(function() {
            e($("#header"))
        }), $(function() {
            $('[data-toggle="tooltip"]').tooltip()
        }), autosize(document.querySelectorAll("textarea")), $(".go-top").click(function() {
            $("html, body").animate({
                scrollTop: 0
            }, "slow")
        }), $("#nav-icon").click(function() {
            $(this).toggleClass("open")
        }),$(function() {
            e($("#header"))
        }), $(function() {
            $('[data-toggle="tooltip"]').tooltip()
        }), autosize(document.querySelectorAll("textarea")), $(".lesson-item").click(function() {
            $("html, body").animate({
                scrollTop: 0
            }, "slow")
        }), $("#lesson-item").click(function() {
            $(this).toggleClass("open")
        })
    });