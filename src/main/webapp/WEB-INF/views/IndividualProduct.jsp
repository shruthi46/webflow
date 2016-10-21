<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
      <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show product</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  
  footer{
  margin-top:50px;
  }
body {
width:100%;
}
  
  </style>
</head>
 <body  style="background-color:#ffffff;">


<!--  <div class="text-left" >
  <h1 style="font-family:Georgia; font-size:30px;"><i>SHOPIN </i>
    <img  src="https://www.sitewelder.com/art2012/logo-big-shopping.png" alt="logo" width="40px" height="40px" align="left" >
  <img  src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/F_icon.svg/768px-F_icon.svg.png" alt="fb" width="25px" height="25px" align="right" >
  <img  src="https://upload.wikimedia.org/wikipedia/en/thumb/9/9f/Twitter_bird_logo_2012.svg/1259px-Twitter_bird_logo_2012.svg.png" alt="twitter" width="25px" height="25px" align="right" >
  <img  src="http://icons.iconarchive.com/icons/danleech/simple/1024/linkedin-icon.png" alt="linkedin" width="25px" height="25px" align="right" >
  </h1>
  
  </div> -->
  
<nav class="navbar navbar-inverse navbar-fixed-top">  <div class="container-fluid"> 
  <div class="container-fluid"> 
  <div class="navbar-header" class=" pull-left">
  <a class="navbar-brand" style="font-size:27px;margin-top: -4px;">
     <i class="fa fa-opencart" aria-hidden="true"></i> SHOPIN </a>
    <sec:authorize access="isAuthenticated()">
     <a class="navbar-brand" style="font-size:15px;"><span class="glyphicon glyphicon-user"></span> WELCOME <sec:authentication property="principal.username"/> </a>
     
  	
</sec:authorize>
    </div>
     <ul class="nav navbar-nav navbar-right" style="margin-bottom:-2px;">
      <%--  <li class="dropdown" >
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">CATEGORIES
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <c:forEach items="${allCategory}" var="category">
				<a href="navproduct/${category.id }"><c:out value="${category.name}" /></a>
							<br>
						
					</c:forEach>
        </ul>
      </li> --%>
      
    
      <li><a href="HOME">HOME</a></li>
       <sec:authorize access="!isAuthenticated()">
      <li><a href="REGISTER">REGISTER</a></li>
      <li><a href="LOGIN">LOGIN</a></li>
      </sec:authorize>
<!-- 	  <li><a href="ABOUTUS">ABOUT US</a></li> -->
	  <li><a href="CONTACTUS">CONTACT US</a></li>
   <sec:authorize access="isAuthenticated()">
   <li ><a href="Cart1" ><p>CART <span class="glyphicon glyphicon-shopping-cart"></span></p></a></li>
	<li><a href="<c:url value="/perform_logout" />"><p>LOGOUT<span class="glyphicon glyphicon-log-out"></span></p></a></li>
</sec:authorize>
					  
   </ul>
   </div>
  </nav>

<br><br>

	<div class="container">
		<c:forEach items="${IndividualProduct}" var="product">
		<h2><c:out value="${product.name }"/></h2>
		
			<div class="col-xs-6 w3-animate-left">
				<div class="img">
					<img  height="300px" width="300px" alt="${product.id}" src="<c:url value="/resources/images/Product/${product.id}.jpg"></c:url>">
					<div class="desc">
					<%-- 	<strong>${product.name}</strong> --%>
						
					</div>
				</div>
			</div>

			<div class="col-xs-2 ">
				<div class="img">
					<div class="desc">
						<p>
						<div class="form-group">
							<input type="text" class="form-control" value="${product.name}" readonly="readonly">
						</div>
						
						<div class="form-group">
							 <input type="text" class="form-control" value="Rs. ${product.price}" readonly="readonly">
						</div>
						<c:choose>
								<c:when test="${LoggedIn}">
									<form action="addtocart/${product.id}">
										<!-- <input type="number" value="1" name="quantity"
											class=" form-control  btn-block  "> --> 
											<br><input
											type="submit" value="Add to Cart"
											class="btn btn-xs btn-success btn-block">
									</form>
								</c:when>
							</c:choose>
						
						</div>
						</div>
						</div>
						</c:forEach>
						</div>
<br><br><br><br><br>
 <%@include file="Footer.jsp"%>
</body>
</html>