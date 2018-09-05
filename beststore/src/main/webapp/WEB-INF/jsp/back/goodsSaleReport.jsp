<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Best Store店铺管理</title>
<%@ include file="easyuiLink.jsp"%>
</head>
<body style="height: 100%; margin: 0">
<div id="container" style="height: 700px"></div>
<script type="text/javascript" src="${basePath}/js/echarts.min.js"></script>
<script type="text/javascript">
var dom = document.getElementById("container");
var myChart = echarts.init(dom);
option = {
    title : {
        text: '商品销量分布图',
        subtext: '根据实际订单统计数据',
        x:'center'
    },
    tooltip : {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
    },
    legend: {
        x : 'center',
        y : 'bottom',
        data:${keyList}
    },
    toolbox: {
        show : true,
        feature : {
            mark : {show: true},
            dataView : {show: true, readOnly: false},
            magicType : {
                show: true,
                type: ['pie', 'funnel']
            },
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    calculable : true,
    series : [
        {
            name:'销量统计',
            type:'pie',
            radius : [30, 250],
            center : ['50%', '50%'],
            roseType : 'area',
            data:${valueList.toString().replaceAll("=",":")}
        }
    ]
};
myChart.setOption(option, true);
       </script>
</script>
</body>
</html>