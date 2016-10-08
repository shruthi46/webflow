<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<script src="${pageContext.request.contextPath}/app-resources/js/lib/jquery-2.2.3.min.js"></script>
  <script src="${pageContext.request.contextPath}/app-resources/js/myapp.js"></script>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/app-resources/css/style.css"/>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body style="padding-top:">
	<div class="container">
		<section id="content">
		<c:url var="action" value="/login"></c:url>
			<form:form action="${action}" method="post">
				<h4>Login</h4>
				<div>
					<input type="text" placeholder="Username" required id="username" name="username" 
						pattern=".{5,10}" title="minimum length for name is 5"/>
				</div>
				<div>
					<input type="password" placeholder="Password" required id="password" name="password" 
					 pattern=".{3,8}" title="Enter Valid credentials"/>
				</div>
				<div>
					<input type="submit" value="Login" />  <a href="Registration">Register Here</a>
					
				</div>
				
			</form:form>
			
			
		</section>
		
	</div>
	
</body>
</html>