var latitude;
var longitude;
var locationGot = false;

function submitNewArticle() { /*Verify each compulsory input fields and display messages */
	"use strict";
	var title = document.getElementById("article_title");
	var category = document.getElementById("category");
	var preview = document.getElementById("preview_text");
	var form_feedback = document.getElementById("form_feedback");
	var check = true;

	if (title.value === "") {
		title.style.backgroundColor = "rgba(255, 0, 0, 0.2)";
		check = false;
	}

	if (category.value == 0) {
		category.style.backgroundColor = "rgba(255, 0, 0, 0.2)";
		check = false;
	}

	if (preview.value === "") {
		preview.style.backgroundColor = "rgba(255, 0, 0, 0.2)";
		check = false;
	}

	if (check === false) {
		form_feedback.style.color = "#ff0000";
		form_feedback.innerHTML = "Please fill in all fields that in red.";

	} else {
		if (locationGot) {
			var latitudeText = latitude.toString();
			var longitudeText = longitude.toString();
		} else {
			var latitudeText = "";
			var longitudeText = "";
		}

		$.post('process_new_article.php', {
			"Title": title.value,
			"Category": category.value,
			"Preview": preview.value,
			"Content": tinymce.activeEditor.getContent(),
			"Latitude": latitudeText,
			"Longitude": longitudeText
		}, function(response) {
			if (response.substring(0, 7) === "Added: ") {
				form_feedback.style.color = "#0094cc";
				form_feedback.innerHTML = "Your article has been posted successfully. Redirecting to the new article...";
				var articleID = response.substring(7);
				setTimeout(redirect(articleID), 2000);
			} else {
				form_feedback.style.color = "#ff0000";
				form_feedback.innerHTML = response;
			}
		});
	}
}

function redirect(articleID) {
	console.log("GotID: " + articleID);
	window.location.href = "article.php?id=" + articleID;
}

function changeColor(input) {
	"use strict";
	input.style.backgroundColor = "#FFFFFF";
	form_feedback.innerHTML = "&nbsp;";
}

function updateGeoInfo() {
	var geo_feedback = document.getElementById("geo_feedback");
	var checkbox = document.getElementById("geo_location");
	if (checkbox.checked) {
		getLocation();
	} else {
		locationGot = false;
		geo_feedback.innerHTML = "&nbsp;";
	}
}

function getLocation() {
	if (navigator.geolocation) {
		geo_feedback.style.color = "#0094cc";
		navigator.geolocation.getCurrentPosition(showPosition, showError);
	} else {
		locationGot = false;
		geo_feedback.style.color = "#ff0000";
		geo_feedback.innerHTML = "Geolocation is not supported by this device.";
	}
}

function showPosition(position) {
	locationGot = true;
	latitude = position.coords.latitude;
	longitude = position.coords.longitude
	geo_feedback.innerHTML = "Latitude: " + latitude + ", Longitude: " + longitude;
}

function showError(error) {
	locationGot = false;
	geo_feedback.style.color = "#ff0000";
	switch (error.code) {
		case error.PERMISSION_DENIED:
			geo_feedback.innerHTML = "User denied the request for Geolocation."
			break;
		case error.POSITION_UNAVAILABLE:
			geo_feedback.innerHTML = "Location information is unavailable."
			break;
		case error.TIMEOUT:
			geo_feedback.innerHTML = "The request to get user location timed out."
			break;
		case error.UNKNOWN_ERROR:
			geo_feedback.innerHTML = "An unknown error occurred."
			break;
	}
}