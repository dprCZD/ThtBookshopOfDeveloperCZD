<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>用户登录</title>
<meta name="keywords" content="yhwl" />
<meta name="description" content="" />
<link href="${pageContext.request.contextPath}/default.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!-- start header -->
<div id="header">
	<div id="menu">
		<ul>
			<li class="current_page_item"><a href="/index">Homepage</a></li>
			<li><a href="/java">java</a></li>
			<li><a href="/Cplus">C++</a>\</li>
			<li><a href="/python">python</a></li>
			<li class="last"><a href="/html5">html5</a></li>
			<ul class="rl">
				<li ><a href="/register">注册</a></li>
				<li ><a href="/login">登录</a></li>
				<li ><a href="/personal">个人中心</a></li>
			</ul>
			
		</ul>
	</div>
</div>
<div id="logo">
	<h1><a href="#">程序猿C的电子登录</a></h1>
	<h2> login in to the book store</h2>
</div>
<!-- end header -->
<!-- start page -->
<script type="text/javascript">
	//把表单的action改为2.jsp
	function register() {
		document.form1.action = "/register";
		document.form1.submit();
	
	}
</script>
<div id="page">
	<!-- start content -->
	<div id="content">
		<div class="post">
			<h1 class="title">程序猿信息确认 </h1>
			<form name="form1" method="get"  action="/user/login">
		<table border="0" align="center" height="500px">

			<tr height="50px">
				<td width="200"></td><td height="12" width="200">ID(昵称或邮箱)：<span>*</span></td>
				<td><input type="text" id="address" name="id" maxlength="300"></td>
				<td id="17" style="color:springgreen" width="20"></td>
				<td id="18" style="color:red" width="200">
				<c:if test="${error==-1 }">×该用户不存在</c:if>
				<c:if test="${error==-3 }">×该用户已被封禁</c:if>
				</td>
			</tr >
			<tr height="50px">
				<td width="200"></td><td height="12" width="200" >请输入密码：<span>*</span></td>
				<td height="12"><input id="password" name="password"  type="password" maxlength="30"></td>
				<td id="3" style="color:springgreen" width="20"></td><td id="4" style="color:red" width="200">
				<c:if test="${error==-2 }">×密码错误</c:if></td>
				</td>
			</tr>
			<tr height="50px">
				<td width="200"></td><td>
					<div align="right">
						<input id="sub" type="button" name="Submit" onclick="test1()" value="登录">
						<!-- 注册信息提交去哪？？？我在action写了跳转到登陆页面，成功后去index登陆 -->
					</div>
				</td>
				<td><input type="button" value="注册" onclick="register()"> <br></td>
			</tr>
		</table>
</form>
		</div>
	</div>
	<!-- end content -->
	<!-- start sidebar -->
	<div id="sidebar">
		<ul>
			<li id="search">
				<h2>搜索书籍</h2>
				<form method="get" action="/Search">
					<fieldset>
					<input type="text" id="s" name="item" value="" />
					<input type="submit" id="x" value="搜索" />
					</fieldset>
				</form>
			</li>
			<li>
				<h2>学习推荐</h2>
				<ul>
					<li><a href="https://blog.csdn.net/qq_31196849/article/details/78529724" target="_blank">数据结构</a></li>
					<li><a href="https://blog.csdn.net/m0_37876745/article/details/78197761?locationNum=8&fps=1" target="_blank">算法的设计与分析</a></li>
					<li><a href="https://blog.csdn.net/z4909801/article/details/77976626" target="_blank">计算机组成原理</a></li>
					<li><a href="http://open.163.com/special/lectureroncomputerscience/" target="_blank">计算机导论</a></li>
					<li><a href="https://blog.csdn.net/q568360447/article/details/73303008" target="_blank">微机系统原理</a></li>
					<li><a href="https://blog.csdn.net/godloveyuxu/article/details/76559323 " target="_blank">汇编语言</a></li>
					<li><a href="https://www.baidu.com/link?url=w38IhIWpcWqnipUyCmCSkvjEj6grRvkxNMvJSGFt2sIDmY9yviK3HFDgGX8PnCPysLPjwhNqhYufqUo4raZW5_&wd=&eqid=d729886b000199bc000000025bdc4731" target="_blank">Spring MVC开发</a></li>
				</ul>
			</li>
			<li>
				<h2>友情链接</h2>
				<ul>
					<li><a href="https://blog.csdn.net/" target="_blank">CSDN博客</a></li>
					<li><a href="https://github.com/" target="_blank">Github</a></li>
					<li><a href="https://google.com/" target="_blank">Google</a></li>
					<li><a href="https://uims.jlu.edu.cn/" target="_blank">吉林大学教务处</a></li>
					<li><a href="https://www.baidu.com/" target="_blank">百度搜索</a></li>
					<li><a href="https://www.taobao.com/" target="_blank">淘宝</a></li>
					<li><a href="http://www.runoob.com/" target="_blank">菜鸟教程</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<!-- end sidebar -->
	<div style="clear: both;">&nbsp;</div>
</div>
<!-- end page -->
<!-- start footer -->
<div id="footer">
	<div id="footer-wrap">
	<p id="legal">(c) 2018 Bookshop. Design by <a href="http://www.yihaowangluo.com/">Mr.C</a>.</p>
	</div>
</div>
<!-- end footer -->
</body>
</html>

<script>
//(function a1(){
//var sub = document.getElementById("sub");
//初始化移入移出事件
//if(sub.addEventListener){
//sub.addEventListener("click", test1);
//}else if(sub.attachEvent){
//sub.attachEvent("onClick", test1);
//}
//})();
function test1(){

	var password = document.getElementById("password");
	var address = document.getElementById("address");
//var re = /^[0-9]+.?[0-9]*$/; //判断字符串是否为数字,//若判断正整数，则后边是：/^[1-9]+[0-9]*]*$/
 if(address.value==null||address.value=="")
{

	document.getElementById("17").innerHTML="";
	document.getElementById("18").innerHTML="×请输入用户名";address.focus();}
else if(address.value!=null)
{
	document.getElementById("17").innerHTML="";
	document.getElementById("18").innerHTML="";address.focus();
}
	
if(password.value==null||password.value=="")
{

	document.getElementById("3").innerHTML="";
	document.getElementById("4").innerHTML="×请输入密码";password.focus();}
else if(password.value!=null||password.value=="")
{

	document.getElementById("3").innerHTML="";
	document.getElementById("4").innerHTML="";password.focus();}
if(address.value!=null&&address.value!=""&&password.value!=""&&password.value!=null)
document.forms["form1"].submit();
}
	
</script>