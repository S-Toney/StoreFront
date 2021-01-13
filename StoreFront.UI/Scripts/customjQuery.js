///  <reference path="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" />
//  XML reference gives us intellisense for jQuery

//  Below is a fully-qualified ready function
//  It waits for HTML and CSS to load before executing the code inside of the function

//jQuery(document).ready(function () {
//    console.log("Hello World jQuery");
//});

// Custom Error 404 

setTimeout(function () {
    //If CSS class .gone then change to .gone-in after 4.5 seconds
    if ($('#404-2').hasClass('gone')) {
        $('#404-2').addClass('gone-in');
    }
}, 4500);

//setTimeout(function () {
//    if ($('#404-2').hasClass('gone-in')) {
//        $('#404-2').removeClass('gone-in').addClass('gone-out');
//    } else {
//        $('#404-2').removeClass('gone-out').addClass('gone-in');
//    }
//}, 2000);

//setTimeout(function () {
//    if ($('#404-2').hasClass('gone-in')) {
//        $('#404-2').removeClass('gone-in').addClass('gone-out');
//    } else {
//        $('#404-2').removeClass('gone-out').addClass('gone-in');
//    }
//}, 2000);

//setTimeout(function () {
//    if ($('#404-2').hasClass('gone-in')) {
//        $('#404-2').removeClass('gone-in').addClass('gone-out');
//    } else {
//        $('#404-2').removeClass('gone-out').addClass('gone-in');
//    }
//}, 2000);

// Custom Error 404 

setTimeout(function () {
    if ($('#400-2').hasClass('gone')) {
        $('#400-2').addClass('spelling-in');
    }
}, 4500);

// Custom Error Default - REDIRECT

//var seconds = 10;

//function countdown() {
//    seconds = secongs - 1;
//    if (seconds < 0) {
//        //Link to Redirect user to
//        window.location = "https://tessatoney.com";
//    } else {
//        //Remaining Seconds Update
//        document.getElementById("Countdown").innerHTML = seconds;
//        //Cound Down
//        window.setTimeout("countdown()", 1000);
//    }

//}

////Run Countdown
//countdown();