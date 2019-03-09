<?php
	error_reporting( E_ALL ^ E_DEPRECATED );

	$sub=$_COOKIE['sub'];
	if(!isset($_COOKIE['que_num']))
	{
		setcookie('que_num',1);
	}
	$con=mysqli_connect('localhost','root','pskp@a95a','platina');
	
	$query=mysqli_query($con,"select * from ".$sub."_questions");
	$count=mysqli_num_rows($query);
	$i=1;
	
	$question="";$opt1="";$opt2="";$opt3="";$opt4="";$answer="";$code = "no";
	$query1=mysqli_query($con,"select * from ".$sub."_questions where qid=".$_COOKIE['que_num'].";");
	setcookie('que_num',(($_COOKIE['que_num']+1)%30)+1);

	while($row=mysqli_fetch_assoc($query1))
	{
		$question=$row['question'];
		$opt1=$row['opt1'];
		$opt2=$row['opt2'];
		$opt3=$row['opt3'];
		$opt4=$row['opt4'];
		$answer=$row['ans'];
		
		if(isset($row['code'])){
			$code=$row['code'];
		}

	}	
		$final=$question."*#*#".$opt1."*#*#".$opt2."*#*#".$opt3."*#*#".$opt4."*#*#".$answer."*#*#".$code;
		echo $final;
?>