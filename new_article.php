<?php 
include 'includes/connect_database.php';
include 'includes/functions.php';

if(!hasPermission()){
    header("Location: index.php");
}

$query = "SELECT * FROM CATEGORY ORDER BY CategoryName;";
$result = mysqli_query($conn, $query);
if (!$result) {
    die(mysqli_error($conn));
}
mysqli_close($conn);

$navIndex = -1;
$pageTitle = "New Article";
?>

<!doctype html>
<html lang="en-US">
<head>
<?php include 'includes/head.php';?>
<script src="js/vendor/tinymce.min.js" type="text/javascript"></script>
<script src="js/submit_new_article.js" type="text/javascript"></script>
<script>
    tinymce.init({
        selector: '#main_body',
        element_format : 'html'
    });
</script>
</head>

<body>
<?php include 'includes/template_top.php';?>
<article class="passage">
    <div id="new_article">
        <h2>New Article</h2>
        <?php include 'includes/form_content.php';?>
        <button id="form_submit" onclick="submitNewArticle();">Post</button>
    </div>
</article>
<?php include 'includes/template_bottom.php';?>
</body>

</html>