<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" href="css/matchStyle.css" rel="stylesheet" />
<title>U袋网</title>
</head>
<body>
<%@ include file="header1_similar.jsp" %>
<form method="get" action="goodsQueryPage.todo" style="margin:20px auto auto auto;font-size: 62.5%;">
	<fieldset id="criteria" style="border:0;margin:1em 0 0;border-top:1px dotted #aaa;">
		<legend><span>身材标准</span></legend>
		<div class="question">
			<label for="price">身高(cm):</label>
			<input type="number" name="height" id="price" value="170" min="140" max="220" size="3" data-units="dollars" />
		</div>
		<div class="question">
			<label for="bedrooms">体重(kg):</label>
			<input type="number" name="weight" id="price" value="55" min="10" max="220" size="3" data-units="dollars" />
		</div>
	</fieldset>
	
	<fieldset id="amenities">
		<legend><span>商品需求</span></legend>	
		<div class="question">
			<label for="water">档次:</label>
			<select name="water" id="water">
				<option value="a">不重要</option>
				<option value="b">比较重要</option>
				<option value="c">很重要</option>
				<option value="d">非常重要</option>
			</select>
		</div>
		
		<div class="question">
			<label for="walking">材质:</label>
			<select name="walking" id="walking">
				<option value="a">不重要</option>
				<option value="b">比较重要</option>
				<option value="c">很重要</option>
				<option value="d">非常重要</option>
			</select>
		</div>
	</fieldset>
	<input type="submit" name="search" id="search" value="智能匹配" />
</form>
<script type="text/javascript" src="js/match/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/match/jquery-ui-1.8.4.custom.min.js"></script>
<script type="text/javascript" src="js/match/jQuery.peSlider.js"></script>
<script type="text/javascript">
$(function(){
		   
	//创建输入滑杆
	$('input#price').peSlider({range: 'min'});
	$('input#bedrooms,input#baths').peSlider({range: 'min'});
	
	//创建选择滑块
	$('select').attr('aria-hidden','true').after('<div class="slider-status" aria-hidden="true"></div>').peSlider({
		slide:function(e,ui){
			$(this).next().next().text($(this).find('a:eq(0)').attr('aria-valuetext'));
		}
	}).each(function(){
		$(this).next().text($(this).prev().find('a:eq(0)').attr('aria-valuetext'));
	});
	
	//添加选择的标签
	$('<div class="sliders-labels" aria-hidden="true"><span class="label-first">'+ $('#subway option:first').text() +'</span><span class="label-last">'+ $('#subway option:last').text() +'</span></div>').insertAfter('#amenities legend');
	
});
</script>

</body>
</html>