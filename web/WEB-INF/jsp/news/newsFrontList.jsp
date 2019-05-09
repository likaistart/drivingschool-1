<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<!--注释：头部-->
<head>
<meta charset="UTF-8">
<!--注释：网站标题-->
<title>新闻--郑州有限公司</title>
<!--注释：引入网站的样式-->
<link type="text/css" href="${ctx}/bootstrap/css/style.css" rel="stylesheet">
<!--注释：引入网站的特效-->
<script type=" text/javascript" src="${ctx}/bootstrap/js/fwslider.js"></script>
</head>
<!--注释：头部结束-->

<!--注释：身体-->
<body>
	<div class="bgStyle">
		<div class="header">
			<div class="logo">
				<img src="${ctx}/bootstrap/img/logo.png">
			</div>
			<div class="pull-icon">
				<a id="pull"></a>
			</div>
			<div class="cssmenu">
<ul>
	<li><a href="${ctx}/Main/toindex.do">首页</a></li>					  <!--“首页”菜单以及链接-->
	<li><a href="about.html">企业简介</a></li>				  <!--“企业简介”菜单以及链接-->
	<li><a href="${ctx}/Notice/tonotice.do">公告</a></li>			  <!--“公告”菜单以及链接-->
	<li><a href="${ctx}/News/tonews.do">新闻</a></li>			  <!--“新闻”菜单以及链接-->
	<li><a href="${ctx}/Login/tologin.do">登入</a></li>			  <!--登入jsp-->
	<li><a href="${ctx}/Register/toregister.do">注册</a></li>			  <!--注册jsp-->
	<li class="last"><a href="contact.html">联系我们</a></li> <!--“联系我们”菜单以及链接-->
</ul>
			</div>
			<!--清除浮动-->
			<div class="clear"></div>
		</div>
	</div>

	<div class="second_banner">
		<img src="${ctx}/bootstrap/img/news.jpg">
	</div>

	<div class="container">
		<div class="left">
			<div class="menu_plan">
				<div class="menu_title">
					公司动态<br> <span>news of company</span>
				</div>
				<ul id="tab">
					<li><a href="#">公司新闻</a></li>
				</ul>
			</div>
		</div>

		<div class="right">
			<div class="location">
				<span>当前位置：<a href="javascript:void(0)" id="a"><a
						href="#">公司新闻</a></a></span>
				<div class="brief" id="b">
					<a href="#">公司新闻</a>
				</div>
			</div>
			<div style="font-size: 14px; margin-top: 53px; line-height: 36px;">
				<div id="tab_con">
					<div id="tab_con_2" class="dis-n" style="display: none;">
						<table style="margin-top: 70px; width: 100%">
							<tbody>
								<tr class="tt_bg" style="text-align:center">
									<td>新闻标题</td>
									<td>发布人</td>
									<td>发布时间</td>
									<td>详情</td>
								</tr>
								<%
								out.println("数据服务器出现错误！");
								%>
							</tbody>
						</table>
					</div>

				</div>
			</div>
		</div>
	</div>

	<div class="bottom">
		<div class="footer">
			<div class="address">
				Copyright 2019 郑州驾校有限公司
<br>
<a href="#" style="color: black">郑州驾校有限公司</a>
技术支持 <a href="${ctx}/Login/tologin.do">后台</a>
			</div>
		</div>
	</div>
</body>
</html>