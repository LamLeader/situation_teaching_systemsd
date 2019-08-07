<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="cn.st.entity.*"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@taglib uri="http://gx.edu/dTags" prefix="d"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>

<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

}); 
</script>
   <script type="text/javascript">
    	     //JS校验form表单信息
    	     function checkData(){
    	     	var fileDir = $("#upfile").val();
    	     	var department = $("#department").val();
    	     	var suffix = fileDir.substr(fileDir.lastIndexOf("."));
    	     	if("" == fileDir){
    	     		alert("选择需要导入的Excel文件！");
    	     		return false;
    	     	}if("" == department){
    	     		alert("选择需要系别！");
    	     		return false;
    	     	}
    	     	if(".xls" != suffix && ".xlsx" != suffix ){
    	     		alert("选择Excel格式的文件导入！");
    	     		return false;
    	     	}
    	     	return true;
    	     }
    	     
    	     //ajax 方式下载文件操作
			 $(document).ready(function(){
        		$('#exportExcel').click(function(){
          			$('#form2').ajaxSubmit({  
          				dataType: 'text',
          				error: errorMsg
          			}); 
					function errorMsg(){ 
						alert("导出excel出错！");    
					}
        		});
    	     });
    </script>
      <!--复选框全选和反选--> 
     <script type="text/javascript">
      //通过对全选框的操作对表单中的复选框进行操作
     /* function OnAllCheck() {
         //通过对全选按钮的状态进行判断
         var bool = $("#reverseSelect").attr("checked");
         if(bool){
             //如果全选按钮是选中的那么就将除全选框外所有的CheckBox选中
             $("input[type='checkbox']:not('#reverseSelect')").attr("checked",true);
         }else{
             //如果全选按钮是选中的那么就将除全选框外所有的CheckBox选中
             $("input[type='checkbox']:not('#reverseSelect')").attr("checked",false);
         }

     } */
     /*------多选删除 ----------*/
   	  function checkeds()
   	  { 
   	    var ids='';
   	    $("input[name='check_all_box']:checkbox").each(function(){ 
   		 if (true == $(this).attr("checked")){ 
   		 ids += $(this).attr('value')+','; 
   	    }
   	   });
   	   if(ids!=''){
   	   if(confirm('确定删除吗 ？')){
   		 $.ajax({  
 	        data:"ids="+ids, 
 	        type:"POST",  
 	        dataType:'json',
 	        url:"${ctx}/deleteStu", 
 	        success:function(data){  
 	      	  if(data.bol==true){
 	        	window.location.href="${ctx}/queryStuInf";
 	          }else{
 	        	window.location.href="${ctx}/queryStuInf";
 	          }
 	        }
 	        }); 
   	   }
   	    }else{
   	    	alert("您没有选择一条数据，请选择！！！"); 
   	    }
   	}
     /*------勾选导出excel数据 ----------*/
  	  function checkedsExport()
  	  { 
  	    var ids='';
  	    $("input[name='check_all_box']:checkbox").each(function(){ 
  		 if (true == $(this).attr("checked")){ 
  		 ids += $(this).attr('value')+','; 
  	    }
  	   });
  	    alert("ids:"+ids);
  	   if(ids!=''){
  	   if(confirm('确定导出吗 ？')){
  		 $.ajax({  
	        data:"ids="+ids, 
	        type:"POST",  
	        dataType:'json',
	        url:"${ctx}/exportExcel", 
	        success:function(data){  
	      	  if(data.bol==true){
	        	window.location.href="${ctx}/exportExcel";
	          }else{
	        	window.location.href="${ctx}/queryStuInf";
	          }
	        }
	        }); 
  	   }
  	    }else{
  	    	alert("您没有选择一条数据，请选择！！！"); 
  	    }
  	}
	</script>
</head>


