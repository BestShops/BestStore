﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
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

<body class="res layout-1 listing-page">

    <div id="wrapper" class="wrapper-fluid banners-effect-5">
    
    <!-- Header Container  -->
    <%@ include file="header.jsp" %>

	<!-- Main Container  -->
	<div class="main-container container">
		<ul class="breadcrumb">
			<li><a href="#"><i class="fa fa-home"></i></a></li>
			<li><a href="#">Smartphone & Tablets</a></li>
		</ul>
		
		<div class="row">
			<!--Left Part Start -->
			<aside class="col-sm-4 col-md-3 content-aside" id="column-left">
				<div class="module category-style">
                	<h3 class="modtitle">Categories</h3>
                	<div class="modcontent">
                		<div class="box-category">
                			<ul id="cat_accordion" class="list-group">
                				<li class="hadchild"><a href="category.html" class="cutom-parent">Smartphone & Tablets</a>   <span class="button-view  fa fa-plus-square-o"></span>
                					<ul style="display: block;">
                						<li><a href="category.html">Men's Watches</a></li>
                						<li><a href="category.html">Women's Watches</a></li>
                						<li><a href="category.html">Kids' Watches</a></li>
                						<li><a href="category.html">Accessories</a></li>
                					</ul>
                				</li>
                				<li class="hadchild"><a class="cutom-parent" href="category.html">Electronics</a>   <span class="button-view  fa fa-plus-square-o"></span>
                					<ul style="display: none;">
                						<li><a href="category.html">Cycling</a></li>
                						<li><a href="category.html">Running</a></li>
                						<li><a href="category.html">Swimming</a></li>
                						<li><a href="category.html">Football</a></li>
                						<li><a href="category.html">Golf</a></li>
                						<li><a href="category.html">Windsurfing</a></li>
                					</ul>
                				</li>
                				<li class="hadchild"><a href="category.html" class="cutom-parent">Shoes</a>   <span class="button-view  fa fa-plus-square-o"></span>
                					<ul style="display: none;">
                						<li><a href="category.html">Sub Categories</a></li>
                						<li><a href="category.html">Sub Categories</a></li>
                						<li><a href="category.html">Sub Categories</a></li>
                						<li><a href="category.html">Sub Categories</a></li>
                						<li><a href="category.html">Sub Categories</a></li>
                					</ul>
                				</li>
                				<li class="hadchild"><a href="category.html" class="cutom-parent">Watches</a>  <span class="button-view  fa fa-plus-square-o"></span>
                					<ul style="display: none;">
                						<li><a href="category.html">Men's Watches</a></li>
                						<li><a href="category.html">Women's Watches</a></li>
                						<li><a href="category.html">Kids' Watches</a></li>
                						<li><a href="category.html">Accessories</a></li>
                					</ul>
                				</li>
                				<li class="hadchild"><a href="category.html" class="cutom-parent">Jewellery</a>    <span class="button-view  fa fa-plus-square-o"></span>
                					<ul style="display: none;">
                						<li><a href="category.html">Sub Categories</a></li>
                						<li><a href="category.html">Sub Categories</a></li>
                						<li><a href="category.html">Sub Categories</a></li>
                						<li><a href="category.html">Sub Categories</a></li>
                						<li><a href="category.html">Sub Categories</a></li>
                					</ul>
                				</li>
                				<li class=""><a href="category.html" class="cutom-parent">Health &amp; Beauty</a>  <span class="dcjq-icon"></span></li>
                				<li class=""><a href="category.html" class="cutom-parent">Kids &amp; Babies</a>    <span class="dcjq-icon"></span></li>
                				<li class=""><a href="category.html" class="cutom-parent">Sports</a>  <span class="dcjq-icon"></span></li>
                				<li class=""><a href="category.html" class="cutom-parent">Home &amp; Garden</a><span class="dcjq-icon"></span></li>
                				<li class=""><a href="category.html" class="cutom-parent">Wines &amp; Spirits</a>  <span class="dcjq-icon"></span></li>
                			</ul>
                		</div>
                		
                		
                	</div>
                </div>
            	<div class="module product-simple">
                    <h3 class="modtitle">
                        <span>Latest products</span>
                    </h3>
                    <div class="modcontent">
                        <div class="so-extraslider" >
                            <!-- Begin extraslider-inner -->
                            <div class="yt-content-slider extraslider-inner">
                                <div class="item ">
                                    <div class="product-layout item-inner style1 ">
                                        <div class="item-image">
                                            <div class="item-img-info">
                                                <a href="#" target="_self" title="Mandouille short ">
                                                    <img src="image/catalog/demo/product/80/1.jpg" alt="Mandouille short">
                                                    </a>
                                            </div>
                                            
                                        </div>
                                        <div class="item-info">
                                            <div class="item-title">
                                                <a href="#" target="_self" title="Mandouille short">Mandouille short </a>
                                            </div>
                                            <div class="rating">
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                            </div>
                                            <div class="content_price price">
                                                <span class="price-new product-price">$55.00 </span>&nbsp;&nbsp;

                                                <span class="price-old">$76.00 </span>&nbsp;

                                            </div>
                                        </div>
                                        <!-- End item-info -->
                                        <!-- End item-wrap-inner -->
                                    </div>
                                    <!-- End item-wrap -->
                                    <div class="product-layout item-inner style1 ">
                                        <div class="item-image">
                                            <div class="item-img-info">
                                                <a href="#" target="_self" title="Xancetta bresao ">
                                                        <img src="image/catalog/demo/product/80/2.jpg" alt="Xancetta bresao">
                                                        </a>
                                            </div>
                                            
                                        </div>
                                        <div class="item-info">
                                            <div class="item-title">
                                                <a href="#" target="_self" title="Xancetta bresao">
                                                            Xancetta bresao 
                                                        </a>
                                            </div>
                                            <div class="rating">
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                            </div>
                                            <div class="content_price price">
                                                <span class="price-new product-price">$80.00 </span>&nbsp;&nbsp;

                                                <span class="price-old">$89.00 </span>&nbsp;



                                            </div>
                                        </div>
                                        <!-- End item-info -->
                                        <!-- End item-wrap-inner -->
                                    </div>
                                    <!-- End item-wrap -->
                                    <div class="product-layout item-inner style1 ">
                                        <div class="item-image">
                                            <div class="item-img-info">
                                                <a href="#" target="_self" title="Sausage cowbee ">
                                                            <img src="image/catalog/demo/product/80/3.jpg" alt="Sausage cowbee">
                                                            </a>
                                            </div>
                                           
                                        </div>
                                        <div class="item-info">
                                            <div class="item-title">
                                                <a href="#" target="_self" title="Sausage cowbee">
                                                            Sausage cowbee 
                                                        </a>
                                            </div>
                                            <div class="rating">
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                            </div>
                                           
                                            <div class="content_price price">
                                                <span class="price product-price">
                                                                $66.00 
                                                            </span>
                                            </div>
                                        </div>
                                        <!-- End item-info -->
                                        <!-- End item-wrap-inner -->
                                    </div>
                                    <!-- End item-wrap -->
                                    <div class="product-layout item-inner style1 ">
                                        <div class="item-image">
                                            <div class="item-img-info">
                                                <a href="#" target="_self" title="Chicken swinesha ">
                                                                <img src="image/catalog/demo/product/80/4.jpg" alt="Chicken swinesha">
                                                                </a>
                                            </div>
                                           
                                        </div>
                                        <div class="item-info">
                                            <div class="item-title">
                                                <a href="#" target="_self" title="Chicken swinesha">
                                                            Chicken swinesha 
                                                        </a>
                                            </div>
                                            <div class="rating">
                                                <span class="fa fa-stack">
                                                                    <i class="fa fa-star fa-stack-2x"></i>
                                                                </span>
                                                <span class="fa fa-stack">
                                                                    <i class="fa fa-star fa-stack-2x"></i>
                                                                </span>
                                                <span class="fa fa-stack">
                                                                    <i class="fa fa-star fa-stack-2x"></i>
                                                                </span>
                                                <span class="fa fa-stack">
                                                                    <i class="fa fa-star fa-stack-2x"></i>
                                                                </span>
                                                <span class="fa fa-stack">
                                                                    <i class="fa fa-star fa-stack-2x"></i>
                                                                </span>
                                            </div>
                                            <div class="content_price price">
                                                <span class="price-new product-price">$45.00 </span>&nbsp;&nbsp;

                                                <span class="price-old">$56.00 </span>&nbsp;



                                            </div>
                                        </div>
                                        <!-- End item-info -->
                                        <!-- End item-wrap-inner -->
                                    </div>
                                    <!-- End item-wrap -->
                                </div>
                            </div>
                            <!--End extraslider-inner -->
                        </div>
                    </div>
                </div>
                <div class="module banner-left hidden-xs ">
                	<div class="banner-sidebar banners">
                      <div>
                        <a title="Banner Image" href="#"> 
                          <img src="image/catalog/banners/banner-sidebar.jpg" alt="Banner Image"> 
                        </a>
                      </div>
                    </div>
                </div>
            </aside>
            <!--Left Part End -->
			
        	<!--Middle Part Start-->
        	<div id="content" class="col-md-9 col-sm-8">
        		<div class="products-category">
                    <h3 class="title-category ">Accessories</h3>
        			<div class="category-desc">
        				<div class="row">
        					<div class="col-sm-12">
        						<div class="banners">
        							<div>
        								<a  href="#"><img src="image/catalog/demo/category/img-cate.jpg" alt="img cate"><br></a>
        							</div>
        						</div>
        					
        					</div>
        				</div>
        			</div>
        			<!-- Filters -->
                    <div class="product-filter product-filter-top filters-panel">
                        <div class="row">
                            <div class="col-md-5 col-sm-3 col-xs-12 view-mode">
                                
                                    <div class="list-view">
                                        <button class="btn btn-default grid active" data-view="grid" data-toggle="tooltip"  data-original-title="Grid"><i class="fa fa-th"></i></button>
                                        <button class="btn btn-default list" data-view="list" data-toggle="tooltip" data-original-title="List"><i class="fa fa-th-list"></i></button>
                                    </div>
                        
                            </div>
                            <div class="short-by-show form-inline text-right col-md-7 col-sm-9 col-xs-12">
                                <div class="form-group short-by">
                                    <label class="control-label" for="input-sort">Sort By:</label>
                                    <select id="input-sort" class="form-control"
                                    onchange="location = this.value;">
                                        <option value="" selected="selected">Default</option>
                                        <option value="">Name (A - Z)</option>
                                        <option value="">Name (Z - A)</option>
                                        <option value="">Price (Low &gt; High)</option>
                                        <option value="">Price (High &gt; Low)</option>
                                        <option value="">Rating (Highest)</option>
                                        <option value="">Rating (Lowest)</option>
                                        <option value="">Model (A - Z)</option>
                                        <option value="">Model (Z - A)</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="input-limit">Show:</label>
                                    <select id="input-limit" class="form-control" onchange="location = this.value;">
                                        <option value="" selected="selected">15</option>
                                        <option value="">25</option>
                                        <option value="">50</option>
                                        <option value="">75</option>
                                        <option value="">100</option>
                                    </select>
                                </div>
                            </div>
                            <!-- <div class="box-pagination col-md-3 col-sm-4 col-xs-12 text-right">
                                <ul class="pagination">
                                    <li class="active"><span>1</span></li>
                                    <li><a href="">2</a></li><li><a href="">&gt;</a></li>
                                    <li><a href="">&gt;|</a></li>
                                </ul>
                            </div> -->
                        </div>
                    </div>
                    <!-- //end Filters -->

        			<!--changed listings-->
                    <div class="products-list row nopadding-xs so-filter-gird">
            	
        				<div class="product-layout col-lg-15 col-md-4 col-sm-6 col-xs-12">
                            <div class="product-item-container">
                                <div class="left-block left-b">
                                    
                                    <div class="product-image-container second_img">
                                        <a href="product.html" target="_self" title="Lastrami bacon">
                                            <img src="image/catalog/demo/product/270/e1.jpg" class="img-1 img-responsive" alt="image1">
                                            <img src="image/catalog/demo/product/270/e10.jpg" class="img-2 img-responsive" alt="image2">
                                        </a>
                                    </div>
                                    <!--quickview--> 
                                    <div class="so-quickview">
                                      <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i><span>Quick view</span></a>
                                    </div>                                                     
                                    <!--end quickview-->

                                    
                                </div>
                                <div class="right-block">
                                    <div class="button-group so-quickview cartinfo--left">
                                        <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                            <span>Add to cart </span>   
                                        </button>
                                        <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart-o"></i><span>Add to Wish List</span>
                                        </button>
                                        <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-retweet"></i><span>Compare this Product</span>
                                        </button>
                                        
                                    </div>
                                    <div class="caption hide-cont">
                                        <div class="ratings">
                                            <div class="rating-box">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                            </div>
                                            <span class="rating-num">( 2 )</span>
                                        </div>
                                        <h4><a href="product.html" title="Pastrami bacon" target="_self">Lastrami bacon</a></h4>
                                        
                                    </div>
                                    <p class="price">
                                      <span class="price-new">$80.00</span>
                                      
                                    </p>
                                    <div class="description item-desc">
                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est . </p>
                                    </div>
                                    <div class="list-block">
                                        <button class="addToCart btn-button" type="button" title="Add to Cart" onclick="cart.add('101', '1');"><i class="fa fa-shopping-basket"></i>
                                        </button>
                                        <button class="wishlist btn-button" type="button" title="Add to Wish List" onclick="wishlist.add('101');"><i class="fa fa-heart"></i>
                                        </button>
                                        <button class="compare btn-button" type="button" title="Compare this Product" onclick="compare.add('101');"><i class="fa fa-refresh"></i>
                                        </button>
                                        <!--quickview-->                                                      
                                        <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i></a>                                                        
                                        <!--end quickview-->
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="product-layout col-lg-15 col-md-4 col-sm-6 col-xs-12">
                            <div class="product-item-container">
                                <div class="left-block left-b">
                                    <div class="box-label">
                                        <span class="label-product label-sale">-15%</span>
                                    </div>
                                    <div class="product-image-container second_img">
                                        <a href="product.html" target="_self" title="Exceeur sint occaecat">
                                            <img src="image/catalog/demo/product/270/e2.jpg" class="img-1 img-responsive" alt="image1">
                                            <img src="image/catalog/demo/product/270/e9.jpg" class="img-2 img-responsive" alt="image2">
                                        </a>
                                    </div>
                                    <!--quickview--> 
                                    <div class="so-quickview">
                                      <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i><span>Quick view</span></a>
                                    </div>                                                     
                                    <!--end quickview-->
                                    
                                </div>
                                <div class="right-block">
                                    <div class="button-group so-quickview cartinfo--left">
                                        <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                            <span>Add to cart </span>   
                                        </button>
                                        <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart-o"></i><span>Add to Wish List</span>
                                        </button>
                                        <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-retweet"></i><span>Compare this Product</span>
                                        </button>
                                        
                                    </div>
                                    <div class="caption hide-cont">
                                        <div class="ratings">
                                            <div class="rating-box">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                            </div>
                                            <span class="rating-num">( 3 )</span>
                                        </div>
                                        <h4><a href="product.html" title="Pastrami bacon" target="_self">Exceeur sint occaecat</a></h4>
                                        
                                    </div>
                                    <p class="price">
                                      <span class="price-new">$50.00</span>
                                      <span class="price-old">$59.00</span>
                                    </p>
                                    <div class="description item-desc">
                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est . </p>
                                    </div>
                                    <div class="list-block">
                                        <button class="addToCart btn-button" type="button" title="Add to Cart" onclick="cart.add('101', '1');"><i class="fa fa-shopping-basket"></i>
                                        </button>
                                        <button class="wishlist btn-button" type="button" title="Add to Wish List" onclick="wishlist.add('101');"><i class="fa fa-heart"></i>
                                        </button>
                                        <button class="compare btn-button" type="button" title="Compare this Product" onclick="compare.add('101');"><i class="fa fa-refresh"></i>
                                        </button>
                                        <!--quickview-->                                                      
                                        <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i></a>                                                        
                                        <!--end quickview-->
                                    </div>
                                </div>                                                
                            </div>
                        </div>
            				
                        <div class="product-layout col-lg-15 col-md-4 col-sm-6 col-xs-12">
                            <div class="product-item-container">
                                <div class="left-block left-b">
                                    
                                    <div class="product-image-container second_img">
                                        <a href="product.html" target="_self" title="Mapicola incidid">
                                            <img src="image/catalog/demo/product/270/e3.jpg" class="img-1 img-responsive" alt="image1">
                                            <img src="image/catalog/demo/product/270/e8.jpg" class="img-2 img-responsive" alt="image2">
                                        </a>
                                    </div>
                                    <!--quickview--> 
                                    <div class="so-quickview">
                                      <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i><span>Quick view</span></a>
                                    </div>                                                     
                                    <!--end quickview-->

                                    
                                </div>
                                <div class="right-block">
                                    <div class="button-group so-quickview cartinfo--left">
                                        <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                            <span>Add to cart </span>   
                                        </button>
                                        <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart-o"></i><span>Add to Wish List</span>
                                        </button>
                                        <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-retweet"></i><span>Compare this Product</span>
                                        </button>
                                        
                                    </div>
                                    <div class="caption hide-cont">
                                        <div class="ratings">
                                            <div class="rating-box">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                            </div>
                                            <span class="rating-num">( 5 )</span>
                                        </div>
                                        <h4><a href="product.html" title="Pastrami bacon" target="_self">Mapicola incidid</a></h4>
                                        
                                    </div>
                                    <p class="price">
                                      <span class="price-new">$60.00</span>          
                                    </p>
                                    <div class="description item-desc">
                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est . </p>
                                    </div>
                                    <div class="list-block">
                                        <button class="addToCart btn-button" type="button" title="Add to Cart" onclick="cart.add('101', '1');"><i class="fa fa-shopping-basket"></i>
                                        </button>
                                        <button class="wishlist btn-button" type="button" title="Add to Wish List" onclick="wishlist.add('101');"><i class="fa fa-heart"></i>
                                        </button>
                                        <button class="compare btn-button" type="button" title="Compare this Product" onclick="compare.add('101');"><i class="fa fa-refresh"></i>
                                        </button>
                                        <!--quickview-->                                                      
                                        <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i></a>                                                        
                                        <!--end quickview-->
                                    </div>
                                </div>                                            
                            </div>
                        </div>
                        <div class="product-layout col-lg-15 col-md-4 col-sm-6 col-xs-12">
                            <div class="product-item-container">
                                <div class="left-block left-b">
                                    <div class="box-label">
                                        <span class="label-product label-new">New</span>
                                    </div>
                                    <div class="product-image-container second_img">
                                        <a href="product.html" target="_self" title="Duis aute irure ">
                                            <img src="image/catalog/demo/product/270/e4.jpg" class="img-1 img-responsive" alt="image1">
                                            <img src="image/catalog/demo/product/270/e7.jpg" class="img-2 img-responsive" alt="image2">
                                        </a>
                                    </div>
                                    <!--quickview--> 
                                    <div class="so-quickview">
                                      <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i><span>Quick view</span></a>
                                    </div>                                                     
                                    <!--end quickview-->

                                    
                                </div>
                                <div class="right-block">
                                    <div class="button-group so-quickview cartinfo--left">
                                        <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                            <span>Add to cart </span>   
                                        </button>
                                        <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart-o"></i><span>Add to Wish List</span>
                                        </button>
                                        <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-retweet"></i><span>Compare this Product</span>
                                        </button>
                                        
                                    </div>
                                    <div class="caption hide-cont">
                                        <div class="ratings">
                                            <div class="rating-box">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                            </div>
                                            <span class="rating-num">( 2 )</span>
                                        </div>
                                        <h4><a href="product.html" title="Pastrami bacon" target="_self">Duis aute irure </a></h4>
                                        
                                    </div>
                                    <p class="price">
                                      <span class="price-new">$48.00</span>              
                                    </p>

                                    <div class="description item-desc">
                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est . </p>
                                    </div>
                                    <div class="list-block">
                                        <button class="addToCart btn-button" type="button" title="Add to Cart" onclick="cart.add('101', '1');"><i class="fa fa-shopping-basket"></i>
                                        </button>
                                        <button class="wishlist btn-button" type="button" title="Add to Wish List" onclick="wishlist.add('101');"><i class="fa fa-heart"></i>
                                        </button>
                                        <button class="compare btn-button" type="button" title="Compare this Product" onclick="compare.add('101');"><i class="fa fa-refresh"></i>
                                        </button>
                                        <!--quickview-->                                                      
                                        <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i></a>                                                        
                                        <!--end quickview-->
                                    </div>
                                </div>                                        
                            </div>
                        </div>
                        <div class="product-layout col-lg-15 col-md-4 col-sm-6 col-xs-12">
                            <div class="product-item-container">
                                <div class="left-block left-b">
                                    
                                    <div class="product-image-container second_img">
                                        <a href="product.html" target="_self" title="Excepteur sint occ">
                                            <img src="image/catalog/demo/product/270/e5.jpg" class="img-1 img-responsive" alt="image1">
                                            <img src="image/catalog/demo/product/270/e6.jpg" class="img-2 img-responsive" alt="image2">
                                        </a>
                                    </div>
                                    <!--quickview--> 
                                    <div class="so-quickview">
                                      <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i><span>Quick view</span></a>
                                    </div>                                                     
                                    <!--end quickview-->

                                    
                                </div>
                                <div class="right-block">
                                    <div class="button-group so-quickview cartinfo--left">
                                        <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                            <span>Add to cart </span>   
                                        </button>
                                        <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart-o"></i><span>Add to Wish List</span>
                                        </button>
                                        <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-retweet"></i><span>Compare this Product</span>
                                        </button>
                                        
                                    </div>
                                    <div class="caption hide-cont">
                                        <div class="ratings">
                                            <div class="rating-box">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                            </div>
                                            <span class="rating-num">( 4 )</span>
                                        </div>
                                        <h4><a href="product.html" title="Pastrami bacon" target="_self">Excepteur sint occ</a></h4>
                                        
                                    </div>
                                    <p class="price">
                                      <span class="price-new">$90.00</span>                            
                                    </p>

                                    <div class="description item-desc">
                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est . </p>
                                    </div>
                                    <div class="list-block">
                                        <button class="addToCart btn-button" type="button" title="Add to Cart" onclick="cart.add('101', '1');"><i class="fa fa-shopping-basket"></i>
                                        </button>
                                        <button class="wishlist btn-button" type="button" title="Add to Wish List" onclick="wishlist.add('101');"><i class="fa fa-heart"></i>
                                        </button>
                                        <button class="compare btn-button" type="button" title="Compare this Product" onclick="compare.add('101');"><i class="fa fa-refresh"></i>
                                        </button>
                                        <!--quickview-->                                                      
                                        <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i></a>                                                        
                                        <!--end quickview-->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="product-layout col-lg-15 col-md-4 col-sm-6 col-xs-12">
                            <div class="product-item-container">
                                <div class="left-block left-b">
                                   
                                    <div class="product-image-container second_img">
                                        <a href="product.html" target="_self" title="PCenison meatloa">
                                            <img src="image/catalog/demo/product/270/e6.jpg" class="img-1 img-responsive" alt="image1">
                                            <img src="image/catalog/demo/product/270/e2.jpg" class="img-2 img-responsive" alt="image2">
                                        </a>
                                    </div>
                                    <!--quickview--> 
                                    <div class="so-quickview">
                                      <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i><span>Quick view</span></a>
                                    </div>                                                     
                                    <!--end quickview-->

                                    
                                </div>
                                <div class="right-block">
                                    <div class="button-group so-quickview cartinfo--left">
                                        <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                            <span>Add to cart </span>   
                                        </button>
                                        <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart-o"></i><span>Add to Wish List</span>
                                        </button>
                                        <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-retweet"></i><span>Compare this Product</span>
                                        </button>
                                        
                                    </div>
                                    <div class="caption hide-cont">
                                        <div class="ratings">
                                            <div class="rating-box">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                            </div>
                                            <span class="rating-num">( 6 )</span>
                                        </div>
                                        <h4><a href="product.html" title="Pastrami bacon" target="_self">Cenison meatloa</a></h4>
                                        
                                    </div>
                                    <p class="price">$42.00</p>
                                    <div class="description item-desc">
                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est . </p>
                                    </div>
                                    <div class="list-block">
                                        <button class="addToCart btn-button" type="button" title="Add to Cart" onclick="cart.add('101', '1');"><i class="fa fa-shopping-basket"></i>
                                        </button>
                                        <button class="wishlist btn-button" type="button" title="Add to Wish List" onclick="wishlist.add('101');"><i class="fa fa-heart"></i>
                                        </button>
                                        <button class="compare btn-button" type="button" title="Compare this Product" onclick="compare.add('101');"><i class="fa fa-refresh"></i>
                                        </button>
                                        <!--quickview-->                                                      
                                        <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i></a>                                                        
                                        <!--end quickview-->
                                    </div>
                                </div>
                               
                            </div>
                        </div>

                        <div class="product-layout col-lg-15 col-md-4 col-sm-6 col-xs-12">
                            <div class="product-item-container">
                                <div class="left-block left-b">
                                    <div class="box-label">
                                        <span class="label-product label-new">New</span>
                                    </div>
                                    <div class="product-image-container second_img">
                                        <a href="product.html" target="_self" title="Sunt inculpa qui">
                                            <img src="image/catalog/demo/product/270/fu1.jpg" class="img-1 img-responsive" alt="image1">
                                            <img src="image/catalog/demo/product/270/fu10.jpg" class="img-2 img-responsive" alt="image2">
                                        </a>
                                    </div>
                                    <!--quickview--> 
                                    <div class="so-quickview">
                                      <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i><span>Quick view</span></a>
                                    </div>                                                     
                                    <!--end quickview-->

                                    
                                </div>
                                <div class="right-block">
                                    <div class="button-group so-quickview cartinfo--left">
                                        <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                            <span>Add to cart </span>   
                                        </button>
                                        <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart-o"></i><span>Add to Wish List</span>
                                        </button>
                                        <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-retweet"></i><span>Compare this Product</span>
                                        </button>
                                        
                                    </div>
                                    <div class="caption hide-cont">
                                        <div class="ratings">
                                            <div class="rating-box">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                            </div>
                                            <span class="rating-num">( 2 )</span>
                                        </div>
                                        <h4><a href="product.html" title="Pastrami bacon" target="_self">Sunt inculpa qui</a></h4>
                                        
                                    </div>
                                    <p class="price">
                                      <span class="price-new">$60.00</span>                                      
                                    </p>

                                    <div class="description item-desc">
                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est . </p>
                                    </div>
                                    <div class="list-block">
                                        <button class="addToCart btn-button" type="button" title="Add to Cart" onclick="cart.add('101', '1');"><i class="fa fa-shopping-basket"></i>
                                        </button>
                                        <button class="wishlist btn-button" type="button" title="Add to Wish List" onclick="wishlist.add('101');"><i class="fa fa-heart"></i>
                                        </button>
                                        <button class="compare btn-button" type="button" title="Compare this Product" onclick="compare.add('101');"><i class="fa fa-refresh"></i>
                                        </button>
                                        <!--quickview-->                                                      
                                        <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i></a>                                                        
                                        <!--end quickview-->
                                    </div>
                                </div>

                            </div>
                        </div>
                            
                        <div class="product-layout col-lg-15 col-md-4 col-sm-6 col-xs-12">
                            <div class="product-item-container">
                                <div class="left-block left-b">
                                    
                                    <div class="product-image-container second_img">
                                        <a href="product.html" target="_self" title="Chicken swinesha">
                                            <img src="image/catalog/demo/product/270/fu2.jpg" class="img-1 img-responsive" alt="image1">
                                            <img src="image/catalog/demo/product/270/fu9.jpg" class="img-2 img-responsive" alt="image2">
                                        </a>
                                    </div>
                                    <!--quickview--> 
                                    <div class="so-quickview">
                                      <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i><span>Quick view</span></a>
                                    </div>                                                     
                                    <!--end quickview-->
                                    
                                </div>
                                <div class="right-block">
                                    <div class="button-group so-quickview cartinfo--left">
                                        <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                            <span>Add to cart </span>   
                                        </button>
                                        <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart-o"></i><span>Add to Wish List</span>
                                        </button>
                                        <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-retweet"></i><span>Compare this Product</span>
                                        </button>
                                        
                                    </div>
                                    <div class="caption hide-cont">
                                        <div class="ratings">
                                            <div class="rating-box">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                            </div>
                                            <span class="rating-num">( 2 )</span>
                                        </div>
                                        <h4><a href="product.html" title="Pastrami bacon" target="_self">Chicken swinesha</a></h4>
                                        
                                    </div>
                                    <p class="price">
                                      <span class="price-new">$55.00</span>                            
                                    </p>

                                    <div class="description item-desc">
                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est . </p>
                                    </div>
                                    <div class="list-block">
                                        <button class="addToCart btn-button" type="button" title="Add to Cart" onclick="cart.add('101', '1');"><i class="fa fa-shopping-basket"></i>
                                        </button>
                                        <button class="wishlist btn-button" type="button" title="Add to Wish List" onclick="wishlist.add('101');"><i class="fa fa-heart"></i>
                                        </button>
                                        <button class="compare btn-button" type="button" title="Compare this Product" onclick="compare.add('101');"><i class="fa fa-refresh"></i>
                                        </button>
                                        <!--quickview-->                                                      
                                        <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i></a>                                                        
                                        <!--end quickview-->
                                    </div>
                                </div> 
                            </div>
                        </div>
                        <div class="product-layout col-lg-15 col-md-4 col-sm-6 col-xs-12">
                            <div class="product-item-container">
                                <div class="left-block left-b">
                                    <div class="box-label">
                                        <span class="label-product label-sale">-10%</span>
                                    </div>
                                    <div class="product-image-container second_img">
                                        <a href="product.html" target="_self" title="Mapicola incidid">
                                            <img src="image/catalog/demo/product/270/fu3.jpg" class="img-1 img-responsive" alt="image1">
                                            <img src="image/catalog/demo/product/270/fu8.jpg" class="img-2 img-responsive" alt="image2">
                                        </a>
                                    </div>
                                    <!--quickview--> 
                                    <div class="so-quickview">
                                      <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i><span>Quick view</span></a>
                                    </div>                                                     
                                    <!--end quickview-->

                                    
                                </div>
                                <div class="right-block">
                                    <div class="button-group so-quickview cartinfo--left">
                                        <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                            <span>Add to cart </span>   
                                        </button>
                                        <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart-o"></i><span>Add to Wish List</span>
                                        </button>
                                        <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-retweet"></i><span>Compare this Product</span>
                                        </button>
                                        
                                    </div>
                                    <div class="caption hide-cont">
                                        <div class="ratings">
                                            <div class="rating-box">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                            </div>
                                            <span class="rating-num">( 2 )</span>
                                        </div>
                                        <h4><a href="product.html" title="Pastrami bacon" target="_self">Mapicola incidid</a></h4>
                                        
                                    </div>
                                    <p class="price">
                                      <span class="price-new">$90.00</span>
                                      <span class="price-old">$100.00</span>
                                    </p>

                                    <div class="description item-desc">
                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est . </p>
                                    </div>
                                    <div class="list-block">
                                        <button class="addToCart btn-button" type="button" title="Add to Cart" onclick="cart.add('101', '1');"><i class="fa fa-shopping-basket"></i>
                                        </button>
                                        <button class="wishlist btn-button" type="button" title="Add to Wish List" onclick="wishlist.add('101');"><i class="fa fa-heart"></i>
                                        </button>
                                        <button class="compare btn-button" type="button" title="Compare this Product" onclick="compare.add('101');"><i class="fa fa-refresh"></i>
                                        </button>
                                        <!--quickview-->                                                      
                                        <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i></a>                                                        
                                        <!--end quickview-->
                                    </div>
                                </div>                                        
                            </div>
                        </div>
                        <div class="product-layout col-lg-15 col-md-4 col-sm-6 col-xs-12">
                            <div class="product-item-container">
                                <div class="left-block left-b">
                                    
                                    <div class="product-image-container second_img">
                                        <a href="product.html" target="_self" title="Dormd dea irure">
                                            <img src="image/catalog/demo/product/270/fu4.jpg" class="img-1 img-responsive" alt="image1">
                                            <img src="image/catalog/demo/product/270/fu7.jpg" class="img-2 img-responsive" alt="image2">
                                        </a>
                                    </div>
                                    <!--quickview--> 
                                    <div class="so-quickview">
                                      <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i><span>Quick view</span></a>
                                    </div>                                                     
                                    <!--end quickview-->

                                    
                                </div>
                                <div class="right-block">
                                    <div class="button-group so-quickview cartinfo--left">
                                        <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                            <span>Add to cart </span>   
                                        </button>
                                        <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart-o"></i><span>Add to Wish List</span>
                                        </button>
                                        <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-retweet"></i><span>Compare this Product</span>
                                        </button>
                                        
                                    </div>
                                    <div class="caption hide-cont">
                                        <div class="ratings">
                                            <div class="rating-box">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                            </div>
                                            <span class="rating-num">( 2 )</span>
                                        </div>
                                        <h4><a href="product.html" title="Pastrami bacon" target="_self">Dormd dea irure </a></h4>
                                        
                                    </div>
                                    <p class="price">
                                      <span class="price-new">$48.00</span>              
                                    </p>

                                    <div class="description item-desc">
                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est . </p>
                                    </div>
                                    <div class="list-block">
                                        <button class="addToCart btn-button" type="button" title="Add to Cart" onclick="cart.add('101', '1');"><i class="fa fa-shopping-basket"></i>
                                        </button>
                                        <button class="wishlist btn-button" type="button" title="Add to Wish List" onclick="wishlist.add('101');"><i class="fa fa-heart"></i>
                                        </button>
                                        <button class="compare btn-button" type="button" title="Compare this Product" onclick="compare.add('101');"><i class="fa fa-refresh"></i>
                                        </button>
                                        <!--quickview-->                                                      
                                        <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i></a>                                                        
                                        <!--end quickview-->
                                    </div>
                                </div>                                        
                            </div>
                        </div>
                        <div class="product-layout col-lg-15 col-md-4 col-sm-6 col-xs-12">
                            <div class="product-item-container">
                                <div class="left-block left-b">
                                    
                                    <div class="product-image-container second_img">
                                        <a href="product.html" target="_self" title="Mecepteur sint rew">
                                            <img src="image/catalog/demo/product/270/fu5.jpg" class="img-1 img-responsive" alt="image1">
                                            <img src="image/catalog/demo/product/270/fu6.jpg" class="img-2 img-responsive" alt="image2">
                                        </a>
                                    </div>
                                    <!--quickview--> 
                                    <div class="so-quickview">
                                      <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i><span>Quick view</span></a>
                                    </div>                                                     
                                    <!--end quickview-->

                                    
                                </div>
                                <div class="right-block">
                                    <div class="button-group so-quickview cartinfo--left">
                                        <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                            <span>Add to cart </span>   
                                        </button>
                                        <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart-o"></i><span>Add to Wish List</span>
                                        </button>
                                        <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-retweet"></i><span>Compare this Product</span>
                                        </button>
                                        
                                    </div>
                                    <div class="caption hide-cont">
                                        <div class="ratings">
                                            <div class="rating-box">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                            </div>
                                            <span class="rating-num">( 2 )</span>
                                        </div>
                                        <h4><a href="product.html" title="Pastrami bacon" target="_self">Mecepteur sint rew</a></h4>
                                        
                                    </div>
                                    <p class="price">
                                      <span class="price-new">$90.00</span>                            
                                    </p>
                                    <div class="description item-desc">
                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est . </p>
                                    </div>
                                    <div class="list-block">
                                        <button class="addToCart btn-button" type="button" title="Add to Cart" onclick="cart.add('101', '1');"><i class="fa fa-shopping-basket"></i>
                                        </button>
                                        <button class="wishlist btn-button" type="button" title="Add to Wish List" onclick="wishlist.add('101');"><i class="fa fa-heart"></i>
                                        </button>
                                        <button class="compare btn-button" type="button" title="Compare this Product" onclick="compare.add('101');"><i class="fa fa-refresh"></i>
                                        </button>
                                        <!--quickview-->                                                      
                                        <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i></a>                                                        
                                        <!--end quickview-->
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="product-layout col-lg-15 col-md-4 col-sm-6 col-xs-12">
                            <div class="product-item-container">
                                <div class="left-block left-b">
                                   
                                    <div class="product-image-container second_img">
                                        <a href="product.html" target="_self" title="Sed ut perspicia">
                                            <img src="image/catalog/demo/product/270/fu6.jpg" class="img-1 img-responsive" alt="image1">
                                            <img src="image/catalog/demo/product/270/fu2.jpg" class="img-2 img-responsive" alt="image2">
                                        </a>
                                    </div>
                                    <!--quickview--> 
                                    <div class="so-quickview">
                                      <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i><span>Quick view</span></a>
                                    </div>                                                     
                                    <!--end quickview-->

                                    
                                </div>
                                <div class="right-block">
                                    <div class="button-group so-quickview cartinfo--left">
                                        <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                            <span>Add to cart </span>   
                                        </button>
                                        <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart-o"></i><span>Add to Wish List</span>
                                        </button>
                                        <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-retweet"></i><span>Compare this Product</span>
                                        </button>
                                        
                                    </div>
                                    <div class="caption hide-cont">
                                        <div class="ratings">
                                            <div class="rating-box">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                            </div>
                                            <span class="rating-num">( 1 )</span>
                                        </div>
                                        <h4><a href="product.html" title="Pastrami bacon" target="_self">Sed ut perspicia</a></h4>
                                        
                                    </div>
                                    <p class="price">$42.00</p>
                                    <div class="description item-desc">
                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est . </p>
                                    </div>
                                    <div class="list-block">
                                        <button class="addToCart btn-button" type="button" title="Add to Cart" onclick="cart.add('101', '1');"><i class="fa fa-shopping-basket"></i>
                                        </button>
                                        <button class="wishlist btn-button" type="button" title="Add to Wish List" onclick="wishlist.add('101');"><i class="fa fa-heart"></i>
                                        </button>
                                        <button class="compare btn-button" type="button" title="Compare this Product" onclick="compare.add('101');"><i class="fa fa-refresh"></i>
                                        </button>
                                        <!--quickview-->                                                      
                                        <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i></a>                                                        
                                        <!--end quickview-->
                                    </div>
                                </div>                                               
                            </div>
                        </div>
                        
                        <div class="product-layout col-lg-15 col-md-4 col-sm-6 col-xs-12">
                            <div class="product-item-container">
                                <div class="left-block left-b">
                                    
                                    <div class="product-image-container second_img">
                                        <a href="product.html" target="_self" title="Dormd dea irure">
                                            <img src="image/catalog/demo/product/270/f4.jpg" class="img-1 img-responsive" alt="image1">
                                            <img src="image/catalog/demo/product/270/f7.jpg" class="img-2 img-responsive" alt="image2">
                                        </a>
                                    </div>
                                    <!--quickview--> 
                                    <div class="so-quickview">
                                      <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i><span>Quick view</span></a>
                                    </div>                                                     
                                    <!--end quickview-->

                                    
                                </div>
                                <div class="right-block">
                                    <div class="button-group so-quickview cartinfo--left">
                                        <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                            <span>Add to cart </span>   
                                        </button>
                                        <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart-o"></i><span>Add to Wish List</span>
                                        </button>
                                        <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-retweet"></i><span>Compare this Product</span>
                                        </button>
                                        
                                    </div>
                                    <div class="caption hide-cont">
                                        <div class="ratings">
                                            <div class="rating-box">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                            </div>
                                            <span class="rating-num">( 2 )</span>
                                        </div>
                                        <h4><a href="product.html" title="Pastrami bacon" target="_self">Dormd dea irure </a></h4>
                                        
                                    </div>
                                    <p class="price">
                                      <span class="price-new">$48.00</span>              
                                    </p>

                                    <div class="description item-desc">
                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est . </p>
                                    </div>
                                    <div class="list-block">
                                        <button class="addToCart btn-button" type="button" title="Add to Cart" onclick="cart.add('101', '1');"><i class="fa fa-shopping-basket"></i>
                                        </button>
                                        <button class="wishlist btn-button" type="button" title="Add to Wish List" onclick="wishlist.add('101');"><i class="fa fa-heart"></i>
                                        </button>
                                        <button class="compare btn-button" type="button" title="Compare this Product" onclick="compare.add('101');"><i class="fa fa-refresh"></i>
                                        </button>
                                        <!--quickview-->                                                      
                                        <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i></a>                                                        
                                        <!--end quickview-->
                                    </div>
                                </div>                                        
                            </div>
                        </div>
                        <div class="product-layout col-lg-15 col-md-4 col-sm-6 col-xs-12">
                            <div class="product-item-container">
                                <div class="left-block left-b">
                                    
                                    <div class="product-image-container second_img">
                                        <a href="product.html" target="_self" title="Mecepteur sint rew">
                                            <img src="image/catalog/demo/product/270/f5.jpg" class="img-1 img-responsive" alt="image1">
                                            <img src="image/catalog/demo/product/270/f6.jpg" class="img-2 img-responsive" alt="image2">
                                        </a>
                                    </div>
                                    <!--quickview--> 
                                    <div class="so-quickview">
                                      <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i><span>Quick view</span></a>
                                    </div>                                                     
                                    <!--end quickview-->

                                    
                                </div>
                                <div class="right-block">
                                    <div class="button-group so-quickview cartinfo--left">
                                        <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                            <span>Add to cart </span>   
                                        </button>
                                        <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart-o"></i><span>Add to Wish List</span>
                                        </button>
                                        <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-retweet"></i><span>Compare this Product</span>
                                        </button>
                                        
                                    </div>
                                    <div class="caption hide-cont">
                                        <div class="ratings">
                                            <div class="rating-box">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                            </div>
                                            <span class="rating-num">( 2 )</span>
                                        </div>
                                        <h4><a href="product.html" title="Pastrami bacon" target="_self">Mecepteur sint rew</a></h4>
                                        
                                    </div>
                                    <p class="price">
                                      <span class="price-new">$90.00</span>                            
                                    </p>

                                    <div class="description item-desc">
                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est . </p>
                                    </div>
                                    <div class="list-block">
                                        <button class="addToCart btn-button" type="button" title="Add to Cart" onclick="cart.add('101', '1');"><i class="fa fa-shopping-basket"></i>
                                        </button>
                                        <button class="wishlist btn-button" type="button" title="Add to Wish List" onclick="wishlist.add('101');"><i class="fa fa-heart"></i>
                                        </button>
                                        <button class="compare btn-button" type="button" title="Compare this Product" onclick="compare.add('101');"><i class="fa fa-refresh"></i>
                                        </button>
                                        <!--quickview-->                                                      
                                        <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i></a>                                                        
                                        <!--end quickview-->
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="product-layout col-lg-15 col-md-4 col-sm-6 col-xs-12">
                            <div class="product-item-container">
                                <div class="left-block left-b">
                                   
                                    <div class="product-image-container second_img">
                                        <a href="product.html" target="_self" title="Sed ut perspicia">
                                            <img src="image/catalog/demo/product/270/f6.jpg" class="img-1 img-responsive" alt="image1">
                                            <img src="image/catalog/demo/product/270/f2.jpg" class="img-2 img-responsive" alt="image2">
                                        </a>
                                    </div>
                                    <!--quickview--> 
                                    <div class="so-quickview">
                                      <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i><span>Quick view</span></a>
                                    </div>                                                     
                                    <!--end quickview-->

                                    
                                </div>
                                <div class="right-block">
                                    <div class="button-group so-quickview cartinfo--left">
                                        <button type="button" class="addToCart" title="Add to cart" onclick="cart.add('60 ');">
                                            <span>Add to cart </span>   
                                        </button>
                                        <button type="button" class="wishlist btn-button" title="Add to Wish List" onclick="wishlist.add('60');"><i class="fa fa-heart-o"></i><span>Add to Wish List</span>
                                        </button>
                                        <button type="button" class="compare btn-button" title="Compare this Product " onclick="compare.add('60');"><i class="fa fa-retweet"></i><span>Compare this Product</span>
                                        </button>
                                        
                                    </div>
                                    <div class="caption hide-cont">
                                        <div class="ratings">
                                            <div class="rating-box">    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
                                            </div>
                                            <span class="rating-num">( 1 )</span>
                                        </div>
                                        <h4><a href="product.html" title="Pastrami bacon" target="_self">Sed ut perspicia</a></h4>
                                        
                                    </div>
                                    <p class="price">$42.00</p>
                                    <div class="description item-desc">
                                        <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est . </p>
                                    </div>
                                    <div class="list-block">
                                        <button class="addToCart btn-button" type="button" title="Add to Cart" onclick="cart.add('101', '1');"><i class="fa fa-shopping-basket"></i>
                                        </button>
                                        <button class="wishlist btn-button" type="button" title="Add to Wish List" onclick="wishlist.add('101');"><i class="fa fa-heart"></i>
                                        </button>
                                        <button class="compare btn-button" type="button" title="Compare this Product" onclick="compare.add('101');"><i class="fa fa-refresh"></i>
                                        </button>
                                        <!--quickview-->                                                      
                                        <a class="iframe-link btn-button quickview quickview_handler visible-lg" href="quickview.html" title="Quick view" data-fancybox-type="iframe"><i class="fa fa-eye"></i></a>                                                        
                                        <!--end quickview-->
                                    </div>
                                </div>                                               
                            </div>
                        </div>

                    </div>
        			<!--// End Changed listings-->
        			<!-- Filters -->
        			<div class="product-filter product-filter-bottom filters-panel">
                        <div class="row">
                            <div class="col-sm-6 text-left"></div>
                            <div class="col-sm-6 text-right">Showing 1 to 15 of 15 (1 Pages)</div>
                        </div>
                    </div>
        			<!-- //end Filters -->
        			
        		</div>
        		
        	</div>
        	

        	<!--Middle Part End-->
        </div>
    </div>
	<!-- //Main Container -->
	

	<!-- Footer Container -->
    <footer class="footer-container typefooter-1">
        <!-- Footer Top Container -->
 
            <div class="container">
                <div class="row footer-top">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="socials-w">
                          <h2>Follow socials</h2>
                          <ul class="socials">
                            <li class="facebook"><a href="https://www.facebook.com/MagenTech" target="_blank"><i class="fa fa-facebook"></i><span>Facebook</span></a></li>
                            <li class="twitter"><a href="https://twitter.com/smartaddons" target="_blank"><i class="fa fa-twitter"></i><span>Twitter</span></a></li>
                            <li class="google_plus"><a href="https://plus.google.com/u/0/+Smartaddons/posts" target="_blank"><i class="fa fa-google-plus"></i><span>Google Plus</span></a></li>
                            <li class="pinterest"><a href="https://www.pinterest.com/smartaddons/" target="_blank"><i class="fa fa-pinterest"></i><span>Pinterest</span></a></li>
                            <li class="youtube"><a href="#" target="_blank"><i class="fa fa-youtube-play"></i><span>Youtube</span></a></li>
                            <li class="linkedin"><a href="#" target="_blank"><i class="fa fa-linkedin"></i><span>linkedin</span></a></li>
                            <li class="skype"><a href="#" target="_blank"><i class="fa fa-skype"></i><span>skype</span></a></li>
                          </ul>
                        </div>
                        




                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="module newsletter-footer1">
                            <div class="newsletter">

                                <div class="title-block">
                                    <div class="page-heading font-title">
                                        Signup for Newsletter
                                    </div>
                                    
                                </div>

                                <div class="block_content">
                                    <form method="post" id="signup" name="signup" class="form-group form-inline signup send-mail">
                                        <div class="form-group">
                                            <div class="input-box">
                                                <input type="email" placeholder="Your email address..." value="" class="form-control" id="txtemail" name="txtemail" size="55">
                                            </div>
                                            <div class="subcribe">
                                                <button class="btn btn-primary btn-default font-title" type="submit" onclick="return subscribe_newsletter();" name="submit">
                                            Subscribe
                                        </button>
                                            </div>
                                        </div>
                                    </form>


                                </div>
                                <!--/.modcontent-->

                            </div>

                        </div>
                    </div>
                </div>
            </div>
      
        <!-- /Footer Top Container -->
        
        <div class="footer-middle ">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 col-md-4 col-sm-4 col-xs-12 col-infos">
                        <div class="infos-footer">
                            <a href="#"><img src="image/catalog/logo-footer.png" alt="image"></a>
                            <ul class="menu">
                                <li class="adres">
                                    San Luis potosí, centro historico, 78000 san luis potosí, SPL, Mexico
                                </li>
                                <li class="phone">
                                    (+0214)0 315 215 - (+0214)0 315 215
                                </li>
                                <li class="mail">
                                    <a href="mailto:contact@opencartworks.com">contact@opencartworks.com</a>
                                </li>
                                <li class="time">
                                    Open time: 8:00AM - 6:00PM
                                </li>
                            </ul>
                        </div>


                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-4 col-xs-12 col-style">
                        <div class="box-information box-footer">
                            <div class="module clearfix">
                                <h3 class="modtitle">Information</h3>
                                <div class="modcontent">
                                    <ul class="menu">
                                        <li><a href="#">About Us</a></li>
                                        <li><a href="#">FAQ</a></li>
                                        <li><a href="#">Warranty And Services</a></li>
                                        <li><a href="#">Support 24/7 page</a></li>
                                        <li><a href="#">Product Registration</a></li>
                                        <li><a href="#">Product Support</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-4 col-xs-12 col-style">
                        <div class="box-account box-footer">
                            <div class="module clearfix">
                                <h3 class="modtitle">My Account</h3>
                                <div class="modcontent">
                                    <ul class="menu">
                                        <li><a href="#">Brands</a></li>
                                        <li><a href="#">Gift Certificates</a></li>
                                        <li><a href="#">Affiliates</a></li>
                                        <li><a href="#">Specials</a></li>
                                        <li><a href="#">FAQs</a></li>
                                        <li><a href="#">Custom Link</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-4 col-xs-12 col-clear">
                        <div class="box-service box-footer">
                          <div class="module clearfix">
                            <h3 class="modtitle">Categories</h3>
                            <div class="modcontent">
                              <ul class="menu">
                                <li><a href="#">Event & Party Supplies</a></li>
                                <li><a href="#">Home Improvement</a></li>
                                <li><a href="#">Lamps & Light Fixtures</a></li>
                                <li><a href="#">Kitchen & Bath Fixtures</a></li>
                                <li><a href="#">Customer Service</a></li>
                                <li><a href="#">Kitchen & Dining</a></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-4 col-xs-12 col-style">
                        <div class="box-service box-footer">
                            <div class="module clearfix">
                                <h3 class="modtitle">Services</h3>
                                <div class="modcontent">
                                    <ul class="menu">
                                        <li><a href="#">Contact Us</a></li>
                                        <li><a href="#">Returns</a></li>
                                        <li><a href="#">Support</a></li>
                                        <li><a href="#">Site Map</a></li>
                                        <li><a href="#">Customer Service</a></li>
                                        <li><a href="#">Custom Link</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-4 col-xs-12 col-style">
                        <div class="box-service box-footer">
                          <div class="module clearfix">
                            <h3 class="modtitle">Categories</h3>
                            <div class="modcontent">
                              <ul class="menu">
                                <li><a href="#">Event & Party Supplies</a></li>
                                <li><a href="#">Home Improvement</a></li>
                                <li><a href="#">Lamps & Light Fixtures</a></li>
                                <li><a href="#">Kitchen & Bath Fixtures</a></li>
                                <li><a href="#">Customer Service</a></li>
                                <li><a href="#">Kitchen & Dining</a></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                    </div>


                    
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                        <div class="footer-b">
                            <div class="bottom-cont">
                                <a href="#"><img src="image/catalog/demo/payment/pay1.jpg" alt="image"></a>
                                <ul class="footer-links">
                                    <li><a href="#">About Us</a></li>
                                    <li><a href="#">Customer Service</a></li>
                                    <li><a href="#">Privacy Policy</a></li>
                                    <li><a href="#">Site Map</a></li>
                                    <li><a href="#">Orders and Returns</a></li>
                                    <li><a href="#">Contact Us</a></li>
                                </ul>  
                                <p>**$50 off orders $350+ with the code BOO50. $75 off orders $500+ with the code BOO75. $150 off orders $1000+ with the code BOO150. Valid from October 28, 2016 to October 31, 2016. Offer may not be combined with any other offers or promotions, is non-exchangeable and non-refundable. Offer valid within the US only.</p>
                            </div>
                        </div>
            </div>
        </div>
        <!-- Footer Bottom Container -->
        <div class="footer-bottom">
            <div class="container">
                <div class="col-lg-12 col-xs-12 payment-w">
                <img src="image/catalog/demo/payment/payment.png" alt="imgpayment">
                </div>
            </div>
            <div class="copyright-w">
                <div class="container">
                    <div class="copyright">
                    SuperMarket © 2018 Demo Store. All Rights Reserved. Designed by <a href="http://www.bootstrapmb.com" target="_blank">OpenCartWorks.Com</a>
                    </div>
                </div>
            </div>            
        </div>
        <!-- /Footer Bottom Container -->
        
        
            <!--Back To Top-->
        <div class="back-to-top"><i class="fa fa-angle-up"></i></div>
    </footer>
    <!-- //end Footer Container -->

    </div>
	
	
	<!-- Cpanel Block -->
	<div id="sp-cpanel_btn" class="isDown visible-lg">
	<i class="fa fa-cog"></i>
</div>		

<!-- Include Libs & Plugins
	============================================ -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="js/jquery-2.2.4.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/owl-carousel/owl.carousel.js"></script>
<script type="text/javascript" src="js/slick-slider/slick.js"></script>
	<script type="text/javascript" src="js/themejs/libs.js"></script>
	<script type="text/javascript" src="js/unveil/jquery.unveil.js"></script>
	<script type="text/javascript" src="js/countdown/jquery.countdown.min.js"></script>
	<script type="text/javascript" src="js/dcjqaccordion/jquery.dcjqaccordion.2.8.min.js"></script>
	<script type="text/javascript" src="js/datetimepicker/moment.js"></script>
	<script type="text/javascript" src="js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui/jquery-ui.min.js"></script>
	
	
	<!-- Theme files
	============================================ -->
	
	
	<script type="text/javascript" src="js/themejs/so_megamenu.js"></script>
	<script type="text/javascript" src="js/themejs/addtocart.js"></script>
	<script type="text/javascript" src="js/themejs/application.js"></script>
	<script type="text/javascript"><!--
	// Check if Cookie exists
		if($.cookie('display')){
			view = $.cookie('display');
		}else{
			view = 'grid';
		}
		if(view) display(view);
	//--></script> 
</body>
</html>