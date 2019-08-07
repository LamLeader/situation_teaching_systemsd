<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="cn.st.entity.*"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>鲁东大学英语教研室/情景英语平台</title>
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
<link href="${resourcePath}/css/styles2.css" rel="stylesheet">
<link rel="shortcut icon" href="./favicon.ico">



<style>
        * {
            margin: 0;
            padding: 0
        }
        .box {
            width: 500px;
            height: 300px;
            border: 1px solid #ccc;
            margin: 100px auto;
            padding: 5px;
 
        }
        .inner{
            width: 500px;
            height: 300px;
            position: relative;
            overflow: hidden;
        }
        .inner img{
            width: 500px;
            height: 300px;
            vertical-align: top
        }
       .inner ul {
            width: 1000%;
            position: absolute;
            list-style: none;
            left:0;
            top: 0;
        }
        .inner li{
            float: left;
 
        }
 
       .inner ol {
            position: absolute;
            height: 20px;
            right: 20px;
            bottom: 20px;
            text-align: center;
            padding: 5px;
        }
       .inner ol li{
            display: inline-block;
            width: 20px;
            height: 20px;
            line-height: 20px;
            background-color: #fff;
            margin: 5px;
            cursor: pointer;
 
        }
      .inner  ol .current{
            background-color: red;
        }
       .inner #arr{
            display: none;
        }
       .inner #arr span{
            width: 40px;
            height: 40px;
            position: absolute;
            left: 5px;
            top: 50%;
            margin-top: -20px;
            background: #fff;
            cursor: pointer;
            line-height: 40px;
            text-align: center;
            font-weight: bold;
            font-family: '黑体';
            font-size: 30px;
            color: #000;
            opacity: 0.5;
            border: 1px solid #fff;
        }
       .inner #arr #right {
            right: -5px;
            left: 53%;
        }
    </style>
</head>
<body>
<div class="t-line"></div>
<div class="header" style="">
  <div class="tools clearfix" style="width:100%;background-color:#5cacee;">
      <p class="welcome">
         <img alt="" src="${resourcePath}/images/slogo.jpg" height="72" width="72px;"
          style="position:absolute;left:178px;top:-15px; border-radius:80px;border:1px solid white;"/>
       </p>
       <h1  style="position:absolute;left:20%;top:-15px; font-size:21pt;color:white;">鲁 东 大 学 英 语 在 线 学 习 平 台</h1>
       <h4  style="position:absolute;left:20%;top:5px; font-size:10pt;color:white;">LU &nbsp;DONG  &nbsp;DA XUE&nbsp; &nbsp;YING&nbsp;&nbsp;&nbsp;YU&nbsp;&nbsp;&nbsp; ZAI&nbsp;&nbsp;XIAN &nbsp;&nbsp;XUE&nbsp;&nbsp;XI&nbsp; &nbsp;PING&nbsp;&nbsp;TAI</h4>
      <div class="usearea">
        <a href="login_users.jsp">我要登录</a>
        <a href="javascript:;">设为首页</a>
      </div>
  </div>
  <div class="nav-bg" style="margin-top:-18px;position: fixed;">
    <ul class="nav">
      <li style="margin-left:100px;font-size:12pt;"><a class="active" href="javascript:;">学院首页</a></li>
	  <li style="margin-left:56px;font-size:12pt;"><a href="#projectIntroduction">平台介绍</a></li>
      <li style="margin-left:56px;font-size:12pt;"><a href="${ctx}/yiZhuanDetails/teachersDetails">教师风采</a></li>
      <li style="margin-left:56px;font-size:12pt;"><a href="${ctx}/yiZhuanDetails/videoAppreciation">情景教学欣赏</a></li>
     <!--  <li style="margin-left:45px;font-size:12pt;"><a href="javascript:;">在线题库</a></li> -->
      <li style="margin-left:56px;font-size:12pt;"><a href="${ctx}/yiZhuanDetails/dataDowload">下载专区</a></li>
    </ul>
  </div>
