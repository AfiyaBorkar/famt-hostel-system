<?php
session_start();
include('includes/config.php');
date_default_timezone_set('Asia/Kolkata');
include('includes/checklogin.php');
check_login();
$aid = $_SESSION['id'];
if (isset($_POST['update'])) {

	$regno = $_POST['regno'];
	$emailid = $_POST['emailid'];
	$fname = $_POST['fname'];
	$mname = $_POST['mname'];
	$lname = $_POST['lname'];
	$gender = $_POST['gender'];
	$contactno = $_POST['contact'];
	$udate = date('d-m-Y h:i:s', time());

	$branch = $_POST['branch'];
	$egycontactno = $_POST['egycontactno'];
	$pmntAddress = $_POST['pmntAddress'];
	$pmntCity = $_POST['pmntCity'];
	$pmnatetState = $_POST['pmnatetState'];
	$pmntPincode = $_POST['pmntPincode'];

	$query = "update  registration set regno=?,emailid=?,firstName=?,middleName=?,lastName=?,gender=?,contactno=?,egycontactno=?,branch=?,pmntAddress=?,pmntCity=?,pmnatetState=?,pmntPincode=?,corresAddress=?,corresCIty=?,corresState=?,corresPincode=?,updationDate=? where id=?";
	$stmt = $mysqli->prepare($query);
	$rc = $stmt->bind_param('ssssssiissssisssisi', $regno,$emailid, $fname, $mname, $lname, $gender, $contactno, $egycontactno, $branch, $pmntAddress, $pmntCity, $pmnatetState, $pmntPincode, $pmntAddress, $pmntCity, $pmnatetState, $pmntPincode, $udate, $aid);
	$stmt->execute();
	echo "<script>alert('Profile updated Succssfully');</script>";
	// echo $stmt;
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
	<title>Profile Updation</title>
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
</head>

<body>
	<?php include('includes/header.php'); ?>
	<div class="ts-main-content">
		<?php include('includes/sidebar.php'); ?>
		<div class="content-wrapper">
			<div class="container-fluid">
				<?php
				$aid = $_SESSION['login'];
				$ret = "select * from registration where id=?";
				$stmt = $mysqli->prepare($ret);
				$stmt->bind_param('s', $aid);
				$stmt->execute(); //ok
				$res = $stmt->get_result();
				//$cnt=1;
				while ($row = $res->fetch_object()) {
				?>
					<div class="row">
						<div class="col-md-12">
							<h2 class="page-title"><?php echo $row->firstName; ?>'s&nbsp;Profile </h2>

							<div class="row">
								<div class="col-md-12">
									<div class="panel panel-primary">
										<div class="panel-heading">

											Last Updation date : &nbsp; <?php echo $row->updationDate; ?>
										</div>


										<div class="panel-body">
											<form method="post" action="" name="registration" class="form-horizontal" onSubmit="return valid();">



												<div class="form-group">
													<label class="col-sm-2 control-label"> Registration No : </label>
													<div class="col-sm-8">
														<input type="text" name="regno" id="regno" class="form-control" required="required" value="<?php echo $row->regno; ?>" readonly>
													</div>
												</div>


												<div class="form-group">
													<label class="col-sm-2 control-label">First Name : </label>
													<div class="col-sm-8">
														<input type="text" name="fname" id="fname" class="form-control" value="<?php echo $row->firstName; ?>" required="required">
													</div>
												</div>

												<div class="form-group">
													<label class="col-sm-2 control-label">Middle Name : </label>
													<div class="col-sm-8">
														<input type="text" name="mname" id="mname" class="form-control" value="<?php echo $row->middleName; ?>">
													</div>
												</div>

												<div class="form-group">
													<label class="col-sm-2 control-label">Last Name : </label>
													<div class="col-sm-8">
														<input type="text" name="lname" id="lname" class="form-control" value="<?php echo $row->lastName; ?>" required="required">
													</div>
												</div>

												<div class="form-group">
													<label class="col-sm-2 control-label">Gender : </label>
													<div class="col-sm-8">
														<select name="gender" class="form-control" required="required">
															<option value="<?php echo $row->gender; ?>"><?php echo $row->gender; ?></option>
															<option value="male">Male</option>
															<option value="female">Female</option>
															<option value="others">Others</option>

														</select>
													</div>
												</div>

												<div class="form-group">
													<label class="col-sm-2 control-label">Contact No : </label>
													<div class="col-sm-8">
														<input type="text" name="contact" id="contact" class="form-control" maxlength="10" value="<?php echo $row->contactno; ?>" required="required">
													</div>
												</div>


												<div class="form-group">
													<label class="col-sm-2 control-label">Email id: </label>
													<div class="col-sm-8">
														<input type="email" name="emailid" id="email" class="form-control" value="<?php echo $row->emailid; ?>">
														<span id="user-availability-status" style="font-size:12px;"></span>
													</div>
												</div>

												<div class="form-group">
													<label class="col-sm-2 control-label">Branch : </label>
													<div class="col-sm-8">
														<select name="branch" class="form-control" required="required">
															<option value="<?php echo $row->branch; ?>"><?php echo $row->branch; ?></option>
															<option value="FE">FE</option>
															<option value="SE">SE</option>
															<option value="TE">TE</option>
															<option value="BE">BE</option>

														</select>
													</div>
												</div>


												<div class="form-group">
													<label class="col-sm-2 control-label">Emergency Contact: </label>
													<div class="col-sm-8">
														<input type="text" name="egycontactno" id="egycontactno" class="form-control" value="<?php echo $row->egycontactno; ?>">
														<span id="user-availability-status" style="font-size:12px;"></span>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-2 control-label">course: </label>
													<div class="col-sm-8">
														<input type="text" name="course" id="course" class="form-control" value="<?php echo $row->course; ?>" readonly>
														<span id="user-availability-status" style="font-size:12px;"></span>
													</div>
												</div>


												<div class="form-group">
													<label class="col-sm-2 control-label">Address : </label>
													<div class="col-sm-8">
														<textarea rows="5" name="pmntAddress" id="pmntAddress" class="form-control" required="required"><?php echo $row->pmntAddress; ?></textarea>
													</div>
												</div>

												<div class="form-group">
													<label class="col-sm-2 control-label">City : </label>
													<div class="col-sm-8">
														<input type="text" name="pmntCity" id="pmntCity" class="form-control" value="<?php echo $row->pmntCity; ?>" required="required">
													</div>
												</div>

												<div class="form-group">
													<label class="col-sm-2 control-label">State : </label>
													<div class="col-sm-8">
														<input type="text" name="pmnatetState" id="pmnatetState" class="form-control" value="<?php echo $row->pmnatetState; ?>" required="required">
													</div>
												</div>



												<div class="form-group">
													<label class="col-sm-2 control-label">Pincode : </label>
													<div class="col-sm-8">
														<input type="text" name="pmntPincode" id="pmntPincode" class="form-control" value="<?php echo $row->pmntPincode; ?>" required="required">
													</div>
												</div>
											<?php } ?>





											<div class="col-sm-6 col-sm-offset-4">

												<input type="submit" name="update" Value="Update Profile" class="btn btn-primary">
											</div>
											</form>

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
<script type="text/javascript">
	$(document).ready(function() {
		$('input[type="checkbox"]').click(function() {
			if ($(this).prop("checked") == true) {
				$('#paddress').val($('#address').val());
				$('#pcity').val($('#city').val());
				$('#pstate').val($('#state').val());
				$('#ppincode').val($('#pincode').val());
			}

		});
	});
</script>
<script>
	function checkAvailability() {

		$("#loaderIcon").show();
		jQuery.ajax({
			url: "check_availability.php",
			data: 'emailid=' + $("#email").val(),
			type: "POST",
			success: function(data) {
				$("#user-availability-status").html(data);
				$("#loaderIcon").hide();
			},
			error: function() {}
		});
	}
</script>

</html>