<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML> 
<html> 
<head> 
<style> 
body{ 
    text-align: center; 
    background: #f2f2f2; 
  font-family: sans-serif; 
  font-weight: 100; 
}
.flip-box {
  background-color: transparent;
  width: 200px;
  height: 300px;
  padding-left:600px;
  border: 1px solid #f1f1f1;
  perspective: 1000px;
}

.flip-box-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
}

.flip-box:hover .flip-box-inner {
  transform: rotateY(180deg);
}

.flip-box-front, .flip-box-back {
  position: absolute;
  width: 100%;
  height: 100%;
  backface-visibility: hidden;
}

.flip-box-front {
  background-color: #bbb;
  color: black;
}

.flip-box-back {
  background-color: #555;
  color: white;
  transform: rotateY(180deg);
}
h1{ 
  color: #396; 
  font-weight: 100; 
  font-size: 40px; 
  margin: 40px 0px 20px; 
} 
 #clockdiv{ 
    font-family: sans-serif; 
    color: black; 
    display: inline-block; 
    font-weight: 100; 
    text-align: center; 
    font-size: 30px; 
} 
#clockdiv > div{ 
    padding: 10px; 
    border-radius: 3px; 
    background: rgb(0,118,230); 
    display: inline-block; 
} 
#clockdiv div > span{ 
    padding: 15px; 
    border-radius: 3px; 
    background: white; 
    display: inline-block; 
} 
smalltext{ 
    padding-top: 5px; 
    font-size: 16px; 
} 
</style> 
</head> 
<body> 
<h2>Bidding</h2> 
<div id="clockdiv"> 
  <div> 
    <span class="days" id="day"></span> 
    <div class="smalltext">Days</div> 
  </div> 
  <div> 
    <span class="hours" id="hour"></span> 
    <div class="smalltext">Hours</div> 
  </div> 
  <div> 
    <span class="minutes" id="minute"></span> 
    <div class="smalltext">Minutes</div> 
  </div> 
  <div> 
    <span class="seconds" id="second"></span> 
    <div class="smalltext">Seconds</div> 
  </div> 
</div> 
  
<p id="demo"></p> 
<div class="flip-box">
  <div class="flip-box-inner">
    <div class="flip-box-front">
      <img src="pics/E1.jpeg" style="width:200px;height:300px">
    </div>
    <div class="flip-box-back">
      <h2>Ethnic Wear</h2>
      <h2>Embroidered Anarkali</h2>
    </div>
  </div>
</div>
<h3>Bidding Amount starts at:1900/-</h3>
<form action="Bidservlet" method="post">
<h4>Enter your amount:<input type="text" name="price" style="height:30px ;width:100px"></h4></br>
<input type="submit" name = "submit" value="submit" style="width:100px;height:5%;padding-top:30px">
</form>
<script> 
  
var deadline = new Date("may 13, 2019 22:02:00").getTime(); 
  
var x = setInterval(function() { 
  
var now = new Date().getTime(); 
var t = deadline - now; 
var days = Math.floor(t / (1000 * 60 * 60 * 24)); 
var hours = Math.floor((t%(1000 * 60 * 60 * 24))/(1000 * 60 * 60)); 
var minutes = Math.floor((t % (1000 * 60 * 60)) / (1000 * 60)); 
var seconds = Math.floor((t % (1000 * 60)) / 1000); 
document.getElementById("day").innerHTML =days ; 
document.getElementById("hour").innerHTML =hours; 
document.getElementById("minute").innerHTML = minutes;  
document.getElementById("second").innerHTML =seconds;  
if (t < 0) { 
        clearInterval(x); 
        document.getElementById("demo").innerHTML = "TIME UP"; 
        document.getElementById("day").innerHTML ='0'; 
        document.getElementById("hour").innerHTML ='0'; 
        document.getElementById("minute").innerHTML ='0' ;  
        document.getElementById("second").innerHTML = '0';
        document.ready(window.setTimeOut(location.href="BidFinal", 5000));
        }
}, 1000);
</script> 
</body> 
</html> 