<?php
	include 'includes/connect_database.php';
	$ArticleID = $_POST["ArticleID"];
	$query = "SELECT * FROM ARTICLE WHERE ArticleID=$ArticleID";
	$result = $conn->query($query);

	$json_result=array();

	while($row = $result->fetch_assoc()) {
		array_push($json_result, $row);
	}

	echo json_encode($json_result); 
	mysqli_close($conn);
?>