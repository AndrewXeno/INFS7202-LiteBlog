<?php
include 'includes/functions.php';
if(!hasPermission()){
    echo "Please login before submitting!";
} else {
	processUpdateArticle();
}

function processUpdateArticle() {
	include 'includes/connect_database.php';
	$articleID = $_POST["ArticleID"];
	$title = mysqli_real_escape_string($conn, $_POST["Title"]);
	$category = $_POST["Category"];
	$preview = mysqli_real_escape_string($conn, $_POST["Preview"]);
	$content = mysqli_real_escape_string($conn, $_POST["Content"]);
	$latitude = $_POST["Latitude"];
	$longitude = $_POST["Longitude"];



	if ($latitude != "" && $longitude != "") {
		$query = "UPDATE ARTICLE SET Title='{$title}', CategoryID={$category}, Preview='{$preview}', Content='{$content}', Latitude={$latitude}, Longitude={$longitude} WHERE ArticleID={$articleID};";
	} else {
		$query = "UPDATE ARTICLE SET Title='{$title}', CategoryID={$category}, Preview='{$preview}', Content='{$content}', Latitude=NULL, Longitude=NULL WHERE ArticleID={$articleID};";
	}

	$result = mysqli_query($conn, $query);
	if (!$result) {
		die(mysqli_error($conn));
	}
	echo "Updated: " . $articleID;

	mysqli_close($conn);
}

?>

