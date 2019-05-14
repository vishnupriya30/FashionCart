<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.dto.Item" import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fashion Cart</title>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="icon" href="pics/fashioncart.PNG" type="image/x-icon">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster">
  <link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet'>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<style>
.button {
 background-color:#ff6633;
  border: none;
  color: white;
  padding: 15px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
.hov{
color:black;
}
.hov:hover{
color:rgb(0,138,230);
}
</style>
<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bai Jamjuree' rel='stylesheet'>
<body>
<div class="w3-container">
  <div class="w3-bar w3-blue">
  <table><tr><td style="padding-left:100px ">
 <a href="AfterLoginHomePage.jsp" style="margin-left:20% ;color:white;font-size:30px;font-family:Righteous;text-decoration:none">FashionCart</a>
</td>
<td><div  style="padding-left:700px"></div></td>
    <td><div class="w3-dropdown-hover w3-mobile">
    <button class="w3-button w3-blue">MyAccount<i class="fa fa-caret-down" style="text-decoration:none"></i></button>
      <div class="w3-dropdown-content w3-bar-block ">
        <a href="ViewProfile.jsp" class="w3-bar-item w3-button w3-mobile">My Profile</a>
        <a href="Login.html" class="w3-bar-item w3-button w3-mobile">Logout</a>
      </div>
    </div></td>
    <td><div class="w3-dropdown-hover w3-mobile">
    <button class="w3-button w3-blue">More<i class="fa fa-caret-down" style="text-decoration:none"></i></button>
      <div class="w3-dropdown-content w3-bar-block ">
        <a href="MyOrdersServlet" class="w3-bar-item w3-button w3-mobile">MyOrders</a>
      </div>
    </div></td><td style="padding-left:25px ">
     <a href="MyCartServlet" class="w3-bar-item w3-button w3-mobile" style="text-decoration:none;color:white">Cart</a></td></tr></table>
  </div>
</div>
<div class="w3-container">
  <div class="w3-bar w3-white">
    <div class="w3-dropdown-hover w3-mobile"  style="margin-left:15%">
      <button class="w3-button" style="background-color:white">Mobiles<i class="fa fa-caret-down"></i></button>
      <div class="w3-dropdown-content w3-bar-block">
        <a href="SelectServlet?subId=10" class="w3-bar-item w3-button w3-mobile">Samsung</a>
        <a href="SelectServlet?subId=11" class="w3-bar-item w3-button w3-mobile">Redmi</a>
        <a href="SelectServlet?subId=13" class="w3-bar-item w3-button w3-mobile">Oppo</a>
        <a href="SelectServlet?subId=12" class="w3-bar-item w3-button w3-mobile">One plus</a>
      </div>
    </div>
    <div class="w3-dropdown-hover w3-mobile"  style="margin-left:15%">
      <button class="w3-button">Dresses<i class="fa fa-caret-down"></i></button>
      <div class="w3-dropdown-content w3-bar-block">
        <a href="SelectServlet?subId=14" class="w3-bar-item w3-button w3-mobile">Ethnic</a>
        <a href="SelectServlet?subId=15" class="w3-bar-item w3-button w3-mobile">Western</a>
        <a href="SelectServlet?subId=16" class="w3-bar-item w3-button w3-mobile">Summer</a>
         <a href="SelectServlet?subId=17" class="w3-bar-item w3-button w3-mobile">Winter</a>
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
<div style="background-color: #f2f2f2">
</br>
<c:forEach var="item" items="${itemList}">
<a href="#" style="text-decoration:none">
<div style="height:65%;width:90%;background-color:white;margin-left:5%">
<table>
<td>
 <img src="${item.image}" style="height:250px;width:125px;margin-left:50px;margin-top:60px"></td>
<td style="padding-left:60px">
</br>
</br><b></b><h3 style="font-family:Aclonica" class="hov">${item.itemName}</h3>
<div style="font-family:Bai Jamjuree">
<ul>
<li><b>${item.ftr1}</br></br></li>
<li><b>${item.ftr2}</br></br></li>
<li><b>${item.ftr3}</br></br></li>
<li><b>${item.ftr4}</br></br></li>
</ul>
</div>
</td>
<td>
<div style="margin-top:40px;padding-left:200px">
<img src="pics/fAssured.jpg" width=30% height=30%></br>
<h2><b>&#x20B9;${item.price}</b></h2>
</br>
<button class="button" style="margin-top:200px;margin-left:340px">&nbsp&nbsp<a href='DeleteItem?itemId=${item.itemId}' style="color:white">Delete</a></button></div>
</div>
</td>
</table>
</div>
</a>
<div style="background-color: #f2f2f2;width:90%;height:10px"></div>
</c:forEach>
</br></br>
<a href = 'OrderServlet' style="padding:20px;background-color:#ff6633;color:white;margin-left:700px;font-size:20px">Place Order</a>
</br></br></br></br>
</div>
</body>
</html>