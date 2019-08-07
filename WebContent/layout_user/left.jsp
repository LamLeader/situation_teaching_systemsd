<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<title>左边菜单栏</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active");
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
});	
</script>


</head>

<body style="background:#f0f9fd;">
	<!-- <div class="lefttop"><span></span>通讯录</div> -->
    <dl class="leftmenu"> 
    <dd>
    <c:if test="${stu_num!=null}">
    <div class="title">
    <span><img src="${pageContext.request.contextPath}/resources/images/leftico01.png" /></span>学生管理
    </div>
    	<ul class="menuson">
         <li class="active"><cite></cite><a href="${ctx}/queryMyMsg" target="rightFrame">个人信息</a><i></i></li>
         <li><cite></cite><a href="${ctx}/queryMyMessages" target="rightFrame">我的留言</a><i></i></li>
         <li><cite></cite><a href="${ctx}/vediou_mng/vedio_listsStu" target="rightFrame">视频观看</a><i></i></li>
         <li><cite></cite><a href="${ctx}/recordList?type=2" target="rightFrame">我的做题记录</a><i></i></li>
         <li><cite></cite><a href="${ctx}/dowloadList" target="rightFrame">资料下载</a><i></i></li>
       </ul> 
    </c:if>
    </dd>
    </dl>
</body>
</html>

