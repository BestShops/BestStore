<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>超级后台管理</title>
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
				<td align="right" style="padding:5px 11px">
					欢迎:${sessionScope.superHuman.hname }
					<a href="${basePath }/ManagerLogoutServlet">退出</a>
				</td>
			</tr>
		</table>
		
	</div>
	<div class="easyui-accordion" title="菜单" data-options="region:'west',split:true" style="width:200px;">
		<div title="系统管理" style="text-align: center">
			<a href="#" class="easyui-linkbutton" onclick="addTab(this.innerText,'manageStorePage.do')" data-options="iconCls:'icon-search'" >店铺管理</a>
			<a href="#" class="easyui-linkbutton" onclick="addTab(this.innerText,'goodsTypeManagePage.do')" data-options="iconCls:'icon-edit'" >商品类别管理</a>  
			<a href="#" class="easyui-linkbutton" onclick="addTab(this.innerText,'goodsExaminePage.do')" data-options="iconCls:'icon-reload'" >商品审核</a>  
			<a href="#" class="easyui-linkbutton" onclick="addTab(this.innerText,'blogExaminePage.do')" data-options="iconCls:'icon-reload'" >博客审核</a>
			<a href="#" class="easyui-linkbutton" onclick="addTab(this.innerText,'ordersManagePage.do')" data-options="iconCls:'icon-search'" >订单管理</a>
			<!-- <a href="#" class="easyui-linkbutton" onclick="addTab(this.innerText,'userfeedback.do')" data-options="iconCls:'icon-man'" >用户反馈</a> -->
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
