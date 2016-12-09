<?php
include 'includes/connect_database.php';
include 'includes/functions.php';
$queryA = "SELECT ArticleID, Title, UNIX_TIMESTAMP(PubTime) AS PubTime, Preview, Content, Latitude, Longitude, CategoryName FROM ARTICLE, CATEGORY WHERE ARTICLE.CategoryID = CATEGORY.CategoryID ORDER BY PubTime DESC;";
$resultA = mysqli_query($conn, $queryA);

$queryB = "SELECT SLIDES.ArticleID, SlideID, Title, FileName, CategoryName FROM ARTICLE, CATEGORY, SLIDES WHERE SLIDES.ArticleID = ARTICLE.ArticleID AND ARTICLE.CategoryID = CATEGORY.CategoryID ORDER BY SlideID DESC;";
$resultB = mysqli_query($conn, $queryB);

if (!$resultA) {
	die(mysqli_error($conn));
}

mysqli_close($conn);

$navIndex = 0;
$pageTitle = "LiteBlog";
?>

<!doctype html>
<html lang="en-US">
<head>
<?php include 'includes/head.php';?>
</head>

<body>
<?php include 'includes/template_top.php';?>
<script> var max = <?php echo mysqli_num_rows($resultB)?>; </script>
<?php showSlides($resultB);?>
<?php showArticleList($resultA);?>
<?php include 'includes/template_bottom.php';?>
</body>
</html>