</div>
<div class="warp" style="margin-top:-17px;">
   <div class="banner" style="margin-top:-10px;">
    <div class="change-box">
      <div class="img-box ads-one active"><img alt="" src="${resourcePath}/images/banner.jpg" width="100%" /></div>
      <div class="img-box ads-two"><img alt="" src="${resourcePath}/images/ld1.jpg" width="100%"/></div>
      <div class="img-box ads-three"><img alt="" src="${resourcePath}/images/ld3.jpg" width="100%" /></div>
    </div>
    <ul class="changebtn clearfix">
      <li><a class="banbtn active" href="javascript:;"></a></li>
      <li><a class="banbtn" href="javascript:;"></a></li>
      <li><a class="banbtn" href="javascript:;"></a></li>
    </ul>
  </div>
  <div class="news-moudle clearfix">
     <div class="news-pic mr15" id="box" >
     <!--  <div class="box" > -->
        <div class="inner">
	       <ul >  
	        <li class="act"><img src="${resourcePath}/images/21.jpg" width="324" height="191" /></li>
	        <li  class="act"><img src="${resourcePath}/images/22.jpg" width="324" height="191" /></li>
	        <li  class="act"><img src="${resourcePath}/images/24.jpg" width="324" height="191" /></li>
	      </ul>
	      <ol class="bar">
        </ol>
        <!--左右焦点-->
        <div id="arr">
                    <span id="left">
                        <
                    </span>
                   <span id="right">
                        >
                   </span>
        </div>
      </div>
    </div>
    
    <div class="news-info mr15">
      <div class="title">公告栏</div>
      <div style="position:relative;left:278px;top:-26px;"><a href="${ctx}/yiZhuanDetails/noticeDtails">更多公告</a></div>
      <ul style="margin-top:-6px;margin-left:0px;">
        <c:forEach items="${InitNotice}" var="item"> 
        <li style="margin-top:0px;margin-left:8px;">
            <a href="${ctx}/yiZhuanDetails/findNoticeById/${item.notice_id}">${item.notice_tiltle}<img src="${resourcePath}/images/hot.gif" /><P style="position:relative;left:240px;top:-25px;">${item.create_time}</P></a>
        </li>
       </c:forEach>
      </ul>
    </div>
    <div class="news-info">
	 <div class="quick-box">
      <div class="title">快速通道</div>
	  <ul class="quick">
          <li style="float:left;border:1px solid #F4F4F4;width:120px;height:100%; margin-left:10px;">
                <a class="cc7e1f0" href="login_users.jsp">
                    <img src="${resourcePath}/images/jiaowuguanlixitong.png" style="width:56%;"/>
                </a>
          </li>
          <li style="float:left;border:1px solid #F4F4F4;width:130px;height:73px;margin-left:14px;">
          <a class="c96c4e6" href="${ctx}/yiZhuanDetails/videoAppreciation">
                             <img src="${resourcePath}/images/shipinxuexi.png" style="width:130px;height:73px;"/>
          </a>
          <li style="float:left;border:1px solid #F4F4F4;width:130px;height:73px;margin-left:14px;">
          <a class="c96c4e6" href="${ctx}/yiZhuanDetails/videoAppreciation">
                             <img src="${resourcePath}/images/timg.jpg" style="width:130px;height:73px;"/>
          </a>
        </ul>
     </div>
	 </div>
  </div>
  <div class="clearfix">
    <div class="left">
      <div class="title" >平台介绍</div>
      <div class="bbs-img">
        <img src="${resourcePath}/images/banner.jpg" width="100%" />
      </div>
      <div class="bbs">
        <a name="projectIntroduction">本平台旨在实现英语情景系统，通过该系统，减轻教务人员的工作负担，提高教学质量，提高教学资源利用率，实现测试标准化，建立教学资源库，形成特色英语考试、学习、辅导平台。
        </a>
      </div>
    </div>
    <div class="right">
      
  </div>
  <div class="show-box" style="height:280px;">
