<?php
include 'includes/connect_database.php';
include 'includes/functions.php';
if (isset($_GET['keyword'])) {
	$keyword = mysqli_real_escape_string($conn, $_GET['keyword']);
}
$query = "SELECT ArticleID, Title, UNIX_TIMESTAMP(PubTime) AS PubTime, Preview, CategoryName, FROM_UNIXTIME(UNIX_TIMESTAMP(PubTime), '%M, %Y')AS Archive FROM ARTICLE, CATEGORY WHERE ARTICLE.CategoryID = CATEGORY.CategoryID AND (ARTICLE.Title LIKE \"%{$keyword}%\" OR ARTICLE.Preview LIKE \"%{$keyword}%\" OR CATEGORY.CategoryName LIKE \"%{$keyword}%\" OR ARTICLE.Content LIKE \"%{$keyword}%\") ORDER BY PubTime DESC;";
$result = mysqli_query($conn, $query);
if (!$result) {
	die(mysqli_error($conn));
}
mysqli_close($conn);

$navIndex=-1;
$pageTitle = "Search Result for \"$keyword\"";
?>


<!doctype html>
<html lang="en-US">
<head>
<?php include 'includes/head.php';?>
</head>

<body>
<?php include 'includes/template_top.php';?>
<h1>Search Result for "<?php echo $keyword ?>"</h1>
<?php showArticleList($result);?>
<?php include 'includes/template_bottom.php';?>
</body>
</html>
