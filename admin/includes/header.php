<?php if (isset($_SESSION['id'])) { ?>
	<div class="brand clearfix">
		<!-- <a href="#" class="logo" style="font-size:16px;">Hostel Management System</a> -->
		<img src="img/college-icon.jpg" alt="">
		<span class="menu-btn"><i class="fa fa-bars"></i></span>
		<ul class="ts-profile-nav">
			<li class="ts-account">
				<a href="#"><img src="img/ts-avatar-male.jpg" class="ts-avatar hidden-side" alt=""> Account <i class="fa fa-angle-down hidden-side"></i></a>
				<ul>
					<li><a href="admin-profile.php">My Account</a></li>
					<li><a href="logout.php">Logout</a></li>
				</ul>
			</li>
		</ul>
	</div>
<?php
} else { ?>
	<div class="brand clearfix">
		<!--<a href="#" class="logo" style="font-size:16px;">Hostel Management System2</a>-->
		<img src="img/college-icon.jpg" alt="">
		<span class="menu-btn"><i class="fa fa-bars"></i></span>

	</div>
<?php } ?>