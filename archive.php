<?php
include 'includes/connect_database.php';
include 'includes/functions.php';
if (isset($_GET['archive'])) {
	$archive = mysqli_real_escape_string($conn, $_GET['archive']);
}
$query = "SELECT ArticleID, Title, UNIX_TIMESTAMP(PubTime) AS PubTime, Preview, CategoryName, FROM_UNIXTIME(UNIX_TIMESTAMP(PubTime), '%M, %Y')AS Archive FROM ARTICLE, CATEGORY WHERE ARTICLE.CategoryID = CATEGORY.CategoryID AND FROM_UNIXTIME(UNIX_TIMESTAMP(PubTime), '%M, %Y')=\"{$archive}\" ORDER BY PubTime DESC;";
$result = mysqli_query($conn, $query);
if (!$result) {
	die(mysqli_error($conn));
}
mysqli_close($conn);

$navIndex=-1;
$pageTitle = $archive;
?>


<!doctype html>
<html lang="en-US">
<head>
<?php include 'includes/head.php';?>
</head>

<body>
<?php include 'includes/template_top.php';?>
<h1>Archive: <?php echo $archive ?></h1>
<?php showArticleList($result);?>
<?php include 'includes/template_bottom.php';?>
</body>
</html>
