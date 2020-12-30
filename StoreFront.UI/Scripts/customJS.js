//alert("Hello World");

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

// Typed text on Custom Error Page 404
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