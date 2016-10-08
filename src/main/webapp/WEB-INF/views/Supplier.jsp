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
					url : 'suppliergson'
				}).success(function(data, status, headers, config) {
					$scope.suppliers = data;// alert(data); 
				}).error(function(data, status, headers, config) {
				});
			};
		};
	</script>

</head>
<body>
	
	<c:url var="addAction" value="addsupplier"></c:url>

	<form:form action="${addAction}" modelAttribute="supplier" id="btn-add">
		<h3>
			<c:if test="$(supplier.id==0}">
		       Add New Item
	            </c:if>
			<c:if test="${!empty supplier.id}">
		      Update Item for Id: <c:out value="${supplier.id}" />
				<%--  <form:hidden path="id"/> --%>
			</c:if>
		</h3>
		<div class="container">
		<table class="table table-container">

			<tr>
				<c:if test="${supplier.id!=0}">
					<td>Id:</td>
					<td><form:input path="id" /></td>
				</c:if>
			<tr>
				<td>Name:</td>
				<td><form:input path="name" /></td>
			<tr>
				<td>Address:</td>
				<td><form:input path="address" /></td>
			<tr>
				<td colspan="2"><c:if test="${supplier.id==0}">
						<input type="submit" value="Add" id="btn-add">
					</c:if> <c:if test="${supplier.id!=0}">
						<input type="submit" value="Update" id="btn-update">
					</c:if></td>
			<tr>
				<td colspan="2" class="success-msg"><c:out value="${msg}" /></td>
		</table>
		</div>
		<div class="container" data-ng-app="myApp"
			data-ng-controller="MyController" data-ng-init="getDataFromServer()"
			style="overflow: auto; height: 400px; width: 70%">
			<form>
				<input class="w3-input w3-animate-input w3-border w3-round w3-small"
					data-ng-model="search" type="text" placeholder=" Search Supplier"
					style="width: 20%">
			</form>
			<br>
		

		<div class="container">
			<table class=" table table-bordered">
				<tr>
					<td>ID</td>
					<td>Name</td>
					<td>Address</td>

					<td colspan="2">Action</td>
				</tr>
				<%-- <c:forEach var="obj" items="${allData}"> --%>

				<tr
					data-ng-repeat="supplier in suppliers | orderBy:sortType:sortReverse | filter:search">
					<td>{{supplier.id}}</td>
					<td>{{supplier.name}}</td>
					<td>{{supplier.address}}</td>


					<td><a href="deleteBysupplier/{{supplier.id}}">Delete </a> | 
						<a href="ItemBysupplier/{{supplier.id}}">Edit</a>
					</td>
				</tr>
				<%-- </c:forEach> --%>
			</table>
		</div>
		</div>
	</form:form>
	
</body>
</html>
