<?php  require_once('includes/db.php');  ?>
<?php  require_once('includes/UserInformation.php');  ?>

<?php


if (isset($_GET['type']) && isset($_GET['name']) && isset($_GET['remarks'])) {
	$Name= mysqli_real_escape_string($conn, $_GET['name']);
	$Type= mysqli_real_escape_string($conn, $_GET['type']);
	$Remark_value= mysqli_real_escape_string($conn, $_GET['remarks']);


	date_default_timezone_set("Asia/Kathmandu");
    $CurrentTime= time();
    $DateTime = strftime("%Y-%m-%d %H:%M:%S", $CurrentTime);

    $Ip_track = UserInfo::get_ip();
    $Os_track = UserInfo::get_os();
    $Browser_track = UserInfo::get_browser();
    $Device_track = UserInfo::get_device();

    $logvalue = $Type. " by ". $Name;

			$stmt = $conn->prepare("insert into logs(type, value, time, ipaddress, os, browser, device, remarks) values(?,?, ?,?,?,?,?,?)");
            $stmt->bind_param("ssssssss", $Type, $logvalue , $DateTime, $Ip_track, $Os_track, $Browser_track, $Device_track, $Remark_value);
            $Execute = $stmt->execute();

            if($Execute){
            	echo "Success";
            	$stmt->close();
            $conn->close();
            } else{
            	echo "something went wrong";
            	$stmt->close();
            $conn->close();
            }
} else{
echo "Some datas are not available in the URL";
}

?>