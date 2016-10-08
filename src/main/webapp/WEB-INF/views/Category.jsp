<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en-US">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.17/angular.min.js"></script>
<script
	src="${pageContext.request.contextPath}/app-resources/js/lib/jquery-2.2.3.min.js"></script>
<script
	src="${pageContext.request.contextPath}/app-resources/js/myapp.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/app-resources/css/style.css" />
<head>
<title>Admin</title>
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
<script>
	var app = angular.module('myApp', []);
	function MyController($scope, $http) {
		$scope.sortType = 'name'; // set the default sort type
		$scope.sortReverse = false; // set the default sort order
		$scope.search = '';
		$scope.getDataFromServer = function() {
			$http({
				method : 'GET',
				url : 'categorygson'
			}).success(function(data, status, headers, config) {
				$scope.categorys = data;// alert(data); 
			}).error(function(data, status, headers, config) {
			});
		};
	};
</script>

</head>
<body>
	<c:url var="addAction" value="addcategory"></c:url>

	<form:form action="${addAction}" modelAttribute="category" id="btn-add">
		<h3>
			<c:if test="$(category.id==0}">
		       Add New Item
	            </c:if>
			<c:if test="${!empty category.id}">
		      Update Item for Id: <c:out value="${category.id}" />
				<%--  <form:hidden path="id"/> --%>
			</c:if>
		</h3>
		<div class="container">
		
		<table class="table table-container">

			<tr>
				<c:if test="${category.id!=0}">
					<td>Id:</td>
					<td><form:input path="id" /></td>
				</c:if>
			</tr>
			<tr>
				<td>Name:</td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td>Description:</td>
				<td><form:input path="description" /></td>
			</tr>



			<tr>
				<td><c:if test="${category.id==0}">
						<input type="submit" value="Add" id="btn-add">
					</c:if> <c:if test="${category.id!=0}">
						<input type="submit" value="Update" id="btn-update">
					</c:if></td>
			</tr>
			<td colspan="2" class="success-msg"><c:out value="${msg}" /></td>
		</table>
		</div>

		<div class="container" data-ng-app="myApp"
			data-ng-controller="MyController" data-ng-init="getDataFromServer()"
			style="overflow: auto; height: 400px; width: 70%">
			<form>
				<input class="w3-input w3-animate-input w3-border w3-round w3-small"
					data-ng-model="search" type="text" placeholder=" Search Category"
					style="width: 20%">
			</form>
			<br> <br>
			<div class="container">
				<table class="table table-bordered">
					<tr>
						<td>ID</td>
						<td>Name</td>
						<td>Description</td>
						<td colspan="2">Action</td>
					</tr>
					<%-- <c:forEach var="obj" items="${allData}"> --%>
					<tr data-ng-repeat="category in categorys | orderBy:sortType:sortReverse | filter:search">
						<td>{{category.id}}</td>
						<td>{{category.name}}</td>
						<td>{{category.description}}</td>
						<%-- <td> <c:out value="${{obj.price}} </td --%>
						<td><a href="DeleteByCategory/{{category.id}}">Delete </a> |
							<a href="EditByCategory/{{category.id}}">Edit</a>
					    </td>
					</tr>
					<%-- </c:forEach> --%>
				</table>
			</div>
		</div>

	</form:form>

</body>
</html>