	
<?php
		error_reporting( E_ALL ^ E_DEPRECATED );
		session_start();
		if(isset($_SESSION['sess_user']))
			session_destroy();
?>
	<!DOCTYPE html>
	<html lang="zxx" class="no-js">
	<head>
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="Jinesh Sumant PSKP">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>Platina</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="css/linearicons.css">
			<link rel="stylesheet" href="css/owl.carousel.css">
			<link rel="stylesheet" href="css/font-awesome.min.css">
			<link rel="stylesheet" href="css/nice-select.css">
			<link rel="stylesheet" href="css/magnific-popup.css">
			<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
			<link rel="stylesheet" href="css/bootstrap.css">
			<link rel="stylesheet" href="css/main.css">
		</head>
		<body>

			<!-- Start Header Area -->
			<header class="default-header">
				<div class="container">
					<div class="header-wrap">
						<div class="header-top d-flex justify-content-between align-items-center">
							<div class="logo">
								<a href="#home"><img src="img/logo.png" alt=""></a>
							</div>
							<div class="main-menubar d-flex align-items-center">
								<nav class="hide">
									<a href="index.html">Home</a>
									<a href="quiz.php">Quiz</a>
									<a href="#service">About Us</a>
									
								</nav>
								<div class="menu-bar"><span class="lnr lnr-menu"></span></div>
							</div>
						</div>
					</div>
				</div>
			</header>
			<!-- End Header Area -->

			<!-- start banner Area -->
			<section class="banner-area relative" id="home">
				<div class="overlay overlay-bg"></div>
				<div class="container">
				<div class="row fullscreen align-items-center justify-content-center" style="height: 950px;">
					<div class="active-banner-carousel">
						<div class="banner-content col-lg-12 col-md-12">
							<h1>
								Enjoy Leisure Time<br>
								With Interesting Quizes
							</h1>
							<a href="login.php" class="head-btn btn text-uppercase">Login/SignUp</a>
						</div>
						<div class="banner-content col-lg-12 col-md-12">
							<h1>
								Just Go<br>
								For It !
							</h1>
							<a href="login.php" class="head-btn btn text-uppercase">Login/SignUp</a>
						</div>
					</div>
											<div class="carousel-trigger">
							<div class="next-trigger"><span class="lnr lnr-arrow-up"></span></span></div>
							<div class="prev-trigger"><span class="lnr lnr-arrow-down"></span></span></div>
						</div>
				</div>
				</div>
			</section>
			<!-- End banner Area -->




			<!-- Start contact-info Area -->
			<section class="contact-info-area section-gap" id="about">
				<div class="container">
					<div class="row">
						<div class="single-info col-lg-4 col-md-6">
							 <h4>Visit Our Office</h4>
							 <p>
							 	Boys Hostel,
							 	Walchand College Of Engineering,<br>
							 	Sangli,
							 	Maharashtra 416 415.
							 </p>
						</div>
						<div class="single-info col-lg-4 col-md-6">
							 <h4>Let’s call us</h4>
							 <p>
								Phone 01: 9028408876 <br>
								Phone 02: 9422964800 <br>
								Phone 03: 9657953448 
							 </p>
						</div>
						<div class="single-info col-lg-4 col-md-6">
							 <h4>Let’s Email Us</h4>
							 <p>
								<a href="mailto:jineshforever@gmail.com">Jinesh Nadar </a><br>
								<a href="mailto:sumantcwadekar@gmail.com">Sumant Wadekar </a><br>
								<a href="mailto:patil8698parikshit@yahoo.com">Parikshit Patil</a>
							 </p>
						</div>
						<!--<div class="single-info col-lg-3 col-md-6">
							 <h4>Customer Support</h4>
							 <p>
							 	support@colorlib.com <br>
								emergencysupp@colorlib.com <br>
								extremesupp@colorlib.com
							 </p>
						</div>
						-->
					</div>
				</div>
			</section>
			<!-- End contact-info Area -->

			<!-- start footer Area -->
			<footer class="footer-area section-gap">
				<div class="container">
					<div class="row">
						<div class="col-lg-4  col-md-6 col-sm-12">
							<div class="single-footer-widget">
								<h6>About Us</h6>
								<p>
									Platina is optimized for learning, testing, and training. Questions might be simplified to improve reading and basic understanding.<br>We cannot warrant full correctness of all content. While using this site, you agree to have read and accepted our terms of use, cookie and privacy policy.
								</p>
							</div>
						</div>
						<div class="col-lg-4  col-md-6 col-sm-12">
							<div class="single-footer-widget">
								<h6>Newsletter</h6>
								<p>Stay update with our latest</p>
								<div class="" id="mc_embed_signup">

										<form target="_blank" novalidate="true" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="form-inline">

										<div class="d-flex flex-row">

											<input class="form-control" name="EMAIL" placeholder="Enter Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Email '" required="" type="email">


				                            	<button class="click-btn btn btn-default"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></button>
				                            	<div style="position: absolute; left: -5000px;">
													<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
												</div>

											<!-- <div class="col-lg-4 col-md-4">
												<button class="bb-btn btn"><span class="lnr lnr-arrow-right"></span></button>
											</div>  -->
										</div>
										<div class="info"></div>
										</form>
								</div>
							</div>
						</div>
						
						<div class="col-lg-4 col-md-6 col-sm-12">
							<div class="single-footer-widget">
								<h6>Follow Us</h6>
								<p>Let us be social</p>
								<div class="footer-social d-flex align-items-center">
									<a href="#"><i class="fa fa-facebook"></i></a>
									<a href="#"><i class="fa fa-twitter"></i></a>
									<a href="#"><i class="fa fa-github"></i></a>
									<a href="#"><i class="fa fa-linkedin"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="footer-bottom d-flex justify-content-center align-items-center flex-wrap">
						<p class="footer-text m-0">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved 
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>
				</div>
			</footer>
			<!-- End footer Area -->

			<script src="js/vendor/jquery-2.2.4.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
			<script src="js/vendor/bootstrap.min.js"></script>
			<script src="js/owl.carousel.min.js"></script>
			<script src="js/jquery.nice-select.min.js"></script>
			<script src="js/jquery.ajaxchimp.min.js"></script>
			<script src="js/jquery.sticky.js"></script>
			<script src="js/parallax.min.js"></script>
			<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
			<script src="js/jquery.magnific-popup.min.js"></script>
			<script src="js/main.js"></script>
		</body>
	</html>
