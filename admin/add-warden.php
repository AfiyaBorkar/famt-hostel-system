<?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();
//code for add courses
if ($_POST['submit']) {
   $wname = $_POST['wn'];
   $wemail = $_POST['wemail'];
   $wpn = $_POST['wpn'];
   $gender = $_POST['gender'];
   $type = "warden";

   $query = "insert into  admin (username,email,mobile_no,gender,password,type) values(?,?,?,?,?,?)";
   $stmt = $mysqli->prepare($query);
   $rc = $stmt->bind_param('ssssss', $wname, $wemail, $wpn,$gender,$wpn,$type);
   $stmt->execute();
   echo "<script>alert('warden has been added successfully');</script>";
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
   <title>Add Warden</title>
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
</head>

<body>
   <?php include('includes/header.php'); ?>
   <div class="ts-main-content">
      <?php include('includes/sidebar.php'); ?>
      <div class="content-wrapper">
         <div class="container-fluid">

            <div class="row">
               <div class="col-md-12">

                  <h2 class="page-title">Add Warden </h2>

                  <div class="row">
                     <div class="col-md-12">
                        <div class="panel panel-default">
                           <div class="panel-heading">Add Warden</div>
                           <div class="panel-body">
                              <form method="post" class="form-horizontal">

                                 <div class="hr-dashed"></div>
                                 <div class="form-group">
                                    <label class="col-sm-2 control-label">Warden Name</label>
                                    <div class="col-sm-8">
                                       <input type="text" value="" name="wn" class="form-control">
                                    </div>
                                 </div>
                                 <div class="form-group">
                                    <label class="col-sm-2 control-label">Warden Email</label>
                                    <div class="col-sm-8">
                                       <input type="text" class="form-control" name="wemail" id="wemail" value="" required="required">
                                    </div>
                                 </div>
                                 <div class="form-group">
                                    <label class="col-sm-2 control-label">Mobile number</label>
                                    <div class="col-sm-8">
                                       <input type="text" class="form-control" name="wpn" id="wpn" value="" required="required">
                                    </div>
                                 </div>
                                 <div class="form-group">
                                    <label class="col-sm-2 control-label">Gender : </label>
                                    <div class="col-sm-8">
                                       <select name="gender" class="form-control" required="required">
                                          <option value="">Select Gender</option>
                                          <option value="male">Male</option>
                                          <option value="female">Female</option>
                                          <option value="others">Others</option>
                                       </select>
                                    </div>
                                 </div>



                                 <div class="col-sm-8 col-sm-offset-2">

                                    <input class="btn btn-primary" type="submit" name="submit" value="Add warden">
                                 </div>
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
   <script src="js/jquery.min.js"></script>
   <script src="js/bootstrap-select.min.js"></script>
   <script src="js/bootstrap.min.js"></script>
   <script src="js/jquery.dataTables.min.js"></script>
   <script src="js/dataTables.bootstrap.min.js"></script>
   <script src="js/Chart.min.js"></script>
   <script src="js/fileinput.js"></script>
   <script src="js/chartData.js"></script>
   <script src="js/main.js"></script>

   </script>
</body>

</html>