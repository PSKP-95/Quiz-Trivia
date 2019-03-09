var total = 0, right = 0,ans = -1,x=null;
var xhttp =null,yhttp=null,answerHTML = "",obj = null;
document.getElementById('loader').style.display = 'block';
$(document).ready(function() {
	console.log("ready");
	
	getNextQuestion(2);
	timer();
});

function getNextQuestion(t){
	console.log(t);
	if(t==2)
	{
		console.log("XMLHttp");
		xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState === 4 && this.status === 200) {
				console.log("SUMU");
				x = this.responseText;
				//console.log(x);
				// console.log(document.getElementById('que').value);
				obj =  x.split('*#*#');
				resetAll();
				if(x!=""){
					ans = obj[5];
					$('#opt1').html(obj[1]);
					$('#opt2').html(obj[2]);
					$('#opt3').html(obj[3]);
					$('#opt4').html(obj[4]);
					$('#que').html(obj[0]);
					if(obj[6]!='no'){
						$('#codeArea').html(obj[6].replace('\n','<br>'));
					}
					document.getElementById('loader').style.display = 'none';
					disabledButtons(0);
				}
				//createAnsNode(obj);
				xhttp = null;
			}
	    };
		xhttp.open("POST","http://localhost:8081/sandbox/platina/retrieval.php",false);
		xhttp.send();
	} else if(t==5){
		yhttp = new XMLHttpRequest();
		yhttp.onreadystatechange = function() {
		if (this.readyState === 4 && this.status === 200) {
			console.log("Attempt "+this.responseText);
			yhttp = null;
		}
		};
		yhttp.open("GET","http://localhost:8081/sandbox/platina/getScore.php?score=" +right+"&attempted="+total,false);
		yhttp.send();
		
	}
}

function resetAll() {
	$('#opt1').css('color','white');
	$('#opt2').css('color','white');
	$('#opt3').css('color','white');
	$('#opt4').css('color','white');
}

function disabledButtons(status){
	if(status==1){
		document.getElementById('opt1').disabled = true ;
		document.getElementById('opt2').disabled = true;
		document.getElementById('opt3').disabled = true;
		document.getElementById('opt4').disabled = true;
		
	}else{
		document.getElementById('opt1').disabled = false;
		document.getElementById('opt2').disabled = false;
		document.getElementById('opt3').disabled = false;
		document.getElementById('opt4').disabled = false;
		
	}
}

function timer() {
	var countDownDate = new Date().getTime()+30000;
	var x = setInterval(function() {

	  // Get todays date and time
	  
	  var now = new Date().getTime();


	  // Find the distance between now and the count down date
	  var distance = countDownDate - now;

	  // Time calculations for days, hours, minutes and seconds
	  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
	  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
	  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
	  var seconds = Math.floor((distance % (1000 * 60)) / 1000);

	  // Display the result in the element with id="demo"
	  document.getElementById("demo").innerHTML = days + "d " + hours + "h "
	  + minutes + "m " + seconds + "s ";

	  // If the count down is finished, write some text 
	  if (distance < 0) {
	    clearInterval(x);
	    disabledButtons(1);
	    xhttp = null;
	    getNextQuestion(5);
	   
		//checkAnswer(5,null);
	    document.getElementById("score").innerHTML = "Score : "+right+"/"+total;
	    document.getElementById("score").style.display = 'block';
		document.getElementById("question").style.display = 'none';
		// document.getElementById('sol').text = answerHTML;
		var newDiv = document.createElement('div');
		newDiv.innerHTML = answerHTML;
		console.log(answerHTML);
		document.getElementById('container1').appendChild(newDiv);
	    
	  }
	}, 1000);
}

// function createAnsNode(temp) {
//     var dense = '<h2>'+temp[0]+'</h2>\
// 				<button type="button" class="btn btn-secondary optbtn" >'+temp[1]+'</button>\
// 				<button type="button" class="btn btn-secondary optbtn">'+temp[2]+'</button>\
// 				<button type="button" class="btn btn-secondary optbtn">'+temp[3]+'</button>\
// 				<button type="button" class="btn btn-secondary optbtn">'+temp[4]+'</button><hr>';
    
//     answerHTML += dense;
// }

function checkAnswer(i,obj) {
	if(ans == i)
	{
		$(obj).css('color','green');
		right++;
	}
	else
	{
		$(obj).css('color','red');
		$('#obj'+ans).css('color','green');
	}
	answerHTML += '<div style="margin-bottom: 200px"><h3>'+$('#que').html()+'</h3>';
	for(var k=1;k<5;k++){
		if(ans==k)
			answerHTML += '<button type="button" class="btn btn-success optbtn" >'+$('#opt'+k).html()+'</button>';
		else if(i==k && ans != i)
			answerHTML += '<button type="button" class="btn btn-danger optbtn" >'+$('#opt'+k).html()+'</button>';
		else
			answerHTML += '<button type="button" class="btn btn-secondary optbtn" >'+$('#opt'+k).html()+'</button>';
	}
	answerHTML += '<hr></div>';
	total++;
	console.log("Score : "+right+"/"+total);
}
document.getElementById('opt1').onclick = function(){
	disabledButtons(1);
	document.getElementById('loader').style.display = 'block';
	checkAnswer(1,this);
	getNextQuestion(2);
};


document.getElementById('opt2').onclick = function(){
	disabledButtons(1);
	document.getElementById('loader').style.display = 'block';
	checkAnswer(2,this);
	getNextQuestion(2);
};
document.getElementById('opt3').onclick = function(){
	disabledButtons(1);
	document.getElementById('loader').style.display = 'block';
	checkAnswer(3,this);
	getNextQuestion(2);
};
document.getElementById('opt4').onclick = function(){
	disabledButtons(1);
	document.getElementById('loader').style.display = 'block';
	checkAnswer(4,this);
	getNextQuestion(2);
};


