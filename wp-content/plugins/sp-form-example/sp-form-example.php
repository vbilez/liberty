<?php
/*
Plugin Name: Example Contact Form Plugin
Plugin URI: http://example.com
Description: Simple non-bloated WordPress Contact Form
Version: 1.0
Author: Agbonghama Collins
Author URI: http://w3guy.com
*/
  

  function html_form_code() {
    echo '<form id="contactform" action="' . esc_url( get_home_url().'/thankyou' ) . '" method="post"
    onsubmit="showHide(); return false;" >';

    echo '<div class="mat-div">
    		<label for="customer-email-address" class="mat-label">Email:</label>
    		<input type="text" class="mat-input" id="customer-email-address" 
    		name="cf-email"
    value="'. '' .'">
    </div>
    <div class="mat-div">
    	<label for="customer-name" class="mat-label">Повідомлення:</label>
    	<input type="text" class="mat-input" id="customer-name" name="cf-name" 
    value="' . '' . '">
    </div>
    <button class="submit-send-email"  id="submit-button" name="cf-submitted" onclick="resetform();">Надіслати:</button>';
    
    echo '</form>';
}

function deliver_mail() {

    // if the submit button is clicked, send the email
    if ( isset( $_POST['cf-submitted'] ) ) {

        // sanitize form values
        $name    = sanitize_text_field( $_POST["cf-name"] );
        $email   = sanitize_email( $_POST["cf-email"] );
        $subject = 'Liberty';
        $message = $name;
 
        // get the blog administrator's email address
        $to = get_option( 'admin_email' );

	

        $headers = "From: $name <$email>" . "\r\n";
        if(filter_var($email, FILTER_VALIDATE_EMAIL)) {
            //Valid email!

        ob_start();
             header('Location: '.get_home_url().'/thankyou');
        // If email has been process for sending, display a success message
        wp_mail( $to, $subject, $message, $headers );

         

        
        ob_end_clean();

        }
    }
}

function cf_shortcode() {
    ob_start();
    deliver_mail();
    html_form_code();
	//$_POST= array();
	//unset($_POST); 
    return ob_get_clean();
    
}

add_shortcode( 'sitepoint_contact_form', 'cf_shortcode' );
?>