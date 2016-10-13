
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
<title>Bootstrap Case</title>
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
<style>
div.gap {
	margin: -25px 0px 0px 0px;
}

table {
	border-collapse: collapse;
	width: 70%;
}

th, td {
	border: 1px solid grey;
	padding: 8px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

tr:hover {
	background-color: #f5f5f5
}

th {
	background-color: blue;
	color: white;
}

body {
	background-image:
		url("http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=1769775 ");
	background-repeat: no-repeat;
	background-position: left bottom;
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
				url : 'productgson'
			}).success(function(data, status, headers, config) {
				$scope.products = data;// alert(data); 
			}).error(function(data, status, headers, config) {
			});
		};
	};
</script>
</head>
 <body background="http://www.solanoaidscoalition.org/blog/wp-content/uploads/2014/11/Paper-Grunge-Background-11.jpg">


	<c:url var="addAction" value="addProduct"></c:url>
	<form:form action="${addAction}" modelAttribute="product" id="btn-add"
		enctype="multipart/form-data">
		<h3>
			<c:if test="$(product.id==0}"> 
		       Add New Item
	            </c:if>
			<c:if test="${!empty product.id}">
		       Update Item for Id: <c:out value="${product.id}" />
				<form:hidden path="id" />
			</c:if>
		</h3>
		<div class="container">
			<div class="clearfix"></div>
			<div class="Product_Content tab-content">
				<div id="Product" class="tab-pane active">
					<form class="form-horizontal">

						<br>
						<div
							class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
							<c:if test="${product.id!=0}">
								<label class="col-md-4 form-group" for="id">Id</label>
								<div class="col-md-6">
									<form:input type="text" placeholder="product id"
										class="form-control name" path="id" />
								</div>
							</c:if>
						</div>

						<div
							class="col-xs-8 col-sm-8  col-md-6 col-sm-offset-2 col-md-offset-3">
							<label class="col-md-4 form-group" for="name">Name</label>
							<div class="col-md-6">
								<form:input type="text" placeholder="product name"
									class="form-control name" path="name" />
							</div>
						</div>
						<div
							class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
							<label class="col-md-4 form-group" for="description">description</label>
							<div class="col-md-6 ">
								<form:input type="text" placeholder="description"
									class="form-control name" path="description" />
							</div>
						</div>

						<div
							class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
							<label class="col-md-4 form-group" for="categoryid">Category
								Name</label>
							<div class="col-md-6">
								<form:select class="form-control product-type"
									path="category_id">
									<c:forEach items="${allCategory}" var="categorylist">
										<form:option class="input1" value="${categorylist.id}">${categorylist.name}</form:option>
									</c:forEach>
								</form:select>
							</div>
						</div>

						<div
							class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
							<label class="col-md-4 form-group" for="supplierid">Supplier
								Name</label>
							<div class="col-md-6">
								<form:select class="form-control product-type"
									path="supplier_id">
									<c:forEach items="${allSupplier}" var="supplierlist">
										<form:option class="input1" value="${supplierlist.id}">${supplierlist.name}</form:option>
									</c:forEach>
								</form:select>
							</div>
						</div>

						<div
							class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
							<label class="col-md-4 form-group" for="price">price</label>
							<div class="col-md-6 ">
								<form:input type="text" placeholder="product price"
									class="form-control name" path="price" />
							</div>
						</div>
						<div
							class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
							<label class="col-md-4 form-group" for="image">Image:</label>
							<div class="col-md-6">
								<form:input type="file"
									class=" btn btn-default btn-block form-control" path="image"
									required="true" />
							</div>
						</div>


						<!-- <br>
					<td><input type="submit" class="btn btn-primary" value="Save" /></td>  -->


						<div
							class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
							<div class="col-md-4 ">
								<c:if test="${product.id==0}">
									<input type="submit" value="Add" class="btn btn-primary">
								</c:if>
								<c:if test="${product.id!=0}">
									<input type="submit" value="Update" class="btn btn-primary">
								</c:if>
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>
		
		<div class="container" data-ng-app="myApp"
			data-ng-controller="MyController" data-ng-init="getDataFromServer()"
			style="overflow: auto; height: 400px; width: 70%">
			<form>
				<input class="w3-input w3-animate-input w3-border w3-round w3-small"
					data-ng-model="search" type="text" placeholder=" Search Product"
					style="width: 20%">

			</form>

			<div align="center">
				<table>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Description</th>
						<th>Categoryid</th>
						<th>Supplierid</th>
						<th>Price</th>
						<th>image</th>


						<th colspan="2">Action</th>
					</tr>
					<%--   <c:forEach var="obj" items="${allData}"> --%>
					<tr
						data-ng-repeat="product in products | orderBy:sortType:sortReverse | filter:search">

						<td>{{product.id}}</td>
						<td>{{product.name}}</td>
						<td>{{product.description}}</td>
						<td>{{product.categoryid}}</td>
						<td>{{product.supplierid}}</td>
						<td>{{product.price}}</td>

						<td><div class="thumbnail">
								<img height="100px" width="100px" alt="{{product.id }}"
									src="<c:url value="/resources/images/Product/{{product.id}}.jpg"></c:url>">
							</div>
						<td><a href="DeleteByProduct/{{product.id}}">Delete </a> |
						 <a href="EditByProduct/{{product.id}}">Edit</a>
</td>
					</tr>
					<%--  </c:forEach> --%>
				</table>
			</div>
			</div>
			
	</form:form>
</body>
</html>

