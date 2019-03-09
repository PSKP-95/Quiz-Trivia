<?php
  error_reporting( E_ALL ^ E_DEPRECATED );
    session_start();
    $name="";
    if(isset($_SESSION['sess_user']))
      $name=$_SESSION['sess_user'];

    $con=mysqli_connect('localhost','root','pskp@a95a','platina');
    $query=mysqli_query($con,"select * from user_info where username='".$name."' ");
    
    $res=mysqli_fetch_assoc($query);
    //var_dump($res);.
    $file_name = "";
    $tmp=0;
    $password=$res['password'];
    $fname=$res['fname'];
    $lname=$res['lname'];
    $email=$res['email'];
    $mobno=$res['mobno'];
    $collegename=$res['collegename'];
    $location=$res['location'];
    $status=$res['status'];
    $dppath=$res['dppath'];
    echo "<br><br>";
    
    if(isset($_POST['submit1']))
    {
        $sql2="UPDATE user_info SET";
        if($_POST['password']==$_POST['password2'] && $_POST['password2']!='')
        {
            $sql2=$sql2." password='".$_POST['password']."',";
        }


        if($_POST['first_name']!='' && $_POST['first_name']!=$fname)
        {
            $sql2=$sql2." fname='".$_POST['first_name']."',";

        }

        if($_POST['last_name']!='' && $_POST['last_name']!=$lname)
        {
            $sql2=$sql2." lname='".$_POST['last_name']."',";
        }                

        if($_POST['collegename']!='' && $_POST['collegename']!=$collegename)
        {
            $sql2=$sql2." collegename='".$_POST['collegename']."',";
        }

        if($_POST['mobno']!='' && $_POST['mobno']!=$mobno)
        {
            $sql2=$sql2." mobno='".$_POST['mobno']."',";
        }

        if($_POST['email']!='' && $_POST['email']!=$email)
        {
            $sql2=$sql2." email='".$_POST['email']."',";
        }

        if($_POST['location']!='' && $_POST['location']!=$location)
        {
            $sql2=$sql2." location='".$_POST['location']."',";
        }
        $sql2=$sql2."status=1 where username='".$name."'";
        
        $query1=mysqli_query($con,$sql2);
        if($query1)
          {
             echo "Successfully updated!";
             $tmp=1;
          }    
    }

    if(isset($_FILES['dp'])){
      $file_name = 'uploads/' . $_FILES['dp']['name'];
      $tmp_file = $_FILES['dp']['tmp_name'];
      move_uploaded_file($tmp_file, $file_name);

      $sql="update user_info set dppath= '".$file_name."' where username='".$name."'"; 
      $query=mysqli_query($con,$sql);
      $dppath=$file_name;
    }

    if($tmp==1)
    {
      $query=mysqli_query($con,"select * from user_info where username='".$name."' ");
        $res=mysqli_fetch_assoc($query);
        //var_dump($res);
        $password=$res['password'];
        $fname=$res['fname'];
        $lname=$res['lname'];
        $email=$res['email'];
        $mobno=$res['mobno'];
        $collegename=$res['collegename'];
        echo $collegename;
        $location=$res['location'];
        $status=$res['status'];
        $dppath=$res['dppath'];
    }
    
    include 'profile_score.php';

?>


<head>
  <title><?php echo $name;?>@platina</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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

      <style type="text/css">
        
        .font20{
          font-size: 15px;
        }

        .margin1{
          margin-bottom: 10px;
        }
        .table td {
   text-align: center;   
}

       .table th {
   text-align: center;   
}

      </style>
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
                  <a href="member.php">Home</a>
                  <a href="quiz.php">Quiz</a>
                  <a href="member.php#about">About Us</a>
                  <?php 
                    if($name!="") 
                    {
                      echo "<a href='#profile' style='color:red'>".$name."</a>";
                      echo "<a href='index.php'>Log out</a>";
                    }
                   ?>
                </nav>
                <div class="menu-bar"><span class="lnr lnr-menu"></span></div>
              </div>
            </div>
          </div>
        </div>
      </header>
      <!-- End Header Area -->
