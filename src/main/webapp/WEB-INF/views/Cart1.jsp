<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cart page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
  src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.17/angular.min.js"></script>
<script type="text/javascript">
function checkAndSubmit()
{
document.formID.submit();
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


  <style>
table {
    border-collapse: collapse;
    width: 100%;
}
th, td {
    text-align: left;
    padding: 8px;
}
tr:nth-child(even){background-color: #f2f2f2}
th {
    background-color: black;
    color: white;
}
footer{
margin-top:50px;
}
</style>
</head>
<body background="" ng-app="myApp">


<h1>Your Cart</h1>
<div class="panel-body">

       <!-- <div class="row">
        <div class="col-xs-5">
         <label class="form-control input-sm">Product Details</label>
        </div>
        
        <div class="col-xs-2 text-right">
         <label class="form-control input-sm"> Total Price</label>
        </div>
        <div class="col-xs-4">
         <div class="col-xs-6">
          <label class="form-control input-sm">Quantity</label>
         </div>
         <div class="col-xs-6">
          <label class="form-control input-sm">Update</label>
         </div>
        </div>
        <div class="col-xs-1">
         <a href="#" class="form-control input-sm"><span
          class="glyphicon glyphicon-trash"> </span></a>
        </div>
       </div> -->
       
<table>
<tr>
<th>Product </th>
<th> Name</th>
<th>Price</th>
<th>Quantity</th>
<th>Delete</th>
</tr>
</table> 
       <hr>
       
       <c:if test="${!empty CartList}">
        <c:forEach items="${CartList}" var="cart">
         <div class="row" >
          <div class="col-xs-4">
          <div class="col-xs-5">
          <a href="ShowProduct/${cart.id}">
           <img height="60px" width="60px"  alt="${cart.productid}"
           src="<c:url value="/resources/images/Product/${cart.productid}.jpg"></c:url>">
           </a>
          </div>
          <div class="col-xs-6" style="padding-top: 22px" >
           <label  class="form-control input-sm">${cart.productname}</label>
          </div>
          </div>
          <%-- <div class="col-xs-2">
        <input type="text" class="form-control input-sm" value="${cart.quantity}">
      </div> --%>
          <div class="col-xs-2" style="padding-top: 22px">
           <label class="form-control input-sm">${cart.price}</label>
          </div>
          
          <div class="col-xs-2" style="padding-top: 22px">
           <label class="form-control input-sm">${cart.quantity}</label>
          </div>

          <%-- <div class="col-xs-4" style="padding-top: 22px">
           <form action="edit/${cart.id}">
            <div class="col-xs-6">
             <input type="text" class="form-control input-sm"
              value="${cart.quantity}" name="quantity">
            </div>
            <div class="col-xs-6"  >
             <button type="submit"
              class="btn btn-default btn-sm btn-block">Edit cart</button>
            </div>
            </form>
          </div> --%>
          <div class="col-xs-2" style="padding-top: 22px">
           <a href="delete/${cart.id}" class="form-control input-sm">Delete</a>
          </div>
         </div>
         </c:forEach>
         </c:if>
         </div>
         <div class="panel-footer">
       <div class="row text-center">
        <div class="col-xs-3">
         <a href="HOME" class="btn btn-primary btn-sm btn-block">Continue Shopping</a>
        </div>
        <c:if test="${empty EmptyCart}">
        <div class="col-xs-6">
         <h4 class="text-right">Total : Rs ${CartPrice}</h4>
        </div>
         <form action="placeorder">

          <div class="col-xs-3">
           <button type="submit" class="btn btn-success btn-block">
            Checkout</button>
          </div>

         </form>
        </c:if>
        </div>
        </div>
        
      
 
         </body>
         </html>