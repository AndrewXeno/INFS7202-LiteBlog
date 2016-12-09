
/* JS that get user's location, adapted from http://www.w3schools.com/html/html5_geolocation.asp */

function updateGeoInfo(){
    var geo_feedback = document.getElementById("geo_feedback");
    var checkbox = document.getElementById("geo_location");
    if (checkbox.checked) {
        getLocation();
    } else {
        geo_feedback.innerHTML = "&nbsp;";
    }
}

function getLocation() {
    if (navigator.geolocation) {
        geo_feedback.style.color = "#0094cc";
        navigator.geolocation.getCurrentPosition(showPosition, showError);
    } else { 
        geo_feedback.style.color = "#ff0000";
        geo_feedback.innerHTML = "Geolocation is not supported by this device.";
    }
}

function showPosition(position) {
    geo_feedback.innerHTML = "Latitude: " + position.coords.latitude + ", Longitude: " + position.coords.longitude;  
}

function showError(error) {
    geo_feedback.style.color = "#ff0000";
    switch(error.code) {
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