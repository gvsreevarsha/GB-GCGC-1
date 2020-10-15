<?php
require_once 'auth.php';
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PATCH, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token');
$Sno = $_GET['id'];
$students = [];
$sql = "SELECT * FROM `ari_date_yop` where SNo=".$Sno;
$status="";
$ct=0;
$result=mysqli_query($con,$sql);
$row=mysqli_fetch_assoc($result);
if($row['name']=="AMCAT")
{
    $sql1 = "SELECT * FROM `leaderboard` WHERE `YOP`=".$row['yop']." GROUP BY `user_id`";
    if($result1=mysqli_query($con,$sql1)){
  		while($row1=mysqli_fetch_assoc($result1)){
   			$students[$ct]['id'] = $row1['user_id'];
   			$students[$ct]['name'] = $row1['first_name']. $row1['middle_name']. $row1['last_name'];
   			$students[$ct]['score'] = $row1['Amcat_score'];
   			$ct++;
  		}
 	}
}
else if($row['name']=="COCUBES-1" || $row['name']=="COCUBES-2")
{
   	$sql1 = "SELECT * FROM `leaderboard` WHERE `YOP`=".$row['yop']." GROUP BY `user_id`";
   	if($result1=mysqli_query($con,$sql1)){
		while($row1=mysqli_fetch_assoc($result1)){
			$students[$ct]['id'] = $row1['user_id'];
			$students[$ct]['name'] = $row1['first_name']. $row1['middle_name']. $row1['last_name'];
			$students[$ct]['score'] = $row1['Cocubes_score'];
			$ct++;
		}
	}
}
else
{
   	$column=$row['ari'];
   	$sql1 = "SELECT `academic_details`.`user_id` as `user_id`,`personal_details_mdb`.`first_name` as `first_name`,`personal_details_mdb`.`middle_name` as `middle_name`,`personal_details_mdb`.`last_name` as `last_name`,`ari`.`".$column."` FROM `ari`,`academic_details`,`personal_details_mdb` WHERE `ari`.`Unique_Id`=`academic_details`.`user_id` and `YOP`=".$row['yop']." AND `academic_details`.`user_id`=`personal_details_mdb`.`user_id` ORDER BY `ari`.`".$column."` DESC";
   	if($result1=mysqli_query($con,$sql1)){
		while($row1=mysqli_fetch_assoc($result1)){
			$students[$ct]['id'] = $row1['user_id'];
			$students[$ct]['name'] = $row1['first_name']. $row1['middle_name']. $row1['last_name'];
			$students[$ct]['score'] = $row1[$column];
			$ct++;
		}
	}
}
echo(json_encode($students));
?>