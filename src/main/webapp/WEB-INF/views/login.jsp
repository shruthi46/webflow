
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>home page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  footer {
    
    margin-top: 350px;
    
} 
body {
width:100%;
}
  </style>
</head>


		<body background="http://hdwallpaperbackgrounds.net/wp-content/uploads/2016/07/white-background-1.jpg">


 <div class="text-center" >
  <h1 style="font-family:Georgia; font-size:40px;"><i>DigiCart </i>
    <img  src="https://www.sitewelder.com/art2012/logo-big-shopping.png" alt="logo" width="60px" height="60px" align="center" >
  <img  src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/F_icon.svg/768px-F_icon.svg.png" alt="fb" width="30px" height="30px" align="right" >
  <img  src="https://upload.wikimedia.org/wikipedia/en/thumb/9/9f/Twitter_bird_logo_2012.svg/1259px-Twitter_bird_logo_2012.svg.png" alt="twitter" width="30px" height="30px" align="right" >
  <img  src="http://icons.iconarchive.com/icons/danleech/simple/1024/linkedin-icon.png" alt="linkedin" width="30px" height="30px" align="right" >
  </h1>
  
  </div>
    
  <nav class="navbar navbar-inverse">
  <div class="container-fluid"> 
     <ul class="nav navbar-nav navbar-right" style="margin-bottom:0px;">
   
     
      <li><a href="HOME">HOME</a></li>
       <sec:authorize access="!isAuthenticated()">
      <li><a href="register">REGISTER</a></li>
      <li><a href="login">LOGIN</a></li>
      </sec:authorize>
	  <li><a href="ABOUTUS">ABOUT US</a></li>
	  <li><a href="CONTACTUS">CONTACT US</a></li>
   <sec:authorize access="isAuthenticated()">
   <li ><a href="Cart1" ><p>CART <span class="glyphicon glyphicon-shopping-cart"></span></p></a></li>
	<li><a href="<c:url value="/perform_logout" />"><p>LOGOUT<span class="glyphicon glyphicon-log-out"></span></p></a></li>
	<li><a href="">WELCOME<sec:authentication property="principal.username"/></a></li>
</sec:authorize>
					  
   </ul>
   </div>
  </nav> 

	<div class="container">
	  		<section id="content">
			<form action="perform_login" method="post">
				
				<form class="form-horizontal">
 <div class="row centered-form">
        <div class="col-xs-8 col-sm-8
 col-md-5 col-sm-offset-2 col-md-offset-3">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title" style="text-align:center;">Login here</h3>
			 			</div>
			 			<div class="panel-body">
			    		



<!-- Text input-->
<div class="form-group">
  <label class="col-md-3 control-label" for="username">Username</label>  
  <div class="col-md-7">
  <input id="username" name="username" type="text" placeholder="user name" class="form-control input-md" required="" pattern=".{5,10}" title="minimum length for name is 5"/>
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-3 control-label" for="password">Password</label>  
  <div class="col-md-7">
  <input id="password" name="password" type="password" placeholder="Password" class="form-control input-md" required=""  pattern=".{3,8}" title="Enter Valid credentials"/>
    
  </div>
</div>

				
				<div class="form-group">
<div class="col-xs-8 col-sm-6 col-md-4 col-sm-offset-2 col-md-offset-4">
<a href="register.jsp"> register here?</a>
<p></p>
<input type="submit" value="Login" class="btn btn-info btn-block">
</div>
</div>
</div>
</div>
</div>
</div>
</form>
</form>
</section>
		
	</div>
	
<%--  <%@include file="Footer.jsp"%> --%> 	
</body>
</html>