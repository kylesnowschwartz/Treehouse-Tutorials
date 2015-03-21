//function not stored as variable
/*function mycode() {
	$(".warning").hide().show("slow");
}*/

//naming function by storing it in variable
/*var myCode = function() {
	$(".warning").hide().show("slow");
}*/

//anonymous function, passing it into ready method
/*$(document).ready(function() {
	$(".warning").hide().show("slow");
});*/

//using handler method of just putting it in paranthesis
/*$(function() {
	$(".warning").hide().show("slow");
});*/

//putting jquery at end of html in the body to load dom already, so dont need ready method anymore
$(".warning").hide().show("slow");


