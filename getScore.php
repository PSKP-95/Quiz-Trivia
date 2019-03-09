<?php 
	session_start();
	if(isset($_GET['score'])){
		$attempted=$_GET['attempted'];
		$score=$_GET['score'];
		$con=mysqli_connect('localhost','root','pskp@a95a','platina');
		$sql="update ".$_COOKIE['sub']."_score set attempted=attempted+" .$attempted.",score=score+" .$score." where username='". $_SESSION['sess_user']."'";
		
	
		$query=mysqli_query($con,$sql);
		if($query)
			echo "Successful";
		else
			echo "Unsuccessful";
		setcookie('sub','',time()-10);

		mysqli_close($con);
	}

?>