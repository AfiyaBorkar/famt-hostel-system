<?php
session_start();
include('includes/config.php');
error_reporting(0);
if (isset($_POST['login'])) {
	$email = $_POST['email'];
	$uemail = $email;
	$contact = $_POST['contact'];
	$stmt = $mysqli->prepare("SELECT emailid,contactno,password FROM registration WHERE (emailid=? && contactno=?) ");
	$stmt->bind_param('ss', $email, $contact);
	$stmt->execute();
	$stmt->bind_result($username, $email, $password);
	$rs = $stmt->fetch();
	if ($rs) {
	  
		$pwd = $password;
   $subject = "FAMT-HOSTEL";  
   $message = "Your Password is:".$pwd;  
   $result = mail ($uemail,$subject,$message);  
 
		
	} else {
		echo "<script>alert('Invalid Email/Contact no or password');</script>";
	}
}
?>

<!doctype html>
<html lang="en" class="no-js">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>User Forgot Password</title>

	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
</head>

<body>

	<?php include('includes/header.php'); ?>


	<div class="ts-main-content">

		<?php include('includes/sidebar.php'); ?>
		<div class="content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<h2 class="page-title">Forgot Password </h2>
					<div class="col-md-6 col-md-offset-3">


						<div class="well row pt-2x pb-3x bk-light">
							<div class="col-md-8 col-md-offset-2">
								<img src="https://famt.akronsystems.com/img/FAMT-LOGO.png" width="100%">
								<?php if (isset($_POST['login'])) { 
								        if( $result == true ){ 
								    
      echo "Your password sent successfully to ".$uemail;
   }else{  
      echo "Sorry, unable to send mail...";  
   }  
								?>
								
									
								<?php }  ?>
								<form action="" class="mt" method="post">
									<label for="" class="text-uppercase text-sm">Your Email</label>
									<input type="email" placeholder="Email" name="email" class="form-control mb">
									<label for="" class="text-uppercase text-sm">Your Contact no</label>
									<input type="text" placeholder="Contact no" name="contact" class="form-control mb">


									<input type="submit" name="login" class="btn btn-primary btn-block" value="login">
								</form>
							</div>
						</div>
						<div class="text-center text-light">
							<a href="index.php" class="text-light">Sign in?</a>
						</div>
					</div>

				</div>
			</div>
		</div>

		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap-select.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.dataTables.min.js"></script>
		<script src="js/dataTables.bootstrap.min.js"></script>
		<script src="js/Chart.min.js"></script>
		<script src="js/fileinput.js"></script>
		<script src="js/chartData.js"></script>
		<script src="js/main.js"></script>
</body>

</html>