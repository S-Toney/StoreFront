///  <reference path="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" />
//  XML reference gives us intellisense for jQuery

//  Below is a fully-qualified ready function
//  It waits for HTML and CSS to load before executing the code inside of the function

//jQuery(document).ready(function () {
//    console.log("Hello World jQuery");
//});

$(document).ready(function () {
    var f = document.getElementById('404-2');
    setInterval(function () {
        f.style.display = (f.style.display == 'color: #fff' ? '' : 'color: transparent');
    }, 1000);

});