<?php
ini_set('memory_limit', '512M');
if (!isset($_COOKIE['first_time'])) {
    if (!isset($_SESSION['redirected'])) {
        $_SESSION['redirected'] = true;
        
        // If the cookie doesn't exist, set it to expire in one hour
        setcookie('first_time', '1', time()+3600);
        
        // Redirect to the first-time user homepage
        header('Location: homepage.html');
        exit();
    } else {
        // Display an error message
        echo "Sorry, we could not set the cookie.";
    }
}

ob_start();
session_start();
error_reporting(0);
if($_SESSION['id'])
{
	header("location:dashboard.php");

}
include('includes/config.php');
if (isset($_POST['login'])) {
	echo $Registration_No = $_POST['Registration_No'];
	$password = $_POST['password'];
	//$leaveapplicationstatus="approved";
	$stmt = $mysqli->prepare("SELECT regno,emailid,password,id,leaveapplicationstatus FROM registration WHERE regno=? and password=?  and leaveapplicationstatus!='approved'");

	$stmt->bind_param('ss', $Registration_No, $password);
	$stmt->execute();
	$stmt->bind_result($Registration_No,$uremail,$password, $id, $leaveapplicationstatus);
	$rs = $stmt->fetch();
	$stmt->close();
	$_SESSION['id'] = $id;
    // $_SESSION['login'] = $uremail;
    $_SESSION['login'] = $id;
	$uip = $_SERVER['REMOTE_ADDR'];
	$ldate = date('d/m/Y h:i:s', time());
	echo $rs;
	if ($rs) {
		$uid = $_SESSION['id'];
		$uemail = $_SESSION['login'];
		$ip = $_SERVER['REMOTE_ADDR'];
		$geopluginURL = 'http://www.geoplugin.net/php.gp?ip=' . $ip;
		$addrDetailsArr = unserialize(file_get_contents($geopluginURL));
		
		$country = '';

if (isset($addrDetailsArr['geoplugin_countryName'])) {
    $country = $addrDetailsArr['geoplugin_countryName'];
}

$city='';
if (isset($addrDetailsArr['geoplugin_city'])) {
		$city = $addrDetailsArr['geoplugin_city'];
}


		$log = "insert into userlog(userId,userregno,userIp,city,country) values('$uid','$Registration_No','$ip','$city','$country')";
		$mysqli->query($log);
// 		if ($mysqli->errno) {
//     die('Error: ' . $mysqli->error);
// }
		if ($log) {
	header("location:dashboard.php");
	
		}
	} else {
		echo "<script>alert('Invalid Username/Email or password or you leave the hostel');</script>";
	//	echo "hi";
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
	<meta name="theme-color" content="#357be">
	<title>Student Hostel Registration</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">>
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
	<script type="text/javascript" src="js/jquery-1.11.3-jquery.min.js"></script>
	<script type="text/javascript" src="js/validation.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
	<script type="text/javascript">
		function valid() {
			if (document.registration.password.value != document.registration.cpassword.value) {
				alert("Password and Re-Type Password Field do not match  !!");
				document.registration.cpassword.focus();
				return false;
			}
			return true;
		}
	</script>
	
	<style>
	    div a img
{
visibility:hidden;
}
	</style>
</head>

<body>
	<?php include('includes/header.php'); ?>

	<div class="ts-main-content">

		<?php include('includes/sidebar.php'); ?>
		<div class="content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<h2 class="page-title">Student Login </h2>
						<div class="row">
							<div class="col-md-6 col-md-offset-3">
								<div class="well row pt-2x pb-3x bk-light">
									<div class="col-md-8 col-md-offset-2">
										<img src="https://famt.akronsystems.com/img/FAMT-LOGO.png" width="100%">

										<form action="" class="mt" method="post">
											<label for="" class="text-uppercase text-sm">Registration No</label>
											<input type="text" placeholder="Registration No" name="Registration_No" class="form-control mb">
											<label for="" class="text-uppercase text-sm">Password</label>
											<input type="password" placeholder="Password" name="password" class="form-control mb">


											<input type="submit" name="login" class="btn btn-primary btn-block" value="login">
										</form>
										<div class="text-center text-light" style="color:black;padding-bottom: 20px;"> <br>
											<a href="forgot-password.php" style="color:black;">Forgot password?</a>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
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