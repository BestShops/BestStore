<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Best Store</title>
</head>
<body>
	<!-- Header Container  -->
		<header id="header" class=" typeheader-1" >
			<!-- Header Top -->
			<div class="header-top hidden-compact">
				<div class="container">
					<div class="row">
						<div class="header-top-left col-lg-7 col-md-8 col-sm-6 col-xs-4">
							<ul class="top-link">
								<li class="currency">
									<div class="btn-group currencies-block">
										<a href="loginPage.do"><i class="fa fa-pencil-square-o"></i> 亲，请登录.</a>&nbsp;&nbsp;&nbsp;  
										<a href="registerPage.do"><i class="fa fa-user"></i> 免费注册.</a>
									</div>
								</li>
							</ul>
						</div>
						<div
							class="header-top-right collapsed-block col-lg-5 col-md-4 col-sm-6 col-xs-8">
							<ul class="top-link list-inline lang-curr">
								<li class="currency">
									<div class="btn-group currencies-block">
                                    <form action="index.html" method="post" enctype="multipart/form-data" id="currency">
                                        <a class="btn btn-link dropdown-toggle" data-toggle="dropdown">
                                            <span class="icon icon-credit "></span> 我的交易 <span class="fa fa-angle-down"></span>
                                        </a>
                                        <ul class="dropdown-menu btn-xs">
                                        	<li> <a href="orderHistoryPage.do">正在进行的订单</a></li>
                                            <li> <a href="orderHistoryPage.do">已完成订单</a></li>
                                            
                                        </ul>
                                    </form>
                                </div>
								</li>
								<li class="currency">
                                <div class="btn-group currencies-block">
                                    <form action="index.html" method="post" enctype="multipart/form-data" id="currency">
                                        <a href="cartPage.do">购物车</a>
                                    </form>
                                </div>
                            </li> 
                            <li class="currency">
                                <div class="btn-group currencies-block">
                                    <form action="index.html" method="post" enctype="multipart/form-data" id="currency">
                                        <a class="btn btn-link dropdown-toggle" data-toggle="dropdown">
                                            <span class="icon icon-credit "></span> 收藏夹<span class="fa fa-angle-down"></span>
                                        </a>
                                        <ul class="dropdown-menu btn-xs">
                                            <li> <a href="wishlistPage.do">收藏宝贝</a></li>
                                            <li> <a href="wishlistPage.do">收藏店铺</a></li>
                                        </ul>
                                    </form>
                                </div>
                            </li> 
							
							<li class="currency">
                                <div class="btn-group currencies-block">
                                    <form action="index.html" method="post" enctype="multipart/form-data" id="currency">
                                        <a class="btn btn-link dropdown-toggle" data-toggle="dropdown">
                                            <span class="icon icon-credit "></span>卖家中心<span class="fa fa-angle-down"></span>
                                        </a>
                                        <ul class="dropdown-menu btn-xs">
                                            <li> <a href="#">免费开店</a></li>
                                            <li> <a href="#">已售出宝贝</a></li>
											<li> <a href="#">正在交易的宝贝</a></li>
                                        </ul>
                                    </form>
                                </div>
                            </li>
							
							<li class="currency">
                                <div class="btn-group currencies-block">
                                    <form action="index.html" method="post" enctype="multipart/form-data" id="currency">
                                        <a class="btn btn-link dropdown-toggle" data-toggle="dropdown">
                                            <span class="icon icon-credit "></span>联系客服<span class="fa fa-angle-down"></span>
                                        </a>
                                        <ul class="dropdown-menu btn-xs">
                                            <li> <a href="#">客服咨询</a></li>
											<li> <a href="#">商品反馈</a></li>
                                        </ul>
                                    </form>
                                </div>
                            </li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- //Header Top -->

			<!-- Header center -->
			<div class="header-middle">
				<div class="container">
					<div class="row">
						<!-- Logo -->
						<div class="navbar-logo col-lg-2 col-md-3 col-sm-4 col-xs-12">
							<div class="logo">
								<a href="index.do"><img src="image/catalog/logo.png"
									title="Your Store" alt="Your Store" /></a>
							</div>
						</div>
						<!-- //end Logo -->

						<!-- Search -->
						<div class="col-lg-7 col-md-6 col-sm-5">
							<div class="search-header-w">
								<div class="icon-search hidden-lg hidden-md hidden-sm">
									<i class="fa fa-search"></i>
								</div>

								<div id="sosearchpro" class="sosearchpro-wrapper so-search ">
									<form method="GET" action="index.html">
										<div id="search0" class="search input-group form-group">
											<div
												class="select_category filter_type  icon-select hidden-sm hidden-xs">
												<select class="no-border" name="category_id">
													<option value="0">All Categories</option>
													<option value="78">Apparel</option>
													<option value="77">Cables &amp; Connectors</option>
													<option value="82">Cameras &amp; Photo</option>
													<option value="80">Flashlights &amp; Lamps</option>
													<option value="81">Mobile Accessories</option>
													<option value="79">Video Games</option>
													<option value="20">Jewelry &amp; Watches</option>
													<option value="76">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Earings</option>
													<option value="26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Wedding
														Rings</option>
													<option value="27">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Men
														Watches</option>
												</select>
											</div>

											<input class="autosearch-input form-control" type="text"
												value="" size="50" autocomplete="off"
												placeholder="Keyword here..." name="search">

											<button type="submit" class="button-search btn btn-primary"
												name="submit_search">
												<i class="fa fa-search"></i>
											</button>

										</div>
										<input type="hidden" name="route" value="product/search" />
									</form>
								</div>
							</div>
						</div>
						<!-- //end Search -->
						<div class="middle-right col-lg-3 col-md-3 col-sm-3">
							<!--cart-->
							<div class="shopping_cart">
								<div id="cart" class="btn-shopping-cart">

									<a data-loading-text="Loading... "
										class="btn-group top_cart dropdown-toggle"
										data-toggle="dropdown" aria-expanded="true">
										<div class="shopcart">
											<span class="icon-c"> <i class="fa fa-shopping-bag"></i>
											</span>
											<div class="shopcart-inner">
												<p class="text-shopping-cart">购物车</p>

												<span class="total-shopping-cart cart-total-full"> <span
													class="items_cart">02</span><span class="items_cart2">
														item(s)</span><span class="items_carts">( $162.00 )</span>
												</span>
											</div>
										</div>
									</a>

									<ul class="dropdown-menu pull-right shoppingcart-box"
										role="menu">
										<li>
											<table class="table table-striped">
												<tbody>
													<tr>
														<td class="text-center" style="width: 70px"><a
															href="goodsPage.do"> <img
																src="image/catalog/demo/product/80/1.jpg"
																style="width: 70px" alt="Yutculpa ullamcon"
																title="Yutculpa ullamco" class="preview">
														</a></td>
														<td class="text-left"><a class="cart_product_name"
															href="goodsPage.do">Yutculpa ullamco</a></td>
														<td class="text-center">x1</td>
														<td class="text-center">$80.00</td>
														<td class="text-right"><a href="goodsPage.do"
															class="fa fa-edit"></a></td>
														<td class="text-right"><a onclick="cart.remove('2');"
															class="fa fa-times fa-delete"></a></td>
													</tr>
													<tr>
														<td class="text-center" style="width: 70px"><a
															href="goodsPage.do"> <img
																src="image/catalog/demo/product/80/2.jpg"
																style="width: 70px" alt="Xancetta bresao"
																title="Xancetta bresao" class="preview">
														</a></td>
														<td class="text-left"><a class="cart_product_name"
															href="goodsPage.do">Xancetta bresao</a></td>
														<td class="text-center">x1</td>
														<td class="text-center">$60.00</td>
														<td class="text-right"><a href="goodsPage.do"
															class="fa fa-edit"></a></td>
														<td class="text-right"><a onclick="cart.remove('1');"
															class="fa fa-times fa-delete"></a></td>
													</tr>
												</tbody>
											</table>
										</li>
										<li>
											<div>
												<table class="table table-bordered">
													<tbody>
														<tr>
															<td class="text-left"><strong>Sub-Total</strong></td>
															<td class="text-right">$140.00</td>
														</tr>
														<tr>
															<td class="text-left"><strong>Eco Tax
																	(-2.00)</strong></td>
															<td class="text-right">$2.00</td>
														</tr>
														<tr>
															<td class="text-left"><strong>VAT (20%)</strong></td>
															<td class="text-right">$20.00</td>
														</tr>
														<tr>
															<td class="text-left"><strong>Total</strong></td>
															<td class="text-right">$162.00</td>
														</tr>
													</tbody>
												</table>
												<p class="text-right">
													<a class="btn view-cart" href="cartPage.do"><i
														class="fa fa-shopping-cart"></i>查看购物车</a>&nbsp;&nbsp;&nbsp;
													<a class="btn btn-mega checkout-cart" href="checkoutPage.do"><i
														class="fa fa-share"></i>Checkout</a>
												</p>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<!--//cart-->
							 <ul class="myinfo" style="margin-left: 40px;">
								<li class="myheadphoto"><a href="myaccount.do" class="top-link-myheadphoto"><img width="40px" height="40px" src="image/catalog/demo/client/user-2.jpg"></a></li>
							</ul>	
						</div>
					</div>
				</div>
			</div>
			<!-- //Header center -->

			<!-- Header Bottom -->
			<div class="header-bottom hidden-compact">
				<div class="container">
					<div class="row">

						<div class="bottom1 menu-vertical col-lg-2 col-md-3 col-sm-3">
							<div class="responsive so-megamenu megamenu-style-dev ">
								<div class="so-vertical-menu ">
									<nav class="navbar-default">

										<div class="container-megamenu vertical">
											<div id="menuHeading">
												<div class="megamenuToogle-wrapper">
													<div class="megamenuToogle-pattern">
														<div class="container">
															<div>
																<span></span> <span></span> <span></span>
															</div>
															所有分类
														</div>
													</div>
												</div>
											</div>

											<div class="navbar-header">
												<button type="button" id="show-verticalmenu"
													data-toggle="collapse" class="navbar-toggle">
													<i class="fa fa-bars"></i> <span> 所有分类 </span>
												</button>
											</div>
											<div class="vertical-wrapper">
												<span id="remove-verticalmenu" class="fa fa-times"></span>
												<div class="megamenu-pattern">
													<div class="container-mega">
														<ul class="megamenu">
															<li class="item-vertical  with-sub-menu hover">
																<p class="close-menu"></p> <a href="#" class="clearfix">
																	<img src="image/catalog/menu/icons/ico10.png"
																	alt="icon"> <span>礼物 & 玩具</span> <b
																	class="fa-angle-right"></b>
															</a>
																<div class="sub-menu" data-subwidth="60">
																	<div class="content">
																		<div class="row">
																			<div class="col-sm-12">
																				<div class="row">
																					<div class="col-md-4 static-menu">
																						<div class="menu">
																							<ul>
																								<li><a href="#" class="main-menu">Apparel</a>
																									<ul>
																										<li><a href="#">Accessories for
																												Tablet PC</a></li>
																										<li><a href="#">Accessories for i Pad</a></li>
																										<li><a href="#">Accessories for
																												iPhone</a></li>
																										<li><a href="#">Bags, Holiday
																												Supplies</a></li>
																										<li><a href="#">Car Alarms and
																												Security</a></li>
																										<li><a href="#">Car Audio &amp;
																												Speakers</a></li>
																									</ul></li>
																								<li><a href="#" class="main-menu">Cables
																										&amp; Connectors</a>
																									<ul>
																										<li><a href="#">Cameras &amp; Photo</a></li>
																										<li><a href="#">Electronics</a></li>
																										<li><a href="#">Outdoor &amp;
																												Traveling</a></li>
																									</ul></li>
																							</ul>
																						</div>
																					</div>
																					<div class="col-md-4 static-menu">
																						<div class="menu">
																							<ul>
																								<li><a href="#" class="main-menu">Camping
																										&amp; Hiking</a>
																									<ul>
																										<li><a href="#">Earings</a></li>
																										<li><a href="#">Shaving &amp; Hair
																												Removal</a></li>
																										<li><a href="#">Salon &amp; Spa
																												Equipment</a></li>
																									</ul></li>
																								<li><a href="#" class="main-menu">Smartphone
																										&amp; Tablets</a>
																									<ul>
																										<li><a href="#">Sports &amp; Outdoors</a></li>
																										<li><a href="#">Bath &amp; Body</a></li>
																										<li><a href="#">Gadgets &amp; Auto
																												Parts</a></li>
																									</ul></li>
																							</ul>
																						</div>
																					</div>
																					<div class="col-md-4 static-menu">
																						<div class="menu">
																							<ul>
																								<li><a href="#" class="main-menu">Bags,
																										Holiday Supplies</a>
																									<ul>
																										<li><a href="#"
																											onclick="window.location = '18_46';">Battereries
																												&amp; Chargers</a></li>
																										<li><a href="#"
																											onclick="window.location = '24_64';">Bath
																												&amp; Body</a></li>
																										<li><a href="#"
																											onclick="window.location = '18_45';">Headphones,
																												Headsets</a></li>
																										<li><a href="#"
																											onclick="window.location = '18_30';">Home
																												Audio</a></li>
																									</ul></li>
																							</ul>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</li>
															<li class="item-vertical">
																<p class="close-menu"></p> <a href="#" class="clearfix">
																	<img src="image/catalog/menu/icons/ico1.png" alt="icon">
																	<span>Fashion & Accessories</span>

															</a>
															</li>
															<li class="item-vertical  style1 with-sub-menu hover">
																<p class="close-menu"></p> <a href="#" class="clearfix">
																	<span class="label"></span> <img
																	src="image/catalog/menu/icons/ico9.png" alt="icon">
																	<span>Electronic</span> <b class="fa-angle-right"></b>
															</a>
																<div class="sub-menu" data-subwidth="40">
																	<div class="content">
																		<div class="row">
																			<div class="col-md-6">
																				<div class="row">
																					<div class="col-md-12 static-menu">
																						<div class="menu">
																							<ul>
																								<li><a href="#" class="main-menu">Smartphone</a>
																									<ul>
																										<li><a href="#">Esdipiscing</a></li>
																										<li><a href="#">Scanners</a></li>
																										<li><a href="#">Apple</a></li>
																										<li><a href="#">Dell</a></li>
																										<li><a href="#">Scanners</a></li>
																									</ul></li>
																								<li><a href="#" class="main-menu">Electronics</a>
																									<ul>
																										<li><a href="#">Asdipiscing</a></li>
																										<li><a href="#">Diam sit</a></li>
																										<li><a href="#">Labore et</a></li>
																										<li><a href="#">Monitors</a></li>
																									</ul></li>
																							</ul>
																						</div>
																					</div>
																				</div>
																			</div>
																			<div class="col-md-6">
																				<div class="row banner">
																					<a href="#"> <img
																						src="image/catalog/menu/megabanner/vbanner1.jpg"
																						alt="banner1">
																					</a>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</li>
															<li class="item-vertical with-sub-menu hover">
																<p class="close-menu"></p> <a href="#" class="clearfix">
																	<img src="image/catalog/menu/icons/ico7.png" alt="icon">
																	<span>Health &amp; Beauty</span> <b
																	class="fa-angle-right"></b>
															</a>
																<div class="sub-menu" data-subwidth="60">
																	<div class="content">
																		<div class="row">
																			<div class="col-md-12">
																				<div class="row">
																					<div class="col-md-4 static-menu">
																						<div class="menu">
																							<ul>
																								<li><a href="#" class="main-menu">Car
																										Alarms and Security</a>
																									<ul>
																										<li><a href="#">Car Audio &amp;
																												Speakers</a></li>
																										<li><a href="#">Gadgets &amp; Auto
																												Parts</a></li>
																										<li><a href="#">Gadgets &amp; Auto
																												Parts</a></li>
																										<li><a href="#">Headphones, Headsets</a></li>
																									</ul></li>
																								<li><a href="24"
																									onclick="window.location = '24';"
																									class="main-menu">Health &amp; Beauty</a>
																									<ul>
																										<li><a href="#">Home Audio</a></li>
																										<li><a href="#">Helicopters &amp;
																												Parts</a></li>
																										<li><a href="#">Outdoor &amp;
																												Traveling</a></li>
																										<li><a href="#">Toys &amp; Hobbies</a></li>
																									</ul></li>
																							</ul>
																						</div>
																					</div>
																					<div class="col-md-4 static-menu">
																						<div class="menu">
																							<ul>
																								<li><a href="#" class="main-menu">Electronics</a>
																									<ul>
																										<li><a href="#">Earings</a></li>
																										<li><a href="#">Salon &amp; Spa
																												Equipment</a></li>
																										<li><a href="#">Shaving &amp; Hair
																												Removal</a></li>
																										<li><a href="#">Smartphone &amp;
																												Tablets</a></li>
																									</ul></li>
																								<li><a href="#" class="main-menu">Sports
																										&amp; Outdoors</a>
																									<ul>
																										<li><a href="#">Flashlights &amp;
																												Lamps</a></li>
																										<li><a href="#">Fragrances</a></li>
																										<li><a href="#">Fishing</a></li>
																										<li><a href="#">FPV System &amp;
																												Parts</a></li>
																									</ul></li>
																							</ul>
																						</div>
																					</div>
																					<div class="col-md-4 static-menu">
																						<div class="menu">
																							<ul>
																								<li><a href="#" class="main-menu">More
																										Car Accessories</a>
																									<ul>
																										<li><a href="#">Lighter &amp; Cigar
																												Supplies</a></li>
																										<li><a href="#">Mp3 Players &amp;
																												Accessories</a></li>
																										<li><a href="#">Men Watches</a></li>
																										<li><a href="#">Mobile Accessories</a></li>
																									</ul></li>
																								<li><a href="#" class="main-menu">Gadgets
																										&amp; Auto Parts</a>
																									<ul>
																										<li><a href="#">Gift &amp; Lifestyle
																												Gadgets</a></li>
																										<li><a href="#">Gift for Man</a></li>
																										<li><a href="#">Gift for Woman</a></li>
																										<li><a href="#">Gift for Woman</a></li>
																									</ul></li>
																							</ul>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</li>
															<li class="item-vertical css-menu with-sub-menu hover">
																<p class="close-menu"></p> <a href="#" class="clearfix">

																	<img src="image/catalog/menu/icons/ico6.png" alt="icon">
																	<span>Smartphone &amp; Tablets</span> <b
																	class="fa-angle-right"></b>
															</a>
																<div class="sub-menu" data-subwidth="20">
																	<div class="content">
																		<div class="row">
																			<div class="col-sm-12">
																				<div class="row">
																					<div class="col-sm-12 hover-menu">
																						<div class="menu">
																							<ul>
																								<li><a href="#" class="main-menu">Headphones,
																										Headsets</a></li>
																								<li><a href="#" class="main-menu">Home
																										Audio</a></li>
																								<li><a href="#" class="main-menu">Health
																										&amp; Beauty</a></li>
																								<li><a href="#" class="main-menu">Helicopters
																										&amp; Parts</a></li>
																								<li><a href="#" class="main-menu">Helicopters
																										&amp; Parts</a></li>
																							</ul>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</li>
															<li class="item-vertical">
																<p class="close-menu"></p> <a href="#" class="clearfix">
																	<img src="image/catalog/menu/icons/ico5.png" alt="icon">
																	<span>Health & Beauty</span>

															</a>
															</li>
															<li class="item-vertical">
																<p class="close-menu"></p> <a href="#" class="clearfix">
																	<img src="image/catalog/menu/icons/ico4.png" alt="icon">
																	<span>Bathroom</span>
															</a>
															</li>
															<li class="item-vertical">
																<p class="close-menu"></p> <a href="#" class="clearfix">
																	<img src="image/catalog/menu/icons/ico3.png" alt="icon">
																	<span>Metallurgy</span>
															</a>
															</li>
															<li class="item-vertical">
																<p class="close-menu"></p> <a href="#" class="clearfix">
																	<img src="image/catalog/menu/icons/ico2.png" alt="icon">
																	<span>Bedroom</span>
															</a>
															</li>
															<li class="item-vertical">
																<p class="close-menu"></p> <a href="#" class="clearfix">
																	<img src="image/catalog/menu/icons/ico1.png" alt="icon">
																	<span>Health &amp; Beauty</span>
															</a>
															</li>
															<li class="item-vertical" style="display: none;">
																<p class="close-menu"></p> <a href="#" class="clearfix">
																	<img src="image/catalog/menu/icons/ico11.png"
																	alt="icon"> <span>Toys &amp; Hobbies </span>
															</a>
															</li>
															<li class="item-vertical" style="display: none;">
																<p class="close-menu"></p> <a href="#" class="clearfix">
																	<img src="image/catalog/menu/icons/ico12.png"
																	alt="icon"> <span>Jewelry &amp; Watches</span>
															</a>
															</li>
															<li class="item-vertical" style="display: none;">
																<p class="close-menu"></p> <a href="#" class="clearfix">
																	<img src="image/catalog/menu/icons/ico9.png" alt="icon">
																	<span>Home &amp; Lights</span>
															</a>
															</li>
															<li class="item-vertical" style="display: none;">
																<p class="close-menu"></p> <a href="#" class="clearfix">
																	<img src="image/catalog/menu/icons/ico6.png" alt="icon">
																	<span>Metallurgy</span>
															</a>
															</li>

															<li class="loadmore"><i class="fa fa-plus-square-o"></i>
																<span class="more-view">More Categories</span></li>

														</ul>
													</div>
												</div>
											</div>
										</div>
									</nav>
								</div>
							</div>

						</div>

						<!-- Main menu -->
						<div class="main-menu-w col-lg-10 col-md-9">
							<div class="responsive so-megamenu megamenu-style-dev">
								<nav class="navbar-default">
									<div class=" container-megamenu  horizontal open ">
										<div class="navbar-header">
											<button type="button" id="show-megamenu"
												data-toggle="collapse" class="navbar-toggle">
												<span class="icon-bar"></span> <span class="icon-bar"></span>
												<span class="icon-bar"></span>
											</button>
										</div>

										<div class="megamenu-wrapper">
											<span id="remove-megamenu" class="fa fa-times"></span>
											<div class="megamenu-pattern">
												<div class="container-mega">
													<ul class="megamenu" data-transition="slide"
														data-animationtime="250">
														<li class="with-sub-menu hover">
															<p class="close-menu"></p> <a href="#" class="clearfix">
																<strong>商品特点</strong> <img class="label-hot"
																src="image/catalog/menu/new-icon.png" alt="icon items">
																<b class="caret"></b>
														</a>
															<div class="sub-menu" style="width: 100%; right: auto;">
																<div class="content">
																	<div class="row">
																		<div class="col-md-3">
																			<div class="column">
																				<a href="#" class="title-submenu">分类展示</a>
																				<div>
																					<ul class="row-list">
																						<li><a href="categoryPage.do?page=1">分类展示1 </a></li>
																						<li><a href="categoryPage.do?page=2">分类展示2</a></li>
																						<li><a href="categoryPage.do?page=3">分类展示3</a></li>
																					</ul>

																				</div>
																			</div>
																		</div>
																		<div class="col-md-3">
																			<div class="column">
																				<a href="#" class="title-submenu">商品展示</a>
																				<div>
																					<ul class="row-list">
																						<li><a href="goodsPage.do?page=1">商品展示1</a></li>
																						<li><a href="goodsPage.do?page=2">商品展示2</a></li>
																					</ul>
																				</div>
																			</div>
																		</div>
																		<div class="col-md-3">
																			<div class="column">
																				<a href="#" class="title-submenu">购物</a>
																				<div>
																					<ul class="row-list">
																						<li><a href="cartPage.do">购物车</a></li>
																						<li><a href="checkoutPage.do">商品结算</a></li>
																						<li><a href="wishlistPage.do">收藏夹</a></li>

																					</ul>
																				</div>
																			</div>
																		</div>
																		<div class="col-md-3">
																			<div class="column">
																				<a href="#" class="title-submenu">账户信息</a>
																				<div>
																					<ul class="row-list">
																						<li><a href="loginPage.do">登录</a></li>
																						<li><a href="registerPage.do">注册</a></li>
																						<li><a href="myaccount.do">我的账户</a></li>
																						<li><a href="orderHistoryPage.do">历史订单</a></li>
																						<li><a href="discusspage.do">订单评论</a></li>
																					</ul>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</li>
														<li class="with-sub-menu hover">
															<p class="close-menu"></p> <a href="#" class="clearfix">
																<strong>了解我们</strong> <b class="caret"></b>
														</a>
															<div class="sub-menu" style="width: 40%;">
																<div class="content">
																	<div class="row">
																		<div class="col-md-6">
																			<ul class="row-list">
																				<li><a class="subcategory_item" href="faqPage.do">常见问题解答</a></li>
																				<li><a class="subcategory_item"
																					href="siteMapPage.do">网站地图</a></li>
																				<li><a class="subcategory_item"
																					href="contactPage.do">联系我们</a></li>
																			</ul>
																		</div>
																		<div class="col-md-6">
																			<ul class="row-list">
																				<li><a class="subcategory_item"
																					href="aboutUsPage.do?page=1">关于我们1</a></li>
																				<li><a class="subcategory_item"
																					href="aboutUsPage.do?page=2">关于我们2</a></li>
																				<li><a class="subcategory_item"
																					href="aboutUsPage.do?page=3">关于我们3</a></li>
																				<li><a class="subcategory_item"
																					href="aboutUsPage.do?page=4">关于我们4</a></li>
																			</ul>
																		</div>
																	</div>
																</div>
															</div>
														</li>
														<li class="with-sub-menu hover">
															<p class="close-menu"></p> <a href="#" class="clearfix">
																<strong>商品</strong> <img class="label-hot"
																src="image/catalog/menu/hot-icon.png" alt="icon items">

																<b class="caret"></b>
														</a>
															<div class="sub-menu" style="width: 100%; display: none;">
																<div class="content">
																	<div class="row">
																		<div class="col-sm-12">
																			<div class="row">
																				<div class="col-md-3 img img1">
																					<a href="#"><img
																						src="image/catalog/menu/megabanner/image-1.jpg"
																						alt="banner1"></a>
																				</div>
																				<div class="col-md-3 img img2">
																					<a href="#"><img
																						src="image/catalog/menu/megabanner/image-2.jpg"
																						alt="banner2"></a>
																				</div>
																				<div class="col-md-3 img img3">
																					<a href="#"><img
																						src="image/catalog/menu/megabanner/image-3.jpg"
																						alt="banner3"></a>
																				</div>
																				<div class="col-md-3 img img4">
																					<a href="#"><img
																						src="image/catalog/menu/megabanner/image-4.jpg"
																						alt="banner4"></a>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="row">
																		<div class="col-md-3">
																			<a href="#" class="title-submenu">Automotive</a>
																			<div class="row">
																				<div class="col-md-12 hover-menu">
																					<div class="menu">
																						<ul>
																							<li><a href="#" class="main-menu">Car
																									Alarms and Security</a></li>
																							<li><a href="#" class="main-menu">Car
																									Audio &amp; Speakers</a></li>
																							<li><a href="#" class="main-menu">Gadgets
																									&amp; Auto Parts</a></li>
																							<li><a href="#" class="main-menu">More
																									Car Accessories</a></li>
																						</ul>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="col-md-3">
																			<a href="#" class="title-submenu">Funitures</a>
																			<div class="row">
																				<div class="col-md-12 hover-menu">
																					<div class="menu">
																						<ul>
																							<li><a href="#" class="main-menu">Bathroom</a></li>
																							<li><a href="#" class="main-menu">Bedroom</a></li>
																							<li><a href="#" class="main-menu">Decor</a></li>
																							<li><a href="#" class="main-menu">Living
																									room</a></li>
																						</ul>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="col-md-3">
																			<a href="#" class="title-submenu">Jewelry &amp;
																				Watches</a>
																			<div class="row">
																				<div class="col-md-12 hover-menu">
																					<div class="menu">
																						<ul>
																							<li><a href="#" class="main-menu">Earings</a></li>
																							<li><a href="#" class="main-menu">Wedding
																									Rings</a></li>
																							<li><a href="#" class="main-menu">Men
																									Watches</a></li>
																						</ul>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="col-md-3">
																			<a href="#" class="title-submenu">Electronics</a>
																			<div class="row">
																				<div class="col-md-12 hover-menu">
																					<div class="menu">
																						<ul>
																							<li><a href="#" class="main-menu">Computer</a></li>
																							<li><a href="#" class="main-menu">Smartphone</a></li>
																							<li><a href="#" class="main-menu">Tablets</a></li>
																							<li><a href="#" class="main-menu">Monitors</a></li>
																						</ul>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</li>
														<li class="">
															<p class="close-menu"></p> <a href="blogPage.do"
															class="clearfix"> <strong>博客</strong> <span
																class="label"></span>
														</a>
														</li>


													</ul>

												</div>
											</div>
										</div>
									</div>
								</nav>
							</div>
						</div>
						<!-- //end Main menu -->

						<div class="bottom3">                        
	                        <div class="signin-w hidden-md hidden-sm hidden-xs">
	                            <ul class="signin-link blank">                            
	                                <li class="log login"><i class="fa fa-lock"></i> <a class="link-lg" href="loginPage.do">登录 </a> or <a href="registerPage.do">注册</a></li>                                
	                            </ul>                       
	                        </div>                  
	                    </div>
					</div>
				</div>

			</div>
		</header>
</body>
</html>