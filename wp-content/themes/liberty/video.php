<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/video.css">
<?php
            $id= $template_args['option'];
            //echo '<video src="'.get_the_guid($id).'  "></video>';
            $post=get_post($id);
$content=$post->post_content;
$title=$post->post_title;
$youtubelink='youtubelink';
$vimeolink='vimeolink';
$postname=$post->post_name;
$poster='';
$deltitle="Delete video";
if(
    (strpos($postname,$youtubelink)===false)
     &&
    (strpos($postname,$vimeolink)===false)
  )
{
  $video_type="video/mp4";
}
if(strpos($postname,$youtubelink)!==false)
{
  $video_type="video/youtube";
}
if(strpos($postname,$vimeolink)!==false)
{
  $video_type="video/vimeo";
}

  if ( get_current_user_id()==1 )
   {
    $before='<div class="dellink">';
    $after='</div>';

    $link = "<a href='" . wp_nonce_url( get_bloginfo('url') . "/wp-admin/post.php?action=delete&amp;post=" . $id, 'delete-post_' . $id) . "'>".$deltitle."</a>";
    echo $before . $link . $after;
    }
$postdate= get_the_date('d',$post) .'|'.get_the_date('m',$post) ;
echo '
<div class="videoplayer col-lg-8 col-md-8 col-sm-12 col-xs-12">
<video id="my-video" class="video-js vjs-big-play-centered vjs-16-9" controls preload="auto" poster="'.$poster.'" data-setup="{}">
    <source src="'.get_the_guid($id).'" type="'.$video_type.'">
    <p class="vjs-no-js">
      To view this video please enable JavaScript, and consider upgrading to a web browser that
      <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a>
    </p>
</video>
</div>
<div class="description hidden col-md-4 col-lg-4 col-sm-12 col-xs-12">
    <div class="description-title">'.$title.'</div>
    <div class="description-date">'.$postdate.'</div>
    <div class="description-text">'.$content.'</div>
</div>
'; ?>
<script src="<?php echo get_template_directory_uri(); ?>/js/video.js"></script>
<script src="<?php echo get_template_directory_uri(); ?>/js/Youtube.min.js"></script>
<script src="<?php echo get_template_directory_uri(); ?>/js/killScroll.js"></script>
<script>
    $(window).width()<768 ? killScroll('x') : null;
</script>
<script>
    $ = jQuery;
    var description = $('.description');
    function descTitleFontAdjust() {
        var descriptionTitle = $('.description-title');
        var body = $('body');
        var titleType = body.hasClass('production') ? 'prod' : body.hasClass('wedding') ? 'wed' : console.error('target must have class "wedding" or "production"');
        body.hasClass('production') && body.hasClass('wedding') ? console.error('body class conflict for ' + arguments.callee.name + '() function') : null;
        var fontSize = titleType === 'prod' ? ($(window).width() < 768 ? 125 : 38) / descriptionTitle.text().length : ($(window).width() < 768 ? 220 : 68) / descriptionTitle.text().length;
        if (descriptionTitle.text().length < 16 && descriptionTitle.text().length > 12) {
            fontSize = titleType === 'prod' ? ($(window).width() < 768 ? 8.4 : 2.5) : ($(window).width() < 768 ? 13 : 4);
        }
        if (descriptionTitle.text().length < 12) {
            fontSize = titleType === 'prod' ? ($(window).width()<768 ? 11 : 3.3) : ($(window).width()<768 ? 14 : 5);
        }
        console.log(fontSize);
        descriptionTitle.css({'font-size': fontSize + 'vw'})
    }
    function descDivHeightAdjust() {
        description.css({'height': $('#my-video').outerHeight()});
        description.removeClass('hidden');
        $(window).width()>=768 && $(window).width()<992
            ? description.css({'height': '300px'})
            : description.css({'height': $('#my-video').outerHeight()});
    }
    $(document).ready(function () {
        $(window).resize(function () {
            descDivHeightAdjust();
            descTitleFontAdjust();
        })
    });
    descDivHeightAdjust();
    descTitleFontAdjust();
</script>