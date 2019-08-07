<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@taglib uri="http://gx.edu/dTags" prefix="d"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css" />
<%-- <link href="${pageContext.request.contextPath}/resources/css/select.css" rel="stylesheet" type="text/css" /> --%>

<!-- 引入时间的css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/calendar.css" />

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/select-ui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/editor/kindeditor.js"></script>

   <script type="text/javascript">
     //表单提交验证
	function validate(){
	   var question=document.getElementById("question").value;
	   var up_id=document.getElementById("up_id").value;
	   var op_a=document.getElementById("op_a").value;
	   var op_b=document.getElementById("op_b").value;
	   var op_c=document.getElementById("op_c").value;
	   var op_d=document.getElementById("op_d").value;
	   var parse=document.getElementById("parse").value;
	   if(question==""){
		   alert("请输入题目的问题");
		   return false;
	   }if(up_id==""){
		   alert("请选择对应的视频");
		   return false;
	   }if(op_a==""){
		   alert("请输入选项A");
		   return false;
	   }if(op_b==""){
		   alert("请输入选项B");
		   return false;
	   }if(op_c==""){
		   alert("请输入选项C");
		   return false;
	   }if(op_d==""){
		   alert("请输入选项D");
		   return false;
	   }if(parse==""){
		   alert("答案的解析");
		   return false;
	   }if(question!=""&&up_id!=""&&op_a!=""&&op_b!=""&&op_c!=""&&op_d!=""&&parse!=""){
		   alert("恭喜添加题库成功！！！");
		   return true;
	   }
	   
	}
    </script>
     <!--  显示解析答案 -->
   <script type="text/javascript">
   $(document).ready(function(){
       //写jquery代码
       $("#lookAnswer").click(function(){
    	   $(".lookParse").css('display','block');
       });
   });
    </script>
</head>
<body>
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">题库管理</a></li>
    <li><a href="#">题目测试</a></li>
    <li><b style="color:red">${stu_num}</b>，欢迎您登录</li>
    </ul>
    </div>
    <div class="formbody">
    <div id="usual1" class="usual"> 
    <div class="itab">
  	<ul> 
    <li><a href="#tab1" class="selected">测试结果</a></li> 
  	</ul>
    </div> 
  	<div id="tab1" class="tabson">
  	   <h1 style="text-align:center;color:green;font-size:25pt;">本次测试信息</h1>
	   <p style="font-size:20pt;">您答对了   ${options}  个题目</P>
	   <p style="font-size:20pt;">您答错了了  ${5-options}个题目</P>
	   <h1 style="color:red;font-size: 20pt;margin-left:10px;">本次测试您得了： ${options*20}   分请继续加油</h1>
  	   <c:forEach items="${optionsAnswer}" var="item" >
		    <table class="tablelist">
		    	<thead>
		    	<tr>
		        <th colspan="4">${item.question}</th> 
		        </tr>
		        </thead>
		        <tbody>
		        <!-- 以下数据应从数据表遍历而得 -->
						<tr id="1">
							<td >
							<%-- <input type="text" name="op_answer" id="op_answer"  value="${item.op_answer}" /> --%>
							<%-- <input type="hidden" name="up_id" id="up_id"  value="${item.up_id}" />
							<input name="op_answer"   type="radio" value="A"   ${option0 eq 'A'?'checked="checked"':''} />
							${item.op_a}
							</td>
							<td >
							<input name="op_answer"    type="radio" value="B"  ${option0 eq 'B'?'checked="checked"':''}/> 
							${item.op_b}
							</td>
							<td >
							<input name="op_answer"   type="radio" value="C"  ${item.op_answer eq 'C'?'checked="checked"':''}/>
							 ${item.op_c}
							</td>
							<td >
							<input name="option"    type="radio" value="D"  ${item.op_answer eq 'D'?'checked="checked"':''}/>
							${item.op_d}
							</td> --%>
						</tr>
						<tr>
							<td class="lookParse">答案选项：${item.op_answer}</td>
							<td class="lookParse">解析:${item.parse}</td>
						</tr>
		        </tbody>
		    </table>
       </c:forEach>
       <input type="button" class="scbtn" value="返回" onClick="history.go(-1);">
    </div> 
	</div> 
    </div>
</body>
</html>