<br><br>
<div class="container bootstrap snippet">
    
    <div class="row">
  		<div class="col-sm-3"><!--left col-->
              

      <div class="text-center">
        <img src= <?php if($dppath==NULL) echo "http://ssl.gstatic.com/accounts/ui/avatar_2x.png"; else echo $dppath;?> style="border-radius: 50%" class="avatar img-circle img-thumbnail" alt="avatar">
        <h6>Upload a different photo...</h6>
        <form method="POST" action="" enctype="multipart/form-data">
          <input type="file" class="text-center center-block file-upload" name="dp">
          <input type="submit" name="submit" value="Upload" class="btn btn-success">
        </form>
      </div></hr><br>

               
          <div class="panel panel-default">
            <div class="panel-heading" style="text-align: center;"><?php echo '@'.$name; ?> <i class="fa fa-link fa-1x"></i></div> 
          </div>
          

               
         
          
        </div><!--/col-3-->
    	<div class="col-sm-9">
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
                <li><a data-toggle="tab" href="#messages">Personal Info</a></li>
                
              </ul>

              
          <div class="tab-content">
            <div class="tab-pane active" id="home">
              <br>
              <br>
                <table class="table ">
                <thead>
                  <tr>
                    <th scope="col ">Category</th>
                    <th scope="col" >Question Attempted</th>
                    <th scope="col">Correct</th>
                    <th scope="col">Star</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">History</th>
                    <td ><?php echo $attempted_his ?></td>
                    <td><?php echo $score_his ?></td>
                    <td>@mdo</td>
                  </tr>
                  <tr>
                    <th scope="row">Geography</th>
                    <td><?php echo $attempted_geo ?></td>
                    <td><?php echo $score_geo ?></td>
                    <td>@fat</td>
                  </tr>
                  <tr>
                    <th scope="row">Polity</th>
                    <td><?php echo $attempted_po ?></td>
                    <td><?php echo $score_po ?></td>
                    <td>@twitter</td>
                  </tr>
                  <tr>
                    <th scope="row">Economics</th>
                    <td><?php echo $attempted_ec ?></td>
                    <td><?php echo $score_ec ?></td>
                    <td>@twitter</td>
                  </tr>
                  <tr>
                    <th scope="row">General Science</th>
                    <td><?php echo $attempted_gs ?></td>
                    <td><?php echo $score_gs ?></td>
                    <td>@twitter</td>
                  </tr>
                  <tr>
                    <th scope="row">Latest Tech</th>
                    <td><?php echo $attempted_lt ?></td>
                    <td><?php echo $score_lt ?></td>
                    <td>@twitter</td>
                  </tr>
                  <tr>
                    <th scope="row">Java</th>
                    <td><?php echo $attempted_java ?></td>
                    <td><?php echo $score_java ?></td>
                    <td>@twitter</td>
                  </tr>
                  <tr>
                    <th scope="row">C Programming</th>
                    <td><?php echo $attempted_c ?></td>
                    <td><?php echo $score_c ?></td>
                    <td>@twitter</td>
                  </tr>
                  <tr>
                    <th scope="row">C++ Programming</th>
                    <td><?php echo $attempted_cpp ?></td>
                    <td><?php echo $score_cpp ?></td>
                    <td>@twitter</td>
                  </tr>
                  <tr>
                    <th scope="row">Operating System</th>
                    <td><?php echo $attempted_os ?></td>
                    <td><?php echo $score_os ?></td>
                    <td>@twitter</td>
                  </tr>
                  <tr>
                    <th scope="row">DS and Algorithm</th>
                    <td><?php echo $attempted_ds ?></td>
                    <td><?php echo $score_ds ?></td>
                    <td>@twitter</td>
                  </tr>
                  <tr>
                    <th scope="row">Computer Architecture</th>
                    <td><?php echo $attempted_ca ?></td>
                    <td><?php echo $score_ca ?></td>
                    <td>@twitter</td>
                  </tr>
                
                </tbody>
              </table> 
             </div><!--/tab-pane-->
             <div class="tab-pane" id="messages">
               
               
               
                <br>
                  <form class="form" action="" method="post" id="registrationForm">
                      <div class="form-group margin1">
                          
                          <div class="col-xs-6 margin1">
                              <label for="first_name"><h4>First name</h4></label>
                              <input type="text" class="form-control font20" name="first_name" id="first_name" placeholder="first name" title="enter your first name if any." value="<?php if($fname!=NULL) echo $fname;?>">
                          </div>
                      </div>
                      <div class="form-group margin1">
                          
                          <div class="col-xs-6 margin1">
                            <label for="last_name"><h4>Last name</h4></label>
                              <input type="text" class="form-control font20" name="last_name" id="last_name" placeholder="last name" title="enter your last name if any." <?php if($lname!=NULL) echo 'value="'.$lname.'"'; ?>>
                          </div>
                      </div>
          
                      <div class="form-group margin1">
                          
                          <div class="col-xs-6 margin1">
                              <label for="phone"><h4>College Name</h4></label>
                              <input type="text" class="form-control font20" name="collegename" id="collegename" placeholder="enter college name" title="enter your college name." <?php if($collegename!=NULL) echo 'value="'.$collegename.'"'; ?>>
                          </div>
                      </div>
          
                      <div class="form-group margin1">
                          <div class="col-xs-6 margin1">
                             <label for="mobile"><h4>Mobile</h4></label>
                              <input type="text" class="form-control font20" name="mobno" id="mobno" placeholder="enter mobile number" title="enter your mobile number if any." <?php if($mobno!=NULL) echo 'value="'.$mobno.'"' ;?>>
                          </div>
                      </div>
                      <div class="form-group margin1">
                          
                          <div class="col-xs-6 margin1">
                              <label for="email"><h4>Email</h4></label>
                              <input type="email" class="form-control font20" name="email" id="email" placeholder="you@email.com" title="enter your email." <?php if($email!=NULL) echo 'value="'.$email.'"'; ?>>
                          </div>
                      </div>
                      <div class="form-group margin1">
                          
                          <div class="col-xs-6 margin1">
                              <label for="email"><h4>Location</h4></label>
                              <input type="text" class="form-control font20" id="location" name="location" placeholder="somewhere" title="enter a location" <?php if($location!=NULL) echo 'value="'.$location.'"'; ?>>
                          </div>
                      </div>
                      <div class="form-group margin1">
                          
                          <div class="col-xs-6 margin1">
                              <label for="password"><h4>Password</h4></label>
                              <input type="password" class="form-control font20" name="password" id="password" placeholder="password" title="enter your password.">
                          </div>
                      </div>
                      <div class="form-group margin1">
                          
                          <div class="col-xs-6 margin1">
                            <label for="password2"><h4>Confirm password</h4></label>
                              <input type="password" class="form-control font20" name="password2" id="password2" placeholder="Re-enter your password" title="enter your password2.">
                          </div>
                      </div>
                    
                      <div class="form-group">
                           <div class="col-xs-12 margin1">
                                <br>
                              	<input class="btn btn-lg btn-success col-sm-3 " type="submit" name="submit1"  value="Save"><i class="glyphicon glyphicon-ok-sign"></i>
                               	
                            </div>
                      </div>
              	</form>
               
             </div><!--/tab-pane-->
               
              </div><!--/tab-pane-->
          </div><!--/tab-content-->

       </div>
     </div>


<script type="text/javascript">
	
	$(document).ready(function() {

    
    var readURL = function(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('.avatar').attr('src', e.target.result);
            }
    
            reader.readAsDataURL(input.files[0]);
        }
    }
    

    $(".file-upload").on('change', function(){
        readURL(this);
    });
});
</script> 


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