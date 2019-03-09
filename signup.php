<?php
		error_reporting( E_ALL ^ E_DEPRECATED );
		if(isset($_POST["submit"]))
		{
			if(!empty($_POST['username']) && !empty($_POST['password']))
			{
				$user=$_POST['username'];
				$pass=$_POST['password'];

				$con=mysqli_connect('localhost','root','pskp@a95a','platina');
				
				$query=mysqli_query($con,"select * from user_info where username='".$user."'");
				//echo $query;
				$number=mysqli_num_rows($query);
				if($number==0)
				{
					$email=$_POST['email'];
					$fname=$_POST['fname'];
					$sql="insert into user_info (username,password,email,fname) values('$user','$pass','$email','$fname')";
					$res=mysqli_query($con,$sql);
					if($res){
						echo "Account successfully created";
						$sql="Insert into ca_score values ('".$user."', 0, 0)";
						$query=mysqli_query($con, $sql);
						$sql="Insert into cpp_score values ('".$user."', 0, 0)";
						$query=mysqli_query($con, $sql);
						$sql="Insert into c_score values ('".$user."', 0, 0)";
						$query=mysqli_query($con, $sql);
						$sql="Insert into ds_score values ('".$user."', 0, 0)";
						$query=mysqli_query($con, $sql);
						$sql="Insert into economics_score values ('".$user."', 0, 0)";
						$query=mysqli_query($con, $sql);
						$sql="Insert into general_science_score values ('".$user."', 0, 0)";
						$query=mysqli_query($con, $sql);
						$sql="Insert into geography_score values ('".$user."', 0, 0)";
						$query=mysqli_query($con, $sql);
						$sql="Insert into history_score values ('".$user."', 0, 0)";
						$query=mysqli_query($con, $sql);
						$sql="Insert into java_score values ('".$user."', 0, 0)";
						$query=mysqli_query($con, $sql);
						$sql="Insert into latest_tech_score values ('".$user."', 0, 0)";
						$query=mysqli_query($con, $sql);
						$sql="Insert into operating_system_score values ('".$user."', 0, 0)";
						$query=mysqli_query($con, $sql);
						$sql="Insert into polity_score values ('".$user."', 0, 0)";
						$query=mysqli_query($con, $sql);
						
					}
					else
						echo "Failure!";
				}
				else
					echo "This username is already taken!";
			}
			else
				echo "All fields are required!";
		}
	?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V8</title>
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
									<a href="index.php">Home</a>
									<a href="index.php#about">About Us</a>
									
									
								</nav>
								<div class="menu-bar"><span class="lnr lnr-menu"></span></div>
							</div>
						</div>
					</div>
				</div>
			</header>
			<!-- End Header Area -->
			<br><br>
	<div class="limiter relative">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form p-l-55 p-r-55 p-t-178" action="" method="POST">
					<span class="login100-form-title">
						Sign Up
					</span>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Please enter First Name">
						<input class="input100" type="text" name="fname" placeholder="First Name">
						<span class="focus-input100"></span>
					</div>


					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter email">
						<input class="input100" type="email" name="email" placeholder="Email">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter username">
						<input class="input100" type="text" name="username" placeholder="Username">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Please enter password">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
					</div>

					

					<div class="container-login100-form-btn">
						<input type="submit" class="login100-form-btn" name="submit" value="Sign Up">
							
						</input>
					</div>

					<div class="flex-col-c ">
						<br>
						<span class="txt1 p-b-9">
							Already have an account?
						</span>

						<a href="login.php" class="txt3">
							Sign In
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
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