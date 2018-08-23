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

<body class="res layout-1">

    <div id="wrapper" class="wrapper-fluid banners-effect-5">
    
	<%@ include file="header.jsp" %>
    
	<!-- Main Container  -->
	<div class="main-container container">
		<ul class="breadcrumb">
			<li><a href="#"><i class="fa fa-home"></i></a></li>
			<li><a href="#">Funitures</a></li>
		</ul>
		
		<div class="row">
			
			<!--Middle Part Start-->
			<div id="content" class="col-md-12 col-sm-12">
				
				<div class="products-category">
					<div class="category-desc form-group">
					   <h3 class="title-category">Funitures</h3>
						<!-- <div class="banners">
                            <div>
                                <a  href="#"><img src="image/catalog/demo/category/img-cate.jpg" alt="img cate"><br></a>
                            </div>
                        </div> -->
						<div class="category-desc">
							<p>Mauris accumsan nulla vel diam. Sed in lacus ut enim adipiscing aliquet. Nulla venenatis. In pede mi, aliquet sit amet, euismod in, auctor ut, ligula. Aliquam dapibus tincidunt metus. Praesent justo dolor, lobortis quis, lobortis dignissim, pulvinar ac, lorem. Vestibulum sed ante. Donec sagittis euismod purus. Sed ut perspiciatis sit voluptatem accusantium doloremque laudantium. Vestibulum iaculis lacinia est. Proin dictum elementum velit. Fusce euismod consequat ante. </p>

							<p>Lorem ipsum dolor sit amet, consectetuer adipisMauris accumsan nulla vel diam. Sed in lacus ut enim adipiscing aliquet. Nulla venenatis. In pede mi, aliquet sit amet, euismod in,auctor ut, ligula. Aliquam dapibus tincidunt metus. Praesent justo dolor, lobortis quis, lobortis dignissim, pulvinar ac, lorem. </p>

						</div>
						
					</div>
					
					<!--Content Top -->
					<div class="module filter-v3">
   <h3 class="modtitle">Filter </h3>
   <div class="modcontent ">
		<form class="type_2">

		<div class="table_layout filter-row">
			<div class="table_row">
				<!-- - - - - - - - - - - - - - Category filter - - - - - - - - - - - - - - - - -->
				<div class="table_cell" style="z-index: 103;">
					<legend>Search</legend>
					<input class="form-control" type="text" value="" size="30" autocomplete="off" placeholder="Search" name="search">
				</div><!--/ .table_cell -->
				<!-- - - - - - - - - - - - - - End of category filter - - - - - - - - - - - - - - - - -->
				<!-- - - - - - - - - - - - - - SUB CATEGORY - - - - - - - - - - - - - - - - -->
				<div class="table_cell">
					<fieldset>
						<legend>Sub Category</legend>
						<ul class="checkboxes_list">
							<li>
								<input type="checkbox" checked="" name="category" id="category_1">
								<label for="category_1">Smartphone & Tablets</label>
							</li>
							<li>
								<input type="checkbox" name="category" id="category_2">
								<label for="category_2">Electronics</label>
							</li>
							<li>
								<input type="checkbox" name="category" id="category_3">
								<label for="category_3">Shoes</label>
							</li>
							<li>
								<input type="checkbox" name="category" id="category_4">
								<label for="category_4">Watches</label>
							</li>

						</ul>

					</fieldset>

				</div><!--/ .table_cell -->
				<!-- - - - - - - - - - - - - - End SUB CATEGORY - - - - - - - - - - - - - - - - -->
				<!-- - - - - - - - - - - - - - Manufacturer - - - - - - - - - - - - - - - - -->
				<div class="table_cell">
					<fieldset>
						<legend>Manufacturer</legend>
						<ul class="checkboxes_list">
							<li>
								<input type="checkbox" checked="" name="manufacturer" id="manufacturer_1">
								<label for="manufacturer_1">Manufacturer 1</label>
							</li>
							<li>
								<input type="checkbox" name="manufacturer" id="manufacturer_2">
								<label for="manufacturer_2">Manufacturer 2</label>
							</li>
							<li>
								<input type="checkbox" name="manufacturer" id="manufacturer_3">
								<label for="manufacturer_3">Manufacturer 3</label>
							</li>

						</ul>

					</fieldset>

				</div><!--/ .table_cell -->
				<!-- - - - - - - - - - - - - - End manufacturer - - - - - - - - - - - - - - - - -->

				<!-- - - - - - - - - - - - - - Price - - - - - - - - - - - - - - - - -->
				<div class="table_cell">
					<fieldset>
						<legend>Price</legend>
						<div class="range">
							Range :
							<span class="min_val">$188.73</span> - 
							<span class="max_val">$335.15</span>
							<input type="hidden" name="" class="min_value" value="188.73">
							<input type="hidden" name="" class="max_value" value="335.15">
						</div>
						<div id="slider" class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all">
							<div class="ui-slider-range ui-widget-header ui-corner-all"></div>
							<span class="ui-slider-handle ui-state-default ui-corner-all" ></span>
							<span class="ui-slider-handle ui-state-default ui-corner-all" ></span>
						</div>
					</fieldset>
				</div><!--/ .table_cell -->

				<!-- - - - - - - - - - - - - - End price - - - - - - - - - - - - - - - - -->

				<!-- - - - - - - - - - - - - - Price - - - - - - - - - - - - - - - - -->

				<div class="table_cell">

					<fieldset>

						<legend>Color</legend>

						<div class="row">

							<div class="col-sm-6">
								
								<ul class="simple_vertical_list">

									<li>
										
										<input type="checkbox" name="" id="color_btn_1">
										<label for="color_btn_1" class="color_btn green">Green</label>

									</li>

									<li>

										<input type="checkbox" name="" id="color_btn_2">
										<label for="color_btn_2" class="color_btn yellow">Yellow</label>

									</li>

									<li>
										
										<input type="checkbox" name="" id="color_btn_3">
										<label for="color_btn_3" class="color_btn red">Red</label>

									</li>

								</ul>

							</div>

							<div class="col-sm-6">
								
								<ul class="simple_vertical_list">

									<li>

										<input type="checkbox" name="" id="color_btn_4">
										<label for="color_btn_4" class="color_btn blue">Blue</label>

									</li>

									<li>
										
										<input type="checkbox" name="" id="color_btn_5">
										<label for="color_btn_5" class="color_btn grey">Grey</label>

									</li>

									<li>
										
										<input type="checkbox" name="" id="color_btn_6">
										<label for="color_btn_6" class="color_btn orange">Orange</label>

									</li>

								</ul>

							</div>

						</div>

					</fieldset>

				</div><!--/ .table_cell -->

				<!-- - - - - - - - - - - - - - End price - - - - - - - - - - - - - - - - -->

			</div><!--/ .table_row -->
			<footer class="bottom_box">
				<div class="buttons_row">
					<button type="submit" class="button_grey button_submit">Search</button>
					<button type="reset" class="button_grey ">Reset</button>
				</div>
			        <!--Back To Top-->
        <div class="back-to-top"><i class="fa fa-angle-up"></i></div>
    </footer>
		</div><!--/ .table_layout -->

		

	</form>
   </div>
   
</div>
<!--Content Top End -->
					
					
					<!-- Filters -->
                    <div class="product-filter product-filter-top filters-panel">
                        <div class="row">
                            <div class="col-sm-5 view-mode">
                                
                                    <div class="list-view">
                                        <button class="btn btn-default grid active" data-view="grid" data-toggle="tooltip"  data-original-title="Grid"><i class="fa fa-th"></i></button>
                                        <button class="btn btn-default list" data-view="list" data-toggle="tooltip" data-original-title="List"><i class="fa fa-th-list"></i></button>
                                    </div>
                        
                            </div>
                            <div class="short-by-show form-inline text-right col-md-7 col-sm-7 col-xs-12">
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
			
			
			
		</div>
		<!--Middle Part End-->
	</div>
	<!-- //Main Container -->
	<%@ include file="bottom.jsp" %>
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
			view = 'list';
		}
		if(view) display(view);
	//--></script> 
	</body>
</html>
