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
			<li><a href="#">Return</a></li>
		</ul>
		
		<div class="row">
			<!--Middle Part Start-->
			<div id="content" class="col-sm-9">
				<h2 class="title">Product Returns</h2>
				<p>Please complete the form below to request product returns.</p>

				<form class="form-horizontal">
					<fieldset>
						<legend>Order Information</legend>
						<div class="form-group required">
							<label for="input-firstname" class="col-sm-2 control-label">First Name</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="input-firstname" placeholder="First Name" value="" name="firstname">
							</div>
						</div>
						<div class="form-group required">
							<label for="input-lastname" class="col-sm-2 control-label">Last Name</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="input-lastname" placeholder="Last Name" value="" name="lastname">
							</div>
						</div>
						<div class="form-group required">
							<label for="input-email" class="col-sm-2 control-label">E-Mail</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="input-email" placeholder="E-Mail" value="" name="email">
							</div>
						</div>
						<div class="form-group required">
							<label for="input-telephone" class="col-sm-2 control-label">Telephone</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="input-telephone" placeholder="Telephone" value="" name="telephone">
							</div>
						</div>
						<div class="form-group required">
							<label for="input-order-id" class="col-sm-2 control-label">Order ID</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="input-order-id" placeholder="Order ID" value="" name="order_id">
							</div>
						</div>
						<div class="form-group">
							<label for="input-date-ordered" class="col-sm-2 control-label">Order Date</label>
							<div class="col-sm-3">
								<div class="input-group date">
									<input type="text" class="form-control" id="input-date-ordered" data-date-format="YYYY-MM-DD" placeholder="Order Date" value="" name="date_ordered"><span class="input-group-btn">
							<button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
							</span>
								</div>
							</div>
						</div>
					</fieldset>
					<fieldset>
						<legend>Product Information</legend>
						<div class="form-group required">
							<label for="input-product" class="col-sm-2 control-label">Product Name</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="input-product" placeholder="Product Name" value="" name="product">
							</div>
						</div>
						<div class="form-group required">
							<label for="input-model" class="col-sm-2 control-label">Product Code</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="input-model" placeholder="Product Code" value="" name="model">
							</div>
						</div>
						<div class="form-group">
							<label for="input-quantity" class="col-sm-2 control-label">Quantity</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="input-quantity" placeholder="Quantity" value="1" name="quantity">
							</div>
						</div>
						<div class="form-group required">
							<label class="col-sm-2 control-label">Reason for Return</label>
							<div class="col-sm-10">
								<div class="radio">
									<label>
										<input type="radio" value="1" name="return_reason_id"> Dead On Arrival</label>
								</div>
								<div class="radio">
									<label>
										<input type="radio" value="3" name="return_reason_id"> Order Error</label>
								</div>
								<div class="radio">
									<label>
										<input type="radio" value="2" name="return_reason_id"> Received Wrong Item</label>
								</div>
								<div class="radio">
									<label>
										<input type="radio" value="5" name="return_reason_id"> Other
									</label>
								</div>

							</div>
						</div>
						<div class="form-group required">
							<label class="col-sm-2 control-label">Product is opened</label>
							<div class="col-sm-10">
								<label class="radio-inline">
									<input type="radio" value="1" name="opened"> Yes
								</label>
								<label class="radio-inline">
									<input type="radio" checked="checked" value="0" name="opened"> No
								</label>
							</div>
						</div>
						<div class="form-group">
							<label for="input-comment" class="col-sm-2 control-label">Other details</label>
							<div class="col-sm-10">
								<textarea class="form-control" id="input-comment" placeholder="Other details" rows="10" name="comment"></textarea>
							</div>
						</div>
					</fieldset>
					<div class="buttons clearfix">
						<div class="pull-left"><a class="btn btn-default buttonGray" href="">Back</a>
						</div>
						<div class="pull-right">
							<input type="submit" class="btn btn-primary" value="Submit">
						</div>
					</div>
				</form>


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