<!-- 	<h3 >热点视频</h3> -->
    <div class="box-list" style="width:68%;height:268px;">
      <ul style="width:100%;height:260px;float:left;">
         <c:forEach items="${InitVedios}" var="item"> 
         <li style="height:138px;width:220px;float:left;margin-left:2px;">
            <video width="100%" height="130px"  controls="controls"  ><!-- autoplay="autoplay" -->
		             <source src="${item.picture_path}" type="video/mp4">
            </video>
         <%--  <p>视频标题:${item.title}</P>  --%>
        </li>
         </c:forEach>
      </ul>
    </div>
  </div>
  <div class="show-box"  style="height:260px;">
    <div class="title">名师风采</div>
    <div class="box-list" id="Marquee_x" style="width:60%;height:230px;float:left;">
      <ul class="img-lists clearfix" style="width:60%;height:230px;">
        <li style="width:150px;height:230px;">
          <img alt="" src="${resourcePath}/images/lishuangmiao.jpg" width="100%" height="100%" />
          <a href="${ctx}/yiZhuanDetails/teachersDetails1" class="">教师1</a>
		  <p>简介:独特的教学方法</P>
        </li>
        <li style="width:150px;height:230px;">
          <img alt="" src="${resourcePath}/images/luojing.jpg" width="100%" height="100%"/>
          <a href="${ctx}/yiZhuanDetails/teachersDetails2" class="">教师2</a>
		  <p>简介:是学习让我变得快乐</P>
        </li>
        <li style="width:150px;height:230px;">
          <img alt="" src="${resourcePath}/images/huanglinqing.jpg" width="100%" height="100%"/>
          <a href="${ctx}/yiZhuanDetails/teachersDetails3" class="">教师3</a>
		  <p>简介:与学生打成一片</P>
        </li>
        <li style="width:150px;height:230px;">
          <img alt="" src="${resourcePath}/images/daigenghua.jpg" width="100%" height="100%"/>
          <a href="${ctx}/yiZhuanDetails/teachersDetails4" class="">教师4</a>
		  <p>简介:因才施教</P>
        </li>
        <li style="width:150px;height:230px;">
          <img alt="" src="${resourcePath}/images/liufei.jpg" width="100%" height="100%" />
          <a href="${ctx}/yiZhuanDetails/teachersDetails5" class="">教师5</a>
		  <p>简介:独特的教学方法</P>
        </li>
        <li style="width:150px;height:230px;">
          <img alt="" src="${resourcePath}/images/wangqun.jpg" width="100%" height="100%"/>
          <a href="${ctx}/yiZhuanDetails/teachersDetails6" class="">教师6</a>
		  <p>简介:是学习让我变得快乐</P>
        </li>
        <li style="width:150px;height:230px;">
          <img alt="" src="${resourcePath}/images/yurong.jpg" width="100%" height="100%"/>
          <a href="${ctx}/yiZhuanDetails/teachersDetails7" class="">教师7</a>
		  <p>简介:与学生打成一片</P>
        </li>
        <li style="width:150px;height:230px;">
          <img alt="" src="${resourcePath}/images/zhangyanlin.jpg" width="100%" height="100%"/>
          <a href="${ctx}/yiZhuanDetails/teachersDetails1" class="">教师8</a>
		  <p>简介:因才施教</P>
        </li>
        <li style="width:150px;height:230px;">
          <img alt="" src="${resourcePath}/images/zhoujuanjuan.jpg" width="100%" height="100%"/>
          <a href="${ctx}/yiZhuanDetails/teachersDetails2" class="">教师9</a>
		  <p>简介:与学生打成一片</P>
        </li>
        <li style="width:150px;height:230px;">
          <img alt="" src="${resourcePath}/images/zhusiming.jpg" width="100%" height="100%"/>
          <a href="${ctx}/yiZhuanDetails/teachersDetails3" class="">教师10</a>
		  <p>简介:因才施教</P>
        </li>
      </ul>
    </div>
	<div class="news-info" style="width:39%;height:230px;float:left;">
      <div class="title">留言信息</div>
      <div style="position:relative;left:340px;top:-26px;"><a href="${ctx}/yiZhuanDetails/leaveMsg">更多留言</a></div>
      <ul style="margin-top:-6px;margin-left:0px;">
       <c:forEach items="${InitComments}" var="item"> 
        <li style="margin-top:0px;margin-left:8px;">
            <a href="${ctx}/yiZhuanDetails/showMsgDetails/${item.c_id}" >${item.c_title}<img src="${resourcePath}/images/hot.gif" />
           <P style="position:relative;left:263px;top:-20px;">${item.ceateTime}</P>
           </a>
        </li>
       </c:forEach>
      </ul>
    </div>
  </div>
