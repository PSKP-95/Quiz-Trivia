<?php
	$con=mysqli_connect('localhost','root','pskp@a95a','platina');
	$sql="select * from ca_score where username='".$_SESSION['sess_user']."'";
	$query=mysqli_query($con,$sql);
	$res=mysqli_fetch_assoc($query);
	$attempted_ca=$res['attempted'];
	$score_ca=$res['score'];

	$sql="select * from cpp_score where username='".$_SESSION['sess_user']."'";
	$query=mysqli_query($con,$sql);
	$res=mysqli_fetch_assoc($query);
	$attempted_cpp=$res['attempted'];
	$score_cpp=$res['score'];

	$sql="select * from c_score where username='".$_SESSION['sess_user']."'";
	$query=mysqli_query($con,$sql);
	$res=mysqli_fetch_assoc($query);
	$attempted_c=$res['attempted'];
	$score_c=$res['score'];

	$sql="select * from general_science_score where username='".$_SESSION['sess_user']."'";
	$query=mysqli_query($con,$sql);
	$res=mysqli_fetch_assoc($query);
	$attempted_gs=$res['attempted'];
	$score_gs=$res['score'];

	$sql="select * from geography_score where username='".$_SESSION['sess_user']."'";
	$query=mysqli_query($con,$sql);
	$res=mysqli_fetch_assoc($query);
	$attempted_geo=$res['attempted'];
	$score_geo=$res['score'];

	$sql="select * from history_score where username='".$_SESSION['sess_user']."'";
	$query=mysqli_query($con,$sql);
	$res=mysqli_fetch_assoc($query);
	$attempted_his=$res['attempted'];
	$score_his=$res['score'];

	$sql="select * from ds_score where username='".$_SESSION['sess_user']."'";
	$query=mysqli_query($con,$sql);
	$res=mysqli_fetch_assoc($query);
	$attempted_ds=$res['attempted'];
	$score_ds=$res['score'];

	$sql="select * from economics_score where username='".$_SESSION['sess_user']."'";
	$query=mysqli_query($con,$sql);
	$res=mysqli_fetch_assoc($query);
	$attempted_ec=$res['attempted'];
	$score_ec=$res['score'];

	$sql="select * from java_score where username='".$_SESSION['sess_user']."'";
	$query=mysqli_query($con,$sql);
	$res=mysqli_fetch_assoc($query);
	$attempted_java=$res['attempted'];
	$score_java=$res['score'];

	$sql="select * from latest_tech_score where username='".$_SESSION['sess_user']."'";
	$query=mysqli_query($con,$sql);
	$res=mysqli_fetch_assoc($query);
	$attempted_lt=$res['attempted'];
	$score_lt=$res['score'];

	$sql="select * from polity_score where username='".$_SESSION['sess_user']."'";
	$query=mysqli_query($con,$sql);
	$res=mysqli_fetch_assoc($query);
	$attempted_po=$res['attempted'];
	$score_po=$res['score'];

	$sql="select * from operating_system_score where username='".$_SESSION['sess_user']."'";
	$query=mysqli_query($con,$sql);
	$res=mysqli_fetch_assoc($query);
	$attempted_os=$res['attempted'];
	$score_os=$res['score'];


?>