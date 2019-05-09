<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
	<head>
		<title>欢迎使用登封驾校管理系统</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

		<meta name="description" content="概述及统计" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!--basic styles-->

		<link href="${ctx}/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link href="${ctx}/assets/css/bootstrap-responsive.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${ctx}/assets/css/font-awesome.min.css" />

		<!--[if IE 7]>
		  <link rel="stylesheet" href="${ctx}/assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!--page specific plugin styles-->

		<!--fonts-->

		<!--ace styles-->

		<link rel="stylesheet" href="${ctx}/assets/css/ace.min.css" />
		<link rel="stylesheet" href="${ctx}/assets/css/ace-responsive.min.css" />
		<link rel="stylesheet" href="${ctx}/assets/css/ace-skins.min.css" />

		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="${ctx}/assets/css/ace-ie.min.css" />
		<![endif]-->

		<!--inline styles related to this page-->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	

	</head>

	<body>
		<div class="navbar">
			<div class="navbar-inner">
				<div class="container-fluid">
					<a href="#" class="brand">
						<small>
							<i class="icon-leaf"></i>
							欢迎使用登封驾校管理系统
						</small>
					</a><!--/.brand-->

				</div><!--/.container-fluid-->
			</div><!--/.navbar-inner-->
		</div>




		<div class="main-container container-fluid">
			<a class="menu-toggler" id="menu-toggler" href="#">
				<span class="menu-text"></span>
			</a>

			<div class="sidebar" id="sidebar">
				<div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
					</div>

					<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span>

						<span class="btn btn-info"></span>

						<span class="btn btn-warning"></span>

						<span class="btn btn-danger"></span>
					</div>
				</div><!--#sidebar-shortcuts-->

				<ul class="nav nav-list">
					<li>
						<a id="dateViewId" onclick="" class="dropdown-toggle">
						<i class="icon-dashboard"></i>
							<span class="menu-text">用户管理 </span>
							<b class="arrow icon-angle-down"></b>
						</a>
						<ul class="submenu">
							<li>
								<a id="yingYeJinEId" onclick="dateView()">
									<i class="icon-double-angle-right"></i>
									<span>用户基本信息</span>
								</a>
							</li>


						</ul>
					</li>


					<li>
						<a id="studentManageId" onclick="studentManage()" class="dropdown-toggle">
							<i class="icon-home"></i>
							<span class="menu-text">学员管理 </span>

							<b class="arrow icon-angle-down"></b>
						</a>

						<ul class="submenu">
							<li>
								<a id="studentSetId" onclick="studentSet()">
									<i class="icon-double-angle-right"></i>
									<span>学员基本设置</span>
								</a>
							</li>

						</ul>
					</li>
					
					
					
					<li>
						<a id="stayManageId" onclick="stayManage()" class="dropdown-toggle">
							<i class="icon-move"></i>
							<span class="menu-text">教练管理 </span>

							<b class="arrow icon-angle-down"></b>
						</a>

						<ul class="submenu">
							<li>
								<a id="reservationsId" onclick="reservations()">
									<i class="icon-double-angle-right"></i>
									<span>教练基本信息</span>
								</a>
							</li>

						</ul>
					</li>
					
					<li>
						<a id="financeManageId" onclick="financeManage()" class="dropdown-toggle">
							<i class="icon-heart"></i>
							<span class="menu-text">培训管理 </span>

							<b class="arrow icon-angle-down"></b>
						</a>
						
						<ul class="submenu">

							<li>
								<a id="financeStatisticsId" onclick="financeStatistics()">
									<i class="icon-double-angle-right"></i>
									<span>课程信息 </span>
								</a>
							</li>

						</ul>
						
					</li>
					
					<li>
						<a id="passengerManageId" onclick="passengerManage()" class="dropdown-toggle">
							<i class="icon-user"></i>
							<span class="menu-text">考试管理 </span>

							<b class="arrow icon-angle-down"></b>
						</a>
						
						<ul class="submenu">

							<li>
								<a id="passengerInformationId" onclick="passengerInformation()" href="#">
									<i class="icon-double-angle-right"></i>
								<span>考试信息 </span>	
								</a>
							</li>

						</ul>
						
					</li>

					
					
				</ul><!--/.nav-list-->

				<div class="sidebar-collapse" id="sidebar-collapse">
					<i class="icon-double-angle-left"></i>
				</div>
			</div>

			<div class="main-content">
				<div class="breadcrumbs" id="breadcrumbs">
					<ul class="breadcrumb">
						<li>
							<a id="homeButton" href="${ctx}/Main/toindex.do">
							    <i class="icon-home home-icon"></i>
							</a>
							<a id="bigGuide" href="${ctx}/Main/todata.do"></a>

							<span class="divider">
								<i class="icon-angle-right arrow-icon"></i>
							</span>
						</li>
						<li id="smallGuide" class="active"></li>
					</ul><!--.breadcrumb-->
							
					</ul><!--.breadcrumb-->

				</div>

				<div style="width:100%;height:100%;">
				  <iframe id="Mainid" src="${ctx}/Main/todata.do" style="width:100%;height:100%;"  frameBorder="0" scrolling="no"></iframe>
				</div>

	
			</div><!--/.main-content-->
		</div><!--/.main-container-->

		<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-small btn-inverse">
			<i class="icon-double-angle-up icon-only bigger-110"></i>
		</a>

		<!--basic scripts-->

		<!--[if !IE]>-->

		<script src="assets/js/jquery-2.0.3.min.js"></script>
        
		<!--<![endif]-->

		<!--[if IE]>
