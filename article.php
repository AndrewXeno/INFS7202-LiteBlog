<?php
include 'includes/connect_database.php';
include 'includes/functions.php';
if (isset($_GET['id'])) {
	$ArticleID = mysqli_real_escape_string($conn, $_GET['id']);
}
$queryA = "SELECT ArticleID, Title, UNIX_TIMESTAMP(PubTime) AS PubTime, Preview, Content, Latitude, Longitude, CategoryName FROM ARTICLE, CATEGORY WHERE ARTICLE.CategoryID = CATEGORY.CategoryID AND ARTICLE.ArticleID = $ArticleID;";
$resultA = mysqli_query($conn, $queryA);

$queryB = "SELECT Title, ArticleID, UNIX_TIMESTAMP(PubTime) AS PubTime FROM ARTICLE ORDER BY PubTime;";
$resultB = mysqli_query($conn, $queryB);

$queryC = "SELECT Filename FROM PICTURE WHERE ArticleID = $ArticleID;";
$resultC = mysqli_query($conn, $queryC);

if (!$resultA) {
	die(mysqli_error($conn));
}
mysqli_close($conn);

if (mysqli_num_rows($resultA)==0){
    $noArticle = true;
    $navIndex = -1;
    $pageTitle = "Oops";
} else {
    $noArticle = false;
    $row = mysqli_fetch_array($resultA);
    $title = $row["Title"];
    $date = date("d M, Y H:i:s", $row["PubTime"]);
    $category = $row["CategoryName"];
    $content = $row["Content"];
    $latitude = $row["Latitude"];
    $longitude = $row["Longitude"];

    for ($i = 0; $i < mysqli_num_rows($resultB); $i++) {
        ${"row" . $i} = mysqli_fetch_array($resultB);
        if (${"row" . $i}["ArticleID"] === $ArticleID) {
            $currentIndex = $i;
        }
    }

    if ($currentIndex > 0) {
        $prevIndex = $currentIndex - 1;
        $prevArticleID = ${"row" . $prevIndex}["ArticleID"];
        $prevArticleTitle = ${"row" . $prevIndex}["Title"];
    }
    if ($currentIndex < mysqli_num_rows($resultB) - 1) {
        $nextIndex = $currentIndex + 1;
        $nextArticleID = ${"row" . $nextIndex}["ArticleID"];
        $nextArticleTitle = ${"row" . $nextIndex}["Title"];
    }

    $navIndex = getNavIndex($category);
    $pageTitle = $title;
}


?>

<!doctype html>
<html lang="en-US">
<head>
<?php include 'includes/head.php';?>
</head>

<body>
<?php include 'includes/template_top.php';?>


<?php if($noArticle){ ?>
    <div id="title">
        <br>
        <h3>Oops, it seems the article is no longer here :(</h3>
    </div>
<?php include 'includes/template_bottom.php';?>
</body>
</html>

<?php } else { ?>
<article class="passage">
<?php if (hasPermission()){ ?>
    <div id="tools">
        <a onclick = "javascript:deleteArticle();"><span class="fa fa-trash fa-lg"></span></a>
        <script>
            function deleteArticle() {
                if (confirm("Are you sure you want to delete this article?")) {
                    $.post('delete_article.php', {"ArticleID": <?php echo $ArticleID ?>}, function(response) {
                        if (response.substring(0, 9) === "succeeded") {
                            alert("The article has been deleted successfully.");
                            window.location.href = "index.php";
                        } else {
                            console.log(response);
                            alert(response);
                        }
                    });
                } else {}
            }
        </script>
        <a href="update_article.php?id=<?php echo $ArticleID ?>"><span class="fa fa-pencil fa-lg"></span></a>
    </div>
<?php }?>

    <div id="title">
        <h3><?php echo htmlspecialchars($title) ?></h3>
    </div>
    <div class="clearfloat"></div>
    <h6 class = "article_info"><span class="fa fa-calendar-o"></span> <?php echo $date ?></h6>
    <h6 class = "article_info"><span class="fa fa-folder-open-o"></span> <?php echo $category ?></h6>
    <div class="clearfloat"></div>
    <div id="pic_block">
    <?php while ($row = mysqli_fetch_array($resultC)) {?>
        <a href="images/<?php echo $row["Filename"] ?>" data-lightbox="picture"><img class="article_image" src="images/<?php echo $row["Filename"] ?>" alt="<?php echo $title ?> Picture" /></a>
    <?php }?>
    </div>
    <div class="article_content">
        <?php echo $content ?>
    </div>
    <?php if (!is_null($latitude)) {?>
        <div id="location_info"><span class="fa fa-map-marker" aria-hidden="true"></span> This article is posted at: (<?php echo $latitude ?>, <?php echo $longitude ?>)</div>
        <div id="article_map"></div>
    <?php }?>

</article>

<?php if (isset($prevArticleID)) {?>
<div id="previous_article">
    <p><a href="article.php?id=<?php echo $prevArticleID; ?>">&laquo; PREV: <?php echo htmlspecialchars($prevArticleTitle) ?></a></p>
</div>
<?php }?>

<?php if (isset($nextArticleID)) {?>
<div id="next_article">
    <p><a href="article.php?id=<?php echo $nextArticleID; ?>">NEXT: <?php echo htmlspecialchars($nextArticleTitle) ?> &raquo;</a></p>
</div>
<?php }?>


<div class="clearfloat"></div>

<?php include 'includes/template_bottom.php';?>
<?php if (!is_null($latitude)) {?>
    <script>
    function initMap() {
        var location = {
            lat: <?php echo $latitude ?>,
            lng: <?php echo $longitude ?>
        }
        var map = new google.maps.Map(document.getElementById('article_map'), {
            center: location,
            zoom: 15
        });
        var marker = new google.maps.Marker({
            position: location,
            map: map,
        });
    }
    </script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCoRdN75Wuhkmoy3nG6Ss5_10cXghNtV-c&callback=initMap"></script>
    <?php }?>
    <script src="js/vendor/lightbox.js"></script>
</body>

</html>
<?php } ?>





