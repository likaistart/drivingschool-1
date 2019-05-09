<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>
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

	
<!--   <link rel="stylesheet" href="${ctx}/css/studentSet/roomset.css" type="text/css"></link> -->
  <link rel="stylesheet" href="${ctx}/bootstrap/css/bootstrap.css" type="text/css"></link>
  <link href="${ctx}/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">  <!-- start 响应式布局要添加的 -->
  <script src="${ctx}/bootstrap/js/jquery-3.1.1.min.js"></script>
  <script src="${ctx}/bootstrap/js/bootstrap.js"></script>
   
   <style>
   
   .container{
     margin-top: 10px;
   }
   
   
   .labelroomnumber{
      position: relative;
      font-size: 17px;
      float: left;
      margin-top: 15px;
    }
    
    .marginrightone{
      margin-right: 33px;
    }
    
    .marginrighttwo{
      margin-right: 16.5px;
    }
    
    .marginrightthree{
      margin-right: 43px;
    }
    
   .textone{
    margin-top:12px;
    }
    
    .inputone{
    width:54.2%;
    float:left;
    }
    
    .inputtwo{
      width:46.8%;
    }
    
    .inputthree{
      width:38%;
    }
    
    .cboone{
      margin-top:10px;
      height: 27px;
    }
    
    .margin-top-one{
      margin-top: -10px;
    }
    
    .margin-top-two{
      margin-top: -20px;
    }
  
    .textwidth{
      width: 138px;
    }
    
    .radiusone{
     margin-left: -4px;
    }
    
    @media(min-width:550px) and (max-width:730px){
      .inputtwo{
      width: 46.2%;
    }
        .inputthree{
      width: 35.%;
    }
    }
    
    
     @media(min-width:431px) and (max-width:550px){
      .inputtwo{
      width: 43.2%;
    }
      .inputthree{
      width: 40%;
    }
    }
    
    @media(min-width:366px) and (max-width:430px){
      .inputtwo{
      width: 40.2%;
    }
      .inputthree{
      width: 33%;
    }
    }
    
     @media(min-width:285px) and (max-width:366px){
      .inputtwo{
      width: 37.2%;
    }
      .inputthree{
      width: 25%;
    }
    }
    
     @media(min-width:237px) and (max-width:285px){
      .inputtwo{
      width: 30%;
    }
      .inputthree{
      width: 20%;
    }
    }
    
    .yansered{
      color:red;
    }
  
  </style>
  
  </head>
  
 
  <body > 
  <div class="container">
  
    <div class="span11" style=" border: solid; border-color: #DDDDDD;">
    <div class="span9 margin-top-one">
      <div class="row-fluid">
        <h3 style="text-align: center;">学员信息修改</h3>
      </div>
    </div>
    
    <form action="${ctx}/Student/toupdateStudent.do" method="post"><!--  onsubmit="return verify()"> -->
	    <div class="span12 margin-top-two">
	      <div class="row-fluid">
		      <div class="span5">
			   	  <label class="labelroomnumber marginrighttwo">学员ID：</label>
			       <input id="userId" name="userId" class="textone inputone"
			       style="height:26px;" type="text" onchange="onchangeOne()">
			       <div id="divOne">
			         <label class="yansered" style="margin-top:18px;">*</label>
			       </div>
			  </div> 
			  <div class="span5">
			   	  <label class="labelroomnumber marginrighttwo">姓名：</label>
			      <input id="userName" name="userName" class="textone inputone"
			       style="height:26px;" type="text"  onchange="onchangeOne()">
			       <div id="divOne">
			         <label class="yansered" style="margin-top:18px;">*</label>
			       </div>
			  </div> 
			  <div class="span5 ">
			   	  <label class="labelroomnumber marginrightone">性别：</label>
			      <select name="sex" class="cboone inputone">
			        <option value="0" selected="selected">女</option>
			        <option value="1" selected="selected">男</option>
		          </select>
			  </div>
			  <div class="span5">
			   	  <label class="labelroomnumber marginrighttwo">注册日期</label>
			      <input id="signTime" name="signTime" class="textone inputone" style="height:26px;" type="date" onblur="onchangeOne()">
			  </div> 
			  <div class="span5">
			   	  <label class="labelroomnumber">科目：</label>
			      <select name="credentID" class="cboone inputone">
			        <option value="0" selected="selected">一</option>
			        <option value="1" selected="selected">二</option>
			        <option value="2" selected="selected">三</option>
			        <option value="3" selected="selected">四</option>
		          </select>
			  </div>
			  <div class="span5">
			   	  <label class="labelroomnumber">手机号：</label>
			      <input id="phone" name="phone" class="textone inputtwo radiusone" onblur="onchangeOne()"
			      style="float:left;border-radius:0px; border-top-right-radius:4px; border-bottom-right-radius:4px; height:26px;" type="text">
			      <div id="divThree">
			         <label class="yansered" style="margin-top:18px;">*</label>
			      </div>
			   </div> 
			   <div class="span5">
			   	  <label class="labelroomnumber" style="margin-right:5px;">教练编号：</label>
			      <input id="coachId" name="coachId" class="textone inputthree radiusone" onblur="onchangeOne()"
			      style="float:left;border-radius:0px; border-top-right-radius:4px; border-bottom-right-radius:4px; height:26px;" type="text">
			  </div> 
			  <div class="span5">
			   	  <label class="labelroomnumber">memo：</label>
			      <input id="memo" name="memo" class="textone inputthree radiusone" onblur="onchangeOne()"
			      style="float:left;border-radius:0px; border-top-right-radius:4px; border-bottom-right-radius:4px; height:26px;" type="text">
			      <div id="divFive">
			         <label class="yansered" style="margin-top:18px;">*</label>
			      </div>
			  </div>
		  </div>
	    </div>
		  <div class="span6" style="text-align:center;">
		      <div class="row-fluid"  style="float:left;">
			      <div class="span12" style="margin-top: 10px;margin-bottom: 8px;">
				   	 <button class="btn btn-primary" type="submit">
				   	 <li class="icon-check icon-white"></li>保存</button>
				  </div> 
				 
			  </div>
	      </div>
      </form>
      <div class="span4" style="text-align:center;">
      <div class="row-fluid">
		   <div class="span4"  style="margin-top: 10px;margin-bottom: 8px;"> 
		   	 <button class="btn btn-warning" type="button" onclick="deletefunction()">
		   	  <li class="icon-remove icon-white"></li>取消</button>
		   </div>
	     </div>
      </div>
       
    </div>
  
 
 
 
 
 <script type="text/javascript">
    var Name=document.getElementById("roomNumberId").value;
  
 
    function verify(){
    
   }
   
    function deletefunction(){
     parent.document.getElementById('Mainid').src='${ctx}/StudentSet/tolist.do';
   }
   
   
   function YZ(value){
   }
   
   
    //验证
   function onchangeOne(){
   }
 </script>
   
  </body>
</html>
