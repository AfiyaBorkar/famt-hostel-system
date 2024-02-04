<?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();

if (isset($_GET['del'])) {
   $id = intval($_GET['del']);
   $adn = "delete from shortleaveapplication where cid=?";
   $stmt = $mysqli->prepare($adn);
   $stmt->bind_param('i', $id);
   $stmt->execute();
   $stmt->close();
   echo "<script>alert('Data Deleted');</script>";
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
   <title>Manage Rooms</title>
   <link rel="stylesheet" href="css/font-awesome.min.css">
   <link rel="stylesheet" href="css/bootstrap.min.css">
   <link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
   <link rel="stylesheet" href="css/bootstrap-social.css">
   <link rel="stylesheet" href="css/bootstrap-select.css">
   <link rel="stylesheet" href="css/fileinput.min.css">
   <link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
   <link rel="stylesheet" href="css/style.css">
   <script language="javascript" type="text/javascript">
      var popUpWin = 0;

      function popUpWindow(URLStr, left, top, width, height) {
         if (popUpWin) {
            if (!popUpWin.closed) popUpWin.close();
         }
         popUpWin = open(URLStr, 'popUpWin', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=yes,width=' + 510 + ',height=' + 430 + ',left=' + left + ', top=' + top + ',screenX=' + left + ',screenY=' + top + '');
      }
   </script>

</head>

<body>
   <?php include('includes/header.php'); ?>

   <div class="ts-main-content">
      <?php include('includes/sidebar.php'); ?>
      <div class="content-wrapper">
         <div class="container-fluid">
            <div class="row">
               <div class="col-md-12">
                  <h2 class="page-title">Manage Leave Applications</h2>
                  <div class="panel panel-default">
                     <div class="panel-heading">All Room Details</div>
                     <div class="panel-body" style="overflow:auto">
                        <table id="zctb" class="display table table-striped table-bordered table-hover" cellspacing="0" width="100%">
                           <thead>
                              <tr>
                                 <th>Sno.</th>
                                 <th>Student Name</th>
                                 <th>Building</th>
                                 <th>Reg no</th>
                                 <th>Branch</th>
                                 <th>Semester</th>
                                 <th>Contact no </th>
                                 <th>Room no </th>
                                 <th>Application Date </th>
                                 <th>leave application</th>
                                 <th>leave application status</th>
                                 <th>Action</th>

                              </tr>
                           </thead>
                           <tfoot>
                              <tr>
                                 <th>Sno.</th>
                                 <th>Student Name</th>
                                 <th>Building</th>
                                 <th>Reg no</th>
                                 <th>Year</th>
                                 <th>Semester</th>
                                 <th>Contact no </th>
                                 <th>Room no </th>
                                 <th>Application Date </th>
                                 <th>leave application</th>
                                 <th>leave application status</th>
                                 <th>Action</th>

                              </tr>
                           </tfoot>
                           <tbody>
                              <?php
                              $aid = $_SESSION['id'];
                              $ret = "SELECT * FROM `shortleaveapplication`";
                              $stmt = $mysqli->prepare($ret);
                              //$stmt->bind_param('i',$aid);
                              $stmt->execute(); //ok
                              $res = $stmt->get_result();
                              $cnt = 1;
                              while ($row = $res->fetch_object()) {
                              ?>
                                 <tr>
                                    <td><?php echo $cnt;; ?></td>
                                    <td><?php echo $row->name ?></td>
                                    <td><?php echo $row->building; ?></td>
                                    <td><?php echo $row->regno; ?></td>
                                    <td><?php echo $row->year; ?></td>
                                    <td><?php echo $row->semester; ?></td>
                                    <td><?php echo $row->contactno; ?></td>
                                    <td><?php echo $row->roomno; ?></td>
                                    <td><?php echo $row->applicationdate; ?></td>
                                    <td><?php echo $row->shortleave; ?></td>
                                    <td><?php echo $row->shortleavestatus; ?></td>
                                    <td>

                                       <a href="edit-student-shortleaveapplication.php?id=<?php echo $row->cid; ?>"><i class="fa fa-edit"></i></a>
                                       <a href="javascript:void(0);" onClick="popUpWindow('./full-profile.php?id=<?php echo $row->id; ?>');" title="View Full Details"><i class="fa fa-desktop"></i></a>&nbsp;&nbsp;
                                       	<a href="shortleaveapplications.php?del=<?php echo $row->cid; ?>" title="Delete Record" onclick="return confirm(" Do you want to delete");"><i class="fa fa-close"></i></a>
                                     
                                    </td>


                                 </tr>
                              <?php
                                 $cnt = $cnt + 1;
                              } ?>


                           </tbody>
                        </table>


                     </div>
                  </div>


               </div>
            </div>



         </div>
      </div>
   </div>

   <!-- Loading Scripts -->
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