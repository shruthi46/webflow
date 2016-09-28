<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>registration</title>
<%@ include file="header.jsp"%>
</head>
<body bgcolor="white">

<div class="container">
  <h2>REGISTER:</h2>
  <form role="form">
    <div class="form-group">
      <label for="usr">Name:</label>
      <input type="text" style="width:50%" class="form-control" id="usr" placeholder="Enter name">
    </div>
       <div class="form-group">	
      <label for="email">Email:</label>
      <input type="email" style="width:50%" class="form-control" id="email" placeholder="Enter email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" style="width:50%" class="form-control" id="pwd" placeholder="Enter password">
    </div>
	<div class="form-group">
      <label for="pwd">Confirm Password:</label>
      <input type="password" style="width:50%" class="form-control" id="pwd" placeholder="Confirm password">
    </div>
	<form action="bday">
     <h5><b>Birthday:</b></h5>
    <input type="date" name="bday">
    </form>
	<br/>
	<div class="radio">
	   <h5><b>I am a:</b></h5>
      <label><input type="radio" name="gender" value="male">Male<br/></label>
	  <br/>
      <label><input type="radio" name="gender" value="female">Female</br></label>
    </div>
    <div class="checkbox">
      <label><input type="checkbox" class="required">I agree with the terms and conditions.</label>
    </div>
    <button type="submit" class="btn btn-success">Create account</button>
	<br/>
	<br/>
  </form>
</div>
</body>
</html>


 --%>