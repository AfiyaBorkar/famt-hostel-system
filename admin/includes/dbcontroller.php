<?php
// $DB_host = "localhost";
// $DB_user = "id20232029_famthosteldemo";
// $DB_pass = "Saif@12345678";
// $DB_name = "id20232029_famt";


include('config.php');
try
{
 $DB_con = new PDO("mysql:host={$DB_host};dbname={$DB_name}",$DB_user,$DB_pass);
 $DB_con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch(PDOException $e)
{
 $e->getMessage();
}
?>