</div>
<div class="footer-bg">
  <div class="footer wc1000">
    <ul class="flink">
      <li>
        <a class="tit" href="javascript:;">友情链接: </a>
      </li>
      <li>
        <a href="#">友情链接</a>
      </li>
      <li>
        <a href="#">友情链接</a>
      </li>
      <li>
        <a href="#">友情链接</a>
      </li>
      <li>
        <a href="#">友情链接</a>
      </li>
      <li>
        <a href="#">友情链接</a>
      </li>
      <li>
        <a href="#">友情链接</a>
      </li>
      <li>
        <a href="#">友情链接</a>
      </li>
      <li>
        <a href="#">友情链接</a>
      </li>
      <li>
        <a href="#">友情链接</a>
      </li>
    </ul>
    <p class="mt15">    Copyright	© 2019  鲁大英语教研室/在线英语平台 版权所有  查新联系电话：028-666666  查收查引联系电话：028-666666</p>
    <a href="javascript:;" class="flogo"><img src="${resourcePath}/images/slogo.jpg" alt="鲁大英语教研室/情景英语平台"/></a>
  </div>
</div>
</div>
<script type="text/javascript" src="${resourcePath}/js/jquery.min.js"></script>
<script src="${resourcePath}/js/jquery.kxbdmarquee.js"></script>
<script type="text/javascript">
$(function(){
    $('#Marquee_x').kxbdMarquee({ 'direction':'left','isEqual':'true','loop':0 });
    $('#Marquee_xx').kxbdMarquee({ 'direction':'left','isEqual':'true','loop':0 });
    $('#Marquee_xxx').kxbdMarquee({ 'direction':'left','isEqual':'true','loop':0 });
});
var changeBox = $(".change-box"),
    imgBox = $(".img-box"),
    changeBtn = $(".changebtn"),
    banBtn = $(".banbtn"),
    picBox = $('.pic-box li'),
    picBoxPagenum = $('.pic-box-pagenum span'),
    speed = 4000;
// 定时器
var timeout = setInterval(autorun,speed);
// banner 滚动逻辑
function run(index){
      imgBox.removeClass('active').eq(index).addClass('active');
      banBtn.removeClass('active').eq(index).addClass('active');
      clearInterval(timeout);
      timeout = setInterval(autorun,speed);
}
function autorun(){
  var _indexDiv = changeBox.find('.active').index(),
      _indexBtn = changeBtn.find('.active').index(),
      _lenDiv = imgBox.length,
      _lenBtn = banBtn.length,
      autoindex = _indexDiv+1;
  autoindex = autoindex > 2? 0 : autoindex;
  imgBox.removeClass('active').eq(autoindex).addClass('active');
  banBtn.removeClass('active').eq(autoindex).addClass('active');
}
// 点击切换
banBtn.each(function(){
  $(this).on("click",function(){
    var index = banBtn.index();
    run(index);
  });
});

// 新闻区域图文切换
picBoxPagenum.each(function(){
  $(this).on('click',function(){
    $(this).siblings('span').removeClass('act');
    $(this).addClass('act');
    var index = $(this).index();
    $(this).parents('.news-pic').find('.pic-box li').removeClass('act');
    $(this).parents('.news-pic').find('.pic-box li').eq(index).addClass('act');
  });
});

