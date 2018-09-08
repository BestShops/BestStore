<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/zebra.datepicker.css">
<style type="text/css">
	.upload{
	    padding: 4px 10px;
	    height: 20px;
	    line-height: 20px;
	    position: relative;
	    border: 1px solid #999;
	    text-decoration: none;
	    color: #666;
	}
	.change{
	    position: absolute;
	    overflow: hidden;
	    right: 0;
	    top: 0;
	    opacity: 0;
	}
	.cn{
		display: inline-block;
	    margin-bottom: 0;
	    font-weight: normal;
	    text-align: center;
	    vertical-align: middle;
	    -ms-touch-action: manipulation;
	    touch-action: manipulation;
	    cursor: pointer;
	    background-image: none;
	    border: 1px solid transparent;
	    white-space: nowrap;
	    padding: 6px 12px;
	    font-size: 14px;
	    line-height: 1.42857143;
	    border-radius: 4px;
	    user-select: none;
	}
</style>
<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
<link rel="stylesheet" href="css/message.css">
</head>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="js/message.min.js"></script>
<body>
	<%@ include file="header2.jsp" %>
			<div class="pull-right">
				<div class="user-content__box clearfix bgf">
					<div class="title">账户信息-个人资料</div>
					<div class="port b-r50  pull-left" id="crop-avatar">
						<c:if test="${loginHuman.hphoto == null || loginHuman.hphoto == ''}">
							<img name="hphoto" src="images/icons/default_avt.png" class="cover b-r50">
						</c:if>
						<c:if test="${loginHuman.hphoto != null && loginHuman.hphoto != ''}">
							<img name="hphoto" src="upload/${loginHuman.hphoto}" class="cover b-r50">
						</c:if>
					</div>
					<div style="text-align:right;">
						<form action="humanInfo.do" method="post" style="width:300px;float:left;" enctype="multipart/form-data">
							<div style="width:200px;margin-left:22px">
							<span id="error" style="color:red;margin-right:40px">${error}</span>
							<span id="success" style="color:green;margin-right:40px">${success}</span><br><br>
							<a href="javascript:;" class="upload">修改头像
							    <input class="change" type="file" multiple="multiple" name="file" id="file"/>
							</a><br><br></div>
							<input type="hidden" value="${sessionScope.loginHuman.hid }">
							用户名：<input name="hname" readonly="readonly" value="${sessionScope.loginHuman.hname}" placeholder="请输入您的昵称"><br><br>
							性别：   
							<c:if test="${sessionScope.loginHuman.hsex==null }">
								<input type="radio" name="hsex" value="1" checked>男&nbsp;&nbsp;
								<input type="radio" name="hsex" value="2">女<span>（默认为男性）</span><br><br>
							</c:if>
							<c:if test="${sessionScope.loginHuman.hsex!=null }">
								<c:if test="${sessionScope.loginHuman.hsex==1 }">
									<input type="radio" name="hsex" value="1" checked>男&nbsp;&nbsp;
									<input type="radio" name="hsex" value="2">女<span>（默认为男性）</span><br><br>
								</c:if>
								<c:if test="${sessionScope.loginHuman.hsex==2 }">
									<input type="radio" name="hsex" value="1" >男&nbsp;&nbsp;
									<input type="radio" name="hsex" value="2" checked>女<span>（默认为男性）</span><br><br>
								</c:if>
							</c:if>
							身高(cm)：<input name="height" type="number" min="140" max="220" style="height:23px;width:165px;" value="${loginHuman.height}"><br><br>
							体重(kg)：<input name="hweight" type="number" min="5" max="190" style="height:23px;width:165px;" value="${loginHuman.hweight}"><br><br>
							生日<span style="color:red;">&nbsp;&nbsp;*</span>：<input type="text" class="datepicker" name="time" value="<fmt:formatDate value="${loginHuman.hbirth}" pattern="yyyy-MM-dd" />">
							<br><br>
							身份证号码<span style="color:red;">&nbsp;&nbsp;*</span>：<input name="hidcard" value="${loginHuman.hidcard}"><br><br>
							手机号码<span style="color:red;">&nbsp;&nbsp;*</span>：<input name="hphone" value="${loginHuman.hphone}"><br><br>
							邮箱地址<span style="color:red;">&nbsp;&nbsp;*</span>：<input name="hemail" value="${loginHuman.hemail}"><br><br>
							<div style="width:200px;">
								<input type="submit" class="cn" value="确认修改"/>
							</div>
						</form>
					</div>
					<script src="js/zebra.datepicker.min.js"></script>
					<script>
						//对上传文件的类型和大小做出限制
						$("#file").change(function(){
							// 验证文件后缀名
							var imgName = $("#file").val();
							var idx = imgName.lastIndexOf(".");   
					    	if (idx != -1){
					          	var ext = imgName.substr(idx+1).toUpperCase();   
					          	ext = ext.toLowerCase( ); 
					          	console.log(ext);
					          	if (ext != 'jpg' && ext != 'png' && ext != 'jpeg' && ext != 'gif'){
					        	  	$("button.btn.btn-success.btn-block.avatar-save").attr("disabled",true);// 将提交按钮锁定，禁止点击
					        	  	$.message({
										message:"只能上传.jpg  .png  .jpeg  .gif类型的文件!",
										type:'warning'
									});
					              	return;  
					          	} else {
					        	 	$("button.btn.btn-success.btn-block.avatar-save").attr("disabled",false);
					          	}
					      	} else {  
					    	  	$("button.btn.btn-success.btn-block.avatar-save").attr("disabled",true);
					    	  	$.message({
									message:"只能上传.jpg  .png  .jpeg  .gif类型的文件!",
									type:'warning'
								});
						        return;
					      	} 
					      
					    	//检测上传文件的大小        
					      	var isIE = /msie/i.test(navigator.userAgent) && !window.opera;  
					    	var target = document.getElementById("file");
					      	var fileSize = 0;           
					      	if (isIE && !target.files) {       
					          	var filePath = target.value;       
					          	var fileSystem = new ActiveXObject("Scripting.FileSystemObject");          
					          	var file = fileSystem.GetFile (filePath);       
					          	fileSize = file.Size;      
					      	} else {      
					          	fileSize = target.files[0].size;       
					      	}     
	
					      	if(fileSize>(1024 * 1024 * 2)) {    
					    	  	$("button.btn.btn-success.btn-block.avatar-save").attr("disabled",true);
					    	  	$.message({
									message:"文件大小不能超过2M",
									type:'warning'
								});
					          	return;
					      	} else {
					      		$("button.btn.btn-success.btn-block.avatar-save").attr("disabled",false);
					      	}  
					      
					      	// 预览
					      	var reader = new FileReader();
					        reader.readAsDataURL(target.files[0]);
					        reader.onload = function(e){
					        	console.log(this.result);
					        	$("img.cover.b-r50").attr("src",this.result);
					        }
						});
						
						$('input.datepicker').Zebra_DatePicker({// 生日的样式
							default_position: 'below',
							show_clear_date: false,
							show_select_today: false,
						});
						// 设置性别
						var sex = '${loginHuman.hsex}';
						if (sex == 2) {
							$("input[name='sex']:eq(1)").attr("checked", true);
						}
					</script>
				</div>
			</div>
		</section>
	</div>
	<div class="loading" aria-label="Loading" role="img" tabindex="-1"></div>
	<%@ include file="rightMenu.jsp" %>
	<%@ include file="bottom.jsp" %>
</body>
</html>