<script src="assets/js/jquery-1.10.2.min.js"></script>

<![endif]-->

		<!--[if !IE]>-->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='${ctx}/assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!--<![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='${ctx}/assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='${ctx}/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="${ctx}/assets/js/bootstrap.min.js"></script>

		<!--page specific plugin scripts-->

		<!--[if lte IE 8]>
		  <script src="${ctx}/assets/js/excanvas.min.js"></script>
		<![endif]-->

		<script src="${ctx}/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="${ctx}/assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="${ctx}/assets/js/jquery.slimscroll.min.js"></script>
		<script src="${ctx}/assets/js/jquery.easy-pie-chart.min.js"></script>
		<script src="${ctx}/assets/js/jquery.sparkline.min.js"></script>
		<script src="${ctx}/assets/js/flot/jquery.flot.min.js"></script>
		<script src="${ctx}/assets/js/flot/jquery.flot.pie.min.js"></script>
		<script src="${ctx}/assets/js/flot/jquery.flot.resize.min.js"></script>
		
        <script src="/${ctx}/assets/js/ace-extra.min.js"></script>
		

		<!--ace scripts-->

		<script src="${ctx}/assets/js/ace-elements.min.js"></script>
		<script src="${ctx}/assets/js/ace.min.js"></script>

		<!--inline scripts related to this page-->

		<script type="text/javascript">
			$(function() {
				$('.easy-pie-chart.percentage').each(function(){
					var $box = $(this).closest('.infobox');
					var barColor = $(this).data('color') || (!$box.hasClass('infobox-dark') ? $box.css('color') : 'rgba(255,255,255,0.95)');
					var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)' : '#E2E2E2';
					var size = parseInt($(this).data('size')) || 50;
					$(this).easyPieChart({
						barColor: barColor,
						trackColor: trackColor,
						scaleColor: false,
						lineCap: 'butt',
						lineWidth: parseInt(size/10),
						animate: /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase()) ? false : 1000,
						size: size
					});
				})
			
				
			
			
			
			 
			  function drawPieChart(placeholder, data, position) {
			 	  $.plot(placeholder, data, {
					series: {
						pie: {
							show: true,
							tilt:0.8,
							highlight: {
								opacity: 0.25
							},
							stroke: {
								color: '#fff',
								width: 2
							},
							startAngle: 2
						}
					},
					legend: {
						show: true,
						position: position || "ne", 
						labelBoxBorderColor: null,
						margin:[-30,15]
					}
					,
					grid: {
						hoverable: true,
						clickable: true
					}
				 })
			 }
			 drawPieChart(placeholder, data);
			
			 /**
			 we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
			 so that's not needed actually.
			 */
			 placeholder.data('chart', data);
			 placeholder.data('draw', drawPieChart);
			
			
			
			  var $tooltip = $("<div class='tooltip top in hide'><div class='tooltip-inner'></div></div>").appendTo('body');
			  var previousPoint = null;
			
			  placeholder.on('plothover', function (event, pos, item) {
				if(item) {
					if (previousPoint != item.seriesIndex) {
						previousPoint = item.seriesIndex;
						var tip = item.series['label'] + " : " + item.series['percent']+'%';
						$tooltip.show().children(0).text(tip);
					}
					$tooltip.css({top:pos.pageY + 10, left:pos.pageX + 10});
				} else {
					$tooltip.hide();
					previousPoint = null;
				}
				
			 });
			
			
			
			
			
			
				var d1 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.5) {
					d1.push([i, Math.sin(i)]);
				}
			
				var d2 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.5) {
					d2.push([i, Math.cos(i)]);
				}
			
				var d3 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.2) {
					d3.push([i, Math.tan(i)]);
				}
				
			
				var sales_charts = $('#sales-charts').css({'width':'100%' , 'height':'220px'});
				$.plot("#sales-charts", [
					{ label: "Domains", data: d1 },
					{ label: "Hosting", data: d2 },
					{ label: "Services", data: d3 }
				], {
					hoverable: true,
					shadowSize: 0,
					series: {
						lines: { show: true },
						points: { show: true }
					},
					xaxis: {
						tickLength: 0
					},
					yaxis: {
						ticks: 10,
						min: -2,
						max: 2,
						tickDecimals: 3
					},
					grid: {
						backgroundColor: { colors: [ "#fff", "#fff" ] },
						borderWidth: 1,
						borderColor:'#555'
					}
				});
			
			
				$('#recent-box [data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('.tab-content')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
			
			
				$('.dialogs,.comments').slimScroll({
					height: '300px'
			    });
				
				
				//Android's default browser somehow is confused when tapping on label which will lead to dragging the task
				//so disable dragging when clicking on label
				var agent = navigator.userAgent.toLowerCase();
				if("ontouchstart" in document && /applewebkit/.test(agent) && /android/.test(agent))
				  $('#tasks').on('touchstart', function(e){
					var li = $(e.target).closest('#tasks li');
					if(li.length == 0)return;
					var label = li.find('label.inline').get(0);
					if(label == e.target || $.contains(label, e.target)) e.stopImmediatePropagation() ;
				});
			
				$('#tasks').sortable({
					opacity:0.8,
					revert:true,
					forceHelperSize:true,
					placeholder: 'draggable-placeholder',
					forcePlaceholderSize:true,
					tolerance:'pointer',
					stop: function( event, ui ) {//just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
						$(ui.item).css('z-index', 'auto');
					}
					}
				);
				$('#tasks').disableSelection();
				$('#tasks input:checkbox').removeAttr('checked').on('click', function(){
					if(this.checked) $(this).closest('li').addClass('selected');
					else $(this).closest('li').removeClass('selected');
				});
				
			
			})
			
			
			
			
			function dateView(){
			     var a=document.getElementById("dateViewId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("yingYeJinEId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/User/tolist.do';
			}
			
			function passengerManage(){
			    
			}
			
			function passengerInformation(){
			     var a=document.getElementById("passengerManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("passengerInformationId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/Passenger/tolist.do';
			}
			function receiveTarget(){
			     var a=document.getElementById("passengerManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("receiveTargetId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/ReceiveTarget/tolist.do';
			}
			
			function studentManage(){
				var a=document.getElementById("studentManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("studentSetId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/Student/tolist.do';
			}
			function studentSet(){
			     var a=document.getElementById("studentManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("studentSetId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/Student/tolist.do';
			}
			function commoditySet(){
			     var a=document.getElementById("studentManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("commoditySetId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/Commodity/tolist.do';
			}
			
			
			function stayManage(){
			    
			}
			function reservations(){
			     var a=document.getElementById("stayManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("reservationsId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/Coach/tolist.do';
			}
			function personage(){
			     var a=document.getElementById("stayManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("personageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/StayRegister/tolist.do';
			}
			function group(){
			     var a=document.getElementById("stayManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("groupId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			}
			
			
			function financeManage(){
			    
			}
			function financeStatistics(){
			     var a=document.getElementById("financeManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("financeStatisticsId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/FinancialStatistics/tolist.do';
			}
	
			
		</script>
	</body>
</html>
