<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>${item.itemName}</title>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="icon" href="pics/fashioncart.PNG" type="image/x-icon">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bai Jamjuree' rel='stylesheet'>
 <link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet'>
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
<style>
* {box-sizing: border-box;}

.img-zoom-container {
  position: relative;
}

.img-zoom-lens {
  position: absolute;
  border: 1px solid #d4d4d4;
  /*set the size of the lens:*/
  width: 60%;
  height: 90px;
  
}

.img-zoom-result {
  border: 1px solid #d4d4d4;
  /*set the size of the result div:*/
  width: 300px;
  height: 170px;
}
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
</style>
<script>
function imageZoom(imgID, resultID) {
  var img, lens, result, cx, cy;
  img = document.getElementById(imgID);
  result = document.getElementById(resultID);
  /*create lens:*/
  lens = document.createElement("DIV");
  lens.setAttribute("class", "img-zoom-lens");
  /*insert lens:*/
  img.parentElement.insertBefore(lens, img);
  /*calculate the ratio between result DIV and lens:*/
  cx = result.offsetWidth / lens.offsetWidth;
  cy = result.offsetHeight / lens.offsetHeight;
  /*set background properties for the result DIV:*/
  result.style.backgroundImage = "url('" + img.src + "')";
  result.style.backgroundSize = (img.width * cx) + "px " + (img.height * cy) + "px";
  /*execute a function when someone moves the cursor over the image, or the lens:*/
  lens.addEventListener("mousemove", moveLens);
  img.addEventListener("mousemove", moveLens);
  /*and also for touch screens:*/
  lens.addEventListener("touchmove", moveLens);
  img.addEventListener("touchmove", moveLens);
  function moveLens(e) {
    var pos, x, y;
    /*prevent any other actions that may occur when moving over the image:*/
    e.preventDefault();
    /*get the cursor's x and y positions:*/
    pos = getCursorPos(e);
    /*calculate the position of the lens:*/
    x = pos.x - (lens.offsetWidth / 2);
    y = pos.y - (lens.offsetHeight / 2);
    /*prevent the lens from being positioned outside the image:*/
    if (x > img.width - lens.offsetWidth) {x = img.width - lens.offsetWidth;}
    if (x < 0) {x = 0;}
    if (y > img.height - lens.offsetHeight) {y = img.height - lens.offsetHeight;}
    if (y < 0) {y = 0;}
    /*set the position of the lens:*/
    lens.style.left = x + "px";
    lens.style.top = y + "px";
    /*display what the lens "sees":*/
    result.style.backgroundPosition = "-" + (x * cx) + "px -" + (y * cy) + "px";
  }
  function getCursorPos(e) {
    var a, x = 0, y = 0;
    e = e || window.event;
    /*get the x and y positions of the image:*/
    a = img.getBoundingClientRect();
    /*calculate the cursor's x and y coordinates, relative to the image:*/
    x = e.pageX - a.left;
    y = e.pageY - a.top;
    /*consider any page scrolling:*/
    x = x - window.pageXOffset;
    y = y - window.pageYOffset;
    return {x : x, y : y};
  }
}
</script>
</head>
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
        <a href="SelectServlet?SubId=1" class="w3-bar-item w3-button w3-mobile">Samsung</a>
        <a href="SelectServlet?subId=2" class="w3-bar-item w3-button w3-mobile">Redmi</a>
        <a href="SelectServlet?subId=3" class="w3-bar-item w3-button w3-mobile">Oppo</a>
        <a href="SelectServlet?subId=4" class="w3-bar-item w3-button w3-mobile">One plus</a>
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
          <a href="SelectServlet?subId=126" class="w3-bar-item w3-button w3-mobile">Business</a>
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
<div style="height:95%;width:90%;background-color:white;margin-left:5%">
<table>
<td >
<div class="img-zoom-container">
 <img id="myimage" src="${item.image}" style="height:400px;width:225px;margin-left:50px;margin-top:-75px"></td>
  <div id="myresult" class="img-zoom-result" style="margin-top:0px;margin-left:300px"></div>
</div>
 <div style="margin-top:-100px">
<td style="padding-left:80px">
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
</div>
<div style="margin-left:800px">
<form action="CartServlet?itemId=${item.itemId}" method="post"></br>
<div style="margin-left:150px;margin-bottom:20px">Quantity:<select class="1-10" name="quantity"></select></div>
<!--<button  class="button"style="margin-top:-250px;margin-left:160px"><span class="glyphicon glyphicon-shopping-cart"></span>&nbsp&nbsp<a href='CartServlet' style="color:white">ADD TO CART</a></button></div>
-->
<input type="submit" value="Add To Cart" style="margin-bottom:10px;border:none;background-color:#ff6633; height:50px;width:100px;color:white;margin-left:250px">
</form>
</div>
<td>

<div>

<button class="button" style="margin-top:-195px;margin-left:260px"><i class="fas fa-gift"></i>&nbsp&nbsp<a href='OrderServlet' style="color:white">Buy now</a></button></div></br></br>

<div style="margin-top:-90px;padding-left:200px">
<img src="pics/fAssured.jpg" width=30% height=30%></br>
<h2><b>&#x20B9;${item.price}</b></h2>
</div>
</td>
</table>
</div>
</div>
<script>
imageZoom("myimage", "myresult");
$(function(){
    var $select = $(".1-10");
    for (i=1;i<=10;i++){
        $select.append($('<option></option>').val(i).html(i))
    }
});
</script>
</body>
</html>