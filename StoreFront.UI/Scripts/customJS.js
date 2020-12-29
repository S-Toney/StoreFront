//alert("Hello World");

var i = 0;
var txt = 'Lorem ipsum typing effect!'; /* The text */
var speed = 50; /* The speed/duration of the effect in milliseconds */

function typeWriter() {
    if (i < txt.length) {
        document.getElementById("404-1").innerHTML += txt.charAt(i);
        i++;
        setTimeout(typeWriter, speed);
    }
}