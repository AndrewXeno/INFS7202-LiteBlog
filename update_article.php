<?php 
include 'includes/connect_database.php';
include 'includes/functions.php';

if(!hasPermission()){
    header("Location: index.php");
}

if (isset($_GET['id'])) {
    $ArticleID = $_GET['id'];
}
$query = "SELECT * FROM CATEGORY ORDER BY CategoryName;";
$result = mysqli_query($conn, $query);
if (!$result) {
    die(mysqli_error($conn));
}
mysqli_close($conn);

$navIndex = -1;
$pageTitle = "Update Article";
?>

<!doctype html>
<html lang="en-US">
<head>
<?php include 'includes/head.php';?>
<script src="js/vendor/tinymce.min.js" type="text/javascript"></script>
<script src="js/submit_update_article.js" type="text/javascript"></script>
<script>
    tinymce.init({
        selector: '#main_body',
        element_format : 'html'
    });
</script>

<script>
var articleID = <?php echo $ArticleID ?>;
$(document).ready(function(){
    var title = document.getElementById("article_title");
    var category = document.getElementById("category");
    var preview = document.getElementById("preview_text");

    $.post('get_article.php', {"ArticleID": articleID}, function(response) {
        var json_result = JSON.parse(response);
        for (var i in json_result) {
            var articleInfo = json_result[i];
            title.value = articleInfo.Title;
            category.value = articleInfo.CategoryID;
            preview.value = articleInfo.Preview;
            tinymce.activeEditor.setContent(articleInfo.Content);
            
        }
    });
});
</script>

</head>

<body>
<?php include 'includes/template_top.php';?>
<article class="passage">
    <div id="new_article">
        <h2>Update Article</h2>
        <?php include 'includes/form_content.php';?>
        <button id="form_submit" onclick="submitUpdateArticle(<?php echo $ArticleID ?>);">Update</button>
    </div>
</article>
<?php include 'includes/template_bottom.php';?>
</body>

</html>