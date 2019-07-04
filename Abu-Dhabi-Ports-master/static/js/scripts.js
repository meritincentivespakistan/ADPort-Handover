$(document).ready(function () {
    // **********************************************
    // ----------- Pages Transition Init ------------
    // **********************************************
    (function ($) {
        "use strict";
        $(".animsition").animsition({
            inClass: 'fade-in',
            outClass: 'fade-out',
            inDuration: 500,
            outDuration: 500,
            linkElement: 'a:not([target="_blank"]):not([href^="#"]):not([class^="chosen-single"])',
            loading: true,
            loadingParentElement: 'html',
            loadingClass: 'THAT_loader',
            loadingInner: '<span></span>',
            timeout: false,
            timeoutCountdown: 2000,
            onLoadEvent: true,
            browser: ['animation-duration', '-webkit-animation-duration'],
            overlay: false,
            overlayClass: 'animsition-overlay-slide',
            overlayParentElement: 'html',
            transition: function (url) {
                window.location.href = url;
            }
        });
    })(jQuery);

    // **********************************************
    // ----------- Sticky Header Plugin ------------
    // **********************************************
    var $window = $(window),
        $stickyEl = $('.THAT_header, .side-nav'),
        elTop = $stickyEl.offset().top;

    $window.scroll(function () {
        $stickyEl.toggleClass('fixed', $window.scrollTop() > elTop);
        if ($window.scrollTop() > elTop) {
            $("body").css("padding-top", $stickyEl.height());
        } else {
            $("body").css("padding-top", 0);
        }
    });

    // **********************************************
    // ----------- Side Navigation Plugin -----------
    // **********************************************
    $(".side-nav-toggle").click(function () {
        $('.side-nav').toggleClass('nav-open');
        // $('html').toggleClass('overflow-hidden');
        $('.side-mask').toggleClass('show');
    });

    // **********************************************
    // ---------------- Modal Plugin ----------------
    // **********************************************
    var modaClass = $(".THAT_modal");
    var modalTrigger = $('.THAT_modal_trigger');
    var closeTrigger = $('.THAT_modal_close');

    modalTrigger.on("click", function (e) {
        e.preventDefault();
        var id = $(this).attr('data-modal');
        modaClass.each(function () {
            if ($(this).attr('id') == id) {
                $(this).addClass('show');
                $('html').addClass('overflow-hidden');
            }
        });
    });
    closeTrigger.on('click', function (e) {
        modaClass.removeClass('show');
        $('html').removeClass('overflow-hidden');
        $(".THAT_modal_body iframe").attr("src", $(".THAT_modal_body iframe").attr("src"));
        return false;
    });

    // **********************************************
    // ---------------- Select2 Init ----------------
    // **********************************************

    if ($('.select-field')[0]) {

        $('.select-field').select2({
            placeholder: "اختار من هنا",
            allowClear: true
        });
        $('.select-field.no-search-bar').select2({
            placeholder: "اختار من هنا",
            allowClear: true,
            minimumResultsForSearch: -1
        });

    }

    // **********************************************
    // ------- Select2 Religion Confirm Modal -------
    // **********************************************
    $('.select-field').change(function () {
        if ($(this).val() == 'لايتبع أي ديانة' || $(this).val() == 'ديانة أخرى') {
            $("#THAT_modal_religion_confirm").addClass('show');
            $('html').addClass('expanded');
        }
    });

    // **********************************************
    // ------------ Form validation Init ------------
    // **********************************************
    (function () {
        'use strict';
        window.addEventListener('load', function () {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('with-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function (form) {
                form.addEventListener('submit', function (event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();

    // **********************************************
    // ---------------- Tooltip Init ----------------
    // **********************************************
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    })


    //**********************************************
    //---------------- Scroll link ----------------
    //**********************************************

    $('.scrolly a[href*=#]').click(function () {
        var topHeight = 95;
        if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '')
            && location.hostname == this.hostname) {
            var $target = $(this.hash);
            $target = $target.length && $target || $('[name=' + this.hash.slice(1) + ']');
            if ($target.length) {
                var targetOffset = $target.offset().top;
                $('html,body').animate({ scrollTop: targetOffset - topHeight }, 300);
                return false;
            }
        }
    });

    // **********************************************
    // ----------- Test Result Feedback -------------
    // **********************************************
    $('.content_hidden').hide();
    $('input[type=radio][name=test-helpful]').change(function () {
        if ($(this).val() == "Unhelpful") {
            $('.content_hidden').slideDown(200);
        } else {
            $('.content_hidden').slideUp(200);
        }
    });


    // prevent user from save (ctrl+s) page
    $(document).bind('keydown', function (e) {
        //if (e.ctrlKey && (e.which == 82)) {
            console.log(e)
        if (e.ctrlKey) {
            e.preventDefault();
            return false;
        }
    });


    // prevent user from save page by clicking (right click using mouse)
    //if (event.button != 1) {
        document.oncontextmenu = new Function("return false");
        //if NS6
        // if (window.sidebar) {
        //     document.oncontextmenu = disableselect
        // }
    //}


    OAuth.initialize('Hywf01UasHCTgE-9TX7jxjmRjkk');

});
