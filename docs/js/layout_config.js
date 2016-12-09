/* set position according to element height */
function changePos(id) {            
    "use strict";
    var obj = document.getElementById(id), scrollTop = document.documentElement.scrollTop || document.body.scrollTop, scrollLeft = document.documentElement.scrollLeft || document.body.scrollLeft;
    if (scrollTop < 130) {          /*If the element is scrolled less than 130px, change the position back to normal */
        obj.style.position = 'relative';
        obj.style.left = 0;
        obj.style.top = 0;
    } else {                        /*If the element is scrolled more than 130px, stick it to the top */
        obj.style.position = 'fixed';
        if (id == "navbar") {       /*used for navigation bar */
            obj.style.top = 0;
            obj.style.left = -scrollLeft + "px";
        }
    }
};

/* adjust left column height according to page and viewport height */
function heightAdjust(id) {
    "use strict";
    var height1 = document.getElementById("column_main").offsetHeight + 20;
    var height2 = document.body.clientHeight - 220;
    var height3 = 900;
    document.getElementById(id).style.height = Math.max(height1, height2, height3) + 'px';   /*compare the height of the main column, the right-side column and the whole viewport, and then apply the largest value to the right-side column */
};

window.onload = function () {
    "use strict";
    heightAdjust('column_right');
    window.onscroll = function () {
        changePos('navbar');
        heightAdjust('column_right');
    }
    window.onresize = function () {
        changePos('navbar');
        heightAdjust('column_right');
    }
};
