<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Fashion Cart</title>
<link rel="icon" href="pics/fashioncart.PNG" type="image/x-icon">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster">
   <link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet'>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta charset="UTF-8">

</head>
<body style="background-color:#f2f2f2">
<div class="w3-container">
  <div class="w3-bar w3-blue">
  <table><tr><td style="padding-left:100px ">
  <a href="Login.html" style="margin-left:20%;color:white;font-size:40px;font-family:Righteous;text-decoration:none">F2</a></a>
</td><td style="padding-left:700px"">
    <a href="UserLogin.html" class="w3-bar-item w3-button w3-mobile" style="text-decoration:none">Login</a>
    </td><td style="padding-left:25px "><a href="SignUpPage.html" class="w3-bar-item w3-button w3-mobile" style="text-decoration:none">SignUp</a>
    </td><td><div class="w3-dropdown-hover w3-mobile">
    
        
      </div>
    </div></td><td style="padding-left:25px ">
     <a href="#" class="w3-bar-item w3-button w3-mobile" style="text-decoration:none">Cart</a></td></tr></table>
  </div>
</div>
<div class="w3-container">
  <div class="w3-bar w3-white">
    <div class="w3-dropdown-hover w3-mobile"  style="margin-left:15%">
      <button class="w3-button w3-white">Mobiles<i class="fa fa-caret-down"></i></button>
      <div class="w3-dropdown-content w3-bar-block">
        <a href="SelectServlet?subId=10" class="w3-bar-item w3-button w3-mobile">Samsung</a>
        <a href="SelectServlet?subId=11" class="w3-bar-item w3-button w3-mobile">Redmi</a>
        <a href="SelectServlet?subId=13" class="w3-bar-item w3-button w3-mobile">Oppo</a>
        <a href="SelectServlet?subId=12" class="w3-bar-item w3-button w3-mobile">One plus</a>
      </div>
    </div>
    <div class="w3-dropdown-hover w3-mobile"  style="margin-left:15%">
      <button class="w3-button">Dressing<i class="fa fa-caret-down"></i></button>
      <div class="w3-dropdown-content w3-bar-block">
        <a href="SelectServlet?subId=14" class="w3-bar-item w3-button w3-mobile">Ethnic</a>
        <a href="SelectServlet?subId=15" class="w3-bar-item w3-button w3-mobile">Western</a>
        <a href="SelectServlet?subId=16" class="w3-bar-item w3-button w3-mobile">Summer</a>
         <a href="SelectServlet?subId=17" class="w3-bar-item w3-button w3-mobile">Winter</a>
         <a href="CustomDesign.jsp" class="w3-bar-item w3-button w3-mobile">Custom Design</a>
      </div>
    </div>
    <div class="w3-dropdown-hover w3-mobile"  style="margin-left:15%">
      <button class="w3-button">Books<i class="fa fa-caret-down"></i></button>
      <div class="w3-dropdown-content w3-bar-block">
        <a href="SelectServlet?subId=23" class="w3-bar-item w3-button w3-mobile">Comics</a>
        <a href="SelectServlet?subId=24" class="w3-bar-item w3-button w3-mobile">Fiction</a>
        <a href="SelectServlet?subId=25" class="w3-bar-item w3-button w3-mobile">Kids</a>
          <a href="SelectServlet?subId=26" class="w3-bar-item w3-button w3-mobile">Business</a>
      </div>
    </div>
    <div class="w3-dropdown-hover w3-mobile"  style="margin-left:15%">
      <button class="w3-button">Furniture<i class="fa fa-caret-down"></i></button>
      <div class="w3-dropdown-content w3-bar-block">
        <a href="SelectServlet?subId=18" class="w3-bar-item w3-button w3-mobile">Home Light</a>
        <a href="SelectServlet?subId=19" class="w3-bar-item w3-button w3-mobile">Home Decor</a>
        <a href="SelectServlet?subId=20" class="w3-bar-item w3-button w3-mobile">Festive Decor</a>
         <a href="SelectServlet?subId=21" class="w3-bar-item w3-button w3-mobile">Pet Supplies</a>
      </div>
    </div>
  </div>
</div>
<div style="width:85%;height:40px;background-color:white;margin:auto;">
<h5 style="padding-top:15px;padding-left:10px">MY CART(0)</h5>
</div>
<div style="width:85%;height:40%;background-color:white;margin-top:3px;margin-left:105px">
<img src="pics\EmptyCart.png" height="150px" width="220px" style="margin-left:470px;margin-top:30px">
</br></br>
<h4 style="text-align:center">Your Shopping Cart is empty</h4>
</div>
</body>
</html>