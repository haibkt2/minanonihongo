function murmurhash3_32_gc(t, e) {
    var i, n, o, s, r;
    for (i = 3 & t.length, n = t.length - i, o = e, r = 0; r < n;) s = 255 & t.charCodeAt(r) | (255 & t.charCodeAt(++r)) << 8 | (255 & t.charCodeAt(++r)) << 16 | (255 & t.charCodeAt(++r)) << 24, ++r, s = 3432918353 * (65535 & s) + ((3432918353 * (s >>> 16) & 65535) << 16) & 4294967295, s = s << 15 | s >>> 17, s = 461845907 * (65535 & s) + ((461845907 * (s >>> 16) & 65535) << 16) & 4294967295, o ^= s, o = o << 13 | o >>> 19, o = 5 * (65535 & o) + ((5 * (o >>> 16) & 65535) << 16) & 4294967295, o = (65535 & o) + 27492 + (((o >>> 16) + 58964 & 65535) << 16);
    switch (s = 0, i) {
        case 3:
            s ^= (255 & t.charCodeAt(r + 2)) << 16;
        case 2:
            s ^= (255 & t.charCodeAt(r + 1)) << 8;
        case 1:
            s ^= 255 & t.charCodeAt(r), s = 3432918353 * (65535 & s) + ((3432918353 * (s >>> 16) & 65535) << 16) & 4294967295, s = s << 15 | s >>> 17, o ^= 461845907 * (65535 & s) + ((461845907 * (s >>> 16) & 65535) << 16) & 4294967295
    }
    return o ^= t.length, o ^= o >>> 16, o = 2246822507 * (65535 & o) + ((2246822507 * (o >>> 16) & 65535) << 16) & 4294967295, o ^= o >>> 13, o = 3266489909 * (65535 & o) + ((3266489909 * (o >>> 16) & 65535) << 16) & 4294967295, (o ^ o >>> 16) >>> 0
}

function clickClosePopup() {
    location.reload()
}

