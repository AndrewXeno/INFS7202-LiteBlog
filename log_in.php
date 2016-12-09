<?php
include 'includes/functions.php';
login();

function login() {
	$username = $_POST["Username"];
	$password = $_POST["Password"];
	if (validateLogin($username, $password)) {
		session_start();
     	$_SESSION['isUser'] = true;
      	echo "true";
      	//exit();
	} else {
		echo "false";
	}

}
?>