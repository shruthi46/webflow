
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Admin page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
 
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width:100%;
	  height:400px;
      margin: auto;
  }
  
footer {
    
    margin-top: 50px;
    
} 
body {
width:100%;
}
  
  </style>

</head>
<body background="http://hdwallpaperbackgrounds.net/wp-content/uploads/2016/07/white-background-1.jpg">


 <div class="text-center" >
  <h1 style="font-family:Georgia; font-size:40px;"><i>ShoppingCart </i>
    <img  src="https://www.sitewelder.com/art2012/logo-big-shopping.png" alt="logo" width="60px" height="60px" align="center" >
  <img  src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/F_icon.svg/768px-F_icon.svg.png" alt="fb" width="30px" height="30px" align="right" >
  <img  src="https://upload.wikimedia.org/wikipedia/en/thumb/9/9f/Twitter_bird_logo_2012.svg/1259px-Twitter_bird_logo_2012.svg.png" alt="twitter" width="30px" height="30px" align="right" >
  <img  src="http://icons.iconarchive.com/icons/danleech/simple/1024/linkedin-icon.png" alt="linkedin" width="30px" height="30px" align="right" >
  </h1>
  
  </div>
  
   <nav class="navbar navbar-inverse">
   <div class="container-fluid"> 
   <div class="navbar-header" class=" pull-left">
     <a class="navbar-brand" style="font-size:15px;" href="#"><span class="glyphicon glyphicon-user"></span> ${msg} </a>
    </div>
  
  <!--  <div class="col-sm-3 col-md-3">
        <form class="navbar-form" role="search">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="Search" name="q">
            <div class="input-group-btn">
            <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
            </div>
        </div>
        </form>
    </div> -->
     <ul class="nav navbar-nav navbar-right" style="margin-bottom:0px;">
      	   <li class="active"><a href="Home">HOME</a></li>
    	   <li><a href="Product">PRODUCT</a></li>
            <li><a href="Category">CATEGORY</a></li>
		   <li><a href="Supplier">SUPPLIER</a></li> 
		   <li><a href="#">LOGOUT</a></li>
      </ul>
</div>
  </nav>
${msg }
<c:choose>
<c:when test="${userclickedsupplier }">
<c:import url="/WEB-INF/views/Supplier.jsp"/>
</c:when>
</c:choose>
<c:choose>
<c:when test="${userclickedproduct }">
<c:import url="/WEB-INF/views/Product.jsp"/>
</c:when>
</c:choose>
<c:choose>
<c:when test="${userclickedcategory }">
<c:import url="/WEB-INF/views/Category.jsp"/>
</c:when>
</c:choose>
<c:choose>
<c:when test="${userclickedhome }">
<c:import url="/WEB-INF/views/Home.jsp"/>
</c:when>
</c:choose>
 <div class="container-fluid">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    Indicators
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    Wrapper for slides
    <div class="carousel-inner" role="listbox">
      <div class="item">
        <img  src="http://image.shutterstock.com/z/stock-photo-mobile-devices-wireless-communication-technology-and-internet-web-concept-business-laptop-or-136413251.jpg" alt="mobile" >
      </div>
    

	<div class="item active">
        <img  src="http://www.amith.in/magazine/wp-content/uploads/2015/09/Top-5-4G-mobiles-below-15000.jpg" alt="mobile">
      </div>

     
      <div class="item">
        <img  src="http://cdn.macrumors.com/article-new/2016/02/iphoneserosegold-800x898.jpg" alt="mobile" >
      </div>

      <div class="item">
        <img src="http://blogs-images.forbes.com/geoffreymorrison/files/2016/05/Acer-Switch-V-10-Opener.jpg" alt="mobile">
      </div>
    </div>

    Left and right controls
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div> 
</body>
</html>