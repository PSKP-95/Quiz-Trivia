	
<?php
		error_reporting( E_ALL ^ E_DEPRECATED );
		session_start();
		$name="";
		if(isset($_SESSION['sess_user']))
			$name=$_SESSION['sess_user'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Quiz info</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
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
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<style type="text/css">
		/* Centered text */
.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
.containerx {
  position: relative;
  text-align: center;
  color: white;
}
	</style>
<!--===============================================================================================-->
</head>
<body>
	
			<!-- Start Header Area -->
			<header class="default-header">
				<div class="container">
					<div class="header-wrap">
						<div class="header-top d-flex justify-content-between align-items-center">
							<div class="logo">
								
								<a href="index.php"><img src="img/logo.png" alt=""></a>
													
							</div>
							<div class="main-menubar d-flex align-items-center">
								<nav class="hide">
									<a href="member.php">Home</a>
									<a href="member.php#about">About Us</a>
									<a href="profile.php"><?php echo $name; ?></a>
									<a href="index.php">Log out</a>
								</nav>
								<div class="menu-bar"><span class="lnr lnr-menu"></span></div>
							</div>
						</div>
					</div>
				</div>
			</header>

			<section class="service-area " id="facilities">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="col-md-8 pb-80 header-text">
							<h1>Select Your Interest !</h1>
							<p>
								
							</p>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-3 col-md-4 single-service">
						  <div class="content">
						    <a <?php if(!isset($_SESSION['sess_user']))  echo 'href="login.php?sub=history"'; else echo  '  target="_blank" href="quizpage.php?sub=history" ';?>>
						      <div class="content-overlay"></div>
						  		 <img class="content-image img-fluid d-block mx-auto" src="img/history.jpg" alt="">
						  		 <h3 align="center">History</h3>
						      <div class="content-details fadeIn-bottom">
						        <h2 class="content-title">from Greek ἱστορία, historia, meaning "inquiry, knowledge acquired by investigation"</h2>
						      </div>
						    </a>
						  </div>
						</div>
						<div class="col-lg-3 col-md-4 single-service"">
						  <div class="content">
						    <a <?php if(!isset($_SESSION['sess_user']))  echo 'href="login.php?sub=geography"'; else echo  '  target="_blank" href="quizpage.php?sub=geography" ';?>>
						      <div class="content-overlay"></div>
						  		 <img class="content-image img-fluid d-block mx-auto" src="img/Geography.jpg" alt="">
						  		 <h3 align="center">Geography</h3>
						      <div class="content-details fadeIn-bottom">
						        <h2 class="content-title">from Greek: γεωγραφία, geographia, literally "earth description"</h2>
						      </div>
						    </a>
						  </div>
						</div>
						<div class="col-lg-3 col-md-4 single-service"">
						  <div class="content">
						    <a <?php if(!isset($_SESSION['sess_user']))  echo 'href="login.php?sub=polity"'; else echo  '  target="_blank" href="quizpage.php?sub=polity" ';?>>
						      <div class="content-overlay"></div>
						  		 <img class="content-image img-fluid d-block mx-auto" src="img/Polity.png" alt="">
						  		 <h3 align="center">Polity</h3>
						      <div class="content-details fadeIn-bottom">
						        <h2 class="content-title">from Greek: πολιτικά, translit. Politiká, meaning "affairs of the cities"</h2>
						      </div>
						    </a>
						  </div>
						</div>
						<div class="col-lg-3 col-md-4 single-service"">
						  <div class="content">
						    <a <?php if(!isset($_SESSION['sess_user']))  echo 'href="login.php?sub=economics"'; else echo  '  target="_blank" href="quizpage.php?sub=economics" ';?>>
						      <div class="content-overlay"></div>
						  		 <img class="content-image img-fluid d-block mx-auto" src="img/economics.jpg" alt="">
						  		 <h3 align="center">Economics</h3>
						      <div class="content-details fadeIn-bottom">
						        <h2 class="content-title">social science that studies the production, distribution, and consumption of goods and services.</h2>
						      </div>
						    </a>
						  </div>
						</div>
					</div>
				</div>


			</section>
			<br><br><br>



			<section class="service-area " id="facilities">
				<div class="container">
					
					<div class="row">
						<div class="col-lg-3 col-md-4 single-service">
						  <div class="content">
						    <a <?php if(!isset($_SESSION['sess_user']))  echo 'href="login.php?sub=general_science"'; else echo  '  target="_blank" href="quizpage.php?sub=general_science" ';?>>
						      <div class="content-overlay"></div>
						  		 <img class="content-image img-fluid d-block mx-auto" src="img/science.jpg" alt="">
						  		 <h3 align="center">General Science</h3>
						      <div class="content-details fadeIn-bottom">
						        <h2 class="content-title">from the Latin word scientia, meaning "knowledge"</h2>
						      </div>
						    </a>
						  </div>
						</div>
						<div class="col-lg-3 col-md-4 single-service"">
						  <div class="content">
						    <a <?php if(!isset($_SESSION['sess_user']))  echo 'href="login.php?sub=latest_tech"'; else echo  '  target="_blank" href="quizpage.php?sub=latest_tech" ';?>>
						      <div class="content-overlay"></div>
						  		 <img class="content-image img-fluid d-block mx-auto" src="img/latest_tech.jpg" alt="">
						  		 <h3 align="center">Latest Technology</h3>
						      <div class="content-details fadeIn-bottom">
						        <h2 class="content-title">science of craft", from Greek τέχνη, techne, "art, skill, cunning of hand"; and -λογία, -logia</h2>
						      </div>
						    </a>
						  </div>
						</div>
						<div class="col-lg-3 col-md-4 single-service"">
						  <div class="content">
						    <a <?php if(!isset($_SESSION['sess_user']))  echo 'href="login.php?sub=c"'; else echo  '  target="_blank" href="quizpage.php?sub=c" ';?>>
						      <div class="content-overlay"></div>
						  		 <img class="content-image img-fluid d-block mx-auto" src="img/C.png" alt="">
						  		 <h3 align="center">C programming</h3>
						      <div class="content-details fadeIn-bottom">
						        <h2 class="content-title"> computer programming language developed by Brian Kernighan and Dennis Ritchie</h2>
						      </div>
						    </a>
						  </div>
						</div>
						<div class="col-lg-3 col-md-4 single-service"">
						  <div class="content">
						    <a <?php if(!isset($_SESSION['sess_user']))  echo 'href="login.php?sub=cpp"'; else echo  '  target="_blank" href="quizpage.php?sub=cpp" ';?>>
						      <div class="content-overlay"></div>
						  		 <img class="content-image img-fluid d-block mx-auto" src="img/Cpp.png" alt="">
						  		 <h3 align="center">C++</h3>
						      <div class="content-details fadeIn-bottom">
						        <h2 class="content-title"> imperative, object-oriented and generic programming features</h2>
						      </div>
						    </a>
						  </div>
						</div>
					</div>
				</div>

				
			</section>
			
			<br><br><br>

			<section class="service-area " id="facilities">
				<div class="container">
					
					<div class="row">
						<div class="col-lg-3 col-md-4 single-service">
						  <div class="content">
						    <a <?php if(!isset($_SESSION['sess_user']))  echo 'href="login.php?sub=java"'; else echo  '  target="_blank" href="quizpage.php?sub=java" ';?>>
						      <div class="content-overlay"></div>
						  		 <img class="content-image img-fluid d-block mx-auto" src="img/java.jpg" alt="">
						  		 <h3 align="center">Java</h3>
						      <div class="content-details fadeIn-bottom">
						        <h2 class="content-title">General-purpose computer-programming language that is concurrent, class-based, object-oriented</h2>
						      </div>
						    </a>
						  </div>
						</div>
						<div class="col-lg-3 col-md-4 single-service"">
						  <div class="content">
						    <a <?php if(!isset($_SESSION['sess_user']))  echo 'href="login.php?sub=ds"'; else echo  '  target="_blank" href="quizpage.php?sub=ds" ';?>>
						      <div class="content-overlay"></div>
						  		 <img class="content-image img-fluid d-block mx-auto" src="img/DS.png" alt="">
						  		 <h3 align="center">DS and Algorithm</h3>
						      <div class="content-details fadeIn-bottom">
						        <h2 class="content-title">An unambiguous specification of how to solve a class of problems</h2>
						      </div>
						    </a>
						  </div>
						</div>
						<div class="col-lg-3 col-md-4 single-service"">
						  <div class="content">
						    <a <?php if(!isset($_SESSION['sess_user']))  echo 'href="login.php?sub=operating_system"'; else echo  '  target="_blank" href="quizpage.php?sub=operating_system" ';?>>
						      <div class="content-overlay"></div>
						  		 <img class="content-image img-fluid d-block mx-auto" src="img/OS.jpeg" alt="">
						  		 <h3 align="center">Operating System</h3>
						      <div class="content-details fadeIn-bottom">
						        <h2 class="content-title">System software that manages computer hardware and software resources and provides common services for computer programs.</h2>
						      </div>
						    </a>
						  </div>
						</div>
						<div class="col-lg-3 col-md-4 single-service"">
						  <div class="content">
						    <a <?php if(!isset($_SESSION['sess_user']))  echo 'href="login.php?sub=ca"'; else echo  '  target="_blank" href="quizpage.php?sub=ca" ';?>>
						      <div class="content-overlay"></div>
						  		 <img class="content-image img-fluid d-block mx-auto" src="img/CA.jpg" alt="">
						  		 <h3 align="center">Computer Architecture</h3>
						      <div class="content-details fadeIn-bottomxx">
						        <h2 class="content-title">Set of rules and methods that describe the functionality, organization, and implementation of computer systems.</h2>
						      </div>
						    </a>
						  </div>
						</div>
					</div>
				</div>

				
			</section>

			<br><br><br>
			

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