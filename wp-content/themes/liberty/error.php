<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Error</title>
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/bower_components/bootstrap/dist/css/bootstrap.css">
    <style>
        #error {
            max-width: 100%;
        }
        #error pre {
            margin: 2% 1%;
            white-space: pre-wrap;       /* Since CSS 2.1 */
            white-space: -moz-pre-wrap;  /* Mozilla, since 1999 */
            word-wrap: break-word;
        }
    </style>
</head>
<body>
<?php if (isset($_SESSION['custom-error'])) { ?>
    <div id="error" class="container-fluid alert-danger">
        <pre><?= $_SESSION['custom-error'] ?></pre>
        <?php unset($_SESSION['custom-error']) ?>
    </div>
<?php } else {; ?>
    <pre>
        This is error handling page : no errors so far
    </pre>
<?php }; ?>
</body>
</html>



