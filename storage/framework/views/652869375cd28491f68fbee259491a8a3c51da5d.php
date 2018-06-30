<!doctype html>
<html class="no-js" lang="">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Online Examination | Home</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
    <!-- Normalize CSS -->
    <link rel="stylesheet" href="<?php echo e(URL::asset('site_assets/css/normalize.css')); ?>">
    <!-- Main CSS -->
    <link rel="stylesheet" href="<?php echo e(URL::asset('site_assets/css/main.css')); ?>">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?php echo e(URL::asset('site_assets/css/bootstrap.min.css')); ?>">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="<?php echo e(URL::asset('site_assets/css/animate.min.css')); ?>">
    <!-- Font-awesome CSS-->
    <link rel="stylesheet" href="<?php echo e(URL::asset('site_assets/css/font-awesome.min.css')); ?>">
    <!-- Owl Caousel CSS -->
    <link rel="stylesheet" href="<?php echo e(URL::asset('site_assets/vendor/OwlCarousel/owl.carousel.min.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(URL::asset('site_assets/vendor/OwlCarousel/owl.theme.default.min.css')); ?>">
    <!-- Main Menu CSS -->
    <link rel="stylesheet" href="<?php echo e(URL::asset('site_assets/css/meanmenu.min.css')); ?>">
    <!-- nivo slider CSS -->
    <link rel="stylesheet" href="<?php echo e(URL::asset('site_assets/vendor/slider/css/nivo-slider.css')); ?>" type="text/css" />
    <link rel="stylesheet" href="<?php echo e(URL::asset('site_assets/vendor/slider/css/preview.css')); ?>" type="text/css" media="screen" />
    <!-- Datetime Picker Style CSS -->
    <link rel="stylesheet" href="<?php echo e(URL::asset('site_assets/css/jquery.datetimepicker.css')); ?>">
    <!-- Magic popup CSS -->
    <link rel="stylesheet" href="<?php echo e(URL::asset('site_assets/css/magnific-popup.css')); ?>">
    <!-- Switch Style CSS -->
    <link rel="stylesheet" href="<?php echo e(URL::asset('site_assets/css/hover-min.css')); ?>">
    <!-- ReImageGrid CSS -->
    <link rel="stylesheet" href="<?php echo e(URL::asset('site_assets/css/reImageGrid.css')); ?>">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="<?php echo e(URL::asset('site_assets/css/style.css')); ?>">
    <!-- Modernizr Js -->
    <script src="<?php echo e(URL::asset('site_assets/js/modernizr-2.8.3.min.js')); ?>"></script>
</head>
<body>
   <div id="preloader"></div>
    <!-- Preloader End Here -->
    <!-- Main Body Area Start Here -->
    <div id="wrapper">
       
	<?php echo $__env->make('includes.header', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
	<?php echo $__env->yieldContent("content"); ?>
	<?php echo $__env->make("includes.footer", array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
    </div>

 <!-- jquery-->
    <script src="<?php echo e(URL::asset('site_assets/js/jquery-2.2.4.min.js')); ?>" type="text/javascript"></script>
    <!-- Plugins js -->
    <script src="<?php echo e(URL::asset('site_assets/js/plugins.js')); ?>" type="text/javascript"></script>
    <!-- Bootstrap js -->
    <script src="<?php echo e(URL::asset('site_assets/js/bootstrap.min.js')); ?>" type="text/javascript"></script>
    <!-- WOW JS -->
    <script src="<?php echo e(URL::asset('site_assets/js/wow.min.js')); ?>"></script>
    <!-- Nivo slider js -->
    <script src="<?php echo e(URL::asset('site_assets/vendor/slider/js/jquery.nivo.slider.js')); ?>" type="text/javascript"></script>
    <script src="<?php echo e(URL::asset('site_assets/vendor/slider/home.js')); ?>" type="text/javascript"></script>
    <!-- Owl Cauosel JS -->
    <script src="<?php echo e(URL::asset('site_assets/vendor/OwlCarousel/owl.carousel.min.js')); ?>" type="text/javascript"></script>
    <!-- Meanmenu Js -->
    <script src="<?php echo e(URL::asset('site_assets/js/jquery.meanmenu.min.js')); ?>" type="text/javascript"></script>
    <!-- Srollup js -->
    <script src="<?php echo e(URL::asset('site_assets/js/jquery.scrollUp.min.js')); ?>" type="text/javascript"></script>
    <!-- jquery.counterup js -->
    <script src="<?php echo e(URL::asset('site_assets/js/jquery.counterup.min.js')); ?>"></script>
    <script src="<?php echo e(URL::asset('site_assets/js/waypoints.min.js')); ?>"></script>
    <!-- Countdown js -->
    <script src="<?php echo e(URL::asset('site_assets/js/jquery.countdown.min.js')); ?>" type="text/javascript"></script>
    <!-- Isotope js -->
    <script src="<?php echo e(URL::asset('site_assets/js/isotope.pkgd.min.js')); ?>" type="text/javascript"></script>
    <!-- Magic Popup js -->
    <script src="<?php echo e(URL::asset('site_assets/js/jquery.magnific-popup.min.js')); ?>" type="text/javascript"></script>
    <!-- Gridrotator js -->
    <script src="<?php echo e(URL::asset('site_assets/js/jquery.gridrotator.js')); ?>" type="text/javascript"></script>
    <!-- Custom Js -->
    <script src="<?php echo e(URL::asset('site_assets/js/main.js')); ?>" type="text/javascript"></script>
</body>

</html>

