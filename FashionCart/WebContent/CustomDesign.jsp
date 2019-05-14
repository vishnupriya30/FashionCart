<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <link href='https://fontsgoogleapis.com/css?family=Aclonica' rel='stylesheet'>
      <link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet'>
   <link rel="icon" href="pics/fashioncart.PNG" type="image/x-icon">
<style>
.total{
margin-top : -13px;
background-image: url(pics/wall10.jpg);
height:70px;
width:120%;
margin-left : -10px;
}
</style>
<meta charset="UTF-8">
<title>Fashion Cart</title>
</head>
<body style="background-color:linear-gradient(pink,white)">
<div class="total" >
<table style="padding-top:0px">
<td>
<a style="color:white;padding-left:62px;font-family:Righteous;font-size:35px;text-decoration:none" href="AfterLoginHomePage.jsp" >Fashion Cart</a></td>
<td>
<h1 style="color:white;padding-left:280px;font-family:Aclonica">#PairIt #LikeIt  #BuyIt</h1></td>
</table>
</div>
</br></br>
<div style="margin-top:0px;margin-left:15px"><h3>Choose One</h3></div>
<div style="margin-top:-35px;margin-left:1220px"><h3>Choose One</h3></div>
<a href="CustomDesignServlet?id=164"><img src="pics/BL1.PNG" style= "margin-left : 40px" height="100" width="80"></a>
<a href="CustomServlet?id=171"><img src="pics/G1.PNG" height="100" width="80" style="margin-left:1110px"></a>
</br></br>
<a href="CustomDesignServlet?id=165"><img src="pics/BL2.PNG" style= "margin-left : 40px" height="100" width="80"></a>
<a href="CustomServlet?id=172"><img src="pics/G2.PNG"  height="100" width="80" style="margin-left:1110px"></a>
</br></br>
<a href="CustomDesignServlet?id=166"><img src="pics/BL3.PNG" style= "margin-left : 40px" height="100" width="80"></a>
<a href="CustomServlet?id=173"><img src="pics/PT1.PNG"  height="100" width="80" style="margin-left:1110px"></a>
</br></br>
<a href="CustomDesignServlet?id=167"><img src="pics/CT1.PNG" style= "margin-left : 40px" height="100" width="80"></a>
<a href="CustomServlet?id=174"><img src="pics/PT2.PNG"  height="100" width="80" style="margin-left:1110px"></a>
</br></br>
<a href="CustomDesignServlet?id=168"><img src="pics/CT2.PNG" style= "margin-left : 40px" height="100" width="80"></a>
<a href="CustomServlet?id=175"><img src="pics/SK1.PNG"  height="100" width="80" style="margin-left:1110px"></a>
</br></br>
<a href="CustomDesignServlet?id=169"><img src="pics/CT3.PNG" style= "margin-left : 40px" height="100" width="80"></a>
<a href="CustomServlet?id=176"><img src="pics/SK2.PNG"  height="100" width="80" style="margin-left:1110px"></a>
</br></br>
<a href="CustomDesignServlet?id=170"><img src="pics/CT4.PNG" style= "margin-left : 40px" height="100" width="80"></a>
<a href="CustomServlet?id=177"><img src="pics/SK3.PNG"  height="100" width="80" style="margin-left:1110px"></a>
</br></br>
<a href="CustomDesignServlet?id=182"><img src="pics/T1.PNG" style= "margin-left : 40px" height="100" width="80"></a>
<a href="CustomServlet?id=179"><img src="pics/PA1.PNG"  height="100" width="80" style="margin-left:1110px"></a>
</br></br>
<a href="CustomDesignServlet?id=183"><img src="pics/T2.PNG" style= "margin-left : 40px" height="100" width="80"></a>
<a href="CustomServlet?id=180"><img src="pics/PA2.PNG"  height="100" width="80" style="margin-left:1110px"></a>
</br></br>
<a href="CustomDesignServlet?id=184"><img src="pics/T3.PNG" style= "margin-left : 40px" height="100" width="80"></a>
<a href="CustomServlet?id=181"><img src="pics/PA3.PNG"  height="100" width="80" style="margin-left:1110px"></a>
</br></br>
<a href="CustomDesignServlet?id=185"><img src="pics/TA1.PNG" style= "margin-left : 40px" height="100" width="80"></a>
<a href="CustomServlet?id=188"><img src="pics/Z1.PNG"  height="100" width="80" style="margin-left:1110px"></a>
</br></br>
<a href="CustomDesignServlet?id=186"><img src="pics/TA2.PNG" style= "margin-left : 40px" height="100" width="80"></a>
<a href="CustomServlet?id=189"><img src="pics/Z2.PNG"  height="100" width="80" style="margin-left:1110px"></a>
</br></br>
<a href="CustomDesignServlet?id=187"><img src="pics/TA3.PNG" style= "margin-left : 40px" height="100" width="80"></a>
<a href="CustomServlet?id=190"><img src="pics/Z3.PNG"  height="100" width="80" style="margin-left:1110px"></a>
<div style ="margin-left:570px;margin-top:-1600px">
<div style="font-size:30px">Click here to Buy</div>
<a href="ItemServlet?itemId=${item.itemId}"><img src="${item.image}" width=200px; height=200px></a></br>
<a href="ItemServlet?itemId=${item1.itemId}"><img src="${item1.image}" width=200px; height=300px></a>
</div>
</body>
</html>