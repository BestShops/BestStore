<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Best Store店铺管理</title>
<%@ include file="easyuiLink.jsp" %>
<style type="text/css">
.easyui-linkbutton{
	margin-top: 5px;
	width:90%;
}
</style>
<script>
	function addTab(title,href){
		//判断标签页是否存在
		if($('#tbs').tabs("exists",title)==false){
			//创建显示内容的子框架
			var contentStr;
			if(href){
				contentStr='<iframe scrolling="no" frameborder="0" src="'+href+'" style="width:100%;height:100%;" ></iframe>';
			}else{
				contentStr='无内容';
			}
			//添加标签页
			$('#tbs').tabs("add",{
				title:title,
				closable:true,
				content:contentStr
			});
		}else{
			//选择已经打开的标签页
			$('#tbs').tabs("select",title);
		}
	}
</script>
</head>
<body class="easyui-layout">
	<div data-options="region:'north'" style="overflow: hidden;">
		<table style="width:100%">
			<tr>
				<td width="20px">
					<img alt="Logo" src="${basePath }/easyui/themes/icons/large_chart.png">
				</td>
				<td>
					<h2 style="margin: 1px;color:#333">Best Store</h2>
				</td>
				<td align="right" style="padding:5px 50px;margin-left: -10px;">
					小店:<span style="color:blue">${sessionScope.storeHuman.sname }</span>&nbsp;&nbsp;
					<a href="storeLogout.do">退出</a>
				</td>
			</tr>
		</table>
		
	</div>
	<div class="easyui-accordion" title="菜单" data-options="region:'west',split:true" style="width:200px;">
		<div title="系统管理" style="text-align: center">
			<a href="#" class="easyui-linkbutton" onclick="addTab(this.innerText,'storeInfoPage.do')" data-options="iconCls:'icon-search'" >店铺资料</a>
			<a href="#" class="easyui-linkbutton" onclick="addTab(this.innerText,'goodsManagePage.do')" data-options="iconCls:'icon-search'" >商品管理</a>
			<a href="#" class="easyui-linkbutton" onclick="addTab(this.innerText,'ordersReturnManagePage.do')" data-options="iconCls:'icon-search'" >退货管理</a>
			<a href="#" class="easyui-linkbutton" onclick="addTab(this.innerText,'blogManagePage.do')" data-options="iconCls:'icon-search'" >博客管理</a>  
			<a href="#" class="easyui-linkbutton" onclick="addTab(this.innerText,'goodsSaleReportPage.do')" data-options="iconCls:'icon-search'" >销量图表</a>    
		</div>
	</div>
	<div data-options="region:'south'" style="text-align: center;padding: 3px">
		<span>版权：Best Store</span>
	</div>
	<div id="tbs" class="easyui-tabs" data-options="region:'center',iconCls:'icon-ok'">
		<div title="管理首页">
			<div class="text" style=" text-align:center;padding-top:30px;font-size:50px;padding-left: -30px;">
				<img src="${basePath }/images/temp/S-001-2_b.jpg" width="600px" height="400px;">
			</div>
		</div>
	</div>
</body>
</html>