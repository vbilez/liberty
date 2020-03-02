<?php
$currentSegment=urldecode($currentSegment);
$s=$_GET['s'];

/**
 * variable to conditionally switch between specific stylesheet rules
 */
switch ($currentSegment) {
    case 'portfolio-wedding':
        $portfolioCssClass = 'wedding';
        break;
    case 'portfolio-production':
        $portfolioCssClass = 'production';
        break;
    case 'video':
        $portfolioCssClass = 'video';
        $portfolioCssClass .= (($seg3 == 5) ? ' wedding' : (($seg3 == 6) ? ' production' : null));
        break;
    default:
        $portfolioCssClass = '';
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Liberty</title>
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/bower_components/bootstrap/dist/css/bootstrap.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/bower_components/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/bower_components/animate.css/animate.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/bower_components/owl.carousel/dist/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/bower_components/owl.carousel/dist/assets/owl.theme.default.min.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/style.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/portfolio.css">
    <script src="<?php echo get_template_directory_uri(); ?>/js/send-text-input.js"></script>
    <?php
        if($currentSegment=='video'){
          echo '<link href="'.get_template_directory_uri().'/css/video-js.css" rel="stylesheet">';
    }
    ?>
    <?php wp_head(); ?>
</head>
<body class="<?= $portfolioCssClass ?>" >
<div class="home-button"><a href="/"><i class="glyphicon glyphicon-home"></i></a></div>
<div class="container">
    <div class="portfolio-title">
            <?php
            function build_title($portfolioCssClass) {
                global $seg3;
                $parallelogram = '<div class="parallelogram"><div class="parallelogram-inner-text">Портфоліо</div></div>';
                $title = ucfirst($portfolioCssClass);
                if(strpos($portfolioCssClass, 'video')!==false) {
                    global $title;
                    if ($seg3 == 5) {
                        $css_classes = 'video wedding-title';
                        $title = 'Wedding';
                    }
                    if ($seg3 == 6) {
                        $css_classes = 'video production-title';
                        $title = 'Production';
                    }
                } else $css_classes = $portfolioCssClass . '-title';
                echo <<<EOT
                    <div class="{$css_classes}">{$title}{$parallelogram}</div>
EOT;
            }
            build_title($portfolioCssClass)
            ?>
    </div>

<?php
global $paged;
$paged=$seg3;
$args = array(
    'post_type' => 'attachment',
    'post_mime_type'=>'video/mp4',
    'post_status'    => 'inherit',
    's'=>$s,
    'posts_per_page'=>6,
    'paged' => $seg3,
    'cat'=>5
);
$args2 = array(
    'post_type' => 'attachment',
    'post_mime_type'=>'video/mp4',
    'post_status'    => 'inherit',
    's'=>$s,
    'posts_per_page'=>6,
    'paged' => $seg3,
    'cat'=>6
);
$q2 = new WP_Query( $args2 );
$q = new WP_Query( $args );

echo $currentSegment == 'video' ? '<div id="stripe"></div>' : null;
$content_section_wrapper = $currentSegment == 'video' ? 'video-preview' : 'video-thumbs-table';
?>
<div class="row">
    <div class="<?= $content_section_wrapper ?> col-xs-12">
        <?php if(($currentSegment=='portfolio-wedding')||($currentSegment=='portfolio-production')){?>
          <?php if($currentSegment=='portfolio-wedding') {?>        
            <div class="prev-video-thumbs-arrow">
                <?php previous_posts_link('<i style="color:#66FAF9" class="fa fa-4x fa-chevron-left"></i>',$q->max_num_pages);?>
            </div>
            <div class="next-video-thumbs-arrow">
                <?php next_posts_link('<i style="color:#66FAF9" class="fa fa-4x fa-chevron-right"></i>',$q->max_num_pages);?>
            </div>
          <?php }?>
          <?php if($currentSegment=='portfolio-production') {?>        
            <div class="prev-video-thumbs-arrow">
                <?php previous_posts_link('<i style="color:#66FAF9" class="fa fa-4x fa-chevron-left"></i>',$q2->max_num_pages);?>
            </div>
            <div class="next-video-thumbs-arrow">
                <?php next_posts_link('<i style="color:#66FAF9" class="fa fa-4x fa-chevron-right"></i>',$q2->max_num_pages);?>
            </div>
          <?php }?>  
        <?php }?>
        <div class="row">

            <?php
            /**
             * Like get_template_part() put lets you pass args to the template file
             * Args are available in the tempalte as $template_args array
             * @param string filepart
             * @param mixed wp_args style argument list
             */
            function hm_get_template_part( $file, $template_args = array(), $cache_args = array() ) {
                $template_args = wp_parse_args( $template_args );
                $cache_args = wp_parse_args( $cache_args );
                if ( $cache_args ) {
                    foreach ( $template_args as $key => $value ) {
                        if ( is_scalar( $value ) || is_array( $value ) ) {
                            $cache_args[$key] = $value;
                        } else if ( is_object( $value ) && method_exists( $value, 'get_id' ) ) {
                            $cache_args[$key] = call_user_method( 'get_id', $value );
                        }
                    }
                    if ( ( $cache = wp_cache_get( $file, serialize( $cache_args ) ) ) !== false ) {
                        if ( ! empty( $template_args['return'] ) )
                            return $cache;
                        echo $cache;
                        return;
                    }
                }
                $file_handle = $file;
                do_action( 'start_operation', 'hm_template_part::' . $file_handle );
                if ( file_exists( get_stylesheet_directory() . '/' . $file . '.php' ) )
                    $file = get_stylesheet_directory() . '/' . $file . '.php';
                elseif ( file_exists( get_template_directory() . '/' . $file . '.php' ) )
                    $file = get_template_directory() . '/' . $file . '.php';
                ob_start();
                $return = require( $file );
                $data = ob_get_clean();
                do_action( 'end_operation', 'hm_template_part::' . $file_handle );
                if ( $cache_args ) {
                    wp_cache_set( $file, $data, serialize( $cache_args ), 3600 );
                }
                if ( ! empty( $template_args['return'] ) )
                    if ( $return === false )
                        return false;
                    else
                        return $data;
                echo $data;
            }

            if($currentSegment=='portfolio-wedding' || $currentSegment=='portfolio-production' || $currentSegment=='thankyou'
                || $currentSegment=='video')
            {
                if(in_array($currentSegment, ['portfolio-wedding', 'portfolio-production']))   {
                    $query = (
                    ($currentSegment=='portfolio-wedding') ? $q :
                        (($currentSegment=='portfolio-production') ? $q2 : null)
                    );
                    if ( $query->have_posts() ) {
                        while ( $query->have_posts() ) {
                            $query->the_post();
                            // );
                            $category=get_the_category();
                            $category_use=$category[0]->term_id;
                            $postdate=   get_the_date('d') .'|'.get_the_date('m') ;
//                            $post_title=mb_strimwidth(get_the_title(),0,15) . '...';
                            $post_title = get_the_title();
                            $post_title = strlen($post_title) > 15 ? mb_strimwidth($post_title,0,15) . ' ...' : $post_title;
                            $post_thumbnail=get_the_post_thumbnail_url(get_the_ID(),'post_thumbnail');
                            echo'
                <div class="video-item col-md-4 col-xs-12 col-sm-6">
                <a href='.get_home_url().'/video/'.get_the_ID() .'/'.$category_use.'">'.'
                <img src="'.$post_thumbnail.'">
                '.'</a>'.'
                <div class="video-thumb-caption-box">
                    <div class="video-thumb-title-text" >'.$post_title .'</div>
                    <div class="video-thumb-title-date" >'.$postdate.'</div>
                </div>
                </div>';
                            // Your loop

                        }
                        wp_reset_postdata();

                    }

                    //get_template_part( 'portfolio-wedding' );
                }
                if($currentSegment=='video')   {
                    //get_template_part( 'video' );
                    hm_get_template_part( 'video',['option'=>$idseg]);
                }
                if($currentSegment=='thankyou')   {
                    //$ty=1;$mailcontent=   get_template_part( 'content' );
                }
            }
            else {
                if($currentSegment=="")    {}
                //else{        get_template_part( 'content' );   }

            }
            ?>
        </div>
    </div>
</div>
    <?php if(in_array($currentSegment, [$portfolio_wedding, $portfolio_production])) {?>
        <div class="search-field" data-style="display: flex">
            <?php if($currentSegment=='portfolio-wedding'){?>
                <div class="prev-video-thumbs-arrow">
                    <?php previous_posts_link('<i class="fa fa-4x fa-chevron-left"></i>', $q->max_num_pages); ?>
                </div>
            <?php }?>
            <?php if($currentSegment=='portfolio-production'){?>
                <div class="prev-video-thumbs-arrow">
                    <?php previous_posts_link('<i class="fa fa-4x fa-chevron-left"></i>', $q2->max_num_pages); ?>
                </div>
            <?php }?>
                <form>
                    <input type="text" name="s"><span class="glyphicon glyphicon-search"></span>
                </form>
            <?php if($currentSegment=='portfolio-wedding'){?>
                <div class="next-video-thumbs-arrow">
                    <?php next_posts_link('<i class="fa fa-4x fa-chevron-right"></i>',$q->max_num_pages);?>
                </div>
            <?php }?>
            <?php if($currentSegment=='portfolio-production'){?>
                <div class="next-video-thumbs-arrow">
                    <?php next_posts_link('<i class="fa fa-4x fa-chevron-right"></i>',$q2->max_num_pages);?>
                </div>
            <?php }?>
        </div>
    <?php }?>
    </div>
<footer>
  <?= \liberty\widgets\SocialButtons::renderItems([
        'class' => 'social-connect social-connect-one-screen-layout'
    ]) ; ?>
</footer>
<script src="<?php echo get_template_directory_uri(); ?>/bower_components/jquery/dist/jquery.min.js" type="text/javascript"></script>
<script src="<?php echo get_template_directory_uri(); ?>/bower_components/jquery-ui/jquery-ui.js" type="text/javascript"></script>
<script>
    $(document).ready(function () {
        win_w = $(window).width();
        win_h = $(window).height();
        $(window).resize(function () {
            win_w = $(window).width();
            win_h = $(window).height();
        });
        $('#viewportInf p:first-child').append(function () {
            return $(window).width();
        });
        $('#viewportInf p:last-child').append(function () {
            return $(window).height();
        });
    });
</script>
<!--//for debug purpose-->
<!--<script>-->
<!--    $(document).ready(function () {-->
<!--        /**-->
<!--         * Adjust arrows render when less then three video items-->
<!--         */-->
<!--        var videoThumbsQty = $('.video-thumbs-table > .row > div').length;-->
<!--//    todo: make compatible with responsive behaviour-->
<!--        if (videoThumbsQty <= 3) {-->
<!--            $('.prev-video-thumbs-arrow, .next-video-thumbs-arrow').css({'top' : '100%'});-->
<!--        };-->
<!--    });-->
<!--</script>-->
<script>
    $(document).ready(function () {
        var prevArrow = $('.search-field .prev-video-thumbs-arrow');
        var nextArrow = $('.search-field .next-video-thumbs-arrow');
        if (prevArrow.html().length < 100) {
            prevArrow.html('<i style="opacity:0" class="fa fa-4x fa-chevron-left"></i>');
        }
        if (nextArrow.html().length < 100) {
            nextArrow.html('<i style="opacity:0" class="fa fa-4x fa-chevron-right"></i>');
        }
    })
</script>
<script src="<?php echo get_template_directory_uri(); ?>/bower_components/owl.carousel/dist/owl.carousel.min.js" type="text/javascript"></script>
<?php if ($currentSegment!=='video') { ?>
    <script>
        $(document).ready(function(){
            var owl = $('.video-thumbs-table > .row');
            function owlInit(arg) {
                if (win_h < 630) {
                    if (!arg.hasClass('owl-carousel')) {
                        arg.addClass('owl-carousel').addClass('owl-theme');
                    }
                    owl.trigger('destroy.owl.carousel');
                    itemsQty = $(window).height() < 450 ? 2 : 1;
                    $('.owl-carousel').owlCarousel({
                        items: itemsQty
                    });
                } else {
                    owl.removeClass('owl-carousel owl-theme').trigger('destroy.owl.carousel');
                }
            }
            owlInit(owl);
            $(window).resize(function () {
                !/iPhone/.test(navigator.userAgent) ? owlInit(owl) : null;
            });
            window.addEventListener("orientationchange", function() {
                owlInit(owl);
            }, false);
        });
    </script>
<?php }; ?>
<script src="<?php echo get_template_directory_uri(); ?>/bower_components/bootstrap/dist/js/bootstrap.js" type="text/javascript"></script>
<script src="<?php echo get_template_directory_uri(); ?>/js/anims.js" type="text/javascript"></script>
<script src="<?php echo get_template_directory_uri(); ?>/js/send-text-input.js" type="text/javascript"></script>
<script type="text/javascript">
    function validateEmail(sEmail) {
        var filter = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
        if (filter.test(sEmail)) {
            return true;
        }
        else {
            return false;
        }
    }
</script>
<script type="text/javascript">
    function showHide() {

        /*
        var div = document.getElementById("hidden_div");
        if (div.style.display == 'none') {
            div.style.display = '';
        }
        else {
            div.style.display = 'none';
        }
        */
        if(validateEmail($('#customer-email-address').val()))
            {
                $('#emailmsg').hide();
                $('#submit-button').click();
            }
            else
            {
                $('#emailmsg').show();
            }
    }
</script>

<?php wp_footer(); ?>
</body>
</html>


