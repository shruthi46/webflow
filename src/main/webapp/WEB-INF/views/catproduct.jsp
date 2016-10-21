<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
   div.gap
  {
  margin:-35px 0px 0px 20px;
  }
  </style>
</head>
<body>
<h1><img src="C:\Users\lakshmideepthi\Desktop\my website\logo.png" alt="Test Image" width="200" height="200" style="margin:-60px 0px 0px 5px" align="left"></h1>
<div class>
  <h1 style="color:black;font-family:algerian;text-align:left;background-color:white">Gleznot World<br><font size="3">Add color to your life!</font>
  <img src="c:\Users\lakshmideepthi\Desktop\my website\insta.png" alt="Test Image" width="30" height="30" align="right">
  <img src="c:\Users\lakshmideepthi\Desktop\my website\twitter.png" alt="Test Image" width="35" height="30" align="right">
  <img src="c:\Users\lakshmideepthi\Desktop\my website\fb.png" alt="Test Image" width="35" height="30" align="right"></h1>
  
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"></a></div>
   
    <ul class="nav navbar-nav navbar-right">
      <li><a href="Home"><span class="glyphicon glyphicon-user"></span> Home</a></li>
      <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	  <li><a href="Registration"><span class="glyphicon glyphicon-log-in"></span> Registration</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> AboutUs</a></li>
     
    </ul>
  

	</form>
	</nav>


<c:forEach items="${navproducts}" var="product">
<h4>ProductName: <c:out value="${product.name }"/></h4>
<div class="thumbnail">


  <a href="ShowProduct/${product.id}" > <img height="250px" width="250px" alt="${product.id }"
  src="<c:url value="/resources/images/product/${product.id }.jpg"></c:url>"></a>
</div>
<div align="centre">
 ProductDescription: <c:out value="${product.description}"/><br>
 ProductPrice: <c:out value="${product.price }"/><br>
  
</div>
</c:forEach>

<c:choose>
<c:when test="${UserClickedCart}">
<c:import url="/WEB-INF/views/Cart1.jsp"></c:import>
</c:when></c:choose>
<c:choose>
<c:when test="${UserClickedlogin}">
<c:import url="/WEB-INF/views/login.jsp"></c:import>
</c:when>
</c:choose> 
<c:choose>
<c:when test="${UserClickedregister}">
<c:import url="/WEB-INF/views/register.jsp"></c:import>
</c:when>
</c:choose> 
<c:choose>
<c:when test="${userclickedhome}">
<c:import url="/WEB-INF/views/Home.jsp"/>
</c:when>
</c:choose>




</body>

</html>