<%@page import="bean.Node"%>
<%@page import="bean.SimpleNode"%>
<%@page import="bean.SimplePath"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
	+ request.getServerName() + ":" + request.getServerPort()
	+ path + "/";
	SimplePath simplePath = (SimplePath)request.getAttribute("simplePath");
	ArrayList<Node> simpleNodes = simplePath.getNodes();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type="text/css">
body, html, #allmap {
	width: 100%;
	height: 100%;
	overflow: hidden;
	margin: 0;
	font-family: "微软雅黑";
}
</style>

<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=MRUGgkRGpEtnZEVLUGpGlRNvcujriGlp"></script>
<script type="text/javascript"
	src="http://api.map.baidu.com/library/CurveLine/1.5/src/CurveLine.min.js"></script>
<title>地图展示</title>
</head>
<body>
	<div id="allmap"></div>
</body>
</html>
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap"); // 创建Map实例
	map.centerAndZoom(new BMap.Point(
<%=simpleNodes.get(0).getLongitude()%>
	,
<%=simpleNodes.get(0).getLatitude()%>
	), 15); // 初始化地图,设置中心点坐标和地图级别
	map.addControl(new BMap.MapTypeControl()); //添加地图类型控件
	map.setCurrentCity("北京"); // 设置地图显示的城市 此项是必须设置的
	map.enableScrollWheelZoom(true); //开启鼠标滚轮缩放
	var pointNum =
<%=simpleNodes.size()%>
	var pathPoints = new Array();
<%for(int i = 0; i<simpleNodes.size(); i++){%>
	pathPoints[
<%=i%>
	] = new BMap.Point(
<%=simpleNodes.get(i).getLongitude()%>
	,
<%=simpleNodes.get(i).getLatitude()%>
	);
<%}%>
	var polyline = new BMap.Polyline(pathPoints, {
		strokeColor : "blue",
		strokeWeight : 6,
		strokeOpacity : 0.5
	});
	map.addOverlay(polyline);
</script>
