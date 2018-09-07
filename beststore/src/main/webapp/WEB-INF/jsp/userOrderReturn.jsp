<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
<link rel="stylesheet" href="css/message.css">
</head>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="js/message.min.js"></script>
<body>
	<%@ include file="header2.jsp" %>
			<div class="pull-right">
				<div class="user-content__box clearfix bgf">
					<div class="title">订单中心-申请退款/退货</div>
					<div class="order-info__box">
						<div class="step-flow-box" style="width: 800px;margin: 0 auto 24px">
							<div class="step-flow__bd">
								<div class="step-flow__li step-flow__li_done">
									<div class="step-flow__state"><i class="iconfont icon-ok"></i></div>
									<p class="step-flow__title-top">买家申请</p>
								</div>
								<div class="step-flow__line step-flow__line_ing">
									<div class="step-flow__process"></div>
								</div>
								<div class="step-flow__li">
									<div class="step-flow__state"><i class="iconfont icon-ok"></i></div>
									<p class="step-flow__title-top">卖家处理</p>
								</div>
								<div class="step-flow__line">
									<div class="step-flow__process"></div>
								</div>
								<div class="step-flow__li">
									<div class="step-flow__state"><i class="iconfont icon-ok"></i></div>
									<p class="step-flow__title-top">完毕</p>
								</div>
							</div>
						</div>
						<hr>
						<div class="return-item__info">
							<div class="img"><img src="upload/${order.gphotopic}" alt="" class="cover"></div>
							<div class="name ep2">${order.sname} &nbsp;&nbsp;${order.gname}</div>
							<div class="num">订单编号：${order.oid}</div>
						</div><br>
						<span style="color:red;">${errorOrderReturn}</span>
						<form action="addOrdersReturn.do?oid=${order.oid}" method="post" class="user-addr__form form-horizontal" role="form" enctype="multipart/form-data">
							<div class="form-group">
								<label class="col-sm-2 control-label">服务类型：</label>
								<div class="col-sm-6">
									<div class="user-form-group return_val c6">
										<c:if test="${errorInfo.orservice==null}">
											<label><input name="orservice" value="0" type="radio"><i class="iconfont icon-radio"></i> 仅退款</label><br>
											<label><input name="orservice" value="1" type="radio"><i class="iconfont icon-radio"></i> 退货退款</label>
										</c:if>
										<c:if test="${errorInfo.orservice==0}">
											<label><input name="orservice" value="0" type="radio" checked><i class="iconfont icon-radio"></i> 仅退款</label><br>
											<label><input name="orservice" value="1" type="radio"><i class="iconfont icon-radio"></i> 退货退款</label>
										</c:if>
										<c:if test="${errorInfo.orservice==1}">
											<label><input name="orservice" value="0" type="radio"><i class="iconfont icon-radio"></i> 仅退款</label><br>
											<label><input name="orservice" value="1" type="radio" checked><i class="iconfont icon-radio"></i> 退货退款</label>
										</c:if>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">货物状态：</label>
								<div class="col-sm-6">
									<div class="user-form-group return_val c6">
										<c:if test="${errorInfo.orstatus==null}">
											<label><input name="orstatus" value="0" type="radio"><i class="iconfont icon-radio"></i> 未收到货</label><br>
											<label><input name="orstatus" value="1" type="radio"><i class="iconfont icon-radio"></i> 已收到货</label>
										</c:if>
										<c:if test="${errorInfo.orstatus==0}">
											<label><input name="orstatus" value="0" type="radio" checked><i class="iconfont icon-radio"></i> 未收到货</label><br>
											<label><input name="orstatus" value="1" type="radio"><i class="iconfont icon-radio"></i> 已收到货</label>
										</c:if>
										<c:if test="${errorInfo.orstatus==1}">
											<label><input name="orstatus" value="0" type="radio"><i class="iconfont icon-radio"></i> 未收到货</label><br>
											<label><input name="orstatus" value="1" type="radio" checked><i class="iconfont icon-radio"></i> 已收到货</label>
										</c:if>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">退款金额：</label>
								<div class="col-sm-6">
									<div class="return_val cr">￥15.0</div>
								</div>
							</div>
							<div class="form-group">
								<label for="cause" class="col-sm-2 control-label">退款原因：</label>
								<div class="col-sm-10">
									<select name="oreason" id="cause">
										<option value="0">请选择</option>
										<option value="1">质量问题</option>
										<option value="2">发错货物</option>
										<option value="3">多拍重拍</option>
										<option value="4">七天无理由退换</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="note" class="col-sm-2 control-label">退款说明：</label>
								<div class="col-sm-6">
									<textarea class="form-control" name="ordesc" rows="3"></textarea>
								</div>
							</div>
							<div class="form-group">
								<label for="note" class="col-sm-2 control-label">退款图片：</label>
								<div class="col-sm-6">
									<input type="file" name="file" id="file"/>
								</div>
								<img id="img"/>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-3">
									<button type="submit" class="but" id="submit">提交</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
	</div>
	<%@ include file="rightMenu.jsp" %>
	<%@ include file="bottom.jsp" %>
	<script type="text/javascript">
		$("#cause").val('${errorInfo.oreason}');
	
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
	        	  	$("#submit").attr("disabled",true);// 将提交按钮锁定，禁止点击
	        	  	$.message({
						message:"只能上传.jpg  .png  .jpeg  .gif类型的文件!",
						type:'warning'
					});
	              	return;  
	          	} else {
	        	 	$("#submit").attr("disabled",false);
	          	}
	      	} else {  
	    	  	$("#submit").attr("disabled",true);
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
	    	  	$("#submit").attr("disabled",true);
	    	  	$.message({
					message:"文件大小不能超过2M",
					type:'warning'
				});  
	          	return;
	      	} else {
	      		$("#submit").attr("disabled",false);
	      	}  
	      
	      	// 预览
	      	var reader = new FileReader();
	        reader.readAsDataURL(target.files[0]);
	        reader.onload = function(e){
	        	$("#img").attr("src",this.result);
	        	$("#img").attr("style","height:200px;width:350px;");
	        }
		});
	</script>
</body>
</html>