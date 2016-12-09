<?php
include 'includes/connect_database.php';
include 'includes/functions.php';
if (isset($_GET['category'])) {
	$category = mysqli_real_escape_string($conn, $_GET['category']);
}
$query = "SELECT ArticleID, Title, UNIX_TIMESTAMP(PubTime) AS PubTime, Preview, CategoryName FROM ARTICLE, CATEGORY WHERE ARTICLE.CategoryID = CATEGORY.CategoryID AND CATEGORY.CategoryName LIKE \"{$category}%\" ORDER BY PubTime DESC;";
$result = mysqli_query($conn, $query);
if (!$result) {
	die(mysqli_error($conn));
}
mysqli_close($conn);

$navIndex=getNavIndex($category);
$pageTitle = $category;
?>

<!doctype html>
<html lang="en-US">
<head>
<?php include 'includes/head.php';?>
</head>

<body>
<?php include 'includes/template_top.php';?>
<h1><?php echo $category ?></h1>
<?php showArticleList($result);?>
<?php include 'includes/template_bottom.php';?>
</body>
</html>
