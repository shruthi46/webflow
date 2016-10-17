<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
      <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
		<body background="http://hdwallpaperbackgrounds.net/wp-content/uploads/2016/07/white-background-1.jpg">

 
  <section id="content">
			<c:url var="action" value="adduser"></c:url>
			<form:form action="${action}" commandName="user"
				method="post">
<form class="form-horizontal">
 <div class="row centered-form">
        <div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title" style="text-align:center;">Registration Form</h3>
			 			</div>
			 			<div class="panel-body">
			    		<%-- <form role="form"> --%>


<div class="form-group">
  <label class="col-md-4 control-label" for="username">User name</label>  
  <div class="col-md-6">
  <form:input id="username" name="username" type="text" placeholder="user name" class="form-control input-md" 
  path="username" pattern=".{5,10}" required="true" title="minimum length for username is 5" />
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="password">Password</label>  
  <div class="col-md-6">
  <form:input id="password" name="password" type="password" placeholder="Password" class="form-control input-md" 
  path="password"  pattern=".{3,8}" required="true" title="minimum length for passsword is 3"/>
    
  </div>
</div>

<%-- <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="confirmpassword">Confirm Password</label>  
  <div class="col-md-6">
  <form:input id="confirmpassword" name="confirmpassword" type="password" placeholder="Confirm Password" class="form-control input-md"
   path="confirmpassword"  pattern=".{3,8}" required="true" title="minimum length for passsword is 3"/>
    
  </div>
</div> --%>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="email">Email</label>  
  <div class="col-md-6">
  <form:input id="email" name="email" type="text" placeholder="email address" class="form-control input-md" path="email"/>
    
  </div>
</div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="mobile">Mobile Number</label>  
  <div class="col-md-6">
  <form:input id="mobile" name="mobile" type="text" placeholder="Mobile Number" class="form-control input-md" 
  path="mobile" pattern="^[789]\d{9}$" required="true" title="Enter valid phone number"/>
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="address">Address</label>  
  <div class="col-md-6">
  <form:input id="address" name="address" type="text" placeholder="Adress" class="form-control input-md" 
  path="address" required="true" title="Enter valid address"/>
    
  </div>
</div>

</div>

<div class="form-group">
<div class="col-xs-8 col-sm-6 col-md-4 col-sm-offset-2 col-md-offset-4">
<input type="submit" value="Register" class="btn btn-info btn-block"><a href="login"></a>
</div>
</div>
</div>

</div>
</div>
</form>
</form:form>
</section>
${registered}
</body>
</html>


















<%-- 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="<c:url value="/resources/css/table.css" />">

<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>
<h1 align="center" style="margin-top:60px;">Register Here</h1>
<div class="text-center myForm" style="margin-top:50px;width:200px;">
 <c:url var="action" value="adduser"></c:url>
<form:form action="${action }" modelAttribute="user">
<table>
<tr><td>Name:</td><td><form:input class="input1" path="username" /></td></tr>
<tr><td>Password:</td><td><form:input class="input1" path="password" type="password"/></td></tr>
<tr><td>E-mail:</td><td><form:input class="input1" path="email" /></td></tr>
<tr><td>Mobile:</td><td><form:input class="input1" path="mobile" /></td></tr>
<tr><td>Address:</td><td><form:input class="input1" path="address" /></td></tr>
<tr><td></td><td><input type="submit" class="btn btn-primary" value="Register"/></td></tr>
</table>
</form:form>
</div>
${registered}
</body>
</html>

 --%>