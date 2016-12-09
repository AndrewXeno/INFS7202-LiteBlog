<?php
date_default_timezone_set('Australia/Brisbane');

function showRecentArticles() {
	include 'includes/connect_database.php';

	$articleNumber = 3;

	$query = "SELECT ArticleID, Title, UNIX_TIMESTAMP(PubTime) AS PubTime FROM ARTICLE ORDER BY PubTime DESC";
	$result = mysqli_query($conn, $query);
	if (!$result) {
		die(mysqli_error($conn));
	}
	mysqli_close($conn);

	$i = 0;
	while ($row = mysqli_fetch_array($result)) {
		if ($i < $articleNumber) {
			$title = htmlspecialchars($row["Title"]);
			echo "<a href=\"article.php?id={$row["ArticleID"]}\">";
			echo "<div class =\"update_entry\">";
			echo "<p class = \"update_title\"> $title </p>";
			$pubTime = date("d M, Y", $row["PubTime"]);
			echo "<p class = \"update_date\">$pubTime</p>";
			echo "</div>";
			echo "</a>";
		}
		$i++;
	}
}

function showArchive() {
	include 'includes/connect_database.php';

	$query = "SELECT FROM_UNIXTIME(UNIX_TIMESTAMP(PubTime), '%M, %Y') AS Archive, COUNT(*) AS Count from ARTICLE GROUP BY FROM_UNIXTIME(UNIX_TIMESTAMP(PubTime), '%M, %Y') ORDER BY UNIX_TIMESTAMP(PubTime) DESC";
	$result = mysqli_query($conn, $query);

	if (!$result) {
		die(mysqli_error($conn));
	}
	mysqli_close($conn);

	while ($row = mysqli_fetch_array($result)) {

		echo "<a href=\"archive.php?archive={$row["Archive"]}\">";
		echo "<div class =\"update_entry\">";
		echo "<p class = \"update_title\">{$row["Archive"]} ({$row["Count"]})</p>";
		echo "</div>";
		echo "</a>";

	}
}

function showArticleList($result) {
	while ($row = mysqli_fetch_array($result)) {
		$title = htmlspecialchars($row["Title"]);
		$preview = htmlspecialchars($row["Preview"]);
		echo "<a class=\"article_pre\" href=\"article.php?id={$row["ArticleID"]}\">";
		echo "<article class=\"passage\">";
		echo "<h3>$title</h3>";
		$pubTime = date("d M, Y", $row["PubTime"]);
		echo "<h6 class = \"article_info\"><span class=\"fa fa-calendar-o\"></span> $pubTime</h6>";
		echo "<h6 class = \"article_info\"><span class=\"fa fa-folder-open-o\"></span> {$row["CategoryName"]}</h6>";
		echo "<div class=\"clearfloat\"></div>";
		echo "<div class=\"article_content\">";
		echo "<p>$preview</p>";
		echo "</div>";
		echo "<p class=\"more\">...</p>";
		echo "<div class=\"clearfloat\"></div>";
		echo "</article>";
		echo "</a>";
	}
}

function showSlides($result) {
	echo "<div id=\"gallery\">";
	echo "<img src=\"images/gallery00.jpg\" alt=\"base picture\">";
	echo "<ul>";
	$index = 1;
	while ($row = mysqli_fetch_array($result)) {
		$title = htmlspecialchars($row["Title"]);
		$category = $row["CategoryName"];
		$fileName = $row["FileName"];
		$articleID = $row["ArticleID"];
		echo "<li class=\"pic\" id=\"pic_$index\">";
		echo "<a href=\"article.php?id=$articleID\"><img src=\"images/$fileName\" alt=\"$title\"></a>";
		echo "<a href=\"article.php?id=$articleID\" class=text><h5>$category</h5><p>$title</p></a>";
		echo "</li>";
		$index += 1;
	}
	echo "</ul>";
	echo "<div id=\"gallery_prev\" onclick=\"prevChange();\"><p>&laquo;</p></div>";
	echo "<div id=\"gallery_next\" onclick=\"picChange();\"><p>&raquo;</p></div>";
	echo "</div>";
}

function getNavIndex($category) {
	if (isset($category)) {
		$cateCoding = array("Coding", "Coding - RMMV Plugin", "Coding - Python", "Coding - C", "Coding - JAVA", "Coding - Web Design", "Coding - Web Server");
		$cateGame = array("Game", "Game - RPG", "Game - ACT", "Game - AVG");

		if (in_array($category, $cateCoding)) {
			return 1;
		} elseif (in_array($category, $cateGame)) {
			return 2;
		} elseif ($category === "Animation") {
			return 3;
		} elseif ($category === "Movie") {
			return 4;
		} else {
			return 5;
		}
	} else {
		return -1;
	}
}

function validateLogin($username, $password) {
	require 'includes/connect_database.php';
	try {
		$stmt = $conn->prepare('SELECT * FROM user WHERE username = ? and EncryptedPassword = SHA2(CONCAT(?, salt), 0)');
		$stmt->bind_param('ss', $username, $password);
		$stmt->execute();
		$stmt->store_result();
		$numberofrows = $stmt->num_rows;
		if ($numberofrows <= 0) {
			return false;
		} else {
			return true;
		}
	} catch (Exception $e) {
		echo "Error: " . $e->getMessage();
	}
}

function hasPermission() {
	session_start();
	if (isset($_SESSION['isUser'])) {
		return true;
	} else {
		return false;
	}
}

?>
