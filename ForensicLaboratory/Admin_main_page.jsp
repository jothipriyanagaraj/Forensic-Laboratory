<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>Online hospital management</title>
	<!-- Meta Tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Pearly Care Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //Meta Tags -->
	<link href="css5/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css5/font-awesome.css" rel="stylesheet">
	<link rel="stylesheet" href="css5/jquery-ui.css" />
	<link href="css5/simpleLightbox.css" rel="stylesheet" type="text/css" />
	<link href="css5/owl.carousel.css" rel="stylesheet">
	<link href="css5/style.css" rel="stylesheet" type="text/css" media="all" />
	<!--Online-fonts-->
	<link href="//fonts5.googleapis.com/css?family=Oswald:300,400,500,600,700" rel="stylesheet">
	<link href="//fonts5.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
	<!--//Online-fonts-->
</head>

<body>
	<!-- Header -->
	<div class="logo-w3layouts">
		<div class="header-top-w3ls">
			<div class="container">
				
				
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="header-mid">
			<div class="container">
				<h1>
						<span>Online</span>Hospital
						<span>Management</span></a>
				</h1>
				<div class="w3ls_search">
					<div class="cd-main-header">
						<ul class="cd-header-buttons">
							<li>
								<a class="cd-search-trigger" href="#cd-search">
									<span></span>
								</a>
							</li>
						</ul>
						<!-- cd-header-buttons -->
					</div>
				
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- banner-slider -->
	<div class="w3l_banner_info" id="home">
		<div class="slider">
			<div class="callbacks_container">
				<!-- Navigation -->
				<div class="header-nav">
					<div class="container">
						<nav class="navbar navbar-default">
							<div class="navbar-header logo">
								<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
							</div>
							<!-- navbar-header -->
							<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
								<ul class="nav navbar-nav navbar-right">
									<li>
										<a href="Admin_main_page.jsp" class="active scroll">Home</a>
									</li>
									
									<li>
										<a href="#team" class="scroll">About</a>
									</li>
									<li>
										<a href="Admin_accept.jsp" class="scroll">Notifications()</a>
									</li>
									<li>
										<a href="CENTER.jsp" class="scroll">logout</a>
									</li>
								</ul>
							</div>
							<div class="clearfix"> </div>
						</nav>
						<div class="clearfix"> </div>
					</div>
				</div>
				<!-- //Navigation -->
				<ul class="rslides" id="slider3">
					<li>
						<div class="slider-img b1">
						</div>
						<div class="slider_banner_info">
							<div class="w3ls-info">
								<h4>
									<span>A</span>dmin
									<span>T</span>eam</h4>
							</div>
						</div>
					</li>
					
					
				</ul>
			</div>
		</div>
	</div>
	<!-- //banner-slider -->
	<!-- //Header -->
	<!-- Banner bottom -->
	
	<!-- //Banner bottom -->
	<!--about-->
	
	<!--//about-->
	<!-- Features -->

	

	<!-- //copyright -->
	<a href="#home" class="scroll" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>
	<!-- js -->
	<script type='text/javascript' src='js/jquery-2.2.3.min.js'></script>
	<!-- //js -->
	<!-- requried-jsfiles-for owl -->
	<script src="js/owl.carousel.js"></script>
	<script>
		$(document).ready(function () {
			$("#owl-demo2").owlCarousel({
				items: 1,
				lazyLoad: false,
				autoPlay: true,
				navigation: false,
				navigationText: false,
				pagination: true,
			});
		});
	</script>
	<!-- //requried-jsfiles-for owl -->

	<script src="js5/responsiveslides.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function () {
			// Slideshow 4
			$("#slider3").responsiveSlides({
				auto: true,
				pager: true,
				nav: false,
				speed: 500,
				namespace: "callbacks",
				before: function () {
					$('.events').append("<li>before event fired.</li>");
				},
				after: function () {
					$('.events').append("<li>after event fired.</li>");
				}
			});

		});
	</script>
	<!--search-bar-->
	<script src="js5/main.js"></script>
	<!--//search-bar-->
	<!-- Calendar -->
	<script src="js5/jquery-ui.js"></script>
	<script>
		$(function () {
			$("#datepicker,#datepicker1,#datepicker2,#datepicker3").datepicker();
		});
	</script>
	<!-- //Calendar -->
	<!-- Gallery-script -->
	<script src="js5/simpleLightbox.js"></script>
	<script>
		$('.gallery-columns a').simpleLightbox();
	</script>
	<!-- //Gallery-script -->

	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js5/move-top.js"></script>
	<script type="text/javascript" src="js5/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- start-smoth-scrolling -->
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function () {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->
	<!--js for bootstrap working-->
	<script src="js5/bootstrap.js"></script>
	<!-- //for bootstrap working -->
</body>

</html>