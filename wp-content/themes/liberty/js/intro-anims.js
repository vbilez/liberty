$(document).ready(function () {
    $('img[usemap]').rwdImageMaps();
    viewport = $(window);
    viewport_w = viewport.width();
    viewport_h = viewport.height();
    featherTop = $('.feather-img-bg-top');
    featherBottom = $('.feather-img-bg-bottom');
    topFeatherArea = $('#top-feather-area');
    bottomFeatherArea = $('#bottom-feather-area');
    productionTitle = $('.production-title');
    weddingTitle = $('.wedding-title');
    stroke = $('.stroke');
    strokeImg = $('#stroke-img');
    var url = window.location.href;
    // todo change to "index" on production
    // determine if url route is on index
    function isIndexPageFunc(startPos, allMatches) {
        allMatches = allMatches === undefined ? 0 : allMatches;
        startPos = startPos === undefined ? 0 : startPos;
        var match = url.indexOf("/", startPos);
        if (match === -1) return allMatches === 3 && startPos === url.length;
        allMatches++;
        return isIndexPageFunc(match + 1, allMatches)
    }
    isIntroPage = isIndexPageFunc();
    isIntroPage ? killScroll('xy') : null;
    effects_elem_arr = [
        [productionTitle, topFeatherArea, featherTop],
        [weddingTitle, bottomFeatherArea, featherBottom]
    ];
    function featherAnim() {
        if (isIntroPage) {
            stroke.animate({'height': '100vh'}, 1500, function () {
                if (viewport_w <= 1024) {
                    stroke.animate({'height': '40%'}, 1500);
                    strokeImg.css({'height': '40%'});
                } else {
                    // stroke.animate({'height': strokeImg.height() + 'px'}, 1500);
                    stroke.animate({'height': 70 + 'vh'}, 1500);
                }
            });
        } else {
            stroke.animate({'height': '60%'}, 1500);
            stroke.animate({'height': '50%'}, 1500);
        }
        featherTop.animate({
            '-webkit-mask-position-x': '50%',
            '-webkit-mask-position-y': '60%',
            'mask-position-x': '50%',
            'mask-position-y': '60%',
            'opacity': '1'
        }, {duration: 2000, queue : false});
        featherBottom.animate({
            '-webkit-mask-position-x': '50%',
            '-webkit-mask-position-y': '50%',
            'mask-position-x': '50%',
            'mask-position-y': '50%',
            'opacity': '1'
        }, {duration: 2000, queue : false})
    }

    effects_elem_arr.forEach(function (val) {
        if (isIntroPage) {
            val[0].delay(2000).queue(function () {
                anim_effect = effects_elem_arr.indexOf(val) === 0 ? 'bounceInLeft' : 'bounceInRight';
                $(this).addClass('opacity-1 animated ' + anim_effect + '').dequeue();
            });
        }
        val[0].add(val[1])
            .mouseenter(function () {
                $(val[0]).toggleClass('hover')
            })
            .mouseleave(function () {
                $(val[0]).toggleClass('hover')
            });
        // if (isIntroPage) {
        //     val[1].mousemove(function (e) {
        //         pos_x = e.pageX;
        //         pos_y = e.pageY;
        //         left_pos = container_w / 2 - pos_x;
        //         top_pos = container_h / 2 - pos_y;
        //         val[2].animate({
        //             translateX: -left_pos / 100 - 50 + '%',
        //             translateY: -top_pos / 100 - 50 + '%',
        //             '-webkit-mask-position-x': left_pos / 50 + 50 + '%',
        //             '-webkit-mask-position-y': top_pos / 10 + 50 + '%',
        //             'mask-position-x': left_pos / 50 + 50 + '%',
        //             'mask-position-y': top_pos / 10 + 50 + '%'
        //         }, {duration: 0})
        //     });
        // }
    });
    isIntroPage ? featherAnim() : null;


    var makeAnim = 0;


    // todo: optimize event handler to unbind after first iteration
    $(function() {
        $(window).scroll(function(){
            if (makeAnim === 0) {
                var oTop = $('section.portfolio').offset().top - window.innerHeight;
                var pTop = $(window).scrollTop();
                if( pTop-viewport_h > oTop ){
                    setTimeout(function () {
                        featherAnim()
                    }, 100);
                    productionTitle.add(weddingTitle).removeClass('opacity-0');
                    productionTitle.addClass('animated bounceInLeft');
                    weddingTitle.addClass('animated bounceInRight');
                    makeAnim++
                }
            }
        });
    });
});
