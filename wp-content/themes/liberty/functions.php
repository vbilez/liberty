<?php
/**
 * Created by PhpStorm.
 * User: 002
 * Date: 08.01.2018
 * Time: 12:41
 */
function register_my_menus() {
    register_nav_menus(
        array(
            'header-menu' => __( 'Header Menu' ),
            'extra-menu' => __( 'Extra Menu' )
        )
    );
}
add_action( 'init', 'register_my_menus' );

function liberty_setup(){
    load_theme_textdomain('libertymedia' );
    add_theme_support( 'automatic-fild-links');
    add_theme_support( 'post-formats', array(
        'aside', 'image', 'video', 'quote', 'link', 'gallery', 'status', 'audio', 'chat'
    ) );
};

add_filter('next_posts_link_attributes', 'posts_link_attributes_1');
add_filter('previous_posts_link_attributes', 'posts_link_attributes_2');

function posts_link_attributes_1() {
    return 'class="nodecor"'; 
}

function posts_link_attributes_2() {
    return 'class="nodecor"';
}

function delete_associated_media( $id ) {
    $media = get_children( array(
        'post_parent' => $id,
        'post_type'   => 'attachment'
    ) );

    if( empty( $media ) ) {
        return;
    }

    foreach( $media as $file ) {
        wp_delete_attachment( $file->ID );
    }
}
add_action( 'before_delete_post', 'delete_associated_media' );