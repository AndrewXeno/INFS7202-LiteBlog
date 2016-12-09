var loggedIn = false;

function loginValidation() { /* login function */
    "use strict";

    var username = document.getElementById("username");
    var password = document.getElementById("password");
    var login_feedback = document.getElementById("login_feedback");

    if (username.value === "" || password.value === "") {
        login_feedback.style.color = "#ff0000";
        login_feedback.innerHTML = "Incomplete input";
        return false;
    } else {
        $.post('log_in.php', {
            "Username": username.value,
            "Password": password.value
        }, function(response) {
            if (response.substring(0, 4) === "true") {
                login_feedback.style.color = "#0094cc";
                login_feedback.innerHTML = "Successfully logged in";
                username.value = "";
                password.value = "";
                setTimeout(loginDone, 2000);
            } else {
                login_feedback.style.color = "#ff0000";
                login_feedback.innerHTML = "Invalid username or password";
            }
        });
    }
}

function loginDone() {
    $("#login_menu").slideToggle("slow");
    document.getElementById("login_button").innerHTML = "Log-out";
}

function login() {
    $.post('logged_in.php', {}, function(response) {
        if (response.substring(0, 4) === "true") {
            $.post('log_out.php', {}, function(response) {});
            document.getElementById("login_button").innerHTML = "Log-in";
            return;
        } else {
            document.getElementById("login_button").innerHTML = "Log-in";
            var login_feedback = document.getElementById("login_feedback");
            login_feedback.innerHTML = "&nbsp;";
            $("#login_menu").slideToggle("slow");
            return;
        }
    });
}


// function login() {
//     console.log("is logged "+isLoggedIn());
//     if (isLoggedIn()) {
//         document.getElementById("login_button").innerHTML = "Log-in";
//         $.post('logg_out.php', {}, function(response) {
//             console.log(response);
//         });
//         return;
//     } else {
//         $("#login_menu").slideToggle("slow");
//         return;
//     }
// }

function isLoggedIn() {
    $.post('logged_in.php', {}, function(response) {
        if (response.substring(0, 4) === "true") {
            return true;
        } else {
            return false;
        }
    });
}

$(document).ready(function(){
    $.post('logged_in.php', {}, function(response) {
        if (response.substring(0, 4) === "true") {
            document.getElementById("login_button").innerHTML = "Log-out";
        } else {
            document.getElementById("login_button").innerHTML = "Log-in";
        }
    });
});

function newArticleButton(){
    $.post('logged_in.php', {}, function(response) {
        if (response.substring(0, 4) === "true") {
            window.location.href = "new_article.php";
            return;
        } else {
            var login_feedback = document.getElementById("login_feedback");
            login_feedback.innerHTML = "&nbsp;";
            $("#login_menu").slideToggle("slow");
            return;
        }
    });
}