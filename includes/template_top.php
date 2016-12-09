    <div id="content">
        <!--locate footer when main content height is less than viewport height-->
        <div id="main">
            <!--locate footer-->
            <header>
                <a href="index.php"><p>LiteBlog</p></a>
            </header>
            <nav>
                <div id="navbar">
                    <div id="navlist">
                        <ul>
                            <li><a href="index.php" <?php if ($navIndex == 0) echo 'class="selected"'; ?>>Home</a></li>
                            <li><a href="category.php?category=Coding" <?php if ($navIndex == 1) echo 'class="selected"'; ?>>Coding</a>
                                <ul id="Cate_list1">
                                    <li><a href="category.php?category=Coding - RMMV Plugin">&nbsp;&nbsp;RMMV Plugin</a></li>
                                    <li><a href="category.php?category=Coding - Python">&nbsp;&nbsp;Python</a></li>
                                    <li><a href="category.php?category=Coding - C">&nbsp;&nbsp;C</a></li>
                                    <li><a href="category.php?category=Coding - JAVA">&nbsp;&nbsp;JAVA</a></li>
                                    <li><a href="category.php?category=Coding - Web Design">&nbsp;&nbsp;Web Design</a></li>
                                    <li><a href="category.php?category=Coding - Web Server">&nbsp;&nbsp;Web Server</a></li>  
                                </ul>
                            </li>
                            <li><a href="category.php?category=Game" <?php if ($navIndex == 2) echo 'class="selected"'; ?>>Game</a>
                                <ul id="Cate_list2">
                                    <li><a href="category.php?category=Game - RPG">&nbsp;&nbsp;RPG</a></li>
                                    <li><a href="category.php?category=Game - ACT">&nbsp;&nbsp;ACT</a></li>
                                    <li><a href="category.php?category=Game - AVG">&nbsp;&nbsp;AVG</a></li>
                                </ul>
                            </li>
                            <li><a href="category.php?category=Animation" <?php if ($navIndex == 3) echo 'class="selected"'; ?>>Animation</a></li>
                            <li><a href="category.php?category=Movie" <?php if ($navIndex == 4) echo 'class="selected"'; ?>>Movie</a></li>
                            <li><a href="category.php?category=Others" <?php if ($navIndex == 5) echo 'class="selected"'; ?>>Others</a></li>
                        </ul>
                        <form id="minisearch" action="javascript:submitSearch();" method="post" autocomplete="off">
                            <input type="image" id="minisubmit" src="images/search.png" onclick="javascript:submitSearch();" alt="submit search"/>
                            <label for="keyword">Search a keyword: </label>
                            <input type="text" id="keyword" name="keyword" placeholder="Search" />
                            <script>
                            function submitSearch() {
                                var keyword  =document.getElementById('keyword').value;
                                window.location.href = "search.php?keyword=" + keyword;
                            }
                            </script>
                        </form>
                        <div class="clearfloat"></div>
                    </div>
                </div>
            </nav>
            <div id="frame">
                <!--main section-->
                <div id="threecolwrap">
                    <!--wrap all 3 columns-->
                    <div id="twocolwrap">
                        <!--wrap left and main column to locate right column-->
                        <div id="column_main">