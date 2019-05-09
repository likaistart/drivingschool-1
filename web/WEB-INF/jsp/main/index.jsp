<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<!--注释：网站头部-->
<head>
<meta charset="utf-8">
<!--注释：网站标题-->
<title>首页--郑州驾校有限公司</title>
<!--注释：引入网站的样式-->
<link type="text/css" href="${ctx}/bootstrap/css/style.css" rel="stylesheet">
<!--注释：引入网站的特效-->
<script type=" text/javascript" src="${ctx}/bootstrap/js/fwslider.js"></script>
<!--注释：网站头部结束-->
<!--注释：网站主体-->
<body>
	<div class="bgStyle">								<!--注释：设置logo背景颜色-->
		<div class="header">							<!--注释：生成制作logo框的div-->
			<div class="logo">							<!--注释：设置logo的样式-->
				<img src="${ctx}/bootstrap/img/logo.png">				<!--注释：引入logo--><!--修改成自定义logo-->
			</div>
<div class="cssmenu">
<ul>
	<li><a href="${ctx}/Main/toindex.do">首页</a></li>					  <!--“首页”菜单以及链接-->
	<li><a href="about.html">企业简介</a></li>				  <!--“企业简介”菜单以及链接-->
	<li><a href="${ctx}/Notice/tonotice.do">公告</a></li>			  <!--“公告”菜单以及链接-->
	<li><a href="${ctx}/News/tonews.do">新闻</a></li>			  <!--“新闻”菜单以及链接-->
	<li><a href="${ctx}/Login/tologin.do">登入</a></li>			  <!--登入jsp-->
	<li><a href="${ctx}/Student/toadd.do">注册</a></li>			  <!--注册jsp-->
	<li class="last"><a href="contact.html">联系我们</a></li> <!--“联系我们”菜单以及链接-->
</ul>
</div>
			
			
			<!--注释：清除div的浮动-->
			<div class="clear"></div>
		</div>
	</div>
		<!--注释：轮播效果-->
		<div id="fwslider" style="height: 554px;">
		<!--注释：轮播图片-->
			<div class="slider_container">
				<!--注释：引入第1张轮播图片，默认情况下显示-->
				<div class="slide" style="opacity: 1; z-index: 1; display: block;">
					<img src="${ctx}/bootstrap/img/img1.jpg">
				</div>
				<!--注释：引入第2张轮播图片-->
				<div class="slide" style="opacity: 1; z-index: 0; display: none;">
					<img src="${ctx}/bootstrap/img/img2.jpg">
				</div>
				<!--注释：引入第3张轮播图片-->
				<div class="slide" style="opacity: 1; z-index: 0; display: none;">
					<img src="${ctx}/bootstrap/img/img3.jpg">
				</div>
			</div>
			<!--注释：轮播计时-->
			<div class="timers" style="width: 180px;"></div>
			<!--注释：轮播左箭头-->
			<div class="slidePrev" style="left: 0px; top: 252px;">
				<span></span>
			</div>
			<!--注释：轮播右箭头-->
			<div class="slideNext" style="right: 0px; top: 252px; opacity: 0.5;">
				<span></span>
			</div>
		</div>
		<div class="main_bg">
	<!--底部公司广告栏区域-->	
	<div class="business">业务领域 BUSINESS</div>
		<div class="wrap" style="width: 72%">
			<div class="grids">
<!--新书介绍-->
<div class="grid_1">
<a href="http://www.mingribook.com/newbook.php" target="_blank"><img src="${ctx}/bootstrap/img/pic1.png"></a>
</div>
<!--图书介绍-->
<div class="grid_1">
<a href="http://www.mingribook.com/bookjs.php" target="_blank"><img src="${ctx}/bootstrap/img/pic2.png"></a>
</div>
<!--技术支持-->
<div class="grid_1">
<a href="http://www.mingribook.com/downloadzy.php" target="_blank"><img src="${ctx}/bootstrap/img/pic3.png"></a>
</div>
<!--读者之家-->
<div class="grid_1">
<a href="http://www.mingribook.com/mrcz.php" target="_blank"><img src="${ctx}/bootstrap/img/pic4.png"></a>
</div>
<!--学习之路-->
<div class="grid_1">
<a href="http://www.mingribook.com/xxzl.php"target="_blank"><img src="${ctx}/bootstrap/img/pic5.png"></a>
</div>
<div class="clear"></div>
</div>
</div>
</div>
<!--网站统计和公司备案信息-->


<div class="address" style="color: black">
Copyright 2019 郑州驾校有限公司
<br>
<a href="#" style="color: black">郑州驾校有限公司</a>
技术支持 <a href="${ctx}/Login/tologin.do">后台</a>
</div>

</body>
<!--注释：网站主体结束-->
</html>