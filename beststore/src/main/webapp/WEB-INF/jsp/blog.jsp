<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta charset="utf-8">
<title>U袋网</title>
<link href="css/blog/style.css" rel="stylesheet" type="text/css">
<link href="css/blog/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/blog/responsive.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
<link href="css/blog/effects/set2.css" rel="stylesheet" type="text/css">
<link href="css/blog/effects/normalize.css" rel="stylesheet"
	type="text/css">
<link href="css/blog/effects/component.css" rel="stylesheet"
	type="text/css">
</head>
<body>
	<header>
		<%@ include file="header1_similar.jsp"%>
	</header>
	<main role="main-home-wrapper" class="container">
	<div class="row">
		<section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 ">
			<article role="pge-title-content">
				<header>
					<h2>
						<span>avana</span> A Brand new Agency.
					</h2>
				</header>
				<p>This is the story of Avana, a minimal Bootstrap template for
					creative agency.</p>
			</article>
		</section>
		<!-- <div class="clearfix"></div> -->
		<c:forEach items="${blogList }" var="c">
			<section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 grid" style="width: 580px;height: 450px;padding-top: 35px;">
				<figure class="effect-oscar">
					<img src="${basePath }/upload/${c.BPHOTO}" width="550px" height="415px"
								class="img-responsive" />
					<figcaption>
						<h2>${c.BTITLE } <br /><span>${c.SNAME }</span></h2>
						<p>${c.BDESC }</p>
						<!-- <a href="works-details.html">View more</a> -->
					</figcaption>		
				</figure>
				<br/>		
			</section>
		</c:forEach>
	</div>
	</main>

	<%@ include file="rightMenu.jsp"%>
	<%@ include file="bottom.jsp"%>

	<script src="js/blog/jquery.min.js" type="text/javascript"></script>
	<script src="js/blog/nav.js" type="text/javascript"></script>
	<script src="js/blog/custom.js" type="text/javascript"></script>
	<script src="js/blog/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/blog/effects/masonry.pkgd.min.js"
		type="text/javascript"></script>
	<script src="js/blog/effects/imagesloaded.js" type="text/javascript"></script>
	<script src="js/blog/effects/classie.js" type="text/javascript"></script>
	<script src="js/blog/effects/AnimOnScroll.js" type="text/javascript"></script>
	<script src="js/blog/effects/modernizr.custom.js"></script>
	<script src="js/blog/html5shiv.js" type="text/javascript"></script>
</body>
</html>