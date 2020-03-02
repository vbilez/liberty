<?php
/*
Plugin Name: Videomenu Local
Description: A test plugin for admin menu
Author: Simon Lissack
Version: 0.1
*/
add_action('admin_menu', 'test_plugin_setup_menul');
 
function test_plugin_setup_menul(){
        add_menu_page( 'Test Plugin Page Video', 'Wedding and Production Local', 'manage_options', 'test-plugin-local', 'test_initl' );
}
 
function test_initl(){
        test_handle_postl();
?>
        <h1>Video Upload Form</h1>
        <h2>Upload a File</h2>
        <!-- Form to handle the upload - The enctype value here is very important -->
        <form  method="post" enctype="multipart/form-data">
                <select name="category">
                        <option value="5">Wedding</option>
                        <option value="6">Production</option>
                </select><br>
                <label>Youtube link:</label><br><input type='text' id='link' name='link'></input><br>
                <!--<input type='file' id='video' name='video' accept="video/*"></input><br>-->
                <label>Title:</label><br><input type='text' id='title' name='title'></input><br>
                <label>Description:</label><br><textarea id='description' name='description'></textarea><br>
                <label>Cover:</label><br><input type='file' id='thumbnail' name='thumbnail' accept="image/*"></input><br>
                <?php submit_button('Upload') ?>
        </form>
<?php
}
 
function test_handle_postl(){
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
 

                $newpost=wp_insert_post( $my_post );
                $thumbnail=media_handle_upload('thumbnail', $newpost);
                //echo $uploaded;
                // Error checking using WP functions
                if(is_wp_error( $newpost)){
                        echo "Error uploading file: " .  $newpost->get_error_message();
                }else{
                        //echo 'ct='.$category;
                        wp_set_post_categories( $newpost, $category );
                         $my_post = array(
                                'ID'           => $newpost,
                       
                         );

                         wp_update_post( $my_post );
                        echo "File upload successful!";
                   if(is_wp_error($thumbnail)){
                        echo "Error uploading thumbnail: " . $thumbnail->get_error_message();
                   }
                   else{
                        if(set_post_thumbnail($newpost,$thumbnail))
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