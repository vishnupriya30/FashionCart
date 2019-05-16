<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fashion Cart</title>
<link rel="icon" href="pics/fashioncart.PNG" type="image/x-icon">
<link href='https://fonts.googleapis.com/css?family=Comic Sans MS' rel='stylesheet'>
</head>
<style>
.w3-allerta {
  font-family: "Allerta Stencil", Sans-serif;
}
img {
  opacity: 0.5;
  filter: alpha(opacity=50); /* For IE8 and earlier */
}
.total{
background-color: #f2f2f2;
height:100%;
width:100%;
font-family:Comic Sans MS;
}
#loader {
  position: absolute;
  left: 50%;
  top: 40%;
  z-index: 1;
  width: 150px;
  height: 150px;
  margin: -75px 0 0 -75px;
  border: 16px solid #f3f3f3;
  border-radius: 50%;
  border-top: 16px solid #3498db;
  width: 120px;
  height: 120px;
  -webkit-animation: spin 2s linear infinite;
  animation: spin 2s linear infinite;
}

@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}

/* Add animation to "page content" */
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

#myDiv {
  display: none;
  text-align: center;
}
</style>
<body onload="myFunction()" style="margin:0 ;background-image:url(pics/trans5.jpg)">

<div id="loader"></div>

<div style="padding-top:120px" id="myDiv" class="animate-bottom">
  <h1 style="margin-left:170px; font-family:Comic Sans MS">Your Order has been placed!</h1>
  <h3 style="font-family:Comic Sans MS; margin-left:190px;">View your orders in MyOrders</h3>
  <h3 style="font-family:Comic Sans MS; margin-left:190px;">Payment Mode : Cash on Delivery only</h3>
  </br></br></br></br></br></br>
 <div style="align: center; text-decoration:none"> <a href = 'AfterLoginHomePage.jsp' style="padding:20px;background-color:#ff6633;color:white;margin-left:700px;margin-top:-500px;font-size:20px; text-decoration:none">Go to Home Page</a>
</div>
</div>
 </div>

<script>
var myVar;

function myFunction() {
  myVar = setTimeout(showPage, 3000);
}

function showPage() {
  document.getElementById("loader").style.display = "none";
  document.getElementById("myDiv").style.display = "block";
}
</script>


</body>
</html>