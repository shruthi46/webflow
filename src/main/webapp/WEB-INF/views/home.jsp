 <!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
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
<body bgcolor="http://www.intrawallpaper.com/static/images/White-Background-9B1.jpg">

 <div class="text-center" >
  <h1 style="font-family:Georgia; font-size:40px;"><i>ShoppingCart </i>
    <img  src="https://www.sitewelder.com/art2012/logo-big-shopping.png" alt="logo" width="60px" height="60px" align="center" >
  <img  src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/F_icon.svg/768px-F_icon.svg.png" alt="fb" width="30px" height="30px" 

align="right" >
  <img  src="https://upload.wikimedia.org/wikipedia/en/thumb/9/9f/Twitter_bird_logo_2012.svg/1259px-Twitter_bird_logo_2012.svg.png" alt="twitter" 

width="30px" height="30px" align="right" >
  <img  src="http://icons.iconarchive.com/icons/danleech/simple/1024/linkedin-icon.png" alt="linkedin" width="30px" height="30px" align="right" >
  </h1>
  
  </div>
  
   <nav class="navbar navbar-inverse">
    <ul class="nav navbar-nav">
       <li><a href="Supplier">Supplier</a></li>
      <li><a href="Product">Product</a></li>
      <li><a href="Category">Category</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
    <form class="navbar-form navbar-right" role="search">
  <div class="form-group">
    <input type="text" class="form-control" placeholder="Search">
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form>
</nav>
<div class="container-fluid">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item">
        <img  src="http://static1.shop.indiatimes.com/imgbn/PhoneswithDeals.jpg" alt="mobile" >
      </div>
    

	<div class="item active">
        <img  src="http://2.bp.blogspot.com/-BDvmGGhmPVE/VDkDCz8wFZI/AAAAAAAAAT0/k21MsFYTCHE/s1600/Deals-on-Laptop.png" alt="mobile">
      </div>

     
      <div class="item">
        <img  src="http://www.cukti.com/image/product_image/7466d49c-4665-4ad3-93f2-83c4d58f016a.jpg" alt="mobile" >
      </div>

      <div class="item">
        <img src="http://blogs-images.forbes.com/geoffreymorrison/files/2016/05/Acer-Switch-V-10-Opener.jpg" alt="mobile">
      </div>
    </div>

    <!-- Left and right controls -->
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