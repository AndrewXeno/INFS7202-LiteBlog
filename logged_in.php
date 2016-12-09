<?php
session_start();
if (isset($_SESSION['isUser'])) {
	echo "true";
} else {
	echo "false";
}
?>