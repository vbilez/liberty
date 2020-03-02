<?php
/*
Plugin Name: Videomenu
Description: A test plugin for admin menu
Author: Simon Lissack
Version: 0.1
*/
add_action('admin_menu', 'test_plugin_setup_menu');
 
function test_plugin_setup_menu(){
        add_menu_page( 'Test Plugin Page', 'Wedding and Production', 'manage_options', 'test-plugin', 'test_init' );
    wp_register_script('videomenu_script', plugins_url('/videomenu.js', __FILE__), ['jquery']);
    wp_enqueue_script('videomenu_script');
}

/**
 * conditional var due to server php.ini max_execution_time variable limitation
 */
$youtube_cover = ini_get('max_execution_time') > 30 ? true : false;

function test_init(){
    global $youtube_cover;
    test_handle_post();
?>
        <h1>Video Upload Form</h1>
        <h2>Upload a File</h2>
        <!-- Form to handle the upload - The enctype value here is very important -->
        <form id="video-post-form" method="post" enctype="multipart/form-data">
                <select name="category">
                        <option value="5">Wedding</option>
                        <option value="6">Production</option>
                </select><br>
                <label>Youtube link:</label><br><input type='text' id='link' name='link' style="width: 35%" required><br>
                <!--<input type='file' id='video' name='video' accept="video/*"></input><br>-->
                <label>Title:</label><br><input type='text' id='title' name='title' required><br>
                <label>Description:</label><br><textarea id='description' name='description' required></textarea><br>
            <?php if ($youtube_cover) { ?>
                <input type='hidden' id='thumbnail' name='thumbnail' required><br>
            <?php } else { ?>
                <label>Cover:</label><br><input type='file' id='thumbnail' name='thumbnail' accept="image/*" required><br>
            <?php }; ?>
                <?php submit_button('Upload') ?>
        </form>
<?php
}

function test_handle_post(){
    global $youtube_cover;
        // First check if the file appears on the _FILES array
        if(isset($_POST['link'])){
                //$pdf = $_FILES['video'];
 
                // Use the wordpress function to upload
                // video corresponds to the position in the $_FILES array
                // 0 means the content is not associated with any other posts
                //$uploaded=media_handle_upload('video', 0);
            $link=$_POST['link'];
            $category=$_POST['category'];
            $title=$_POST['title'];
            $description=$_POST['description'];
            $my_post = array(
                'post_title'    => wp_strip_all_tags( $title ),
                'post_content'  => $description,
                'post_status'=>'open',
                'post_author'=>1,
                'guid'=>$link,
                'post_name'=>'youtubelink',
                'post_type'=>'attachment',
                'post_mime_type'=>'video/mp4'
            );
            $post_id=wp_insert_post( $my_post );
            //echo $uploaded;
            // Error checking using WP functions
            if ($youtube_cover) {
                $image_url = $_POST['thumbnail'];
                $image_name = 'video-thumb.jpg';
                $upload_dir = wp_upload_dir();
                $image_data = file_get_contents($image_url);
                $unique_file_name = wp_unique_filename( $upload_dir['path'], $image_name );
                $filename = basename( $unique_file_name );
                // Check folder permission and define file location
                if( wp_mkdir_p( $upload_dir['path'] ) ) {
                    $file = $upload_dir['path'] . '/' . $filename;
                } else {
                    $file = $upload_dir['basedir'] . '/' . $filename;
                }
                // Create the image  file on the server
                file_put_contents( $file, $image_data );
                $wp_filetype = wp_check_filetype( $filename, null );
                $attachment = array(
                    'post_mime_type' => $wp_filetype['type'],
                    'post_title'     => sanitize_file_name( $filename ),
                    'post_content'   => '',
                    'post_status'    => 'inherit'
                );
                $thumbnail= wp_insert_attachment( $attachment, $file, $post_id);
                require_once(ABSPATH . 'wp-admin/includes/image.php');
                $attach_data = wp_generate_attachment_metadata( $thumbnail, $file );
                wp_update_attachment_metadata( $thumbnail, $attach_data );
            } else {
                $thumbnail=media_handle_upload('thumbnail', 0);
            }


            if(is_wp_error( $post_id)){
                echo "Error uploading file: " .  $post_id->get_error_message();
                }else{
                        //echo 'ct='.$category;
                        wp_set_post_categories( $post_id, $category );
                         $my_post = array(
                                'ID'           => $post_id,
                       
                         );

                         wp_update_post( $my_post );
                        echo "File upload successful!";
                   if(is_wp_error($thumbnail)){
                        echo "Error uploading thumbnail: " . $thumbnail->get_error_message();
                   }
                   else{
                        if(set_post_thumbnail($post_id,$thumbnail))
                        {
                                echo 'thumbnail ok';
                        }
                        else
                        {
                                echo 'thumbnail set fail';
                        }
                   }
                }
        }
}
?>