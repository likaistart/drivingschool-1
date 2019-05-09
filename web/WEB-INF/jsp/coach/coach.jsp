<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title></title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />


<!--   <link rel="stylesheet" href="${ctx}/css/roomset/roomset.css" type="text/css"></link> -->
<link rel="stylesheet" href="${ctx}/bootstrap/css/bootstrap.css"
	type="text/css"></link>
<link rel="stylesheet" href="${ctx}/css/page.css" type="text/css"></link>
<link href="${ctx}/bootstrap/css/bootstrap-responsive.css"
	rel="stylesheet">
<!-- start 响应式布局要添加的 -->
<script src="${ctx}/bootstrap/js/jquery-3.1.1.min.js"></script>
<script src="${ctx}/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="${ctx}/js/page.js"></script>
<style>
.container {
	margin-top: 10px;
}

.labelroomnumber {
	position: relative;
	font-size: 17px;
	float: left;
	margin-top: 15px;
}

.textone {
	margin-top: 12px;
}

.rightOne {
	margin-right: 50px;
	font-size: 16px;
}

.table th, .table td {
	text-align: center;
}

.theadone {
	background-color: #CCFF99;
}

.dgvone {
	margin-top: 12px;
}

.roomnumberwidth {
	width: 70%;
}
</style>

</head>


<body>
	<div class="container" style="height: 630px; overflow-x: auto;">
		<div class="span5">
			<div class="row-fluid">
				<label class="labelroomnumber">姓名：</label>
				<form action="${ctx}/RoomSet/tolist.do" method="post"
					style="float: left;">
					<input id="txtnameid" name="txtname"
						class="textone roomnumberwidth"
						style="border-radius: 0px; border-top-left-radius: 4px; border-bottom-left-radius: 4px; height: 26px;"
						type="text" placeholder="请输入关键字" value="${txtname}">
					<div class="input-append">
						<button type="submit" class="btn-success textone"
							style="margin-left: -4px; height: 26px;">
							<li class="icon-search icon-white"></li>搜索
						</button>
					</div>
				</form>
			</div>
		</div>
		
		<div class="span6">
		  <c:if test="${ex==1}">
			<div class="row-fluid">
				<div class="span3">
					<button class="btn btn-info btn-small textone" type="button"
						onclick="addfunction()">
						<li class="icon-plus icon-white"></li>新增
					</button>
				</div>
				<div class="span3">
					<button class="btn btn-warning btn-small textone" type="button"
						onclick="updatefunction()">
						<li class="icon-pencil icon-white"></li>修改
					</button>
				</div>
				<div class="span3">
					<button class="btn btn-danger btn-small textone" type="button"
						onclick="deletefunction()">
						<li class="icon-remove icon-white"></li>删除
					</button>
				</div>
			</div>
		  </c:if>  
		</div>
		<br>
		<div class="dgvone">
			<table class="table table-condensed table-bordered table-striped"
				id="tableid">
				<thead class="theadone">
					<tr>
						<th rowspan="2">选择</th>
						<th rowspan="2">姓名</th>
						<th rowspan="2">教练编号</th>
						<th rowspan="2">证件号码</th>
						<th rowspan="2">电话</th>
						<th rowspan="2">MEMO</th>
					</tr>
				</thead>
				<tbody id="tbody">
					<c:forEach items="${list}" var="item">
						<tr>
							<td><input type="checkbox" name="id" value="${item.id}"></td>
							<td>${item.name}</td>
							<td>${item.coachCard}</td>
							<td>${item.credentNo}</td>
							<td>${item.phone}</td>
							<td>${item.memo}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="span11">
			<div class="row-fluid">
				<div class="tcdPageCode" style="text-align: center;"></div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function addfunction() {
			parent.document.getElementById('Mainid').src = '${ctx}/Student/toadd.do';
		}

		function updatefunction() {
			var chk_value = [];
			$('input[name="id"]:checked').each(function() {
				chk_value.push($(this).val());
			});
			if (chk_value != "") {
				if (chk_value.toString().indexOf(",") > 0) {
					alert("修改只能选择一条");
				} else {
					parent.document.getElementById("Mainid").src = '${ctx}/Student/toupdate.do?id='
							+ chk_value;
				}
			} else {
				alert("请选择一条数据进行修改");
			}
		}

		
		
		function deletefunction() {
			var chk_value = [];
			$('input[name="id"]:checked').each(function() {
				chk_value.push($(this).val());
			});
			if (chk_value != "") {
				var flag = window.confirm("注意：您确定要永久删除该信息吗?");
				if (flag) {
					parent.document.getElementById("Mainid").src = '${ctx}/Student/delete.do?id='
							+ chk_value;
				}
			} else {
				alert("请选择一条或多条数据进行删除");
			}

		}
	</script>
</body>
</html>
