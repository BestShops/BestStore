<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>U袋网</title>
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/comment.css">
	<link rel="stylesheet" type="text/css" href="css/style1.css">
	<script src="js/jquery-1.10.2.js"></script>
	<script src="js/comment.js"></script>
	<!-- 图片放大缩小 -->
	<script type="text/javascript">
		$(function () {
			var obj = new commentMove('.tm-m-photos', '.tm-m-photo-viewer');
	        obj.init()
	    });
	</script>	
</head>
<body>
	<%@ include file="header2.jsp" %>
<!--
    此评论textarea文本框部分使用的https://github.com/alexdunphy/flexText此插件
-->
<div class="commentAll">
    <!--评论展示区域 begin-->
    <div class="comment-show">
        <div class="comment-show-con clearfix">
            <div class="comment-show-con-img pull-left"><img src="upload/${info.hphoto}" alt=""></div>
            <div class="comment-show-con-list pull-left clearfix">
                <div class="pl-text clearfix">
                	<c:if test="${info.DSTATUS==1}">
                		<a href="#" class="comment-size-name">${info.hname}: </a>
                	</c:if>
                   	<c:if test="${info.DSTATUS==2}">
                		<a href="#" class="comment-size-name">${fn:substring(info.hname,0,1)}**: </a>
                	</c:if>
                    <span class="my-pl-con">&nbsp;${info.DEPICT}</span>
                </div>
				<div class="tm-m-photos">
					<c:if test="${info.DPHOTO!=null && info.DPHOTO!=''}">
					<ul class="tm-m-photos-thumb">
					<c:forEach items="${fn:split(info.DPHOTO,',')}" var="photo">
						<li data-src="upload/${photo}"> <img src="upload/${photo}"> <b class="tm-photos-arrow"></b> </li>
					</c:forEach>
					</ul>
					<div class="tm-m-photo-viewer transition1"> 
						<img src="upload/${fn:split(info.DPHOTO,',')[0]}"  style="width:400px;height:250px"> 
							<a class="tm-m-photo-viewer-navleft" style="cursor: default;"> <i class="tm-m-photo-viewer-navicon arrow-right">&lt;</i> </a> 
							<a class="tm-m-photo-viewer-navright" data-spm-anchor-id="a220o.1000855.0.0" style="cursor: pointer;"> <i class="tm-m-photo-viewer-navicon arrow-right">&gt;</i> </a> 
					</div>
					</c:if>
				</div>
                <div class="date-dz">
                    <span class="date-dz-left pull-left comment-time">${info.DTIME}</span>
                    <div class="date-dz-right pull-right comment-pl-block">
                        <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a>
                    </div>
                </div>
                <div class="hf-list-con"></div>
            </div>
        </div>
    </div>
    <!--评论展示区域 end-->
</div>

<%@ include file="rightMenu.jsp" %>
<%@ include file="bottom.jsp" %>

<script type="text/javascript" src="js/jquery.1.12.4.min.js"></script>
<script type="text/javascript" src="js/jquery.flexText.js"></script>

<!--textarea高度自适应-->
<script type="text/javascript">
    $(function () {
        $('.content').flexText();
    });
</script>

<!--textarea限制字数-->
<script type="text/javascript">
    function keyUP(t){
        var len = $(t).val().length;
        if(len > 139){
            $(t).val($(t).val().substring(0,140));
        }
    }
</script>

<!--点赞-->
<script type="text/javascript">
    $('.comment-show').on('click','.date-dz-z',function(){
        var zNum = $(this).find('.z-num').html();
        if($(this).is('.date-dz-z-click')){
            zNum--;
            $(this).removeClass('date-dz-z-click red');
            $(this).find('.z-num').html(zNum);
            $(this).find('.date-dz-z-click-red').removeClass('red');
        }else {
            zNum++;
            $(this).addClass('date-dz-z-click');
            $(this).find('.z-num').html(zNum);
            $(this).find('.date-dz-z-click-red').addClass('red');
        }
    })
</script>
</body>
</html>