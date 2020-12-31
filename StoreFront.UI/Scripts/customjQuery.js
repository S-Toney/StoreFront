///  <reference path="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" />
//  XML reference gives us intellisense for jQuery

//  Below is a fully-qualified ready function
//  It waits for HTML and CSS to load before executing the code inside of the function

//jQuery(document).ready(function () {
//    console.log("Hello World jQuery");
//});

// Custom Error 404 

setTimeout(function(){
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