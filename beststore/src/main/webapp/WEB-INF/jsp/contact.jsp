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

<body class="res layout-1">

    <div id="wrapper" class="wrapper-fluid banners-effect-5">
    
	<%@ include file="header.jsp" %>
    
	<!-- Main Container  -->
	<div class="main-container container">
		<ul class="breadcrumb">
			<li><a href="#"><i class="fa fa-home"></i></a></li>
			<li><a href="#">Page</a></li>
			<li><a href="#">Contact us</a></li>			
		</ul>
		
		<div class="row">
			<div id="content" class="col-sm-12">
				<div class="page-title">
					<h2>Contact Us</h2>
				</div>
				
				
				<iframe src="http://ditu.google.cn/maps/embed?pb=!1m18!1m12!1m3!1d2948.8442639328655!2d-71.10008329902021!3d42.34584359264178!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89e379f63dc43ccb%3A0xa15d5aa87d0f0c12!2s4+Yawkey+Way%2C+Boston%2C+MA+02215!5e0!3m2!1sen!2s!4v1475081210943" width="100%" height="350" frameborder="0" style="border:0" allowfullscreen></iframe>
				<div class="info-contact clearfix">
					<div class="col-lg-4 col-sm-4 col-xs-12 info-store">
						<div class="row">
							<div class="name-store">
								<h3>Your Store</h3>
							</div>
							<address>
								<div class="address clearfix form-group">
									<div class="icon">
										<i class="fa fa-home"></i>
									</div>
									<div class="text">My Company, 42 avenue des Champs Elysées 75000 Paris France</div>
								</div>
								<div class="phone form-group">
									<div class="icon">
										<i class="fa fa-phone"></i>
									</div>
									<div class="text">Phone : 0123456789</div>
								</div>
								<div class="comment">             
								Maecenas euismod felis et purus consectetur, quis fermentum velition. Aenean egestas quis turpis vehicula.Maecenas euismod felis et purus consectetur, quis fermentum velition. 
								Aenean egestas quis turpis vehicula.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. 
								The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.
								</div>
							</address>
						</div>
					</div>
					<div class="col-lg-8 col-sm-8 col-xs-12 contact-form">
						<form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
							<fieldset>
								<legend>Contact Form</legend>
								<div class="form-group required">
							<label class="col-sm-2 control-label" for="input-name">Your Name</label>
							<div class="col-sm-10">
								<input type="text" name="name" value="" id="input-name" class="form-control">
								</div>
							</div>
							<div class="form-group required">
								<label class="col-sm-2 control-label" for="input-email">E-Mail Address</label>
								<div class="col-sm-10">
									<input type="text" name="email" value="" id="input-email" class="form-control">
									</div>
								</div>
								<div class="form-group required">
									<label class="col-sm-2 control-label" for="input-enquiry">Enquiry</label>
									<div class="col-sm-10">
										<textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"></textarea>
									</div>
								</div>
							</fieldset>
							<div class="buttons">
								<div class="pull-right">
									<button class="btn btn-default buttonGray" type="submit">
										<span>Submit</span>
									</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
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
