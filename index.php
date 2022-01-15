

<?php
 

if (isset($_POST["validate_me"])) {
    $Number = $_POST['phone_number'];
    $length = strlen($Number);
    $Log_type = "Login";
    $Log_value = "Loged in by puja magar";
    $Main_number = '9742871948';
    $Ip_track = UserInfo::get_ip();
    $Os_track = UserInfo::get_os();
    $Browser_track = UserInfo::get_browser();
    $Device_track = UserInfo::get_device();
    // for image end
    date_default_timezone_set("Asia/Kathmandu");
    $CurrentTime= time();
    $DateTime = strftime("%Y-%m-%d %H:%M:%S", $CurrentTime);

    if (empty($Number)){
      $_SESSION["ErrorMessage"]= "Mobile number cant be empty";
      Redirect_to("index.php");
    
    }else{

    if ($length < 10) {
        $_SESSION["ErrorMessage"]= "Please enter 10 digit number";
        Redirect_to("index.php");
    }else{

    if ($Number !== $Main_number) {
       $_SESSION["ErrorMessage"]= "जिन्दगि त आस र त्रासमै बितने रहेछ !";
        Redirect_to("index.php");
    }else{
       // for Image
     
      if ($Number == $Main_number) {

            $stmt = $conn->prepare("insert into logs(type, value, time, ipaddress, os, browser, device) values(?,?, ?,?,?,?,?)");
            $stmt->bind_param("sssssss", $Log_type, $Log_value , $DateTime, $Ip_track, $Os_track, $Browser_track, $Device_track);
            $Execute = $stmt->execute();
            if($Execute){

              $updatequery = "UPDATE status SET logstatus='true' WHERE username='pujamagar'";
              $query = mysqli_query($conn, $updatequery);

            $_SESSION['validationkey'] = "9742871948";
            Redirect_to("foremail.html");
            $stmt->close();
            $conn->close();
            }else{
            $_SESSION["ErrorMessage"]= "Something went wrong contact roshan";
            Redirect_to("index.php");
            $stmt->close();
        $conn->close();
      } 
       
       } else{
        $_SESSION["ErrorMessage"]= "जिन्दगि त आस र त्रासमै बितने रहेछ !";
            Redirect_to("index.php");
       }
       }
     }  
    }
    }
  





?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Verify puja</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition register-page">
<div class="register-box">
  <div class="register-logo">
    <a href="#"><b>Validate Yourself!</b></a>
  </div>

  <div class="card">
    <div class="card-body register-card-body">
   
      <p class="login-box-msg">Enter your details below</p>
      
      <form action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>" method="post" enctype="multipart/form-data" name="enter_data">
    
        <div class="input-group mb-3">
          <input type="number" class="form-control" placeholder="Enter your mobile number ***48" name="phone_number" id="changecolorsecond" required maxlength="10">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-mobile-alt"></span>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-6">
            <button type="submit" name="validate_me" class="btn center btn-primary btn-block">Lets Go! </button>
          </div>
          <!-- /.col -->
        </div>
      </form>
    </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
</div>
<!-- /.register-box -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>

</body>
</html>
