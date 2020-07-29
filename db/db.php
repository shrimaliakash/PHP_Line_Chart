<?php
$host = "localhost";
$db = "akash_hiddenbrians";
$username = "root";
$password = "123456";
$conn = mysqli_connect($host, $username, $password, $db);
if (!$conn) {
	return "Database Not Connect.";
} else {
	return "Database Connect Successfully.";
}
?>