//alert("Hello World");

//fun fact for fellow developers
console.info('Fun Fact: Bull Sharks have been seen around St. Louis by multiple reputable sources and at least one fisherman has caught one in the Mississippi river near there.');

//var today = new Date();
//var hourNow = today.getHours();
//var greeting;

//if (hourNow > 18) {
//    greeting = 'Good evening';
//} else if (hourNow > 12){
//    greeting = "Good afternoon";
//} else if (hourNow > 0) {
//    greeting = "Good morning";
//} else {
//    greeting = "Welcome";
//}
//alert(greeting);

//var i = 1;
//var txt = 'The page...'; /* The text */
//var speed = 50; /* The speed/duration of the effect in milliseconds */

// Custom Error Page 404
var error404 = document.getElementById('404-1');

var typewriter = new Typewriter(error404, {
    loop: false
    //strings: ['The page...'],
    //autoStart: true
});

typewriter.typeString("The page")
.pauseFor(700)
.typeString('.')
.pauseFor(700)
.typeString('.')
.pauseFor(700)
.typeString('.')
.start();

//function goneBlink() {
//    //var element = document.getElementById("404-2");
//    removeClass('#404-2','gone');
//    addClass('#404-2','gone-in');
//    setTimeout(function () {
//        removeClass('#404-2', 'gone-in');
//        addClass('#404-2', 'gone-out');
//    }, 2000);
    
//}

//addEventListener(onload, goneBlink());

//Custom Error Page 400
var error400 = document.getElementById('400-1');
var typewriter = new Typewriter(error400, {
    loop: false
    //strings: ['The page...'],
    //autoStart: true
});

typewriter.typeString("Please check")
.pauseFor(700)
.typeString('.')
.pauseFor(700)
.typeString('.')
.pauseFor(700)
.typeString('.')
.start();