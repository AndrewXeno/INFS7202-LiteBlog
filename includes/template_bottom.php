                        </div>
                    </div>
                    <div id="column_right">
                        <div id="profile">
                            <a href=""><img src="images/profile_avatar.png" alt="Avatar"></a>
                            <h1>AndrewX</h1>
                            <div class="clearfloat"></div>
                            <p>An otaku loves animations, games, movies and... coding!</p>
                        </div>
                        <div id="link">
                            <div>
                                <div class="func_button" id = "login_button" onclick="login();">Log-in</div>
                            </div>
                            <div id = "login_menu">
                                <form method="post" action="form.php" id="login_form">
                                    <fieldset>
                                        <div class="login_field">
                                            <label for="username">Username: </label>
                                            <br>
                                            <input type="text" id="username" name="username" autocomplete="off"/>
                                        </div>
                                        <div class="login_field">
                                            <label for="password">Password: </label>
                                            <br>
                                            <input type="password" id="password" name="password"/>
                                        </div>
                                    </fieldset>
                                    <p id="login_feedback">&nbsp;</p>
                                </form>
                                <div id="login_confirm" onclick="loginValidation();">Login</div>
                            </div>
                            <a onclick="newArticleButton();">
                                <div class="func_button"><span class="fa fa-pencil-square-o"></span>&nbsp;&nbsp;New Post</div>
                            </a>

                            <div id = "updates">
                                <h5><span class="fa fa-newspaper-o" aria-hidden="true"></span>&nbsp;&nbsp;Recent Updates</h5>
                                <?php showRecentArticles();?>
                            </div>

                            <div id = "archive">
                                <h5><span class="fa fa-calendar-o" aria-hidden="true"></span>&nbsp;&nbsp;Archive</h5>
                                <?php showArchive();?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfloat"></div>
        </div>
        <footer>
            <div class="clearfloat"></div>
            <div id="footer_left">
                <p>Twitter: </p>
                <p>E-mail: </p>
            </div>
            <div id="footer_right">
                <p>© 2016 Andrew &amp; Simon</p>
            </div>
        </footer>
    </div>