function checkspecialSymbol(t) {
    var e = /[#$%^&*()_\[\]{};':"\\|<>\/]/;
    return e.test(t)
}

function standardizeString(t) {
    return newString = t.replace(/\s+/g, ""), newString = t.replace(/\s+/g, " ").trim(), newString
}
if ("undefined" == typeof jQuery) throw new Error("Bootstrap's JavaScript requires jQuery"); + function(t) {
    "use strict";
    var e = t.fn.jquery.split(" ")[0].split(".");
    if (e[0] < 2 && e[1] < 9 || 1 == e[0] && 9 == e[1] && e[2] < 1 || e[0] > 3) throw new Error("Bootstrap's JavaScript requires jQuery version 1.9.1 or higher, but lower than version 4")
}(jQuery), + function(t) {
    "use strict";

    function e() {
        var t = document.createElement("bootstrap"),
            e = {
                WebkitTransition: "webkitTransitionEnd",
                MozTransition: "transitionend",
                OTransition: "oTransitionEnd otransitionend",
                transition: "transitionend"
            };
        for (var i in e)
            if (void 0 !== t.style[i]) return {
                end: e[i]
            };
        return !1
    }
    t.fn.emulateTransitionEnd = function(e) {
        var i = !1,
            n = this;
        t(this).one("bsTransitionEnd", function() {
            i = !0
        });
        var o = function() {
            i || t(n).trigger(t.support.transition.end)
        };
        return setTimeout(o, e), this
    }, t(function() {
        t.support.transition = e(), t.support.transition && (t.event.special.bsTransitionEnd = {
            bindType: t.support.transition.end,
            delegateType: t.support.transition.end,
            handle: function(e) {
                if (t(e.target).is(this)) return e.handleObj.handler.apply(this, arguments)
            }
        })
    })
}(jQuery), + function(t) {
    "use strict";

    function e(e) {
        return this.each(function() {
            var i = t(this),
                o = i.data("bs.alert");
            o || i.data("bs.alert", o = new n(this)), "string" == typeof e && o[e].call(i)
        })
    }
    var i = '[data-dismiss="alert"]',
        n = function(e) {
            t(e).on("click", i, this.close)
        };
    n.VERSION = "3.3.7", n.TRANSITION_DURATION = 150, n.prototype.close = function(e) {
        function i() {
            r.detach().trigger("closed.bs.alert").remove()
        }
        var o = t(this),
            s = o.attr("data-target");
        s || (s = o.attr("href"), s = s && s.replace(/.*(?=#[^\s]*$)/, ""));
        var r = t("#" === s ? [] : s);
        e && e.preventDefault(), r.length || (r = o.closest(".alert")), r.trigger(e = t.Event("close.bs.alert")), e.isDefaultPrevented() || (r.removeClass("in"), t.support.transition && r.hasClass("fade") ? r.one("bsTransitionEnd", i).emulateTransitionEnd(n.TRANSITION_DURATION) : i())
    };
    var o = t.fn.alert;
    t.fn.alert = e, t.fn.alert.Constructor = n, t.fn.alert.noConflict = function() {
        return t.fn.alert = o, this
    }, t(document).on("click.bs.alert.data-api", i, n.prototype.close)
}(jQuery), + function(t) {
    "use strict";

    function e(e) {
        return this.each(function() {
            var n = t(this),
                o = n.data("bs.button"),
                s = "object" == typeof e && e;
            o || n.data("bs.button", o = new i(this, s)), "toggle" == e ? o.toggle() : e && o.setState(e)
        })
    }
    var i = function(e, n) {
        this.$element = t(e), this.options = t.extend({}, i.DEFAULTS, n), this.isLoading = !1
    };
    i.VERSION = "3.3.7", i.DEFAULTS = {
        loadingText: "loading..."
    }, i.prototype.setState = function(e) {
        var i = "disabled",
            n = this.$element,
            o = n.is("input") ? "val" : "html",
            s = n.data();
        e += "Text", null == s.resetText && n.data("resetText", n[o]()), setTimeout(t.proxy(function() {
            n[o](null == s[e] ? this.options[e] : s[e]), "loadingText" == e ? (this.isLoading = !0, n.addClass(i).attr(i, i).prop(i, !0)) : this.isLoading && (this.isLoading = !1, n.removeClass(i).removeAttr(i).prop(i, !1))
        }, this), 0)
    }, i.prototype.toggle = function() {
        var t = !0,
            e = this.$element.closest('[data-toggle="buttons"]');
        if (e.length) {
            var i = this.$element.find("input");
            "radio" == i.prop("type") ? (i.prop("checked") && (t = !1), e.find(".active").removeClass("active"), this.$element.addClass("active")) : "checkbox" == i.prop("type") && (i.prop("checked") !== this.$element.hasClass("active") && (t = !1), this.$element.toggleClass("active")), i.prop("checked", this.$element.hasClass("active")), t && i.trigger("change")
        } else this.$element.attr("aria-pressed", !this.$element.hasClass("active")), this.$element.toggleClass("active")
    };
    var n = t.fn.button;
    t.fn.button = e, t.fn.button.Constructor = i, t.fn.button.noConflict = function() {
        return t.fn.button = n, this
    }, t(document).on("click.bs.button.data-api", '[data-toggle^="button"]', function(i) {
        var n = t(i.target).closest(".btn");
        e.call(n, "toggle"), t(i.target).is('input[type="radio"], input[type="checkbox"]') || (i.preventDefault(), n.is("input,button") ? n.trigger("focus") : n.find("input:visible,button:visible").first().trigger("focus"))
    }).on("focus.bs.button.data-api blur.bs.button.data-api", '[data-toggle^="button"]', function(e) {
        t(e.target).closest(".btn").toggleClass("focus", /^focus(in)?$/.test(e.type))
    })
}(jQuery), + function(t) {
    "use strict";

    function e(e) {
        return this.each(function() {
            var n = t(this),
                o = n.data("bs.carousel"),
                s = t.extend({}, i.DEFAULTS, n.data(), "object" == typeof e && e),
                r = "string" == typeof e ? e : s.slide;
            o || n.data("bs.carousel", o = new i(this, s)), "number" == typeof e ? o.to(e) : r ? o[r]() : s.interval && o.pause().cycle()
        })
    }
    var i = function(e, i) {
        this.$element = t(e), this.$indicators = this.$element.find(".carousel-indicators"), this.options = i, this.paused = null, this.sliding = null, this.interval = null, this.$active = null, this.$items = null, this.options.keyboard && this.$element.on("keydown.bs.carousel", t.proxy(this.keydown, this)), "hover" == this.options.pause && !("ontouchstart" in document.documentElement) && this.$element.on("mouseenter.bs.carousel", t.proxy(this.pause, this)).on("mouseleave.bs.carousel", t.proxy(this.cycle, this))
    };
    i.VERSION = "3.3.7", i.TRANSITION_DURATION = 600, i.DEFAULTS = {
        interval: 5e3,
        pause: "hover",
        wrap: !0,
        keyboard: !0
    }, i.prototype.keydown = function(t) {
        if (!/input|textarea/i.test(t.target.tagName)) {
            switch (t.which) {
                case 37:
                    this.prev();
                    break;
                case 39:
                    this.next();
                    break;
                default:
                    return
            }
            t.preventDefault()
        }
    }, i.prototype.cycle = function(e) {
        return e || (this.paused = !1), this.interval && clearInterval(this.interval), this.options.interval && !this.paused && (this.interval = setInterval(t.proxy(this.next, this), this.options.interval)), this
    }, i.prototype.getItemIndex = function(t) {
        return this.$items = t.parent().children(".item"), this.$items.index(t || this.$active)
    }, i.prototype.getItemForDirection = function(t, e) {
        var i = this.getItemIndex(e),
            n = "prev" == t && 0 === i || "next" == t && i == this.$items.length - 1;
        if (n && !this.options.wrap) return e;
        var o = "prev" == t ? -1 : 1,
            s = (i + o) % this.$items.length;
        return this.$items.eq(s)
    }, i.prototype.to = function(t) {
        var e = this,
            i = this.getItemIndex(this.$active = this.$element.find(".item.active"));
        if (!(t > this.$items.length - 1 || t < 0)) return this.sliding ? this.$element.one("slid.bs.carousel", function() {
            e.to(t)
        }) : i == t ? this.pause().cycle() : this.slide(t > i ? "next" : "prev", this.$items.eq(t))
    }, i.prototype.pause = function(e) {
        return e || (this.paused = !0), this.$element.find(".next, .prev").length && t.support.transition && (this.$element.trigger(t.support.transition.end), this.cycle(!0)), this.interval = clearInterval(this.interval), this
    }, i.prototype.next = function() {
        if (!this.sliding) return this.slide("next")
    }, i.prototype.prev = function() {
        if (!this.sliding) return this.slide("prev")
    }, i.prototype.slide = function(e, n) {
        var o = this.$element.find(".item.active"),
            s = n || this.getItemForDirection(e, o),
            r = this.interval,
            a = "next" == e ? "left" : "right",
            l = this;
        if (s.hasClass("active")) return this.sliding = !1;
        var c = s[0],
            d = t.Event("slide.bs.carousel", {
                relatedTarget: c,
                direction: a
            });
        if (this.$element.trigger(d), !d.isDefaultPrevented()) {
            if (this.sliding = !0, r && this.pause(), this.$indicators.length) {
                this.$indicators.find(".active").removeClass("active");
                var h = t(this.$indicators.children()[this.getItemIndex(s)]);
                h && h.addClass("active")
            }
            var u = t.Event("slid.bs.carousel", {
                relatedTarget: c,
                direction: a
            });
            return t.support.transition && this.$element.hasClass("slide") ? (s.addClass(e), s[0].offsetWidth, o.addClass(a), s.addClass(a), o.one("bsTransitionEnd", function() {
                s.removeClass([e, a].join(" ")).addClass("active"), o.removeClass(["active", a].join(" ")), l.sliding = !1, setTimeout(function() {
                    l.$element.trigger(u)
                }, 0)
            }).emulateTransitionEnd(i.TRANSITION_DURATION)) : (o.removeClass("active"), s.addClass("active"), this.sliding = !1, this.$element.trigger(u)), r && this.cycle(), this
        }
    };
    var n = t.fn.carousel;
    t.fn.carousel = e, t.fn.carousel.Constructor = i, t.fn.carousel.noConflict = function() {
        return t.fn.carousel = n, this
    };
    var o = function(i) {
        var n, o = t(this),
            s = t(o.attr("data-target") || (n = o.attr("href")) && n.replace(/.*(?=#[^\s]+$)/, ""));
        if (s.hasClass("carousel")) {
            var r = t.extend({}, s.data(), o.data()),
                a = o.attr("data-slide-to");
            a && (r.interval = !1), e.call(s, r), a && s.data("bs.carousel").to(a), i.preventDefault()
        }
    };
    t(document).on("click.bs.carousel.data-api", "[data-slide]", o).on("click.bs.carousel.data-api", "[data-slide-to]", o), t(window).on("load", function() {
        t('[data-ride="carousel"]').each(function() {
            var i = t(this);
            e.call(i, i.data())
        })
    })
}(jQuery), + function(t) {
    "use strict";

    function e(e) {
        var i, n = e.attr("data-target") || (i = e.attr("href")) && i.replace(/.*(?=#[^\s]+$)/, "");
        return t(n)
    }

    function i(e) {
        return this.each(function() {
            var i = t(this),
                o = i.data("bs.collapse"),
                s = t.extend({}, n.DEFAULTS, i.data(), "object" == typeof e && e);
            !o && s.toggle && /show|hide/.test(e) && (s.toggle = !1), o || i.data("bs.collapse", o = new n(this, s)), "string" == typeof e && o[e]()
        })
    }
    var n = function(e, i) {
        this.$element = t(e), this.options = t.extend({}, n.DEFAULTS, i), this.$trigger = t('[data-toggle="collapse"][href="#' + e.id + '"],[data-toggle="collapse"][data-target="#' + e.id + '"]'), this.transitioning = null, this.options.parent ? this.$parent = this.getParent() : this.addAriaAndCollapsedClass(this.$element, this.$trigger), this.options.toggle && this.toggle()
    };
    n.VERSION = "3.3.7", n.TRANSITION_DURATION = 350, n.DEFAULTS = {
        toggle: !0
    }, n.prototype.dimension = function() {
        var t = this.$element.hasClass("width");
        return t ? "width" : "height"
    }, n.prototype.show = function() {
        if (!this.transitioning && !this.$element.hasClass("in")) {
            var e, o = this.$parent && this.$parent.children(".panel").children(".in, .collapsing");
            if (!(o && o.length && (e = o.data("bs.collapse"), e && e.transitioning))) {
                var s = t.Event("show.bs.collapse");
                if (this.$element.trigger(s), !s.isDefaultPrevented()) {
                    o && o.length && (i.call(o, "hide"), e || o.data("bs.collapse", null));
                    var r = this.dimension();
                    this.$element.removeClass("collapse").addClass("collapsing")[r](0).attr("aria-expanded", !0), this.$trigger.removeClass("collapsed").attr("aria-expanded", !0), this.transitioning = 1;
                    var a = function() {
                        this.$element.removeClass("collapsing").addClass("collapse in")[r](""), this.transitioning = 0, this.$element.trigger("shown.bs.collapse")
                    };
                    if (!t.support.transition) return a.call(this);
                    var l = t.camelCase(["scroll", r].join("-"));
                    this.$element.one("bsTransitionEnd", t.proxy(a, this)).emulateTransitionEnd(n.TRANSITION_DURATION)[r](this.$element[0][l])
                }
            }
        }
    }, n.prototype.hide = function() {
        if (!this.transitioning && this.$element.hasClass("in")) {
            var e = t.Event("hide.bs.collapse");
            if (this.$element.trigger(e), !e.isDefaultPrevented()) {
                var i = this.dimension();
                this.$element[i](this.$element[i]())[0].offsetHeight, this.$element.addClass("collapsing").removeClass("collapse in").attr("aria-expanded", !1), this.$trigger.addClass("collapsed").attr("aria-expanded", !1), this.transitioning = 1;
                var o = function() {
                    this.transitioning = 0, this.$element.removeClass("collapsing").addClass("collapse").trigger("hidden.bs.collapse")
                };
                return t.support.transition ? void this.$element[i](0).one("bsTransitionEnd", t.proxy(o, this)).emulateTransitionEnd(n.TRANSITION_DURATION) : o.call(this)
            }
        }
    }, n.prototype.toggle = function() {
        this[this.$element.hasClass("in") ? "hide" : "show"]()
    }, n.prototype.getParent = function() {
        return t(this.options.parent).find('[data-toggle="collapse"][data-parent="' + this.options.parent + '"]').each(t.proxy(function(i, n) {
            var o = t(n);
            this.addAriaAndCollapsedClass(e(o), o)
        }, this)).end()
    }, n.prototype.addAriaAndCollapsedClass = function(t, e) {
        var i = t.hasClass("in");
        t.attr("aria-expanded", i), e.toggleClass("collapsed", !i).attr("aria-expanded", i)
    };
    var o = t.fn.collapse;
    t.fn.collapse = i, t.fn.collapse.Constructor = n, t.fn.collapse.noConflict = function() {
        return t.fn.collapse = o, this
    }, t(document).on("click.bs.collapse.data-api", '[data-toggle="collapse"]', function(n) {
        var o = t(this);
        o.attr("data-target") || n.preventDefault();
        var s = e(o),
            r = s.data("bs.collapse"),
            a = r ? "toggle" : o.data();
        i.call(s, a)
    })
}(jQuery), + function(t) {
    "use strict";

    function e(e) {
        var i = e.attr("data-target");
        i || (i = e.attr("href"), i = i && /#[A-Za-z]/.test(i) && i.replace(/.*(?=#[^\s]*$)/, ""));
        var n = i && t(i);
        return n && n.length ? n : e.parent()
    }

    function i(i) {
        i && 3 === i.which || (t(o).remove(), t(s).each(function() {
            var n = t(this),
                o = e(n),
                s = {
                    relatedTarget: this
                };
            o.hasClass("open") && (i && "click" == i.type && /input|textarea/i.test(i.target.tagName) && t.contains(o[0], i.target) || (o.trigger(i = t.Event("hide.bs.dropdown", s)), i.isDefaultPrevented() || (n.attr("aria-expanded", "false"), o.removeClass("open").trigger(t.Event("hidden.bs.dropdown", s)))))
        }))
    }

    function n(e) {
        return this.each(function() {
            var i = t(this),
                n = i.data("bs.dropdown");
            n || i.data("bs.dropdown", n = new r(this)), "string" == typeof e && n[e].call(i)
        })
    }
    var o = ".dropdown-backdrop",
        s = '[data-toggle="dropdown"]',
        r = function(e) {
            t(e).on("click.bs.dropdown", this.toggle)
        };
    r.VERSION = "3.3.7", r.prototype.toggle = function(n) {
        var o = t(this);
        if (!o.is(".disabled, :disabled")) {
            var s = e(o),
                r = s.hasClass("open");
            if (i(), !r) {
                "ontouchstart" in document.documentElement && !s.closest(".navbar-nav").length && t(document.createElement("div")).addClass("dropdown-backdrop").insertAfter(t(this)).on("click", i);
                var a = {
                    relatedTarget: this
                };
                if (s.trigger(n = t.Event("show.bs.dropdown", a)), n.isDefaultPrevented()) return;
                o.trigger("focus").attr("aria-expanded", "true"), s.toggleClass("open").trigger(t.Event("shown.bs.dropdown", a))
            }
            return !1
        }
    }, r.prototype.keydown = function(i) {
        if (/(38|40|27|32)/.test(i.which) && !/input|textarea/i.test(i.target.tagName)) {
            var n = t(this);
            if (i.preventDefault(), i.stopPropagation(), !n.is(".disabled, :disabled")) {
                var o = e(n),
                    r = o.hasClass("open");
                if (!r && 27 != i.which || r && 27 == i.which) return 27 == i.which && o.find(s).trigger("focus"), n.trigger("click");
                var a = " li:not(.disabled):visible a",
                    l = o.find(".dropdown-menu" + a);
                if (l.length) {
                    var c = l.index(i.target);
                    38 == i.which && c > 0 && c--, 40 == i.which && c < l.length - 1 && c++, ~c || (c = 0), l.eq(c).trigger("focus")
                }
            }
        }
    };
    var a = t.fn.dropdown;
    t.fn.dropdown = n, t.fn.dropdown.Constructor = r, t.fn.dropdown.noConflict = function() {
        return t.fn.dropdown = a, this
    }, t(document).on("click.bs.dropdown.data-api", i).on("click.bs.dropdown.data-api", ".dropdown form", function(t) {
        t.stopPropagation()
    }).on("click.bs.dropdown.data-api", s, r.prototype.toggle).on("keydown.bs.dropdown.data-api", s, r.prototype.keydown).on("keydown.bs.dropdown.data-api", ".dropdown-menu", r.prototype.keydown)
}(jQuery), + function(t) {
    "use strict";

    function e(e, n) {
        return this.each(function() {
            var o = t(this),
                s = o.data("bs.modal"),
                r = t.extend({}, i.DEFAULTS, o.data(), "object" == typeof e && e);
            s || o.data("bs.modal", s = new i(this, r)), "string" == typeof e ? s[e](n) : r.show && s.show(n)
        })
    }
    var i = function(e, i) {
        this.options = i, this.$body = t(document.body), this.$element = t(e), this.$dialog = this.$element.find(".modal-dialog"), this.$backdrop = null, this.isShown = null, this.originalBodyPad = null, this.scrollbarWidth = 0, this.ignoreBackdropClick = !1, this.options.remote && this.$element.find(".modal-content").load(this.options.remote, t.proxy(function() {
            this.$element.trigger("loaded.bs.modal")
        }, this))
    };
    i.VERSION = "3.3.7", i.TRANSITION_DURATION = 300, i.BACKDROP_TRANSITION_DURATION = 150, i.DEFAULTS = {
        backdrop: !0,
        keyboard: !0,
        show: !0
    }, i.prototype.toggle = function(t) {
        return this.isShown ? this.hide() : this.show(t)
    }, i.prototype.show = function(e) {
        var n = this,
            o = t.Event("show.bs.modal", {
                relatedTarget: e
            });
        this.$element.trigger(o), this.isShown || o.isDefaultPrevented() || (this.isShown = !0, this.checkScrollbar(), this.setScrollbar(), this.$body.addClass("modal-open"), this.escape(), this.resize(), this.$element.on("click.dismiss.bs.modal", '[data-dismiss="modal"]', t.proxy(this.hide, this)), this.$dialog.on("mousedown.dismiss.bs.modal", function() {
            n.$element.one("mouseup.dismiss.bs.modal", function(e) {
                t(e.target).is(n.$element) && (n.ignoreBackdropClick = !0)
            })
        }), this.backdrop(function() {
            var o = t.support.transition && n.$element.hasClass("fade");
            n.$element.parent().length || n.$element.appendTo(n.$body), n.$element.show().scrollTop(0), n.adjustDialog(), o && n.$element[0].offsetWidth, n.$element.addClass("in"), n.enforceFocus();
            var s = t.Event("shown.bs.modal", {
                relatedTarget: e
            });
            o ? n.$dialog.one("bsTransitionEnd", function() {
                n.$element.trigger("focus").trigger(s)
            }).emulateTransitionEnd(i.TRANSITION_DURATION) : n.$element.trigger("focus").trigger(s)
        }))
    }, i.prototype.hide = function(e) {
        e && e.preventDefault(), e = t.Event("hide.bs.modal"), this.$element.trigger(e), this.isShown && !e.isDefaultPrevented() && (this.isShown = !1, this.escape(), this.resize(), t(document).off("focusin.bs.modal"), this.$element.removeClass("in").off("click.dismiss.bs.modal").off("mouseup.dismiss.bs.modal"), this.$dialog.off("mousedown.dismiss.bs.modal"), t.support.transition && this.$element.hasClass("fade") ? this.$element.one("bsTransitionEnd", t.proxy(this.hideModal, this)).emulateTransitionEnd(i.TRANSITION_DURATION) : this.hideModal())
    }, i.prototype.enforceFocus = function() {
        t(document).off("focusin.bs.modal").on("focusin.bs.modal", t.proxy(function(t) {
            document === t.target || this.$element[0] === t.target || this.$element.has(t.target).length || this.$element.trigger("focus")
        }, this))
    }, i.prototype.escape = function() {
        this.isShown && this.options.keyboard ? this.$element.on("keydown.dismiss.bs.modal", t.proxy(function(t) {
            27 == t.which && this.hide()
        }, this)) : this.isShown || this.$element.off("keydown.dismiss.bs.modal")
    }, i.prototype.resize = function() {
        this.isShown ? t(window).on("resize.bs.modal", t.proxy(this.handleUpdate, this)) : t(window).off("resize.bs.modal")
    }, i.prototype.hideModal = function() {
        var t = this;
        this.$element.hide(), this.backdrop(function() {
            t.$body.removeClass("modal-open"), t.resetAdjustments(), t.resetScrollbar(), t.$element.trigger("hidden.bs.modal")
        })
    }, i.prototype.removeBackdrop = function() {
        this.$backdrop && this.$backdrop.remove(), this.$backdrop = null
    }, i.prototype.backdrop = function(e) {
        var n = this,
            o = this.$element.hasClass("fade") ? "fade" : "";
        if (this.isShown && this.options.backdrop) {
            var s = t.support.transition && o;
            if (this.$backdrop = t(document.createElement("div")).addClass("modal-backdrop " + o).appendTo(this.$body), this.$element.on("click.dismiss.bs.modal", t.proxy(function(t) {
                    return this.ignoreBackdropClick ? void(this.ignoreBackdropClick = !1) : void(t.target === t.currentTarget && ("static" == this.options.backdrop ? this.$element[0].focus() : this.hide()))
                }, this)), s && this.$backdrop[0].offsetWidth, this.$backdrop.addClass("in"), !e) return;
            s ? this.$backdrop.one("bsTransitionEnd", e).emulateTransitionEnd(i.BACKDROP_TRANSITION_DURATION) : e()
        } else if (!this.isShown && this.$backdrop) {
            this.$backdrop.removeClass("in");
            var r = function() {
                n.removeBackdrop(), e && e()
            };
            t.support.transition && this.$element.hasClass("fade") ? this.$backdrop.one("bsTransitionEnd", r).emulateTransitionEnd(i.BACKDROP_TRANSITION_DURATION) : r()
        } else e && e()
    }, i.prototype.handleUpdate = function() {
        this.adjustDialog()
    }, i.prototype.adjustDialog = function() {
        var t = this.$element[0].scrollHeight > document.documentElement.clientHeight;
        this.$element.css({
            paddingLeft: !this.bodyIsOverflowing && t ? this.scrollbarWidth : "",
            paddingRight: this.bodyIsOverflowing && !t ? this.scrollbarWidth : ""
        })
    }, i.prototype.resetAdjustments = function() {
        this.$element.css({
            paddingLeft: "",
            paddingRight: ""
        })
    }, i.prototype.checkScrollbar = function() {
        var t = window.innerWidth;
        if (!t) {
            var e = document.documentElement.getBoundingClientRect();
            t = e.right - Math.abs(e.left)
        }
        this.bodyIsOverflowing = document.body.clientWidth < t, this.scrollbarWidth = this.measureScrollbar()
    }, i.prototype.setScrollbar = function() {
        var t = parseInt(this.$body.css("padding-right") || 0, 10);
        this.originalBodyPad = document.body.style.paddingRight || "", this.bodyIsOverflowing && this.$body.css("padding-right", t + this.scrollbarWidth)
    }, i.prototype.resetScrollbar = function() {
        this.$body.css("padding-right", this.originalBodyPad)
    }, i.prototype.measureScrollbar = function() {
        var t = document.createElement("div");
        t.className = "modal-scrollbar-measure", this.$body.append(t);
        var e = t.offsetWidth - t.clientWidth;
        return this.$body[0].removeChild(t), e
    };
    var n = t.fn.modal;
    t.fn.modal = e, t.fn.modal.Constructor = i, t.fn.modal.noConflict = function() {
        return t.fn.modal = n, this
    }, t(document).on("click.bs.modal.data-api", '[data-toggle="modal"]', function(i) {
        var n = t(this),
            o = n.attr("href"),
            s = t(n.attr("data-target") || o && o.replace(/.*(?=#[^\s]+$)/, "")),
            r = s.data("bs.modal") ? "toggle" : t.extend({
                remote: !/#/.test(o) && o
            }, s.data(), n.data());
        n.is("a") && i.preventDefault(), s.one("show.bs.modal", function(t) {
            t.isDefaultPrevented() || s.one("hidden.bs.modal", function() {
                n.is(":visible") && n.trigger("focus")
            })
        }), e.call(s, r, this)
    })
}(jQuery), + function(t) {
    "use strict";

    function e(e) {
        return this.each(function() {
            var n = t(this),
                o = n.data("bs.tooltip"),
                s = "object" == typeof e && e;
            !o && /destroy|hide/.test(e) || (o || n.data("bs.tooltip", o = new i(this, s)), "string" == typeof e && o[e]())
        })
    }
    var i = function(t, e) {
        this.type = null, this.options = null, this.enabled = null, this.timeout = null, this.hoverState = null, this.$element = null, this.inState = null, this.init("tooltip", t, e)
    };
    i.VERSION = "3.3.7", i.TRANSITION_DURATION = 150, i.DEFAULTS = {
        animation: !0,
        placement: "top",
        selector: !1,
        template: '<div class="tooltip" role="tooltip"><div class="tooltip-arrow"></div><div class="tooltip-inner"></div></div>',
        trigger: "hover focus",
        title: "",
        delay: 0,
        html: !1,
        container: !1,
        viewport: {
            selector: "body",
            padding: 0
        }
    }, i.prototype.init = function(e, i, n) {
        if (this.enabled = !0, this.type = e, this.$element = t(i), this.options = this.getOptions(n), this.$viewport = this.options.viewport && t(t.isFunction(this.options.viewport) ? this.options.viewport.call(this, this.$element) : this.options.viewport.selector || this.options.viewport), this.inState = {
                click: !1,
                hover: !1,
                focus: !1
            }, this.$element[0] instanceof document.constructor && !this.options.selector) throw new Error("`selector` option must be specified when initializing " + this.type + " on the window.document object!");
        for (var o = this.options.trigger.split(" "), s = o.length; s--;) {
            var r = o[s];
            if ("click" == r) this.$element.on("click." + this.type, this.options.selector, t.proxy(this.toggle, this));
            else if ("manual" != r) {
                var a = "hover" == r ? "mouseenter" : "focusin",
                    l = "hover" == r ? "mouseleave" : "focusout";
                this.$element.on(a + "." + this.type, this.options.selector, t.proxy(this.enter, this)), this.$element.on(l + "." + this.type, this.options.selector, t.proxy(this.leave, this))
            }
        }
        this.options.selector ? this._options = t.extend({}, this.options, {
            trigger: "manual",
            selector: ""
        }) : this.fixTitle()
    }, i.prototype.getDefaults = function() {
        return i.DEFAULTS
    }, i.prototype.getOptions = function(e) {
        return e = t.extend({}, this.getDefaults(), this.$element.data(), e), e.delay && "number" == typeof e.delay && (e.delay = {
            show: e.delay,
            hide: e.delay
        }), e
    }, i.prototype.getDelegateOptions = function() {
        var e = {},
            i = this.getDefaults();
        return this._options && t.each(this._options, function(t, n) {
            i[t] != n && (e[t] = n)
        }), e
    }, i.prototype.enter = function(e) {
        var i = e instanceof this.constructor ? e : t(e.currentTarget).data("bs." + this.type);
        return i || (i = new this.constructor(e.currentTarget, this.getDelegateOptions()), t(e.currentTarget).data("bs." + this.type, i)), e instanceof t.Event && (i.inState["focusin" == e.type ? "focus" : "hover"] = !0), i.tip().hasClass("in") || "in" == i.hoverState ? void(i.hoverState = "in") : (clearTimeout(i.timeout), i.hoverState = "in", i.options.delay && i.options.delay.show ? void(i.timeout = setTimeout(function() {
            "in" == i.hoverState && i.show()
        }, i.options.delay.show)) : i.show())
    }, i.prototype.isInStateTrue = function() {
        for (var t in this.inState)
            if (this.inState[t]) return !0;
        return !1
    }, i.prototype.leave = function(e) {
        var i = e instanceof this.constructor ? e : t(e.currentTarget).data("bs." + this.type);
        if (i || (i = new this.constructor(e.currentTarget, this.getDelegateOptions()), t(e.currentTarget).data("bs." + this.type, i)), e instanceof t.Event && (i.inState["focusout" == e.type ? "focus" : "hover"] = !1), !i.isInStateTrue()) return clearTimeout(i.timeout), i.hoverState = "out", i.options.delay && i.options.delay.hide ? void(i.timeout = setTimeout(function() {
            "out" == i.hoverState && i.hide()
        }, i.options.delay.hide)) : i.hide()
    }, i.prototype.show = function() {
        var e = t.Event("show.bs." + this.type);
        if (this.hasContent() && this.enabled) {
            this.$element.trigger(e);
            var n = t.contains(this.$element[0].ownerDocument.documentElement, this.$element[0]);
            if (e.isDefaultPrevented() || !n) return;
            var o = this,
                s = this.tip(),
                r = this.getUID(this.type);
            this.setContent(), s.attr("id", r), this.$element.attr("aria-describedby", r), this.options.animation && s.addClass("fade");
            var a = "function" == typeof this.options.placement ? this.options.placement.call(this, s[0], this.$element[0]) : this.options.placement,
                l = /\s?auto?\s?/i,
                c = l.test(a);
            c && (a = a.replace(l, "") || "top"), s.detach().css({
                top: 0,
                left: 0,
                display: "block"
            }).addClass(a).data("bs." + this.type, this), this.options.container ? s.appendTo(this.options.container) : s.insertAfter(this.$element), this.$element.trigger("inserted.bs." + this.type);
            var d = this.getPosition(),
                h = s[0].offsetWidth,
                u = s[0].offsetHeight;
            if (c) {
                var p = a,
                    f = this.getPosition(this.$viewport);
                a = "bottom" == a && d.bottom + u > f.bottom ? "top" : "top" == a && d.top - u < f.top ? "bottom" : "right" == a && d.right + h > f.width ? "left" : "left" == a && d.left - h < f.left ? "right" : a, s.removeClass(p).addClass(a)
            }
            var g = this.getCalculatedOffset(a, d, h, u);
            this.applyPlacement(g, a);
            var m = function() {
                var t = o.hoverState;
                o.$element.trigger("shown.bs." + o.type), o.hoverState = null, "out" == t && o.leave(o)
            };
            t.support.transition && this.$tip.hasClass("fade") ? s.one("bsTransitionEnd", m).emulateTransitionEnd(i.TRANSITION_DURATION) : m()
        }
    }, i.prototype.applyPlacement = function(e, i) {
        var n = this.tip(),
            o = n[0].offsetWidth,
            s = n[0].offsetHeight,
            r = parseInt(n.css("margin-top"), 10),
            a = parseInt(n.css("margin-left"), 10);
        isNaN(r) && (r = 0), isNaN(a) && (a = 0), e.top += r, e.left += a, t.offset.setOffset(n[0], t.extend({
            using: function(t) {
                n.css({
                    top: Math.round(t.top),
                    left: Math.round(t.left)
                })
            }
        }, e), 0), n.addClass("in");
        var l = n[0].offsetWidth,
            c = n[0].offsetHeight;
        "top" == i && c != s && (e.top = e.top + s - c);
        var d = this.getViewportAdjustedDelta(i, e, l, c);
        d.left ? e.left += d.left : e.top += d.top;
        var h = /top|bottom/.test(i),
            u = h ? 2 * d.left - o + l : 2 * d.top - s + c,
            p = h ? "offsetWidth" : "offsetHeight";
        n.offset(e), this.replaceArrow(u, n[0][p], h)
    }, i.prototype.replaceArrow = function(t, e, i) {
        this.arrow().css(i ? "left" : "top", 50 * (1 - t / e) + "%").css(i ? "top" : "left", "")
    }, i.prototype.setContent = function() {
        var t = this.tip(),
            e = this.getTitle();
        t.find(".tooltip-inner")[this.options.html ? "html" : "text"](e), t.removeClass("fade in top bottom left right")
    }, i.prototype.hide = function(e) {
        function n() {
            "in" != o.hoverState && s.detach(), o.$element && o.$element.removeAttr("aria-describedby").trigger("hidden.bs." + o.type), e && e()
        }
        var o = this,
            s = t(this.$tip),
            r = t.Event("hide.bs." + this.type);
        if (this.$element.trigger(r), !r.isDefaultPrevented()) return s.removeClass("in"), t.support.transition && s.hasClass("fade") ? s.one("bsTransitionEnd", n).emulateTransitionEnd(i.TRANSITION_DURATION) : n(), this.hoverState = null, this
    }, i.prototype.fixTitle = function() {
        var t = this.$element;
        (t.attr("title") || "string" != typeof t.attr("data-original-title")) && t.attr("data-original-title", t.attr("title") || "").attr("title", "")
    }, i.prototype.hasContent = function() {
        return this.getTitle()
    }, i.prototype.getPosition = function(e) {
        e = e || this.$element;
        var i = e[0],
            n = "BODY" == i.tagName,
            o = i.getBoundingClientRect();
        null == o.width && (o = t.extend({}, o, {
            width: o.right - o.left,
            height: o.bottom - o.top
        }));
        var s = window.SVGElement && i instanceof window.SVGElement,
            r = n ? {
                top: 0,
                left: 0
            } : s ? null : e.offset(),
            a = {
                scroll: n ? document.documentElement.scrollTop || document.body.scrollTop : e.scrollTop()
            },
            l = n ? {
                width: t(window).width(),
                height: t(window).height()
            } : null;
        return t.extend({}, o, a, l, r)
    }, i.prototype.getCalculatedOffset = function(t, e, i, n) {
        return "bottom" == t ? {
            top: e.top + e.height,
            left: e.left + e.width / 2 - i / 2
        } : "top" == t ? {
            top: e.top - n,
            left: e.left + e.width / 2 - i / 2
        } : "left" == t ? {
            top: e.top + e.height / 2 - n / 2,
            left: e.left - i
        } : {
            top: e.top + e.height / 2 - n / 2,
            left: e.left + e.width
        }
    }, i.prototype.getViewportAdjustedDelta = function(t, e, i, n) {
        var o = {
            top: 0,
            left: 0
        };
        if (!this.$viewport) return o;
        var s = this.options.viewport && this.options.viewport.padding || 0,
            r = this.getPosition(this.$viewport);
        if (/right|left/.test(t)) {
            var a = e.top - s - r.scroll,
                l = e.top + s - r.scroll + n;
            a < r.top ? o.top = r.top - a : l > r.top + r.height && (o.top = r.top + r.height - l)
        } else {
            var c = e.left - s,
                d = e.left + s + i;
            c < r.left ? o.left = r.left - c : d > r.right && (o.left = r.left + r.width - d)
        }
        return o
    }, i.prototype.getTitle = function() {
        var t, e = this.$element,
            i = this.options;
        return t = e.attr("data-original-title") || ("function" == typeof i.title ? i.title.call(e[0]) : i.title)
    }, i.prototype.getUID = function(t) {
        do t += ~~(1e6 * Math.random()); while (document.getElementById(t));
        return t
    }, i.prototype.tip = function() {
        if (!this.$tip && (this.$tip = t(this.options.template), 1 != this.$tip.length)) throw new Error(this.type + " `template` option must consist of exactly 1 top-level element!");
        return this.$tip
    }, i.prototype.arrow = function() {
        return this.$arrow = this.$arrow || this.tip().find(".tooltip-arrow")
    }, i.prototype.enable = function() {
        this.enabled = !0
    }, i.prototype.disable = function() {
        this.enabled = !1
    }, i.prototype.toggleEnabled = function() {
        this.enabled = !this.enabled
    }, i.prototype.toggle = function(e) {
        var i = this;
        e && (i = t(e.currentTarget).data("bs." + this.type), i || (i = new this.constructor(e.currentTarget, this.getDelegateOptions()), t(e.currentTarget).data("bs." + this.type, i))), e ? (i.inState.click = !i.inState.click, i.isInStateTrue() ? i.enter(i) : i.leave(i)) : i.tip().hasClass("in") ? i.leave(i) : i.enter(i)
    }, i.prototype.destroy = function() {
        var t = this;
        clearTimeout(this.timeout), this.hide(function() {
            t.$element.off("." + t.type).removeData("bs." + t.type), t.$tip && t.$tip.detach(), t.$tip = null, t.$arrow = null, t.$viewport = null, t.$element = null
        })
    };
    var n = t.fn.tooltip;
    t.fn.tooltip = e, t.fn.tooltip.Constructor = i, t.fn.tooltip.noConflict = function() {
        return t.fn.tooltip = n, this
    }
}(jQuery), + function(t) {
    "use strict";

    function e(e) {
        return this.each(function() {
            var n = t(this),
                o = n.data("bs.popover"),
                s = "object" == typeof e && e;
            !o && /destroy|hide/.test(e) || (o || n.data("bs.popover", o = new i(this, s)), "string" == typeof e && o[e]())
        })
    }
    var i = function(t, e) {
        this.init("popover", t, e)
    };
    if (!t.fn.tooltip) throw new Error("Popover requires tooltip.js");
    i.VERSION = "3.3.7", i.DEFAULTS = t.extend({}, t.fn.tooltip.Constructor.DEFAULTS, {
        placement: "right",
        trigger: "click",
        content: "",
        template: '<div class="popover" role="tooltip"><div class="arrow"></div><h3 class="popover-title"></h3><div class="popover-content"></div></div>'
    }), i.prototype = t.extend({}, t.fn.tooltip.Constructor.prototype), i.prototype.constructor = i, i.prototype.getDefaults = function() {
        return i.DEFAULTS
    }, i.prototype.setContent = function() {
        var t = this.tip(),
            e = this.getTitle(),
            i = this.getContent();
        t.find(".popover-title")[this.options.html ? "html" : "text"](e), t.find(".popover-content").children().detach().end()[this.options.html ? "string" == typeof i ? "html" : "append" : "text"](i), t.removeClass("fade top bottom left right in"), t.find(".popover-title").html() || t.find(".popover-title").hide()
    }, i.prototype.hasContent = function() {
        return this.getTitle() || this.getContent()
    }, i.prototype.getContent = function() {
        var t = this.$element,
            e = this.options;
        return t.attr("data-content") || ("function" == typeof e.content ? e.content.call(t[0]) : e.content)
    }, i.prototype.arrow = function() {
        return this.$arrow = this.$arrow || this.tip().find(".arrow")
    };
    var n = t.fn.popover;
    t.fn.popover = e, t.fn.popover.Constructor = i, t.fn.popover.noConflict = function() {
        return t.fn.popover = n, this
    }
}(jQuery), + function(t) {
    "use strict";

    function e(i, n) {
        this.$body = t(document.body), this.$scrollElement = t(t(i).is(document.body) ? window : i), this.options = t.extend({}, e.DEFAULTS, n), this.selector = (this.options.target || "") + " .nav li > a", this.offsets = [], this.targets = [], this.activeTarget = null, this.scrollHeight = 0, this.$scrollElement.on("scroll.bs.scrollspy", t.proxy(this.process, this)), this.refresh(), this.process()
    }

    function i(i) {
        return this.each(function() {
            var n = t(this),
                o = n.data("bs.scrollspy"),
                s = "object" == typeof i && i;
            o || n.data("bs.scrollspy", o = new e(this, s)), "string" == typeof i && o[i]();
        })
    }
    e.VERSION = "3.3.7", e.DEFAULTS = {
        offset: 10
    }, e.prototype.getScrollHeight = function() {
        return this.$scrollElement[0].scrollHeight || Math.max(this.$body[0].scrollHeight, document.documentElement.scrollHeight)
    }, e.prototype.refresh = function() {
        var e = this,
            i = "offset",
            n = 0;
        this.offsets = [], this.targets = [], this.scrollHeight = this.getScrollHeight(), t.isWindow(this.$scrollElement[0]) || (i = "position", n = this.$scrollElement.scrollTop()), this.$body.find(this.selector).map(function() {
            var e = t(this),
                o = e.data("target") || e.attr("href"),
                s = /^#./.test(o) && t(o);
            return s && s.length && s.is(":visible") && [
                [s[i]().top + n, o]
            ] || null
        }).sort(function(t, e) {
            return t[0] - e[0]
        }).each(function() {
            e.offsets.push(this[0]), e.targets.push(this[1])
        })
    }, e.prototype.process = function() {
        var t, e = this.$scrollElement.scrollTop() + this.options.offset,
            i = this.getScrollHeight(),
            n = this.options.offset + i - this.$scrollElement.height(),
            o = this.offsets,
            s = this.targets,
            r = this.activeTarget;
        if (this.scrollHeight != i && this.refresh(), e >= n) return r != (t = s[s.length - 1]) && this.activate(t);
        if (r && e < o[0]) return this.activeTarget = null, this.clear();
        for (t = o.length; t--;) r != s[t] && e >= o[t] && (void 0 === o[t + 1] || e < o[t + 1]) && this.activate(s[t])
    }, e.prototype.activate = function(e) {
        this.activeTarget = e, this.clear();
        var i = this.selector + '[data-target="' + e + '"],' + this.selector + '[href="' + e + '"]',
            n = t(i).parents("li").addClass("active");
        n.parent(".dropdown-menu").length && (n = n.closest("li.dropdown").addClass("active")), n.trigger("activate.bs.scrollspy")
    }, e.prototype.clear = function() {
        t(this.selector).parentsUntil(this.options.target, ".active").removeClass("active")
    };
    var n = t.fn.scrollspy;
    t.fn.scrollspy = i, t.fn.scrollspy.Constructor = e, t.fn.scrollspy.noConflict = function() {
        return t.fn.scrollspy = n, this
    }, t(window).on("load.bs.scrollspy.data-api", function() {
        t('[data-spy="scroll"]').each(function() {
            var e = t(this);
            i.call(e, e.data())
        })
    })
}(jQuery), + function(t) {
    "use strict";

    function e(e) {
        return this.each(function() {
            var n = t(this),
                o = n.data("bs.tab");
            o || n.data("bs.tab", o = new i(this)), "string" == typeof e && o[e]()
        })
    }
    var i = function(e) {
        this.element = t(e)
    };
    i.VERSION = "3.3.7", i.TRANSITION_DURATION = 150, i.prototype.show = function() {
        var e = this.element,
            i = e.closest("ul:not(.dropdown-menu)"),
            n = e.data("target");
        if (n || (n = e.attr("href"), n = n && n.replace(/.*(?=#[^\s]*$)/, "")), !e.parent("li").hasClass("active")) {
            var o = i.find(".active:last a"),
                s = t.Event("hide.bs.tab", {
                    relatedTarget: e[0]
                }),
                r = t.Event("show.bs.tab", {
                    relatedTarget: o[0]
                });
            if (o.trigger(s), e.trigger(r), !r.isDefaultPrevented() && !s.isDefaultPrevented()) {
                var a = t(n);
                this.activate(e.closest("li"), i), this.activate(a, a.parent(), function() {
                    o.trigger({
                        type: "hidden.bs.tab",
                        relatedTarget: e[0]
                    }), e.trigger({
                        type: "shown.bs.tab",
                        relatedTarget: o[0]
                    })
                })
            }
        }
    }, i.prototype.activate = function(e, n, o) {
        function s() {
            r.removeClass("active").find("> .dropdown-menu > .active").removeClass("active").end().find('[data-toggle="tab"]').attr("aria-expanded", !1), e.addClass("active").find('[data-toggle="tab"]').attr("aria-expanded", !0), a ? (e[0].offsetWidth, e.addClass("in")) : e.removeClass("fade"), e.parent(".dropdown-menu").length && e.closest("li.dropdown").addClass("active").end().find('[data-toggle="tab"]').attr("aria-expanded", !0), o && o()
        }
        var r = n.find("> .active"),
            a = o && t.support.transition && (r.length && r.hasClass("fade") || !!n.find("> .fade").length);
        r.length && a ? r.one("bsTransitionEnd", s).emulateTransitionEnd(i.TRANSITION_DURATION) : s(), r.removeClass("in")
    };
    var n = t.fn.tab;
    t.fn.tab = e, t.fn.tab.Constructor = i, t.fn.tab.noConflict = function() {
        return t.fn.tab = n, this
    };
    var o = function(i) {
        i.preventDefault(), e.call(t(this), "show")
    };
    t(document).on("click.bs.tab.data-api", '[data-toggle="tab"]', o).on("click.bs.tab.data-api", '[data-toggle="pill"]', o)
}(jQuery), + function(t) {
    "use strict";

    function e(e) {
        return this.each(function() {
            var n = t(this),
                o = n.data("bs.affix"),
                s = "object" == typeof e && e;
            o || n.data("bs.affix", o = new i(this, s)), "string" == typeof e && o[e]()
        })
    }
    var i = function(e, n) {
        this.options = t.extend({}, i.DEFAULTS, n), this.$target = t(this.options.target).on("scroll.bs.affix.data-api", t.proxy(this.checkPosition, this)).on("click.bs.affix.data-api", t.proxy(this.checkPositionWithEventLoop, this)), this.$element = t(e), this.affixed = null, this.unpin = null, this.pinnedOffset = null, this.checkPosition()
    };
    i.VERSION = "3.3.7", i.RESET = "affix affix-top affix-bottom", i.DEFAULTS = {
        offset: 0,
        target: window
    }, i.prototype.getState = function(t, e, i, n) {
        var o = this.$target.scrollTop(),
            s = this.$element.offset(),
            r = this.$target.height();
        if (null != i && "top" == this.affixed) return o < i && "top";
        if ("bottom" == this.affixed) return null != i ? !(o + this.unpin <= s.top) && "bottom" : !(o + r <= t - n) && "bottom";
        var a = null == this.affixed,
            l = a ? o : s.top,
            c = a ? r : e;
        return null != i && o <= i ? "top" : null != n && l + c >= t - n && "bottom"
    }, i.prototype.getPinnedOffset = function() {
        if (this.pinnedOffset) return this.pinnedOffset;
        this.$element.removeClass(i.RESET).addClass("affix");
        var t = this.$target.scrollTop(),
            e = this.$element.offset();
        return this.pinnedOffset = e.top - t
    }, i.prototype.checkPositionWithEventLoop = function() {
        setTimeout(t.proxy(this.checkPosition, this), 1)
    }, i.prototype.checkPosition = function() {
        if (this.$element.is(":visible")) {
            var e = this.$element.height(),
                n = this.options.offset,
                o = n.top,
                s = n.bottom,
                r = Math.max(t(document).height(), t(document.body).height());
            "object" != typeof n && (s = o = n), "function" == typeof o && (o = n.top(this.$element)), "function" == typeof s && (s = n.bottom(this.$element));
            var a = this.getState(r, e, o, s);
            if (this.affixed != a) {
                null != this.unpin && this.$element.css("top", "");
                var l = "affix" + (a ? "-" + a : ""),
                    c = t.Event(l + ".bs.affix");
                if (this.$element.trigger(c), c.isDefaultPrevented()) return;
                this.affixed = a, this.unpin = "bottom" == a ? this.getPinnedOffset() : null, this.$element.removeClass(i.RESET).addClass(l).trigger(l.replace("affix", "affixed") + ".bs.affix")
            }
            "bottom" == a && this.$element.offset({
                top: r - e - s
            })
        }
    };
    var n = t.fn.affix;
    t.fn.affix = e, t.fn.affix.Constructor = i, t.fn.affix.noConflict = function() {
        return t.fn.affix = n, this
    }, t(window).on("load", function() {
        t('[data-spy="affix"]').each(function() {
            var i = t(this),
                n = i.data();
            n.offset = n.offset || {}, null != n.offsetBottom && (n.offset.bottom = n.offsetBottom), null != n.offsetTop && (n.offset.top = n.offsetTop), e.call(i, n)
        })
    })
}(jQuery),
function(t) {
    var e, i, n = function() {
        return e = (new(window.UAParser || exports.UAParser)).getResult(), i = new Detector, this
    };
    n.prototype = {
        getSoftwareVersion: function() {
            return "0.1.11"
        },
        getBrowserData: function() {
            return e
        },
        getFingerprint: function() {
            var t = e.ua,
                i = this.getScreenPrint(),
                n = this.getPlugins(),
                o = this.getFonts(),
                s = this.isLocalStorage(),
                r = this.isSessionStorage(),
                a = this.getTimeZone(),
                l = this.getLanguage(),
                c = this.getSystemLanguage(),
                d = this.isCookie(),
                h = this.getCanvasPrint();
            return murmurhash3_32_gc(t + "|" + i + "|" + n + "|" + o + "|" + s + "|" + r + "|" + a + "|" + l + "|" + c + "|" + d + "|" + h, 256)
        },
        getCustomFingerprint: function() {
            for (var t = "", e = 0; e < arguments.length; e++) t += arguments[e] + "|";
            return murmurhash3_32_gc(t, 256)
        },
        getUserAgent: function() {
            return e.ua
        },
        getUserAgentLowerCase: function() {
            return e.ua.toLowerCase()
        },
        getBrowser: function() {
            return e.browser.name
        },
        getBrowserVersion: function() {
            return e.browser.version
        },
        getBrowserMajorVersion: function() {
            return e.browser.major
        },
        isIE: function() {
            return /IE/i.test(e.browser.name)
        },
        isChrome: function() {
            return /Chrome/i.test(e.browser.name)
        },
        isFirefox: function() {
            return /Firefox/i.test(e.browser.name)
        },
        isSafari: function() {
            return /Safari/i.test(e.browser.name)
        },
        isMobileSafari: function() {
            return /Mobile\sSafari/i.test(e.browser.name)
        },
        isOpera: function() {
            return /Opera/i.test(e.browser.name)
        },
        getEngine: function() {
            return e.engine.name
        },
        getEngineVersion: function() {
            return e.engine.version
        },
        getOS: function() {
            return e.os.name
        },
        getOSVersion: function() {
            return e.os.version
        },
        isWindows: function() {
            return /Windows/i.test(e.os.name)
        },
        isMac: function() {
            return /Mac/i.test(e.os.name)
        },
        isLinux: function() {
            return /Linux/i.test(e.os.name)
        },
        isUbuntu: function() {
            return /Ubuntu/i.test(e.os.name)
        },
        isSolaris: function() {
            return /Solaris/i.test(e.os.name)
        },
        getDevice: function() {
            return e.device.model
        },
        getDeviceType: function() {
            return e.device.type
        },
        getDeviceVendor: function() {
            return e.device.vendor
        },
        getCPU: function() {
            return e.cpu.architecture
        },
        isMobile: function() {
            var t = e.ua || navigator.vendor || window.opera;
            return /(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(t) || /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(t.substr(0, 4))
        },
        isMobileMajor: function() {
            return this.isMobileAndroid() || this.isMobileBlackBerry() || this.isMobileIOS() || this.isMobileOpera() || this.isMobileWindows()
        },
        isMobileAndroid: function() {
            return !!e.ua.match(/Android/i)
        },
        isMobileOpera: function() {
            return !!e.ua.match(/Opera Mini/i)
        },
        isMobileWindows: function() {
            return !!e.ua.match(/IEMobile/i)
        },
        isMobileBlackBerry: function() {
            return !!e.ua.match(/BlackBerry/i)
        },
        isMobileIOS: function() {
            return !!e.ua.match(/iPhone|iPad|iPod/i)
        },
        isIphone: function() {
            return !!e.ua.match(/iPhone/i)
        },
        isIpad: function() {
            return !!e.ua.match(/iPad/i)
        },
        isIpod: function() {
            return !!e.ua.match(/iPod/i)
        },
        getScreenPrint: function() {
            return "Current Resolution: " + this.getCurrentResolution() + ", Available Resolution: " + this.getAvailableResolution() + ", Color Depth: " + this.getColorDepth() + ", Device XDPI: " + this.getDeviceXDPI() + ", Device YDPI: " + this.getDeviceYDPI()
        },
        getColorDepth: function() {
            return screen.colorDepth
        },
        getCurrentResolution: function() {
            return screen.width + "x" + screen.height
        },
        getAvailableResolution: function() {
            return screen.availWidth + "x" + screen.availHeight
        },
        getDeviceXDPI: function() {
            return screen.deviceXDPI
        },
        getDeviceYDPI: function() {
            return screen.deviceYDPI
        },
        getPlugins: function() {
            for (var t = "", e = 0; e < navigator.plugins.length; e++) t = e == navigator.plugins.length - 1 ? t + navigator.plugins[e].name : t + (navigator.plugins[e].name + ", ");
            return t
        },
        isJava: function() {
            return navigator.javaEnabled()
        },
        getJavaVersion: function() {
            return deployJava.getJREs().toString()
        },
        isFlash: function() {
            return !!navigator.plugins["Shockwave Flash"]
        },
        getFlashVersion: function() {
            return this.isFlash() ? (objPlayerVersion = swfobject.getFlashPlayerVersion(), objPlayerVersion.major + "." + objPlayerVersion.minor + "." + objPlayerVersion.release) : ""
        },
        isSilverlight: function() {
            return !!navigator.plugins["Silverlight Plug-In"]
        },
        getSilverlightVersion: function() {
            return this.isSilverlight() ? navigator.plugins["Silverlight Plug-In"].description : ""
        },
        isMimeTypes: function() {
            return !!navigator.mimeTypes.length
        },
        getMimeTypes: function() {
            for (var t = "", e = 0; e < navigator.mimeTypes.length; e++) t = e == navigator.mimeTypes.length - 1 ? t + navigator.mimeTypes[e].description : t + (navigator.mimeTypes[e].description + ", ");
            return t
        },
        isFont: function(t) {
            return i.detect(t)
        },
        getFonts: function() {
            for (var t = "Abadi MT Condensed Light;Adobe Fangsong Std;Adobe Hebrew;Adobe Ming Std;Agency FB;Aharoni;Andalus;Angsana New;AngsanaUPC;Aparajita;Arab;Arabic Transparent;Arabic Typesetting;Arial Baltic;Arial Black;Arial CE;Arial CYR;Arial Greek;Arial TUR;Arial;Batang;BatangChe;Bauhaus 93;Bell MT;Bitstream Vera Serif;Bodoni MT;Bookman Old Style;Braggadocio;Broadway;Browallia New;BrowalliaUPC;Calibri Light;Calibri;Californian FB;Cambria Math;Cambria;Candara;Castellar;Casual;Centaur;Century Gothic;Chalkduster;Colonna MT;Comic Sans MS;Consolas;Constantia;Copperplate Gothic Light;Corbel;Cordia New;CordiaUPC;Courier New Baltic;Courier New CE;Courier New CYR;Courier New Greek;Courier New TUR;Courier New;DFKai-SB;DaunPenh;David;DejaVu LGC Sans Mono;Desdemona;DilleniaUPC;DokChampa;Dotum;DotumChe;Ebrima;Engravers MT;Eras Bold ITC;Estrangelo Edessa;EucrosiaUPC;Euphemia;Eurostile;FangSong;Forte;FrankRuehl;Franklin Gothic Heavy;Franklin Gothic Medium;FreesiaUPC;French Script MT;Gabriola;Gautami;Georgia;Gigi;Gisha;Goudy Old Style;Gulim;GulimChe;GungSeo;Gungsuh;GungsuhChe;Haettenschweiler;Harrington;Hei S;HeiT;Heisei Kaku Gothic;Hiragino Sans GB;Impact;Informal Roman;IrisUPC;Iskoola Pota;JasmineUPC;KacstOne;KaiTi;Kalinga;Kartika;Khmer UI;Kino MT;KodchiangUPC;Kokila;Kozuka Gothic Pr6N;Lao UI;Latha;Leelawadee;Levenim MT;LilyUPC;Lohit Gujarati;Loma;Lucida Bright;Lucida Console;Lucida Fax;Lucida Sans Unicode;MS Gothic;MS Mincho;MS PGothic;MS PMincho;MS Reference Sans Serif;MS UI Gothic;MV Boli;Magneto;Malgun Gothic;Mangal;Marlett;Matura MT Script Capitals;Meiryo UI;Meiryo;Menlo;Microsoft Himalaya;Microsoft JhengHei;Microsoft New Tai Lue;Microsoft PhagsPa;Microsoft Sans Serif;Microsoft Tai Le;Microsoft Uighur;Microsoft YaHei;Microsoft Yi Baiti;MingLiU;MingLiU-ExtB;MingLiU_HKSCS;MingLiU_HKSCS-ExtB;Miriam Fixed;Miriam;Mongolian Baiti;MoolBoran;NSimSun;Narkisim;News Gothic MT;Niagara Solid;Nyala;PMingLiU;PMingLiU-ExtB;Palace Script MT;Palatino Linotype;Papyrus;Perpetua;Plantagenet Cherokee;Playbill;Prelude Bold;Prelude Condensed Bold;Prelude Condensed Medium;Prelude Medium;PreludeCompressedWGL Black;PreludeCompressedWGL Bold;PreludeCompressedWGL Light;PreludeCompressedWGL Medium;PreludeCondensedWGL Black;PreludeCondensedWGL Bold;PreludeCondensedWGL Light;PreludeCondensedWGL Medium;PreludeWGL Black;PreludeWGL Bold;PreludeWGL Light;PreludeWGL Medium;Raavi;Rachana;Rockwell;Rod;Sakkal Majalla;Sawasdee;Script MT Bold;Segoe Print;Segoe Script;Segoe UI Light;Segoe UI Semibold;Segoe UI Symbol;Segoe UI;Shonar Bangla;Showcard Gothic;Shruti;SimHei;SimSun;SimSun-ExtB;Simplified Arabic Fixed;Simplified Arabic;Snap ITC;Sylfaen;Symbol;Tahoma;Times New Roman Baltic;Times New Roman CE;Times New Roman CYR;Times New Roman Greek;Times New Roman TUR;Times New Roman;TlwgMono;Traditional Arabic;Trebuchet MS;Tunga;Tw Cen MT Condensed Extra Bold;Ubuntu;Umpush;Univers;Utopia;Utsaah;Vani;Verdana;Vijaya;Vladimir Script;Vrinda;Webdings;Wide Latin;Wingdings".split(";"), e = "", n = 0; n < t.length; n++) i.detect(t[n]) && (e = n == t.length - 1 ? e + t[n] : e + (t[n] + ", "));
            return e
        },
        isLocalStorage: function() {
            try {
                return !!t.localStorage
            } catch (e) {
                return !0
            }
        },
        isSessionStorage: function() {
            try {
                return !!t.sessionStorage
            } catch (e) {
                return !0
            }
        },
        isCookie: function() {
            return navigator.cookieEnabled
        },
        getTimeZone: function() {
            return String(String(new Date).split("(")[1]).split(")")[0]
        },
        getLanguage: function() {
            return navigator.language
        },
        getSystemLanguage: function() {
            return navigator.systemLanguage
        },
        isCanvas: function() {
            var t = document.createElement("canvas");
            try {
                return !(!t.getContext || !t.getContext("2d"))
            } catch (e) {
                return !1
            }
        },
        getCanvasPrint: function() {
            var t, e = document.createElement("canvas");
            try {
                t = e.getContext("2d")
            } catch (i) {
                return ""
            }
            return t.textBaseline = "top", t.font = "14px 'Arial'", t.textBaseline = "alphabetic", t.fillStyle = "#f60", t.fillRect(125, 1, 62, 20), t.fillStyle = "#069", t.fillText("ClientJS,org <canvas> 1.0", 2, 15), t.fillStyle = "rgba(102, 204, 0, 0.7)", t.fillText("ClientJS,org <canvas> 1.0", 4, 17), e.toDataURL()
        }
    }, "object" == typeof module && "undefined" != typeof exports && (module.exports = n), t.ClientJS = n
}(window);
var deployJava = function() {
        function t(t) {
            a.debug && (console.log ? console.log(t) : alert(t))
        }

        function e(t) {
            return null == t || 0 == t.length ? "http://java.com/dt-redirect" : ("&" == t.charAt(0) && (t = t.substring(1, t.length)), "http://java.com/dt-redirect?" + t)
        }
        var i = ["id", "class", "title", "style"];
        "classid codebase codetype data type archive declare standby height width usemap name tabindex align border hspace vspace".split(" ").concat(i, ["lang", "dir"], "onclick ondblclick onmousedown onmouseup onmouseover onmousemove onmouseout onkeypress onkeydown onkeyup".split(" "));
        var n, o = "codebase code name archive object width height alt align hspace vspace".split(" ").concat(i);
        try {
            n = -1 != document.location.protocol.indexOf("http") ? "//java.com/js/webstart.png" : "http://java.com/js/webstart.png"
        } catch (r) {
            n = "http://java.com/js/webstart.png"
        }
        var a = {
            debug: null,
            version: "20120801",
            firefoxJavaVersion: null,
            myInterval: null,
            preInstallJREList: null,
            returnPage: null,
            brand: null,
            locale: null,
            installType: null,
            EAInstallEnabled: !1,
            EarlyAccessURL: null,
            oldMimeType: "application/npruntime-scriptable-plugin;DeploymentToolkit",
            mimeType: "application/java-deployment-toolkit",
            launchButtonPNG: n,
            browserName: null,
            browserName2: null,
            getJREs: function() {
                var e = [];
                if (this.isPluginInstalled())
                    for (var i = this.getPlugin().jvms, n = 0; n < i.getLength(); n++) e[n] = i.get(n).version;
                else i = this.getBrowser(), "MSIE" == i ? this.testUsingActiveX("1.7.0") ? e[0] = "1.7.0" : this.testUsingActiveX("1.6.0") ? e[0] = "1.6.0" : this.testUsingActiveX("1.5.0") ? e[0] = "1.5.0" : this.testUsingActiveX("1.4.2") ? e[0] = "1.4.2" : this.testForMSVM() && (e[0] = "1.1") : "Netscape Family" == i && (this.getJPIVersionUsingMimeType(), null != this.firefoxJavaVersion ? e[0] = this.firefoxJavaVersion : this.testUsingMimeTypes("1.7") ? e[0] = "1.7.0" : this.testUsingMimeTypes("1.6") ? e[0] = "1.6.0" : this.testUsingMimeTypes("1.5") ? e[0] = "1.5.0" : this.testUsingMimeTypes("1.4.2") ? e[0] = "1.4.2" : "Safari" == this.browserName2 && (this.testUsingPluginsArray("1.7.0") ? e[0] = "1.7.0" : this.testUsingPluginsArray("1.6") ? e[0] = "1.6.0" : this.testUsingPluginsArray("1.5") ? e[0] = "1.5.0" : this.testUsingPluginsArray("1.4.2") && (e[0] = "1.4.2")));
                if (this.debug)
                    for (n = 0; n < e.length; ++n) t("[getJREs()] We claim to have detected Java SE " + e[n]);
                return e
            },
            installJRE: function(t, e) {
                if (this.isPluginInstalled() && this.isAutoInstallEnabled(t)) {
                    var i = !1;
                    return (i = this.isCallbackSupported() ? this.getPlugin().installJRE(t, e) : this.getPlugin().installJRE(t)) && (this.refresh(), null != this.returnPage && (document.location = this.returnPage)), i
                }
                return this.installLatestJRE()
            },
            isAutoInstallEnabled: function(t) {
                if (!this.isPluginInstalled()) return !1;
                if ("undefined" == typeof t && (t = null), "MSIE" != deployJava.browserName || deployJava.compareVersionToPattern(deployJava.getPlugin().version, ["10", "0", "0"], !1, !0)) t = !0;
                else if (null == t) t = !1;
                else {
                    var e = "1.6.0_33+";
                    if (null == e || 0 == e.length) t = !0;
                    else {
                        var i = e.charAt(e.length - 1);
                        if ("+" != i && "*" != i && -1 != e.indexOf("_") && "_" != i && (e += "*", i = "*"), e = e.substring(0, e.length - 1), 0 < e.length) {
                            var n = e.charAt(e.length - 1);
                            "." != n && "_" != n || (e = e.substring(0, e.length - 1))
                        }
                        t = "*" == i ? 0 == t.indexOf(e) : "+" == i && e <= t
                    }
                    t = !t
                }
                return t
            },
            isCallbackSupported: function() {
                return this.isPluginInstalled() && this.compareVersionToPattern(this.getPlugin().version, ["10", "2", "0"], !1, !0)
            },
            installLatestJRE: function(t) {
                if (this.isPluginInstalled() && this.isAutoInstallEnabled()) {
                    var i = !1;
                    return (i = this.isCallbackSupported() ? this.getPlugin().installLatestJRE(t) : this.getPlugin().installLatestJRE()) && (this.refresh(), null != this.returnPage && (document.location = this.returnPage)), i
                }
                if (t = this.getBrowser(), i = navigator.platform.toLowerCase(), "true" == this.EAInstallEnabled && -1 != i.indexOf("win") && null != this.EarlyAccessURL) this.preInstallJREList = this.getJREs(), null != this.returnPage && (this.myInterval = setInterval("deployJava.poll()", 3e3)), location.href = this.EarlyAccessURL;
                else {
                    if ("MSIE" == t) return this.IEInstall();
                    if ("Netscape Family" == t && -1 != i.indexOf("win32")) return this.FFInstall();
                    location.href = e((null != this.returnPage ? "&returnPage=" + this.returnPage : "") + (null != this.locale ? "&locale=" + this.locale : "") + (null != this.brand ? "&brand=" + this.brand : ""))
                }
                return !1
            },
            runApplet: function(e, i, n) {
                "undefined" != n && null != n || (n = "1.1");
                var o = n.match("^(\\d+)(?:\\.(\\d+)(?:\\.(\\d+)(?:_(\\d+))?)?)?$");
                null == this.returnPage && (this.returnPage = document.location), null != o ? "?" != this.getBrowser() ? this.versionCheck(n + "+") ? this.writeAppletTag(e, i) : this.installJRE(n + "+") && (this.refresh(), location.href = document.location, this.writeAppletTag(e, i)) : this.writeAppletTag(e, i) : t("[runApplet()] Invalid minimumVersion argument to runApplet():" + n)
            },
            writeAppletTag: function(t, e) {
                var i = "<applet ",
                    n = "",
                    s = !0;
                null != e && "object" == typeof e || (e = {});
                for (var r in t) {
                    var a;
                    t: {
                        a = r.toLowerCase();
                        for (var l = o.length, c = 0; c < l; c++)
                            if (o[c] === a) {
                                a = !0;
                                break t
                            } a = !1
                    }
                    a ? (i += " " + r + '="' + t[r] + '"', "code" == r && (s = !1)) : e[r] = t[r]
                }
                r = !1;
                for (var d in e) "codebase_lookup" == d && (r = !0), "object" != d && "java_object" != d && "java_code" != d || (s = !1), n += '<param name="' + d + '" value="' + e[d] + '"/>';
                r || (n += '<param name="codebase_lookup" value="false"/>'), s && (i += ' code="dummy"'), document.write(i + ">\n" + n + "\n</applet>")
            },
            versionCheck: function(e) {
                var i = 0,
                    n = e.match("^(\\d+)(?:\\.(\\d+)(?:\\.(\\d+)(?:_(\\d+))?)?)?(\\*|\\+)?$");
                if (null != n) {
                    for (var o = e = !1, s = [], r = 1; r < n.length; ++r) "string" == typeof n[r] && "" != n[r] && (s[i] = n[r], i++);
                    for ("+" == s[s.length - 1] ? (o = !0, e = !1, s.length--) : "*" == s[s.length - 1] ? (o = !1, e = !0, s.length--) : 4 > s.length && (o = !1, e = !0), i = this.getJREs(), r = 0; r < i.length; ++r)
                        if (this.compareVersionToPattern(i[r], s, e, o)) return !0
                } else i = "Invalid versionPattern passed to versionCheck: " + e, t("[versionCheck()] " + i), alert(i);
                return !1
            },
            isWebStartInstalled: function(e) {
                if ("?" == this.getBrowser()) return !0;
                "undefined" != e && null != e || (e = "1.4.2");
                var i = !1;
                return null != e.match("^(\\d+)(?:\\.(\\d+)(?:\\.(\\d+)(?:_(\\d+))?)?)?$") ? i = this.versionCheck(e + "+") : (t("[isWebStartInstaller()] Invalid minimumVersion argument to isWebStartInstalled(): " + e), i = this.versionCheck("1.4.2+")), i
            },
            getJPIVersionUsingMimeType: function() {
                for (var t = 0; t < navigator.mimeTypes.length; ++t) {
                    var e = navigator.mimeTypes[t].type.match(/^application\/x-java-applet;jpi-version=(.*)$/);
                    if (null != e && (this.firefoxJavaVersion = e[1], "Opera" != this.browserName2)) break
                }
            },
            launchWebStartApplication: function(t) {
                if (navigator.userAgent.toLowerCase(), this.getJPIVersionUsingMimeType(), 0 == this.isWebStartInstalled("1.7.0") && (0 == this.installJRE("1.7.0+") || 0 == this.isWebStartInstalled("1.7.0"))) return !1;
                var e = null;
                document.documentURI && (e = document.documentURI), null == e && (e = document.URL);
                var i, n = this.getBrowser();
                "MSIE" == n ? i = '<object classid="clsid:8AD9C840-044E-11D1-B3E9-00805F499D93" width="0" height="0"><PARAM name="launchjnlp" value="' + t + '"><PARAM name="docbase" value="' + e + '"></object>' : "Netscape Family" == n && (i = '<embed type="application/x-java-applet;jpi-version=' + this.firefoxJavaVersion + '" width="0" height="0" launchjnlp="' + t + '"docbase="' + e + '" />'), "undefined" == document.body || null == document.body ? (document.write(i), document.location = e) : (t = document.createElement("div"), t.id = "div1", t.style.position = "relative", t.style.left = "-10000px", t.style.margin = "0px auto", t.className = "dynamicDiv", t.innerHTML = i, document.body.appendChild(t))
            },
            createWebStartLaunchButtonEx: function(t, e) {
                null == this.returnPage && (this.returnPage = t), document.write('<a href="' + ("javascript:deployJava.launchWebStartApplication('" + t + "');") + '" onMouseOver="window.status=\'\'; return true;"><img src="' + this.launchButtonPNG + '" border="0" /></a>')
            },
            createWebStartLaunchButton: function(t, e) {
                null == this.returnPage && (this.returnPage = t), document.write('<a href="' + ("javascript:if (!deployJava.isWebStartInstalled(&quot;" + e + "&quot;)) {if (deployJava.installLatestJRE()) {if (deployJava.launch(&quot;" + t + "&quot;)) {}}} else {if (deployJava.launch(&quot;" + t + "&quot;)) {}}") + '" onMouseOver="window.status=\'\'; return true;"><img src="' + this.launchButtonPNG + '" border="0" /></a>')
            },
            launch: function(t) {
                return document.location = t, !0
            },
            isPluginInstalled: function() {
                var t = this.getPlugin();
                return !(!t || !t.jvms)
            },
            isAutoUpdateEnabled: function() {
                return !!this.isPluginInstalled() && this.getPlugin().isAutoUpdateEnabled()
            },
            setAutoUpdateEnabled: function() {
                return !!this.isPluginInstalled() && this.getPlugin().setAutoUpdateEnabled()
            },
            setInstallerType: function(t) {
                return this.installType = t, !!this.isPluginInstalled() && this.getPlugin().setInstallerType(t)
            },
            setAdditionalPackages: function(t) {
                return !!this.isPluginInstalled() && this.getPlugin().setAdditionalPackages(t)
            },
            setEarlyAccess: function(t) {
                this.EAInstallEnabled = t
            },
            isPlugin2: function() {
                if (this.isPluginInstalled() && this.versionCheck("1.6.0_10+")) try {
                    return this.getPlugin().isPlugin2()
                } catch (t) {}
                return !1
            },
            allowPlugin: function() {
                return this.getBrowser(), "Safari" != this.browserName2 && "Opera" != this.browserName2
            },
            getPlugin: function() {
                this.refresh();
                var t = null;
                return this.allowPlugin() && (t = document.getElementById("deployJavaPlugin")), t
            },
            compareVersionToPattern: function(t, e, i, n) {
                if (void 0 == t || void 0 == e) return !1;
                var o = t.match("^(\\d+)(?:\\.(\\d+)(?:\\.(\\d+)(?:_(\\d+))?)?)?$");
                if (null != o) {
                    var s = 0;
                    t = [];
                    for (var r = 1; r < o.length; ++r) "string" == typeof o[r] && "" != o[r] && (t[s] = o[r], s++);
                    if (o = Math.min(t.length, e.length), n) {
                        for (r = 0; r < o; ++r) {
                            if (t[r] < e[r]) return !1;
                            if (t[r] > e[r]) break
                        }
                        return !0
                    }
                    for (r = 0; r < o; ++r)
                        if (t[r] != e[r]) return !1;
                    return !!i || t.length == e.length
                }
                return !1
            },
            getBrowser: function() {
                if (null == this.browserName) {
                    var e = navigator.userAgent.toLowerCase();
                    t("[getBrowser()] navigator.userAgent.toLowerCase() -> " + e), -1 != e.indexOf("msie") && -1 == e.indexOf("opera") ? this.browserName2 = this.browserName = "MSIE" : -1 != e.indexOf("iphone") ? (this.browserName = "Netscape Family", this.browserName2 = "iPhone") : -1 != e.indexOf("firefox") && -1 == e.indexOf("opera") ? (this.browserName = "Netscape Family", this.browserName2 = "Firefox") : -1 != e.indexOf("chrome") ? (this.browserName = "Netscape Family", this.browserName2 = "Chrome") : -1 != e.indexOf("safari") ? (this.browserName = "Netscape Family", this.browserName2 = "Safari") : -1 != e.indexOf("mozilla") && -1 == e.indexOf("opera") ? (this.browserName = "Netscape Family", this.browserName2 = "Other") : -1 != e.indexOf("opera") ? (this.browserName = "Netscape Family", this.browserName2 = "Opera") : (this.browserName = "?", this.browserName2 = "unknown"), t("[getBrowser()] Detected browser name:" + this.browserName + ", " + this.browserName2)
                }
                return this.browserName
            },
            testUsingActiveX: function(e) {
                if (e = "JavaWebStart.isInstalled." + e + ".0", "undefined" == typeof ActiveXObject || !ActiveXObject) return t("[testUsingActiveX()] Browser claims to be IE, but no ActiveXObject object?"), !1;
                try {
                    return null != new ActiveXObject(e)
                } catch (i) {
                    return !1
                }
            },
            testForMSVM: function() {
                if ("undefined" != typeof oClientCaps) {
                    var t = oClientCaps.getComponentVersion("{08B0E5C0-4FCB-11CF-AAA5-00401C608500}", "ComponentID");
                    return "" != t && "5,0,5000,0" != t
                }
                return !1
            },
            testUsingMimeTypes: function(e) {
                if (!navigator.mimeTypes) return t("[testUsingMimeTypes()] Browser claims to be Netscape family, but no mimeTypes[] array?"), !1;
                for (var i = 0; i < navigator.mimeTypes.length; ++i) {
                    s = navigator.mimeTypes[i].type;
                    var n = s.match(/^application\/x-java-applet\x3Bversion=(1\.8|1\.7|1\.6|1\.5|1\.4\.2)$/);
                    if (null != n && this.compareVersions(n[1], e)) return !0
                }
                return !1
            },
            testUsingPluginsArray: function(t) {
                if (!navigator.plugins || !navigator.plugins.length) return !1;
                for (var e = navigator.platform.toLowerCase(), i = 0; i < navigator.plugins.length; ++i)
                    if (s = navigator.plugins[i].description, -1 != s.search(/^Java Switchable Plug-in (Cocoa)/)) {
                        if (this.compareVersions("1.5.0", t)) return !0
                    } else if (-1 != s.search(/^Java/) && -1 != e.indexOf("win") && (this.compareVersions("1.5.0", t) || this.compareVersions("1.6.0", t))) return !0;
                return !!this.compareVersions("1.5.0", t)
            },
            IEInstall: function() {
                return location.href = e((null != this.returnPage ? "&returnPage=" + this.returnPage : "") + (null != this.locale ? "&locale=" + this.locale : "") + (null != this.brand ? "&brand=" + this.brand : "")), !1
            },
            done: function(t, e) {},
            FFInstall: function() {
                return location.href = e((null != this.returnPage ? "&returnPage=" + this.returnPage : "") + (null != this.locale ? "&locale=" + this.locale : "") + (null != this.brand ? "&brand=" + this.brand : "") + (null != this.installType ? "&type=" + this.installType : "")), !1
            },
            compareVersions: function(t, e) {
                for (var i = t.split("."), n = e.split("."), o = 0; o < i.length; ++o) i[o] = Number(i[o]);
                for (o = 0; o < n.length; ++o) n[o] = Number(n[o]);
                return 2 == i.length && (i[2] = 0), i[0] > n[0] || !(i[0] < n[0]) && (i[1] > n[1] || !(i[1] < n[1]) && (i[2] > n[2] || !(i[2] < n[2])))
            },
            enableAlerts: function() {
                this.browserName = null, this.debug = !0
            },
            poll: function() {
                this.refresh();
                var t = this.getJREs();
                0 == this.preInstallJREList.length && 0 != t.length && (clearInterval(this.myInterval), null != this.returnPage && (location.href = this.returnPage)), 0 != this.preInstallJREList.length && 0 != t.length && this.preInstallJREList[0] != t[0] && (clearInterval(this.myInterval), null != this.returnPage && (location.href = this.returnPage))
            },
            writePluginTag: function() {
                var t = this.getBrowser();
                "MSIE" == t ? document.write('<object classid="clsid:CAFEEFAC-DEC7-0000-0001-ABCDEFFEDCBA" id="deployJavaPlugin" width="0" height="0"></object>') : "Netscape Family" == t && this.allowPlugin() && this.writeEmbedTag()
            },
            refresh: function() {
                navigator.plugins.refresh(!1), "Netscape Family" == this.getBrowser() && this.allowPlugin() && null == document.getElementById("deployJavaPlugin") && this.writeEmbedTag()
            },
            writeEmbedTag: function() {
                var t = !1;
                if (null != navigator.mimeTypes) {
                    for (var e = 0; e < navigator.mimeTypes.length; e++) navigator.mimeTypes[e].type == this.mimeType && navigator.mimeTypes[e].enabledPlugin && (document.write('<embed id="deployJavaPlugin" type="' + this.mimeType + '" hidden="true" />'), t = !0);
                    if (!t)
                        for (e = 0; e < navigator.mimeTypes.length; e++) navigator.mimeTypes[e].type == this.oldMimeType && navigator.mimeTypes[e].enabledPlugin && document.write('<embed id="deployJavaPlugin" type="' + this.oldMimeType + '" hidden="true" />')
                }
            }
        };
        if (a.writePluginTag(), null == a.locale) {
            if (i = null, null == i) try {
                i = navigator.userLanguage
            } catch (r) {}
            if (null == i) try {
                i = navigator.systemLanguage
            } catch (r) {}
            if (null == i) try {
                i = navigator.language
            } catch (r) {}
            null != i && (i.replace("-", "_"), a.locale = i)
        }
        return a
    }(),
    Detector = function() {
        var t = ["monospace", "sans-serif", "serif"],
            e = document.getElementsByTagName("body")[0],
            i = document.createElement("span");
        i.style.fontSize = "72px", i.innerHTML = "mmmmmmmmmmlli";
        var n, o = {},
            s = {};
        for (n in t) i.style.fontFamily = t[n], e.appendChild(i), o[t[n]] = i.offsetWidth, s[t[n]] = i.offsetHeight, e.removeChild(i);
        this.detect = function(n) {
            var r, a = !1;
            for (r in t) {
                i.style.fontFamily = n + "," + t[r], e.appendChild(i);
                var l = i.offsetWidth != o[t[r]] || i.offsetHeight != s[t[r]];
                e.removeChild(i), a = a || l
            }
            return a
        }
    },
    swfobject = function() {
        function t() {
            if (!M) {
                try {
                    var t = k.getElementsByTagName("body")[0].appendChild(k.createElement("span"));
                    t.parentNode.removeChild(t)
                } catch (e) {
                    return
                }
                M = !0;
                for (var t = I.length, i = 0; i < t; i++) I[i]()
            }
        }

        function e(t) {
            M ? t() : I[I.length] = t
        }

        function i(t) {
            if ("undefined" != typeof E.addEventListener) E.addEventListener("load", t, !1);
            else if ("undefined" != typeof k.addEventListener) k.addEventListener("load", t, !1);
            else if ("undefined" != typeof E.attachEvent) p(E, "onload", t);
            else if ("function" == typeof E.onload) {
                var e = E.onload;
                E.onload = function() {
                    e(), t()
                }
            } else E.onload = t
        }

        function n() {
            var t = k.getElementsByTagName("body")[0],
                e = k.createElement("object");
            e.setAttribute("type", "application/x-shockwave-flash");
            var i = t.appendChild(e);
            if (i) {
                var n = 0;
                ! function() {
                    if ("undefined" != typeof i.GetVariable) {
                        var s = i.GetVariable("$version");
                        s && (s = s.split(" ")[1].split(","), L.pv = [parseInt(s[0], 10), parseInt(s[1], 10), parseInt(s[2], 10)])
                    } else if (10 > n) return n++, void setTimeout(arguments.callee, 10);
                    t.removeChild(e), i = null, o()
                }()
            } else o()
        }

        function o() {
            var t = $.length;
            if (0 < t)
                for (var e = 0; e < t; e++) {
                    var i = $[e].id,
                        n = $[e].callbackFn,
                        o = {
                            success: !1,
                            id: i
                        };
                    if (0 < L.pv[0]) {
                        var c = u(i);
                        if (c)
                            if (!f($[e].swfVersion) || L.wk && 312 > L.wk)
                                if ($[e].expressInstall && r()) {
                                    o = {}, o.data = $[e].expressInstall, o.width = c.getAttribute("width") || "0", o.height = c.getAttribute("height") || "0", c.getAttribute("class") && (o.styleclass = c.getAttribute("class")),
                                        c.getAttribute("align") && (o.align = c.getAttribute("align"));
                                    for (var d = {}, c = c.getElementsByTagName("param"), h = c.length, p = 0; p < h; p++) "movie" != c[p].getAttribute("name").toLowerCase() && (d[c[p].getAttribute("name")] = c[p].getAttribute("value"));
                                    a(o, d, i, n)
                                } else l(c), n && n(o);
                        else m(i, !0), n && (o.success = !0, o.ref = s(i), n(o))
                    } else m(i, !0), n && ((i = s(i)) && "undefined" != typeof i.SetVariable && (o.success = !0, o.ref = i), n(o))
                }
        }

        function s(t) {
            var e = null;
            return (t = u(t)) && "OBJECT" == t.nodeName && ("undefined" != typeof t.SetVariable ? e = t : (t = t.getElementsByTagName("object")[0]) && (e = t)), e
        }

        function r() {
            return !O && f("6.0.65") && (L.win || L.mac) && !(L.wk && 312 > L.wk)
        }

        function a(t, e, i, n) {
            O = !0, w = n || null, C = {
                success: !1,
                id: i
            };
            var o = u(i);
            o && ("OBJECT" == o.nodeName ? (b = c(o), y = null) : (b = o, y = i), t.id = "SWFObjectExprInst", ("undefined" == typeof t.width || !/%$/.test(t.width) && 310 > parseInt(t.width, 10)) && (t.width = "310"), ("undefined" == typeof t.height || !/%$/.test(t.height) && 137 > parseInt(t.height, 10)) && (t.height = "137"), k.title = k.title.slice(0, 47) + " - Flash Player Installation", n = L.ie && L.win ? "ActiveX" : "PlugIn", n = "MMredirectURL=" + E.location.toString().replace(/&/g, "%26") + "&MMplayerType=" + n + "&MMdoctitle=" + k.title, e.flashvars = "undefined" != typeof e.flashvars ? e.flashvars + ("&" + n) : n, L.ie && L.win && 4 != o.readyState && (n = k.createElement("div"), i += "SWFObjectNew", n.setAttribute("id", i), o.parentNode.insertBefore(n, o), o.style.display = "none", function() {
                4 == o.readyState ? o.parentNode.removeChild(o) : setTimeout(arguments.callee, 10)
            }()), d(t, e, i))
        }

        function l(t) {
            if (L.ie && L.win && 4 != t.readyState) {
                var e = k.createElement("div");
                t.parentNode.insertBefore(e, t), e.parentNode.replaceChild(c(t), e), t.style.display = "none",
                    function() {
                        4 == t.readyState ? t.parentNode.removeChild(t) : setTimeout(arguments.callee, 10)
                    }()
            } else t.parentNode.replaceChild(c(t), t)
        }

        function c(t) {
            var e = k.createElement("div");
            if (L.win && L.ie) e.innerHTML = t.innerHTML;
            else if ((t = t.getElementsByTagName("object")[0]) && (t = t.childNodes))
                for (var i = t.length, n = 0; n < i; n++) 1 == t[n].nodeType && "PARAM" == t[n].nodeName || 8 == t[n].nodeType || e.appendChild(t[n].cloneNode(!0));
            return e
        }

        function d(t, e, i) {
            var n, o = u(i);
            if (L.wk && 312 > L.wk) return n;
            if (o)
                if ("undefined" == typeof t.id && (t.id = i), L.ie && L.win) {
                    var s, r = "";
                    for (s in t) t[s] != Object.prototype[s] && ("data" == s.toLowerCase() ? e.movie = t[s] : "styleclass" == s.toLowerCase() ? r += ' class="' + t[s] + '"' : "classid" != s.toLowerCase() && (r += " " + s + '="' + t[s] + '"'));
                    s = "";
                    for (var a in e) e[a] != Object.prototype[a] && (s += '<param name="' + a + '" value="' + e[a] + '" />');
                    o.outerHTML = '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"' + r + ">" + s + "</object>", P[P.length] = t.id, n = u(t.id)
                } else {
                    a = k.createElement("object"), a.setAttribute("type", "application/x-shockwave-flash");
                    for (var l in t) t[l] != Object.prototype[l] && ("styleclass" == l.toLowerCase() ? a.setAttribute("class", t[l]) : "classid" != l.toLowerCase() && a.setAttribute(l, t[l]));
                    for (r in e) e[r] != Object.prototype[r] && "movie" != r.toLowerCase() && (t = a, s = r, l = e[r], i = k.createElement("param"), i.setAttribute("name", s), i.setAttribute("value", l), t.appendChild(i));
                    o.parentNode.replaceChild(a, o), n = a
                } return n
        }

        function h(t) {
            var e = u(t);
            e && "OBJECT" == e.nodeName && (L.ie && L.win ? (e.style.display = "none", function() {
                if (4 == e.readyState) {
                    var i = u(t);
                    if (i) {
                        for (var n in i) "function" == typeof i[n] && (i[n] = null);
                        i.parentNode.removeChild(i)
                    }
                } else setTimeout(arguments.callee, 10)
            }()) : e.parentNode.removeChild(e))
        }

        function u(t) {
            var e = null;
            try {
                e = k.getElementById(t)
            } catch (i) {}
            return e
        }

        function p(t, e, i) {
            t.attachEvent(e, i), N[N.length] = [t, e, i]
        }

        function f(t) {
            var e = L.pv;
            return t = t.split("."), t[0] = parseInt(t[0], 10), t[1] = parseInt(t[1], 10) || 0, t[2] = parseInt(t[2], 10) || 0, e[0] > t[0] || e[0] == t[0] && e[1] > t[1] || e[0] == t[0] && e[1] == t[1] && e[2] >= t[2]
        }

        function g(t, e, i, n) {
            if (!L.ie || !L.mac) {
                var o = k.getElementsByTagName("head")[0];
                o && (i = i && "string" == typeof i ? i : "screen", n && (S = T = null), T && S == i || (n = k.createElement("style"), n.setAttribute("type", "text/css"), n.setAttribute("media", i), T = o.appendChild(n), L.ie && L.win && "undefined" != typeof k.styleSheets && 0 < k.styleSheets.length && (T = k.styleSheets[k.styleSheets.length - 1]), S = i), L.ie && L.win ? T && "object" == typeof T.addRule && T.addRule(t, e) : T && "undefined" != typeof k.createTextNode && T.appendChild(k.createTextNode(t + " {" + e + "}")))
            }
        }

        function m(t, e) {
            if (D) {
                var i = e ? "visible" : "hidden";
                M && u(t) ? u(t).style.visibility = i : g("#" + t, "visibility:" + i)
            }
        }

        function v(t) {
            return null != /[\\\"<>\.;]/.exec(t) && "undefined" != typeof encodeURIComponent ? encodeURIComponent(t) : t
        }
        var b, y, w, C, T, S, E = window,
            k = document,
            x = navigator,
            A = !1,
            I = [function() {
                A ? n() : o()
            }],
            $ = [],
            P = [],
            N = [],
            M = !1,
            O = !1,
            D = !0,
            L = function() {
                var t = "undefined" != typeof k.getElementById && "undefined" != typeof k.getElementsByTagName && "undefined" != typeof k.createElement,
                    e = x.userAgent.toLowerCase(),
                    i = x.platform.toLowerCase(),
                    n = i ? /win/.test(i) : /win/.test(e),
                    i = i ? /mac/.test(i) : /mac/.test(e),
                    e = !!/webkit/.test(e) && parseFloat(e.replace(/^.*webkit\/(\d+(\.\d+)?).*$/, "$1")),
                    o = !1,
                    s = [0, 0, 0],
                    r = null;
                if ("undefined" != typeof x.plugins && "object" == typeof x.plugins["Shockwave Flash"]) !(r = x.plugins["Shockwave Flash"].description) || "undefined" != typeof x.mimeTypes && x.mimeTypes["application/x-shockwave-flash"] && !x.mimeTypes["application/x-shockwave-flash"].enabledPlugin || (A = !0, o = !1, r = r.replace(/^.*\s+(\S+\s+\S+$)/, "$1"), s[0] = parseInt(r.replace(/^(.*)\..*$/, "$1"), 10), s[1] = parseInt(r.replace(/^.*\.(.*)\s.*$/, "$1"), 10), s[2] = /[a-zA-Z]/.test(r) ? parseInt(r.replace(/^.*[a-zA-Z]+(.*)$/, "$1"), 10) : 0);
                else if ("undefined" != typeof E.ActiveXObject) try {
                    var a = new ActiveXObject("ShockwaveFlash.ShockwaveFlash");
                    a && (r = a.GetVariable("$version")) && (o = !0, r = r.split(" ")[1].split(","), s = [parseInt(r[0], 10), parseInt(r[1], 10), parseInt(r[2], 10)])
                } catch (l) {}
                return {
                    w3: t,
                    pv: s,
                    wk: e,
                    ie: o,
                    win: n,
                    mac: i
                }
            }();
        return function() {
                L.w3 && (("undefined" != typeof k.readyState && "complete" == k.readyState || "undefined" == typeof k.readyState && (k.getElementsByTagName("body")[0] || k.body)) && t(), M || ("undefined" != typeof k.addEventListener && k.addEventListener("DOMContentLoaded", t, !1), L.ie && L.win && (k.attachEvent("onreadystatechange", function() {
                    "complete" == k.readyState && (k.detachEvent("onreadystatechange", arguments.callee), t())
                }), E == top && function() {
                    if (!M) {
                        try {
                            k.documentElement.doScroll("left")
                        } catch (e) {
                            return void setTimeout(arguments.callee, 0)
                        }
                        t()
                    }
                }()), L.wk && function() {
                    M || (/loaded|complete/.test(k.readyState) ? t() : setTimeout(arguments.callee, 0))
                }(), i(t)))
            }(),
            function() {
                L.ie && L.win && window.attachEvent("onunload", function() {
                    for (var t = N.length, e = 0; e < t; e++) N[e][0].detachEvent(N[e][1], N[e][2]);
                    for (t = P.length, e = 0; e < t; e++) h(P[e]);
                    for (var i in L) L[i] = null;
                    L = null;
                    for (var n in swfobject) swfobject[n] = null;
                    swfobject = null
                })
            }(), {
                registerObject: function(t, e, i, n) {
                    if (L.w3 && t && e) {
                        var o = {};
                        o.id = t, o.swfVersion = e, o.expressInstall = i, o.callbackFn = n, $[$.length] = o, m(t, !1)
                    } else n && n({
                        success: !1,
                        id: t
                    })
                },
                getObjectById: function(t) {
                    if (L.w3) return s(t)
                },
                embedSWF: function(t, i, n, o, s, l, c, h, u, p) {
                    var g = {
                        success: !1,
                        id: i
                    };
                    L.w3 && !(L.wk && 312 > L.wk) && t && i && n && o && s ? (m(i, !1), e(function() {
                        n += "", o += "";
                        var e = {};
                        if (u && "object" == typeof u)
                            for (var v in u) e[v] = u[v];
                        if (e.data = t, e.width = n, e.height = o, v = {}, h && "object" == typeof h)
                            for (var b in h) v[b] = h[b];
                        if (c && "object" == typeof c)
                            for (var y in c) v.flashvars = "undefined" != typeof v.flashvars ? v.flashvars + ("&" + y + "=" + c[y]) : y + "=" + c[y];
                        if (f(s)) b = d(e, v, i), e.id == i && m(i, !0), g.success = !0, g.ref = b;
                        else {
                            if (l && r()) return e.data = l, void a(e, v, i, p);
                            m(i, !0)
                        }
                        p && p(g)
                    })) : p && p(g)
                },
                switchOffAutoHideShow: function() {
                    D = !1
                },
                ua: L,
                getFlashPlayerVersion: function() {
                    return {
                        major: L.pv[0],
                        minor: L.pv[1],
                        release: L.pv[2]
                    }
                },
                hasFlashPlayerVersion: f,
                createSWF: function(t, e, i) {
                    if (L.w3) return d(t, e, i)
                },
                showExpressInstall: function(t, e, i, n) {
                    L.w3 && r() && a(t, e, i, n)
                },
                removeSWF: function(t) {
                    L.w3 && h(t)
                },
                createCSS: function(t, e, i, n) {
                    L.w3 && g(t, e, i, n)
                },
                addDomLoadEvent: e,
                addLoadEvent: i,
                getQueryParamValue: function(t) {
                    var e = k.location.search || k.location.hash;
                    if (e) {
                        if (/\?/.test(e) && (e = e.split("?")[1]), null == t) return v(e);
                        for (var e = e.split("&"), i = 0; i < e.length; i++)
                            if (e[i].substring(0, e[i].indexOf("=")) == t) return v(e[i].substring(e[i].indexOf("=") + 1))
                    }
                    return ""
                },
                expressInstallCallback: function() {
                    if (O) {
                        var t = u("SWFObjectExprInst");
                        t && b && (t.parentNode.replaceChild(b, t), y && (m(y, !0), L.ie && L.win && (b.style.display = "block")), w && w(C)), O = !1
                    }
                }
            }
    }();
! function(t, e) {
    var i = {
            extend: function(t, e) {
                for (var i in e) - 1 !== "browser cpu device engine os".indexOf(i) && 0 === e[i].length % 2 && (t[i] = e[i].concat(t[i]));
                return t
            },
            has: function(t, e) {
                return "string" == typeof t && -1 !== e.toLowerCase().indexOf(t.toLowerCase())
            },
            lowerize: function(t) {
                return t.toLowerCase()
            },
            major: function(t) {
                return "string" == typeof t ? t.split(".")[0] : e
            }
        },
        n = function() {
            for (var t, i, n, o, s, r, a, l = 0, c = arguments; l < c.length && !r;) {
                var d = c[l],
                    h = c[l + 1];
                if ("undefined" == typeof t)
                    for (o in t = {}, h) h.hasOwnProperty(o) && (s = h[o], "object" == typeof s ? t[s[0]] = e : t[s] = e);
                for (i = n = 0; i < d.length && !r;)
                    if (r = d[i++].exec(this.getUA()))
                        for (o = 0; o < h.length; o++) a = r[++n], s = h[o], "object" == typeof s && 0 < s.length ? 2 == s.length ? t[s[0]] = "function" == typeof s[1] ? s[1].call(this, a) : s[1] : 3 == s.length ? t[s[0]] = "function" != typeof s[1] || s[1].exec && s[1].test ? a ? a.replace(s[1], s[2]) : e : a ? s[1].call(this, a, s[2]) : e : 4 == s.length && (t[s[0]] = a ? s[3].call(this, a.replace(s[1], s[2])) : e) : t[s] = a ? a : e;
                l += 2
            }
            return t
        },
        o = function(t, n) {
            for (var o in n)
                if ("object" == typeof n[o] && 0 < n[o].length) {
                    for (var s = 0; s < n[o].length; s++)
                        if (i.has(n[o][s], t)) return "?" === o ? e : o
                } else if (i.has(n[o], t)) return "?" === o ? e : o;
            return t
        },
        s = {
            ME: "4.90",
            "NT 3.11": "NT3.51",
            "NT 4.0": "NT4.0",
            2e3: "NT 5.0",
            XP: ["NT 5.1", "NT 5.2"],
            Vista: "NT 6.0",
            7: "NT 6.1",
            8: "NT 6.2",
            8.1: "NT 6.3",
            10: ["NT 6.4", "NT 10.0"],
            RT: "ARM"
        },
        r = {
            browser: [
                [/(opera\smini)\/([\w\.-]+)/i, /(opera\s[mobiletab]+).+version\/([\w\.-]+)/i, /(opera).+version\/([\w\.]+)/i, /(opera)[\/\s]+([\w\.]+)/i],
                ["name", "version"],
                [/\s(opr)\/([\w\.]+)/i],
                [
                    ["name", "Opera"], "version"
                ],
                [/(kindle)\/([\w\.]+)/i, /(lunascape|maxthon|netfront|jasmine|blazer)[\/\s]?([\w\.]+)*/i, /(avant\s|iemobile|slim|baidu)(?:browser)?[\/\s]?([\w\.]*)/i, /(?:ms|\()(ie)\s([\w\.]+)/i, /(rekonq)\/([\w\.]+)*/i, /(chromium|flock|rockmelt|midori|epiphany|silk|skyfire|ovibrowser|bolt|iron|vivaldi|iridium|phantomjs)\/([\w\.-]+)/i],
                ["name", "version"],
                [/(trident).+rv[:\s]([\w\.]+).+like\sgecko/i],
                [
                    ["name", "IE"], "version"
                ],
                [/(edge)\/((\d+)?[\w\.]+)/i],
                ["name", "version"],
                [/(yabrowser)\/([\w\.]+)/i],
                [
                    ["name", "Yandex"], "version"
                ],
                [/(comodo_dragon)\/([\w\.]+)/i],
                [
                    ["name", /_/g, " "], "version"
                ],
                [/(chrome|omniweb|arora|[tizenoka]{5}\s?browser)\/v?([\w\.]+)/i, /(qqbrowser)[\/\s]?([\w\.]+)/i],
                ["name", "version"],
                [/(uc\s?browser)[\/\s]?([\w\.]+)/i, /ucweb.+(ucbrowser)[\/\s]?([\w\.]+)/i, /JUC.+(ucweb)[\/\s]?([\w\.]+)/i],
                [
                    ["name", "UCBrowser"], "version"
                ],
                [/(dolfin)\/([\w\.]+)/i],
                [
                    ["name", "Dolphin"], "version"
                ],
                [/((?:android.+)crmo|crios)\/([\w\.]+)/i],
                [
                    ["name", "Chrome"], "version"
                ],
                [/XiaoMi\/MiuiBrowser\/([\w\.]+)/i],
                ["version", ["name", "MIUI Browser"]],
                [/android.+version\/([\w\.]+)\s+(?:mobile\s?safari|safari)/i],
                ["version", ["name", "Android Browser"]],
                [/FBAV\/([\w\.]+);/i],
                ["version", ["name", "Facebook"]],
                [/fxios\/([\w\.-]+)/i],
                ["version", ["name", "Firefox"]],
                [/version\/([\w\.]+).+?mobile\/\w+\s(safari)/i],
                ["version", ["name", "Mobile Safari"]],
                [/version\/([\w\.]+).+?(mobile\s?safari|safari)/i],
                ["version", "name"],
                [/webkit.+?(mobile\s?safari|safari)(\/[\w\.]+)/i],
                ["name", ["version", o, {
                    "1.0": "/8",
                    1.2: "/1",
                    1.3: "/3",
                    "2.0": "/412",
                    "2.0.2": "/416",
                    "2.0.3": "/417",
                    "2.0.4": "/419",
                    "?": "/"
                }]],
                [/(konqueror)\/([\w\.]+)/i, /(webkit|khtml)\/([\w\.]+)/i],
                ["name", "version"],
                [/(navigator|netscape)\/([\w\.-]+)/i],
                [
                    ["name", "Netscape"], "version"
                ],
                [/(swiftfox)/i, /(icedragon|iceweasel|camino|chimera|fennec|maemo\sbrowser|minimo|conkeror)[\/\s]?([\w\.\+]+)/i, /(firefox|seamonkey|k-meleon|icecat|iceape|firebird|phoenix)\/([\w\.-]+)/i, /(mozilla)\/([\w\.]+).+rv\:.+gecko\/\d+/i, /(polaris|lynx|dillo|icab|doris|amaya|w3m|netsurf|sleipnir)[\/\s]?([\w\.]+)/i, /(links)\s\(([\w\.]+)/i, /(gobrowser)\/?([\w\.]+)*/i, /(ice\s?browser)\/v?([\w\._]+)/i, /(mosaic)[\/\s]([\w\.]+)/i],
                ["name", "version"]
            ],
            cpu: [
                [/(?:(amd|x(?:(?:86|64)[_-])?|wow|win)64)[;\)]/i],
                [
                    ["architecture", "amd64"]
                ],
                [/(ia32(?=;))/i],
                [
                    ["architecture", i.lowerize]
                ],
                [/((?:i[346]|x)86)[;\)]/i],
                [
                    ["architecture", "ia32"]
                ],
                [/windows\s(ce|mobile);\sppc;/i],
                [
                    ["architecture", "arm"]
                ],
                [/((?:ppc|powerpc)(?:64)?)(?:\smac|;|\))/i],
                [
                    ["architecture", /ower/, "", i.lowerize]
                ],
                [/(sun4\w)[;\)]/i],
                [
                    ["architecture", "sparc"]
                ],
                [/((?:avr32|ia64(?=;))|68k(?=\))|arm(?:64|(?=v\d+;))|(?=atmel\s)avr|(?:irix|mips|sparc)(?:64)?(?=;)|pa-risc)/i],
                [
                    ["architecture", i.lowerize]
                ]
            ],
            device: [
                [/\((ipad|playbook);[\w\s\);-]+(rim|apple)/i],
                ["model", "vendor", ["type", "tablet"]],
                [/applecoremedia\/[\w\.]+ \((ipad)/],
                ["model", ["vendor", "Apple"],
                    ["type", "tablet"]
                ],
                [/(apple\s{0,1}tv)/i],
                [
                    ["model", "Apple TV"],
                    ["vendor", "Apple"]
                ],
                [/(archos)\s(gamepad2?)/i, /(hp).+(touchpad)/i, /(kindle)\/([\w\.]+)/i, /\s(nook)[\w\s]+build\/(\w+)/i, /(dell)\s(strea[kpr\s\d]*[\dko])/i],
                ["vendor", "model", ["type", "tablet"]],
                [/(kf[A-z]+)\sbuild\/[\w\.]+.*silk\//i],
                ["model", ["vendor", "Amazon"],
                    ["type", "tablet"]
                ],
                [/(sd|kf)[0349hijorstuw]+\sbuild\/[\w\.]+.*silk\//i],
                [
                    ["model", o, {
                        "Fire Phone": ["SD", "KF"]
                    }],
                    ["vendor", "Amazon"],
                    ["type", "mobile"]
                ],
                [/\((ip[honed|\s\w*]+);.+(apple)/i],
                ["model", "vendor", ["type", "mobile"]],
                [/\((ip[honed|\s\w*]+);/i],
                ["model", ["vendor", "Apple"],
                    ["type", "mobile"]
                ],
                [/(blackberry)[\s-]?(\w+)/i, /(blackberry|benq|palm(?=\-)|sonyericsson|acer|asus|dell|huawei|meizu|motorola|polytron)[\s_-]?([\w-]+)*/i, /(hp)\s([\w\s]+\w)/i, /(asus)-?(\w+)/i],
                ["vendor", "model", ["type", "mobile"]],
                [/\(bb10;\s(\w+)/i],
                ["model", ["vendor", "BlackBerry"],
                    ["type", "mobile"]
                ],
                [/android.+(transfo[prime\s]{4,10}\s\w+|eeepc|slider\s\w+|nexus 7)/i],
                ["model", ["vendor", "Asus"],
                    ["type", "tablet"]
                ],
                [/(sony)\s(tablet\s[ps])\sbuild\//i, /(sony)?(?:sgp.+)\sbuild\//i],
                [
                    ["vendor", "Sony"],
                    ["model", "Xperia Tablet"],
                    ["type", "tablet"]
                ],
                [/(?:sony)?(?:(?:(?:c|d)\d{4})|(?:so[-l].+))\sbuild\//i],
                [
                    ["vendor", "Sony"],
                    ["model", "Xperia Phone"],
                    ["type", "mobile"]
                ],
                [/\s(ouya)\s/i, /(nintendo)\s([wids3u]+)/i],
                ["vendor", "model", ["type", "console"]],
                [/android.+;\s(shield)\sbuild/i],
                ["model", ["vendor", "Nvidia"],
                    ["type", "console"]
                ],
                [/(playstation\s[34portablevi]+)/i],
                ["model", ["vendor", "Sony"],
                    ["type", "console"]
                ],
                [/(sprint\s(\w+))/i],
                [
                    ["vendor", o, {
                        HTC: "APA",
                        Sprint: "Sprint"
                    }],
                    ["model", o, {
                        "Evo Shift 4G": "7373KT"
                    }],
                    ["type", "mobile"]
                ],
                [/(lenovo)\s?(S(?:5000|6000)+(?:[-][\w+]))/i],
                ["vendor", "model", ["type", "tablet"]],
                [/(htc)[;_\s-]+([\w\s]+(?=\))|\w+)*/i, /(zte)-(\w+)*/i, /(alcatel|geeksphone|huawei|lenovo|nexian|panasonic|(?=;\s)sony)[_\s-]?([\w-]+)*/i],
                ["vendor", ["model", /_/g, " "],
                    ["type", "mobile"]
                ],
                [/(nexus\s9)/i],
                ["model", ["vendor", "HTC"],
                    ["type", "tablet"]
                ],
                [/[\s\(;](xbox(?:\sone)?)[\s\);]/i],
                ["model", ["vendor", "Microsoft"],
                    ["type", "console"]
                ],
                [/(kin\.[onetw]{3})/i],
                [
                    ["model", /\./g, " "],
                    ["vendor", "Microsoft"],
                    ["type", "mobile"]
                ],
                [/\s(milestone|droid(?:[2-4x]|\s(?:bionic|x2|pro|razr))?(:?\s4g)?)[\w\s]+build\//i, /mot[\s-]?(\w+)*/i, /(XT\d{3,4}) build\//i, /(nexus\s[6])/i],
                ["model", ["vendor", "Motorola"],
                    ["type", "mobile"]
                ],
                [/android.+\s(mz60\d|xoom[\s2]{0,2})\sbuild\//i],
                ["model", ["vendor", "Motorola"],
                    ["type", "tablet"]
                ],
                [/android.+((sch-i[89]0\d|shw-m380s|gt-p\d{4}|gt-n8000|sgh-t8[56]9|nexus 10))/i, /((SM-T\w+))/i],
                [
                    ["vendor", "Samsung"], "model", ["type", "tablet"]
                ],
                [/((s[cgp]h-\w+|gt-\w+|galaxy\snexus|sm-n900))/i, /(sam[sung]*)[\s-]*(\w+-?[\w-]*)*/i, /sec-((sgh\w+))/i],
                [
                    ["vendor", "Samsung"], "model", ["type", "mobile"]
                ],
                [/(samsung);smarttv/i],
                ["vendor", "model", ["type", "smarttv"]],
                [/\(dtv[\);].+(aquos)/i],
                ["model", ["vendor", "Sharp"],
                    ["type", "smarttv"]
                ],
                [/sie-(\w+)*/i],
                ["model", ["vendor", "Siemens"],
                    ["type", "mobile"]
                ],
                [/(maemo|nokia).*(n900|lumia\s\d+)/i, /(nokia)[\s_-]?([\w-]+)*/i],
                [
                    ["vendor", "Nokia"], "model", ["type", "mobile"]
                ],
                [/android\s3\.[\s\w;-]{10}(a\d{3})/i],
                ["model", ["vendor", "Acer"],
                    ["type", "tablet"]
                ],
                [/android\s3\.[\s\w;-]{10}(lg?)-([06cv9]{3,4})/i],
                [
                    ["vendor", "LG"], "model", ["type", "tablet"]
                ],
                [/(lg) netcast\.tv/i],
                ["vendor", "model", ["type", "smarttv"]],
                [/(nexus\s[45])/i, /lg[e;\s\/-]+(\w+)*/i],
                ["model", ["vendor", "LG"],
                    ["type", "mobile"]
                ],
                [/android.+(ideatab[a-z0-9\-\s]+)/i],
                ["model", ["vendor", "Lenovo"],
                    ["type", "tablet"]
                ],
                [/linux;.+((jolla));/i],
                ["vendor", "model", ["type", "mobile"]],
                [/((pebble))app\/[\d\.]+\s/i],
                ["vendor", "model", ["type", "wearable"]],
                [/android.+;\s(glass)\s\d/i],
                ["model", ["vendor", "Google"],
                    ["type", "wearable"]
                ],
                [/android.+(\w+)\s+build\/hm\1/i, /android.+(hm[\s\-_]*note?[\s_]*(?:\d\w)?)\s+build/i, /android.+(mi[\s\-_]*(?:one|one[\s_]plus)?[\s_]*(?:\d\w)?)\s+build/i],
                [
                    ["model", /_/g, " "],
                    ["vendor", "Xiaomi"],
                    ["type", "mobile"]
                ],
                [/\s(tablet)[;\/\s]/i, /\s(mobile)[;\/\s]/i],
                [
                    ["type", i.lowerize], "vendor", "model"
                ]
            ],
            engine: [
                [/windows.+\sedge\/([\w\.]+)/i],
                ["version", ["name", "EdgeHTML"]],
                [/(presto)\/([\w\.]+)/i, /(webkit|trident|netfront|netsurf|amaya|lynx|w3m)\/([\w\.]+)/i, /(khtml|tasman|links)[\/\s]\(?([\w\.]+)/i, /(icab)[\/\s]([23]\.[\d\.]+)/i],
                ["name", "version"],
                [/rv\:([\w\.]+).*(gecko)/i],
                ["version", "name"]
            ],
            os: [
                [/microsoft\s(windows)\s(vista|xp)/i],
                ["name", "version"],
                [/(windows)\snt\s6\.2;\s(arm)/i, /(windows\sphone(?:\sos)*|windows\smobile|windows)[\s\/]?([ntce\d\.\s]+\w)/i],
                ["name", ["version", o, s]],
                [/(win(?=3|9|n)|win\s9x\s)([nt\d\.]+)/i],
                [
                    ["name", "Windows"],
                    ["version", o, s]
                ],
                [/\((bb)(10);/i],
                [
                    ["name", "BlackBerry"], "version"
                ],
                [/(blackberry)\w*\/?([\w\.]+)*/i, /(tizen)[\/\s]([\w\.]+)/i, /(android|webos|palm\sos|qnx|bada|rim\stablet\sos|meego|contiki)[\/\s-]?([\w\.]+)*/i, /linux;.+(sailfish);/i],
                ["name", "version"],
                [/(symbian\s?os|symbos|s60(?=;))[\/\s-]?([\w\.]+)*/i],
                [
                    ["name", "Symbian"], "version"
                ],
                [/\((series40);/i],
                ["name"],
                [/mozilla.+\(mobile;.+gecko.+firefox/i],
                [
                    ["name", "Firefox OS"], "version"
                ],
                [/(nintendo|playstation)\s([wids34portablevu]+)/i, /(mint)[\/\s\(]?(\w+)*/i, /(mageia|vectorlinux)[;\s]/i, /(joli|[kxln]?ubuntu|debian|[open]*suse|gentoo|(?=\s)arch|slackware|fedora|mandriva|centos|pclinuxos|redhat|zenwalk|linpus)[\/\s-]?([\w\.-]+)*/i, /(hurd|linux)\s?([\w\.]+)*/i, /(gnu)\s?([\w\.]+)*/i],
                ["name", "version"],
                [/(cros)\s[\w]+\s([\w\.]+\w)/i],
                [
                    ["name", "Chromium OS"], "version"
                ],
                [/(sunos)\s?([\w\.]+\d)*/i],
                [
                    ["name", "Solaris"], "version"
                ],
                [/\s([frentopc-]{0,4}bsd|dragonfly)\s?([\w\.]+)*/i],
                ["name", "version"],
                [/(ip[honead]+)(?:.*os\s([\w]+)*\slike\smac|;\sopera)/i],
                [
                    ["name", "iOS"],
                    ["version", /_/g, "."]
                ],
                [/(mac\sos\sx)\s?([\w\s\.]+\w)*/i, /(macintosh|mac(?=_powerpc)\s)/i],
                [
                    ["name", "Mac OS"],
                    ["version", /_/g, "."]
                ],
                [/((?:open)?solaris)[\/\s-]?([\w\.]+)*/i, /(haiku)\s(\w+)/i, /(aix)\s((\d)(?=\.|\)|\s)[\w\.]*)*/i, /(plan\s9|minix|beos|os\/2|amigaos|morphos|risc\sos|openvms)/i, /(unix)\s?([\w\.]+)*/i],
                ["name", "version"]
            ]
        },
        a = function(e, o) {
            if (!(this instanceof a)) return new a(e, o).getResult();
            var s = e || (t && t.navigator && t.navigator.userAgent ? t.navigator.userAgent : ""),
                l = o ? i.extend(r, o) : r;
            return this.getBrowser = function() {
                var t = n.apply(this, l.browser);
                return t.major = i.major(t.version), t
            }, this.getCPU = function() {
                return n.apply(this, l.cpu)
            }, this.getDevice = function() {
                return n.apply(this, l.device)
            }, this.getEngine = function() {
                return n.apply(this, l.engine)
            }, this.getOS = function() {
                return n.apply(this, l.os)
            }, this.getResult = function() {
                return {
                    ua: this.getUA(),
                    browser: this.getBrowser(),
                    engine: this.getEngine(),
                    os: this.getOS(),
                    device: this.getDevice(),
                    cpu: this.getCPU()
                }
            }, this.getUA = function() {
                return s
            }, this.setUA = function(t) {
                return s = t, this
            }, this.setUA(s), this
        };
    a.VERSION = "0.7.10", a.BROWSER = {
        NAME: "name",
        MAJOR: "major",
        VERSION: "version"
    }, a.CPU = {
        ARCHITECTURE: "architecture"
    }, a.DEVICE = {
        MODEL: "model",
        VENDOR: "vendor",
        TYPE: "type",
        CONSOLE: "console",
        MOBILE: "mobile",
        SMARTTV: "smarttv",
        TABLET: "tablet",
        WEARABLE: "wearable",
        EMBEDDED: "embedded"
    }, a.ENGINE = {
        NAME: "name",
        VERSION: "version"
    }, a.OS = {
        NAME: "name",
        VERSION: "version"
    }, "undefined" != typeof exports ? ("undefined" != typeof module && module.exports && (exports = module.exports = a), exports.UAParser = a) : "function" == typeof define && define.amd ? define(function() {
        return a
    }) : t.UAParser = a;
    var l = t.jQuery || t.Zepto;
    if ("undefined" != typeof l) {
        var c = new a;
        l.ua = c.getResult(), l.ua.get = function() {
            return c.getUA()
        }, l.ua.set = function(t) {
            c.setUA(t), t = c.getResult();
            for (var e in t) l.ua[e] = t[e]
        }
    }
}("object" == typeof window ? window : this);
var client = new ClientJS,
    browserName = client.getBrowser(),
    osName = client.getOS(),
    fingerprint = client.getFingerprint();
