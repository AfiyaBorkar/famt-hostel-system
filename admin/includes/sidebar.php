<nav class="ts-sidebar">
	<ul class="ts-sidebar-menu">

		<li class="ts-label"></li>
		<?PHP if (isset($_SESSION['id'])) { ?>
			<li><a href="admin-profile.php"><i class="fa fa-user"></i>
					Profile</a></li>
			<li><a href="dashboard.php"><i class="fa fa-dashboard"></i> Dashboard</a></li>
			<li><a href="#"><i class="fa fa-files-o"></i> Courses</a>
				<ul>
					<li><a href="add-courses.php">Add Courses</a></li>
					<li><a href="manage-courses.php">Manage Courses</a></li>
				</ul>
			</li>
			
					

					<?php
                              $aid = $_SESSION['id'];
                            //   $ret = "select * from admin where id=";
                            //   $stmt = $mysqli->prepare($ret);
                            //   //$stmt->bind_param('i',$aid);
                            //   $stmt->execute(); //ok
                            //   $res = $stmt->get_result();
                            //   $cnt = 1;
                              if($aid=="1") {
                              ?>
                                <li><a href="#"><i class="fa fa-user-secret" aria-hidden="true"></i>
					Wardens</a>
                                <ul>
									
					<li><a href="add-warden.php">Add Warden</a></li>
					<li><a href="manage-warden.php">Manage Warden</a></li>
				</ul>
							  </li>
				<?php } ?>
                            
				
			</li>
			<li><a href="#"><i class="fa fa-desktop"></i> Rooms</a>
				<ul>
					<li><a href="create-room.php">Add a Room</a></li>
					<li><a href="manage-rooms.php">Manage Rooms</a></li>
				</ul>
			</li>
			
					<li><a href="#"><i class="fa fa-desktop"></i> Student</a>
				<ul>
					<li><a href="registration.php"><i class="fa fa-user-plus"></i>Student Registration</a></li>
					<li><a href="manage-students.php"><i class="fa fa-users"></i>Manage Students</a></li>
				</ul>
			</li>
			

		
	
	
			
					<li><a href="#"><i class="fa fa-envelope"></i>Students Leave Applications</a>
				<ul>
					<li><a href="shortleaveapplications.php"><i class="fa fa-envelope"></i>Short Leave Applications</a></li>
					<li><a href="leaveapplications.php"><i class="fa fa-envelope"></i>Hostel Leave Applicationss</a></li>
				</ul>
			</li>
			
<li><a href="complaint.php"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i>Complaints/Suggestion</a></li>
			<li><a href="access-log.php"><i class="fa fa-history" aria-hidden="true"></i>User Access logs</a></li>
			<li><a href="logout.php"><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</a></li>
		<?php } else { ?>
			<li style="display:none"><a href="registration.php"><i class="fa fa-files-o"></i> User Registration</a></li>
			<li><a href="../index.php"><i class="fa fa-users"></i> Student Login</a></li>
			<li><a href="index.php"><i class="fa fa-user"></i> Warden Login</a></li>
			<li ><a href="homepage.html"><i class="fa fa-home"></i> Homepage</a></li>
		<?php } ?>
	</ul>
</nav>