<body>
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">学生管理</a></li>
    <li><a href="#">学生信息</a></li>
    <li><a href="#">基本内容</a></li>
    <li><b style="color:red"> ${name}</b>，欢迎您登录</li>
    </ul>
    </div>
    <div class="rightinfo">
    <div class="tools">
    	<ul class="toolbar">
	         <li ><span><a href="${ctx}/add"> <img src="${pageContext.request.contextPath}/resources/images/t01.png" /></a></span>添加</li>
        </ul>
     <div style="float:left;width:500px;height:43px;border:1px solid #F4F4F4;border-radius:10px;position:relative;left:0px;top:0px;" >
		 <form method="POST" enctype="multipart/form-data" id="form1" action="uploadStuExcel/uploadStu">
			 <table>
			 	 <tr>
			 	 	<td>导入EXCELL</td>
			 	 	<td> <input id="upfile" type="file" name="upfile"></td>
			 	 	<td>
			 	 	 <select name=department id="department" style="width:120px;border:1px solid gray;border-radius:10px;">
						<option value="" style="sbackground-color:green;">---请选择---</option>
						<option value="数学系" style="sbackground-color:green;">数学系</option>
						<option value="体育系" style="sbackground-color:green;">体育系</option>
						<option value="计科系" style="sbackground-color:green;">计科系</option>
						<option value="外语系" style="sbackground-color:green;">外语系</option>
						<option value="物理系" style="sbackground-color:green;">物理系</option>
						<option value="化学系" style="sbackground-color:green;">化学系</option>
						<option value="生物系" style="sbackground-color:green;">生物系</option>
		             </select>
			 	 	</td>
			 	 	<td>
			 	 	    <input style="width:80px;margin-left:10px;margin-top:4px;" class="scbtn" type="submit" value="学生导入" onclick="return checkData()">
			 	 	</td>
			 	 </tr>
			 </table>
         </form>
         <div style="float:left;width:200px;height:43px;border:1px solid #F4F4F4;border-radius:10px;position:absolute;left:100%;top:0px;" >
		 <form method="POST"  id="form2" action="${ctx}/exportExcel">
			 <table>
			 	 <tr>
			 	 	<td>
			 	 	<input style="width:80px;margin-left:10px;margin-top:4px;" class="scbtn" type="submit" value="学生导出">
			 	 	</td>
			 	 	<td>
			 	 	   <input style="width:80px;margin-left:10px;margin-top:4px;" class="scbtn"id="btnClick"  type="button" onclick="checkeds()"  value='删除' >
			 	 	</td>
			 	 </tr>
			 </table>
         </form>
        </div>  
        </div>  
    </div>
    <form  action="${ctx}/queryStuInf" method="post" id="form">
	<input type="hidden" name="status" value=query />
	<!--  综合查询-->  
    <ul class="seachform" style="float:left;width:340px;height:43px;position:relative;left:20%;top:-40px;" >
	     <li><label>姓名查询</label><input name="stu_name" value="${stu_name}" type="text" class="scinput" /></li>
	    <li><label>&nbsp;</label><input type=submit class="scbtn" value="查询" onclick="queryPage()"/></li>
    </ul>
     <div style="position:fixed;left:0px;top:100px;width:200px;height:30px;">总${page.total}条数据<d:pagination pages="${page}" /></div>
    <table class="tablelist">
    	<thead>
    	<tr>
    	<th>
    	  <input type="checkbox"  id="reverseSelect" onclick="OnAllCheck()" />
    	</th>
        <th>学号</th>
        <th>姓名</th>
        <th>性别</th>
        <th>系别</th>
        <th>班级</th>
        <th>电话</th>
        <th>邮箱</th>
        <th colspan="2">操作<i class="sort"><img src="${pageContext.request.contextPath}/resources/images/px.gif" /></i></th>
        </tr>
        </thead>
        <tbody>
        <!-- 以下数据应从数据表遍历而得 -->
		<c:forEach items="${page.result}" var="item">
				<tr id="1">
				    <td  width="80">
				      <input type="checkbox" name="check_all_box"  id="check_all_box"  value="${item.stu_id}"/>
				    </td>
				    <td width="80">${item.stu_num}</td>
					<td width="80">${item.stu_name}</td>
					<td width="10">${item.gender}</td>
					<td width="80">${item.department}</td>
					<td width="80">${item.classT}</td>
					<td width="80">${item.phone}</td>
					<td width="80">${item.eamil}</td>
				    <td width="20">
					   <a href='${ctx}/update/${item.stu_id}'> 
						  <img src="${resourcePath}/images/edit.gif" border="0">
					   </a>
					</td>
					<td width="20">
					    待用
					</td>
				</tr>
			   </c:forEach>
        </tbody>
    </table>
     </form>	
    </div>
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
