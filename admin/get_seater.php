<?php
include('includes/pdoconfig.php');
if(!empty($_POST["roomid"])) 
{	
$id=$_POST['roomid'];
$Building=$_POST['Building'];
$stmt = $DB_con->prepare("SELECT * FROM rooms WHERE room_no = :id and Building=:Building");
$stmt->execute(array(':id' => $id,':Building' => $Building));
?>
 <?php
 while($row=$stmt->fetch(PDO::FETCH_ASSOC))
 {
  ?>
 <?php echo ($row['seater']); ?>
  <?php
 }
}



if(!empty($_POST["rid"])) 
{	
$id=$_POST['rid'];
$stmt = $DB_con->prepare("SELECT * FROM rooms WHERE room_no = :id");
$stmt->execute(array(':id' => $id));
?>
 <?php
 while($row=$stmt->fetch(PDO::FETCH_ASSOC))
 {
  ?>
 <?php echo htmlentities($row['fees']); ?>
  <?php
 }
}


if(!empty($_POST["bldname"])) 
{	
$id=$_POST['bldname'];
$stmt = $DB_con->prepare("SELECT * FROM rooms WHERE room_no = :id");
$stmt->execute(array(':id' => $id));
?>
 <?php
 while($row=$stmt->fetch(PDO::FETCH_ASSOC))
 {
  ?>
 <?php 
 //echo "<b>".$row['Building']."</b>";
echo '<option value="' . $row['Building'] . '">' . $row['Building'] . '</option>';


 ?>
  <?php
 }
}

?>