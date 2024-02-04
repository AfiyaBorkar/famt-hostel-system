<nav class="ts-sidebar">
			<ul class="ts-sidebar-menu">
			
				<li class="ts-label">&nbsp;</li>
				<?PHP if(isset($_SESSION['id']))
				{ ?>
					<li><a href="dashboard.php"><i class="fa fa-desktop"></i>Dashboard</a></li>
					<li><a href="my-profile.php"><i class="fa fa-user"></i> My Profile</a></li>
<li><a href="change-password.php"><i class="fa fa-files-o"></i>Change Password</a></li>
<li><a href="book-hostel.php"><i class="fa fa-ticket" aria-hidden="true"></i>Pay Fees</a></li>
<li><a href="room-details.php"><i class="fa fa-bed" aria-hidden="true"></i>Room Details</a></li>
		<li><a href="#"><i class="fa fa-envelope"></i>Leave Application</a>
				<ul>
					<li><a href="short leave application.php">Short Leave Application</a></li>
					<li><a href="student leave application.php">Hostel Leave Application</a></li>
				</ul>
			</li>
<li><a href="complaint.php"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i>complaint/suggestion</a></li>
<li><a href="access-log.php"><i class="fa fa-history" aria-hidden="true"></i>
Access log</a></li>
<li><a href="logout.php"><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</a></li>
<?php } else { ?>
				
				<li style="display:none"><a href="registration.php"><i class="fa fa-files-o"></i> User Registration</a></li>
				<li><a href="index.php"><i class="fa fa-users"></i> Student Login</a></li>
				<li><a href="admin"><i class="fa fa-user"></i> Warden Login</a></li>
				<li><a href="homepage.html"><i class="fa fa-home"></i> Homepage</a></li>
				<?php } ?>

			</ul>
		</nav>