<?php

namespace liberty\widgets;

use Exception;

/**
 * Class SocialButtons
 * Inserts an unordered list with predefined social buttons and respective links.
 * Enables control over all social links on the website
 * @package liberty\widgets
 */

class SocialButtons {

    /**
     * href values for respective social links
     * @var array
     */
    private static $SocLinks = [
        'vimeo' => '#',
        'facebook' => 'https://www.facebook.com/libertyproduction/',
        'youtube' => '#',
        'instagram' => '#',
    ];
    /**
     * Returns true if param is a valid associative array
     * @param array $array
     * The array being evaluated
     * @return bool
     */
    private function is_assoc($array)
    {
        foreach(array_keys($array) as $key)
            if (!is_int($key)) return true;
        return false;
    }

    /**
     * If error occurs, redirects to a page with a fine readable current error message
     * @param string $msg
     * The current error message
     */
    private function on_error($msg)
    {
        $_SESSION['custom-error'] = new Exception($msg); ?>
        <script language="javascript">window.location = '/error';</script>
        <?php die();
    }

    /**
     * Outputs html unordered list with social buttons
     * @param associative array $args
     * <ul> tag html attributes and values specified respectively as array keys and values
     * @return string
     */
    public static function renderItems($args = [], $svg = false)
    {
        $method = __METHOD__;
        $htmlAttrs = "";
        if (!empty($args)) {
            if (is_array($args) && self::is_assoc($args)) {
                foreach ($args as $key => $val) {
                    $htmlAttrs .= " {$key}=\"{$val}\"";
                }
            } else self::on_error("first parameter for method {$method} must be an associative array");
        };
        if (!is_bool($svg)){self::on_error("second parameter for method {$method} must be a boolean");}

        $gtdu = get_template_directory_uri();
        $pathToIcons = '/assets/fonts/liberty-icons-sprites.svg';

        $icon = '';
        $liArr = '';
        foreach (self::$SocLinks as $key => $item) {
            $icon = $svg ?
                "<svg><use xlink:href=\"{$gtdu}/{$pathToIcons}#{$key}\"></use></svg>" :
                "<i class=\"liberty-icons liberty-icon-{$key}\"></i>";
            $liArr .= "<li><a href=\"{$item}\" target=\"_blank\">{$icon}</a></li>";
       }
        return "<ul{$htmlAttrs}>{$liArr}</ul>";
    }
}


