	
<?php
		error_reporting( E_ALL ^ E_DEPRECATED );
		session_start();
		$name="";
		if(isset($_GET['sub']))
			setcookie('sub',$_GET['sub'], time() + (20 * 365 * 24 * 60 * 60), "/", NULL);
		if(isset($_SESSION['sess_user']))
			$name=$_SESSION['sess_user'];

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Quizpage</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">


<script src="js/vendor/jquery-2.2.4.min.js"></script>
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
			<link rel="stylesheet" href="css/quizpage.css">
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
	<style type="text/css">
		button{
			white-space:normal !important;
    		word-wrap: break-word; 
		}
		#loader{
			width: 100%;
			height: 100%;
			top: 0;
			left: 0;
			position: fixed;
			opacity: 0.7;
			background-color: #fff;
			z-index: 99;
			text-align: center;
		}
		#loading{
			position: absolute;
			top: 40%;
			left: 42%;
			z-index: 100;
			/* font-size:180px;
			color:blue; */
		}
		
	</style>
<!--===============================================================================================-->
</head>
<!-- style=" background-image: url('img/scenery.png'); background-repeat: no-repeat;" -->
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
									<a href="profile.php"><?php echo $name;?></a>
									<a href="index.php">Log out</a>
								</nav>
								<div class="menu-bar"><span class="lnr lnr-menu"></span></div>
							</div>
						</div>
					</div>
				</div>
			</header>
			<br>

	<div id="loader" style="display: block;"><!-- <i id="loading" class="fa fa-spinner fa-spin"></i> --><img id="loading" src="./img/loader.gif" alt=""></div>
		<div id='container1' >
		
			<div id='title'>
				<h2 style="font-size:8vw;">Quizophile</h2>
			</div>
   			<br/>
			   <h3  style="display: none;font-size:5vw;" id="score"></h3>
			   
			
   			<div class="col-lg-12" id="question">
				<h3 id="que"></h3>
				<pre style="background-color:rgba(157, 157, 163, 0.308)"><code id="codeArea"></code></pre>
	   			<p id="demo"></p>
				<button type="button" id="opt1" class="btn btn-secondary optbtn" ></button>
				<button type="button" id="opt2" class="btn btn-secondary optbtn"></button>
				<button type="button" id="opt3" class="btn btn-secondary optbtn"></button>
				<button type="button" id="opt4" class="btn btn-secondary optbtn"></button>
				
   			</div>
    	</div>

		<script type='text/javascript' src='https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js'></script>
		<script type='text/javascript' src='./js/quizpage.js'></script>
	



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
			<script type="text/javascript" src="main.js">	</script>
	

</body>
</html>