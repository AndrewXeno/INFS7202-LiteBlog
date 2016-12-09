<?php
include 'includes/functions.php';
if(!hasPermission()){
    echo "Please login before submitting!";
} else {
	processNewArticle();
}


function processNewArticle() {
	include 'includes/connect_database.php';
	// if (!get_magic_quotes_gpc()) {}
	$title = mysqli_real_escape_string($conn, $_POST["Title"]);
	$category = $_POST["Category"];
	$preview = mysqli_real_escape_string($conn, $_POST["Preview"]);
	$content = mysqli_real_escape_string($conn, $_POST["Content"]);
	$latitude = $_POST["Latitude"];
	$longitude = $_POST["Longitude"];

	if ($latitude != "" && $longitude != "") {
		$query = "INSERT INTO ARTICLE(Title, CategoryID, Preview, Content, Latitude, Longitude) values ('{$title}', {$category}, '{$preview}', '{$content}', {$latitude}, {$longitude})";
	} else {
		$query = "INSERT INTO ARTICLE(Title, CategoryID, Preview, Content) values ('{$title}', {$category}, '{$preview}', '{$content}')";
	}

	$result = mysqli_query($conn, $query);
	if (!$result) {
		die(mysqli_error($conn));
	}

	$query = "SELECT LAST_INSERT_ID() AS NewArticleID;";
	$result = mysqli_query($conn, $query);
	if (!$result) {
		die(mysqli_error($conn));
	}
	$row = mysqli_fetch_array($result);
	echo "Added: " . $row["NewArticleID"];

	mysqli_close($conn);
}

?>

