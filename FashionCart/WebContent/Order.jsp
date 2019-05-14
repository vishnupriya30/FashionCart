<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.dto.Item" import="com.dto.OrderItem" import="com.dto.Orders" import="com.dao.OrderItemDao" import="com.dao.ItemDao" import="java.util.List"%>
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
<link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet'>
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
.hov{
color:black;
}
.hov:hover{
color:rgb(0,138,230);
}
form {
  width: 300px;
  margin: 0 auto;
  text-align: center;
  padding-top: 50px;
  margin-left:120px;
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

.value-button {
  display: inline-block;
  border: 1px solid #ddd;
  margin: 0px;
  width: 40px;
  height: 20px;
  text-align: center;
  vertical-align: middle;
  padding: 11px 0;
  background: #eee;
  -webkit-touch-callout: none;
  -webkit-user-select: none;
  -khtml-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

.value-button:hover {
  cursor: pointer;
}

form #decrease {
  margin-top:-2px;
  width:40px;
  height:40px;
  margin-right: -4px;
  border-radius: 8px 0 0 8px;
}

form #increase {
margin-top:-2px;
  margin-left: -4px;
   width:40px;
  height:40px;
  border-radius: 0 8px 8px 0;
}

form #input-wrap {
  margin: 0px;
  padding: 0px;
}

input#number {
  text-align: center;
  border: none;
  border-top: 1px solid #ddd;
  border-bottom: 1px solid #ddd;
  margin: 0px;
  width: 40px;
  height: 40px;
}

input[type=number]::-webkit-inner-spin-button,
input[type=number]::-webkit-outer-spin-button {
    -webkit-appearance: none;
    margin: 0;
}
</style>
<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bai Jamjuree' rel='stylesheet'>
<body>
<%
%>
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
        <a href="AboutUs.html" class="w3-bar-item w3-button w3-mobile">AboutUs</a>
        <a href="MyOrdersServlet" class="w3-bar-item w3-button w3-mobile">MyOrders</a>
        <a href="DownApp.html" class="w3-bar-item w3-button w3-mobile">Download</a>
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
<% 
List<Orders> orders = (List<Orders>)request.getAttribute("orders");
System.out.println(orders);
for(Orders order : orders){
List<OrderItem> orderItem = OrderItemDao.getAllOrderItems(order.getOrderId());
int id = order.getOrderId();
%>
<div style="background-color:white">
<h3 style="margin-left:200px"><b>OrderId:19F2P_<%= id%></br></br></h3>
<%
double total = 0;
for(OrderItem orderitem: orderItem){
    
	Item item = ItemDao.getItem(orderitem.getItemId1());
	System.out.println(item);
	total = total+(item.getPrice()*orderitem.getQuantity());
	%>
	<table>
	<tr>
	<td>
	    <div style = "margin-left:40px"><img src=<%=item.getImage() %> style="width:200px;height:300px"></br></br></div>
	    </td>
	    <td>
		<ul>
		<li><b><%= item.getFtr1()%>></br></br></li>
		<li><b><%= item.getFtr2()%></br></br></li>
		<li><b>Quantity:<%= orderitem.getQuantity()%></br></br></li>
		<li><h4>&#x20B9;<b><%= item.getPrice()%></h4></br></br></li>
		
		</ul>
		</td>
		</tr>
		</table>
		<% 
	
}
%>
<b><h3 style="margin-left:50px">Net Amount:&#x20B9;<b><%=total%></h3></br></br>
<div style="width:100%;height:10px;background-color:#f2f2f2"></div>
<%
}
%>
</div>
</div>
</body>
</html>