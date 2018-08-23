<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    
    <!-- Basic page needs
    ============================================ -->
    <title>SuperMarket - Multipurpose Responsive HTML5 Template</title>
    <meta charset="utf-8">
    <meta name="keywords" content="html5 template, best html5 template, best html template, html5 basic template, multipurpose html5 template, multipurpose html template, creative html templates, creative html5 templates" />
    <meta name="description" content="SuperMarket is a powerful Multi-purpose HTML5 Template with clean and user friendly design. It is definite a great starter for any eCommerce web project." />
    <meta name="author" content="Magentech">
    <meta name="robots" content="index, follow" />
   
    <!-- Mobile specific metas
    ============================================ -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    
    <!-- Favicon
    ============================================ -->
    <link rel="shortcut icon" type="image/png" href="ico/favicon-16x16.png"/>
  
   
    <!-- Libs CSS
    ============================================ -->
    <link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css">
    <link href="css/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="js/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href="js/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="css/themecss/lib.css" rel="stylesheet">
    <link href="js/jquery-ui/jquery-ui.min.css" rel="stylesheet">
    <link href="js/minicolors/miniColors.css" rel="stylesheet">
    
    <!-- Theme CSS
    ============================================ -->
    <link href="css/themecss/so_searchpro.css" rel="stylesheet">
    <link href="css/themecss/so_megamenu.css" rel="stylesheet">
    <link href="css/themecss/so-categories.css" rel="stylesheet">
    <link href="css/themecss/so-listing-tabs.css" rel="stylesheet">
    <link href="css/themecss/so-category-slider.css" rel="stylesheet">
    <link href="css/themecss/so-newletter-popup.css" rel="stylesheet">

    <link href="css/footer/footer1.css" rel="stylesheet">
    <link href="css/header/header1.css" rel="stylesheet">
    <link id="color_scheme" href="css/theme.css" rel="stylesheet"> 
    <link href="css/responsive.css" rel="stylesheet">

     <!-- Google web fonts
    ============================================ -->
    <link href='https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700' rel='stylesheet' type='text/css'>     
    <style type="text/css">
         body{font-family:'Poppins', sans-serif;}
    </style>

</head>

<body class="res layout-1 layout-subpage">

    <div id="wrapper" class="wrapper-fluid banners-effect-5">
    
    <%@ include file="header.jsp" %>

	<!-- Main Container  -->
	<div class="main-container container">
		<ul class="breadcrumb">
			<li><a href="#"><i class="fa fa-home"></i></a></li>
			<li><a href="#">Order History</a></li>
		</ul>
		
		<div class="row">
			<!--Middle Part Start-->
			<div id="content" class="col-sm-9">
				<h2 class="title">Order History</h2>
				<div class="table-responsive">
					<table class="table table-bordered table-hover">
						<thead>
							<tr>
								<td class="text-center">Image</td>
								<td class="text-left">Product Name</td>
								<td class="text-center">Order ID</td>
								<td class="text-center">Qty</td>
								<td class="text-center">Status</td>
								<td class="text-center">Date Added</td>
								<td class="text-right">Total</td>
								<td></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="text-center">
									<a href="product.html"><img width="85" class="img-thumbnail" title="Aspire Ultrabook Laptop" alt="Aspire Ultrabook Laptop" src="image/catalog/demo/product/fashion/1.jpg">
									</a>
								</td>
								<td class="text-left"><a href="product.html">Aspire Ultrabook Laptop</a>
								</td>
								<td class="text-center">#214521</td>
								<td class="text-center">1</td>
								<td class="text-center">Shipped</td>
								<td class="text-center">21/06/2016</td>
								<td class="text-right">$228.00</td>
								<td class="text-center"><a class="btn btn-info" title="" data-toggle="tooltip" href="order-information.html" data-original-title="View"><i class="fa fa-eye"></i></a>
								</td>
							</tr>
							<tr>
								<td class="text-center">
									<a href="product.html"><img  width="85" class="img-thumbnail" title="Xitefun Causal Wear Fancy Shoes" alt="Xitefun Causal Wear Fancy Shoes" src="image/catalog/demo/product/fashion/4.jpg">
									</a>
								</td>
								<td class="text-left"><a href="product.html">Xitefun Causal Wear Fancy Shoes</a>
								</td>
								<td class="text-center">#1565245</td>
								<td class="text-center">1</td>
								<td class="text-center">Shipped</td>
								<td class="text-center">20/06/2016</td>
								<td class="text-right">$133.20</td>
								<td class="text-center"><a class="btn btn-info" title="" data-toggle="tooltip" href="order-information.html" data-original-title="View"><i class="fa fa-eye"></i></a>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

			</div>
			<!--Middle Part End-->
			<!--Right Part Start -->
			<aside class="col-sm-3 hidden-xs content-aside col-md-3" id="column-right">
				<h2 class="subtitle">Account</h2>
<div class="list-group">
	<ul class="list-item">
		<li><a href="login.html">Login</a>
		</li>
		<li><a href="register.html">Register</a>
		</li>
		<li><a href="#">Forgotten Password</a>
		</li>
		<li><a href="#">My Account</a>
		</li>
		<li><a href="#">Address Books</a>
		</li>
		<li><a href="wishlist.html">Wish List</a>
		</li>
		<li><a href="#">Order History</a>
		</li>
		<li><a href="#">Downloads</a>
		</li>
		<li><a href="#">Reward Points</a>
		</li>
		<li><a href="#">Returns</a>
		</li>
		<li><a href="#">Transactions</a>
		</li>
		<li><a href="#">Newsletter</a>
		</li>
		<li><a href="#">Recurring payments</a>
		</li>
	</ul>
</div>			</aside>
			<!--Right Part End -->
		</div>
	</div>
	<!-- //Main Container -->
	<%@ include file="bottom.jsp" %>
	<!-- Theme files
	============================================ -->
	
	
	<script type="text/javascript" src="js/themejs/so_megamenu.js"></script>
	<script type="text/javascript" src="js/themejs/addtocart.js"></script>
	<script type="text/javascript" src="js/themejs/application.js"></script>
	
	
</body>
</html>
