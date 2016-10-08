<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>product page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
footer {
    
    margin-top: 50px;
    
} 
body {
width:100%;
}
  
  </style>
</head>
<body>
 

 
  <c:url var="addAction" value="addProduct" ></c:url>

<form:form action="${addAction}" modelAttribute="product" id="btn-add">
   <h3>
                    <c:if test="${product.id==0}">
		       
	            </c:if>
	            <c:if test="${!empty product.id}">
		     
		     <%--  <form:hidden path="id"/> --%>
	            </c:if>
         </h3>
          <div class="container">
  <div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
  <ul class="nav nav-tabs col-lg-12">
    <li class="active"><a href="Product">Product</a></li>
    <li><a href="Category">Category</a></li>
     <li><a href="Supplier">Supplier</a></li>
  </ul>
  </div> 
  <br>
 <div class="clearfix"></div>
	<div class="Product_Content tab-content">
            <div id="Product" class="tab-pane active">
            <form class="form-horizontal">
 
  <br>
<div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
 <c:if test="${product.id!=0}">
      <label class="col-md-4 form-group"  for="id">Id</label>
      <div class="col-md-6">
        <form:input type="text" placeholder="product id" class="form-control name" path="id"/>
      </div>
     </c:if>
         </div>
    
    <div class="col-xs-8 col-sm-8  col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="name">Name</label>
      <div class="col-md-6">
        <form:input type="text" placeholder="product name" class="form-control name" path="name"/>
      </div>
    </div>

<div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="category_id">Category Name</label>
      <div class="col-md-6">
         <form:select  class="form-control product-type" path="category_id">
         <c:forEach items="${allCategory}" var="category">
         <form:option class="input1" value="${category.id}">${category.name}</form:option>
         </c:forEach>
		</form:select>
       </div>
    </div>
    
<div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3"> 
      <label class="col-md-4 form-group"  for="supplier_id">Supplier Name</label>
      <div class="col-md-6">
 <form:select  class="form-control product-type" path="supplier_id">
         <c:forEach items="${allSupplier}" var="supplier">
         <form:option class="input1" value="${supplier.id}">${supplier.name}</form:option>
         </c:forEach>
		</form:select>
                  </div>
    </div>

<div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="price">price</label>
      <div class="col-md-6 ">
        <form:input type="text"  placeholder="product price" class="form-control name" path="price"/>
      </div>
    </div>
    

<div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
      <label class="col-md-4 form-group"  for="stock">Stock</label>
      <div class="col-md-6">
        <form:input type="text" placeholder="product stock" class="form-control name" path="stock"/>
      </div>
    </div>    
    <%-- <div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
    <label class="col-md-4 form-group" for="image">Image:</label>
					<form:input type="file"
						class=" btn btn-default btn-block form-control" path="image"
							required="true" />
				</div>
				
					
					<br>
					<td><input type="submit" class="btn btn-primary" value="Save" /></td> --%>
    
    
    <div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
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
    
 <div align="center">
<table style="width:80%">
<thead>
<tr>
<th>Product ID</th>
<th>Product Name</th>
<th>Category Name</th>
<th>Supplier Name</th>
<th>Price</th>
<th>Stock</th>
<th>Delete</th>
<th>Edit</th>

</tr>
</thead>
<tbody>
<c:forEach items="${allProduct}" var ="product">
<tr>
<td><c:out value="${product.id}"/>
<td><c:out value="${product.name}"/>
<td><c:out value="${product.category_id}"/>
<td><c:out value="${product.supplier_id}"/>
<td><c:out value="${product.price}"/>
<td><c:out value="${product.stock}"/>
<%-- <td><div class="thumbnail">
								<img height="50px" width="50px" alt="${product.id }"
									src="<c:url value="/resources/images/${product.id }.jpg"></c:url>">
									</div> --%>
<td><a href="ProductDeleteById/${product.id}">delete</a>
<td><a href="ProductEditById/${product.id}">edit</a>
</tr>
</c:forEach>
</tbody>
</table>
</div>	
 </form:form>
 <script src="${pageContext.request.contextPath}/app-resources/js/lib/jquery-2.2.3.min.js"></script>
  <script src="${pageContext.request.contextPath}/app-resources/js/myapp.js"></script>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/app-resources/css/style.css"/> 
    <%@include file="Footer.jsp"%> 
  </body>
  </html>