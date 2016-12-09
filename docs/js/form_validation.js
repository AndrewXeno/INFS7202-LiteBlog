/*In order to avoid invalid form information submissions, this JavaScript is used for verifying user's input in the ‘Ask Me’ page. If all compulsory fields are filled out, a confirmation message will be displayed in blue and clear all input data, otherwise, an alert message will be displayed in red with incomplete fields highlighted with red background. Then, the user can identify the incomplete fields and fill in the form quickly. Moreover, the changeColor() function will automatically reset background colour back to white when the user clicks the input field.*/
var loggedIn = false;
function formValidation() { /*Verify each compulsory input fields and display messages */
    "use strict";
    var title = document.getElementById("article_title");
    var date = document.getElementById("post_date");
    var category = document.getElementById("category");
    var form_feedback = document.getElementById("form_feedback");
    var check = true;

    if (title.value === "") {
        title.style.backgroundColor = "rgba(255, 0, 0, 0.2)";
        check = false;
    }

    if (date.value === "") {
        date.style.backgroundColor = "rgba(255, 0, 0, 0.2)";
        check = false;
    }

    if (category.value == 0) {
        category.style.backgroundColor = "rgba(255, 0, 0, 0.2)";
        check = false;
    }

    if (check === false) {
        form_feedback.style.color = "#ff0000";
        form_feedback.innerHTML = "Please fill in all fields that in red.";
        return false;
    } else {
        form_feedback.style.color = "#0094cc";
        form_feedback.innerHTML = "Your article has been posted successfully.";
        title.value = "";
        date.value = "";
        category.value = 0;
        return true;
    }
}

function changeColor(input) { /*reset input background colour and alert message when click on input fields*/
    "use strict";
    input.style.backgroundColor = "#FFFFFF";
    form_feedback.innerHTML = "&nbsp;";
}

function loginValidation() { /* login function */
    "use strict";
    
    var username = document.getElementById("username");
    var password = document.getElementById("password");
    var login_feedback = document.getElementById("login_feedback");

    if (username.value === "" || password.value === "") {
        login_feedback.style.color = "#ff0000";
        login_feedback.innerHTML = "Incomplete input";
        return false;
    } else if (username.value !== "infs" || password.value !== "3202") {
        login_feedback.style.color = "#ff0000";
        login_feedback.innerHTML = "Invalid username or password";
        return false;
    } else {
        login_feedback.style.color = "#0094cc";
        login_feedback.innerHTML = "Successfully logged in";
        username.value = "";
        password.value = "";
        loggedIn = true;
        console.log(loggedIn);
        setTimeout(logged_in,2000);
        return true;
    }
}

function logged_in() {
    $("#login_menu").slideToggle("slow");
    document.getElementById("login_button").innerHTML = "Log-out";
}

function login() {
    if (loggedIn == true) {
        document.getElementById("login_button").innerHTML = "Log-in";
        loggedIn = false;
        return;
    } else {
        $("#login_menu").slideToggle("slow");
        return;
    }
}