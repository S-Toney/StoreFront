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

var i = 1;
var txt = 'Lorem ipsum typing effect!'; /* The text */
var speed = 50; /* The speed/duration of the effect in milliseconds */

function typeWriter() {
    if (i < txt.length) {
        document.getElementById("404-1").innerHTML += txt.charAt(i);
        i++;
        setTimeout(typeWriter, speed);
    }
}