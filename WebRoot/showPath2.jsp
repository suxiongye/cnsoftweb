<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=MRUGgkRGpEtnZEVLUGpGlRNvcujriGlp"></script>
<script type="text/javascript"
	src="http://api.map.baidu.com/library/CurveLine/1.5/src/CurveLine.min.js"></script>
<base href="<%=basePath%>">

<title>My JSP 'showPath2.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<div id="allmap"></div>
	<br>
</body>
</html>
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("container");
	map.centerAndZoom(new BMap.Point(118.454, 32.955), 6);
	map.enableScrollWheelZoom();
	var beijingPosition = new BMap.Point(116.432045, 39.910683), hangzhouPosition = new BMap.Point(
			120.129721, 30.314429), taiwanPosition = new BMap.Point(121.491121,
			25.127053);
	var points = [ beijingPosition, hangzhouPosition, taiwanPosition ];

	var curve = new BMapLib.CurveLine(points, {
		strokeColor : "blue",
		strokeWeight : 3,
		strokeOpacity : 0.5
	}); //创建弧线对象
	map.addOverlay(curve); //添加到地图中
	curve.enableEditing(); //开启编辑功能
</script>