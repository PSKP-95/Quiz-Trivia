<?php
		error_reporting( E_ALL ^ E_DEPRECATED );
		if(isset($_POST["submit"]))
		{
			if(!empty($_POST['username']) && !empty($_POST['password']))
			{
				$user=$_POST['username'];
				$pass=$_POST['password'];

				$con=mysqli_connect('localhost','root','','platina');
				
				$query=mysqli_query($con,"select * from user_info where username='".$user."' ");
				$number=mysqli_num_rows($query);
				if($number==0)
				{
					$email=$_POST['email'];
					$fname=$_POST['fname'];
					$sql="insert into user_info (username,password,email,fname) values('$user','$pass','$email','$fname')";
					$res=mysqli_query($con,$sql);
					if($res){
						echo "Account successfully created";
					
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