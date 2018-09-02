<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
	<meta charset="UTF-8">
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
            <div class="comment-show-con-img pull-left"><img src="images/header-img-comment_03.png" alt=""></div>
            <div class="comment-show-con-list pull-left clearfix">
                <div class="pl-text clearfix">
                    <a href="#" class="comment-size-name">张三 : </a>
                    <span class="my-pl-con">&nbsp;来啊 造作啊!</span>
                </div>
				<div class="tm-m-photos">
					<ul class="tm-m-photos-thumb">
						<li data-src="images/a1.png"> <img src="images/a1.png"> <b class="tm-photos-arrow"></b> </li>
						<li data-src="images/a2.png"> <img src="images/a2.png"> <b class="tm-photos-arrow"></b> </li>
						<li data-src="images/a3.png"> <img src="images/a3.png"> <b class="tm-photos-arrow"></b> </li>
						<li data-src="images/a4.png"> <img src="images/a4.png"> <b class="tm-photos-arrow"></b> </li>
					</ul>
					<div class="tm-m-photo-viewer transition1"> 
						<img src="images/a1.png"> 
							<a class="tm-m-photo-viewer-navleft" style="cursor: default;"> <i class="tm-m-photo-viewer-navicon arrow-right">&lt;</i> </a> 
							<a class="tm-m-photo-viewer-navright" data-spm-anchor-id="a220o.1000855.0.0" style="cursor: pointer;"> <i class="tm-m-photo-viewer-navicon arrow-right">&gt;</i> </a> 
					</div>
				</div>
                <div class="date-dz">
                    <span class="date-dz-left pull-left comment-time">2017-5-2 11:11:39</span>
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

<script type="text/javascript" src="js/jquery-1.12.0.min.js"></script>
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