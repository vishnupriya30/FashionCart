<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>

.animate-bottom {
  position: relative;
  -webkit-animation-name: animatebottom;
  -webkit-animation-duration: 1s;
  animation-name: animatebottom;
  animation-duration: 1s
}

@-webkit-keyframes animatebottom {
  from { bottom:-100px; opacity:0 } 
  to { bottom:0px; opacity:1 }
}

@keyframes animatebottom { 
  from{ bottom:-100px; opacity:0 } 
  to{ bottom:0; opacity:1 }
}
body{
background-size:1450px 800px;
background-repeat:no-repeat;
}
</style>
</head>
<body background="pics/giphy.gif">
<div style="padding-top:100px" id="myDiv" class="animate-bottom">
  <p style="color:#ffaa00;font-size:95px;text-align:center;margin-top:30px;font-family:Comic Sans MS">Congratulations!</p>
</div>
<div id="myDiv" class="animate-bottom">
  <p style="color:#ff3385;font-size:60px;text-align:center;margin-top:10px;font-family:Comic Sans MS"><b>You won the Bid!</b></p>
</div>
<a href = "Address.jsp"><img src="pics/E1.jpeg" style="margin-left:630px" width=100px height=200px></a>
<button type="button" style="padding:10px;background-color:#ff6633;border:none;margin-left:1100px"><a href = "AfterLoginHomePage.jsp" style="text-decoration:none">Go to HomePage</a></button>
</body>
</html>