</script>
<!-- 小图片轮播 -->
<script>
    /**
     *
     * @param id  传入元素的id
     * @returns {HTMLElement | null}  返回标签对象，方便获取元素
     */
    function my$(id) {
        return document.getElementById(id);
    }
 
    //获取各元素，方便操作
    var box=my$("box");
    var inner=box.children[0];
    var ulObj=inner.children[0];
    var list=ulObj.children;
    var olObj=inner.children[1];
    var arr=my$("arr");
    var imgWidth=inner.offsetWidth;
    var right=my$("right");
    var pic=0;
    //根据li个数，创建小按钮
    for(var i=0;i<list.length;i++){
        var liObj=document.createElement("li");
 
        olObj.appendChild(liObj);
        liObj.innerText=(i+1);
        liObj.setAttribute("index",i);
 
        //为按钮注册mouseover事件
        liObj.onmouseover=function () {
            //先清除所有按钮的样式
 
            for (var j=0;j<olObj.children.length;j++){
                olObj.children[j].removeAttribute("class");
            }
            this.className="current";
            pic=this.getAttribute("index");
            animate(ulObj,-pic*imgWidth);
        }
 
    }
 
 
    //设置ol中第一个li有背景颜色
    olObj.children[0].className = "current";
    //克隆一个ul中第一个li,加入到ul中的最后=====克隆
    ulObj.appendChild(ulObj.children[0].cloneNode(true));
 
    var timeId=setInterval(onmouseclickHandle,2000);
    //左右焦点实现点击切换图片功能
    box.onmouseover=function () {
        arr.style.display="block";
        clearInterval(timeId);
    };
    box.onmouseout=function () {
        arr.style.display="none";
        timeId=setInterval(onmouseclickHandle,2000);
    };
 
    right.onclick=onmouseclickHandle;
    function onmouseclickHandle() {
        //如果pic的值是5,恰巧是ul中li的个数-1的值,此时页面显示第六个图片,而用户会认为这是第一个图,
        //所以,如果用户再次点击按钮,用户应该看到第二个图片
        if (pic == list.length - 1) {
            //如何从第6个图,跳转到第一个图
            pic = 0;//先设置pic=0
            ulObj.style.left = 0 + "px";//把ul的位置还原成开始的默认位置
        }
        pic++;//立刻设置pic加1,那么此时用户就会看到第二个图片了
        animate(ulObj, -pic * imgWidth);//pic从0的值加1之后,pic的值是1,然后ul移动出去一个图片
        //如果pic==5说明,此时显示第6个图(内容是第一张图片),第一个小按钮有颜色,
        if (pic == list.length - 1) {
            //第五个按钮颜色干掉
            olObj.children[olObj.children.length - 1].className = "";
            //第一个按钮颜色设置上
            olObj.children[0].className = "current";
        } else {
            //干掉所有的小按钮的背景颜色
            for (var i = 0; i < olObj.children.length; i++) {
                olObj.children[i].removeAttribute("class");
            }
            olObj.children[pic].className = "current";
        }
    }
    left.onclick=function () {
        if (pic==0){
            pic=list.length-1;
            ulObj.style.left=-pic*imgWidth+"px";
        }
        pic--;
        animate(ulObj,-pic*imgWidth);
        for (var i = 0; i < olObj.children.length; i++) {
            olObj.children[i].removeAttribute("class");
        }
        //当前的pic索引对应的按钮设置颜色
        olObj.children[pic].className = "current";
    };
 
    //设置任意的一个元素,移动到指定的目标位置
    function animate(element, target) {
        clearInterval(element.timeId);
        //定时器的id值存储到对象的一个属性中
        element.timeId = setInterval(function () {
            //获取元素的当前的位置,数字类型
            var current = element.offsetLeft;
            //每次移动的距离
            var step = 10;
            step = current < target ? step : -step;
            //当前移动到位置
            current += step;
            if (Math.abs(current - target) > Math.abs(step)) {
                element.style.left = current + "px";
            } else {
                //清理定时器
                clearInterval(element.timeId);
                //直接到达目标
                element.style.left = target + "px";
            }
        }, 10);
    }
</script>
</body>
</html>