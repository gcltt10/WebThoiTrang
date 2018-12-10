
var counter = 0;
var timeleft = 5;

window.onload = function(){
	setup();
};

function convertSeconds(s){
	var min = Math.floor(s / 60);
	var sec = s % 60;
	if(min<10) min = "0" + min;
	if(sec<10) sec = "0" + sec;
	return min + ":" + sec;
}
// Update the count down every 1 second
function setup(){
	document.getElementById("timer-main").innerHTML = convertSeconds(timeleft - counter);
	var interval = setInterval(timeIt,1000);
	function timeIt(){
		counter++;
		document.getElementById("timer-main").innerHTML = convertSeconds(timeleft - counter);
		if(counter==timeleft){
			clearInterval(interval);
			counter=0;
			window.location.assign("http://localhost:8080/ThiTracNghiem/exam-completed.jsp")
		}
	}
}