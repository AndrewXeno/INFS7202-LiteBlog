<?php
include 'includes/functions.php';
if(!hasPermission()){
    echo "Please login before deleting!";
} else {
	deleteArticle();
}

function deleteArticle() {
	$ArticleID = $_POST["ArticleID"];
	include 'includes/connect_database.php';
	$query = "DELETE FROM ARTICLE WHERE ArticleID=$ArticleID";
	$result = mysqli_query($conn, $query);

	if (mysqli_affected_rows($conn) > 0) {
		echo "succeeded";
	} else {
		echo "Deletion failed.";
	}
	mysqli_close($conn);
}

?>

