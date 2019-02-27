<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>欢迎新用户</title>
<meta name="keywords" content="yhwl" />
<meta name="description" content="" />
<link href="/default.css" rel="stylesheet" type="text/css" />
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
	<h1><a href="#">程序猿C的电子书屋</a></h1>
	<h2> welcome to home</h2>
	<table>
		<tr>
			<td width="100px"></td>
			<td>
				<p id="login"><a href="/login" >请登录</a></p>
			</td>
			<td width="150px"></td>
		</tr>
	</table>
	
</div>
<!-- end header -->
<!-- start page -->
<div id="page">
	<!-- start content -->
	<div id="content">
		<div class="post">
			<h1 class="title">获取一个新的程序猿ID </h1>
			<form name="form1" method="post" onsubmit="" action="/user/save">
		<table border="0" align="center" height="500px">
		   	<tr height="50px">
				<td width="200"></td><td height="12" width="200">姓名：<span>*</span></td>
				<td><input type="text" id="name" name="username" maxlength="40"></td>
				<td id="7" style="color:springgreen" width="20"></td><td id="8" style="color:red" width="200"></td>
			</tr>
			
			
			<tr height="50px">
				<td width="200"></td><td height="12" width="200">性别：<span>*</span></td>
				<td>
					<!--<input type="text" id="sex">-->
					<input type="radio" name="sex"  value="1" checked>男
					<input type="radio" name="sex" value="0">女
				</td>
				<td id="9" style="color:springgreen" width="20"></td><td id="10" style="color:red" width="200"></td>
			</tr>
			<tr height="50px">
				<td width="200"></td><td height="12" width="200">昵称：<span>*</span></td>
				<td>
					<input type="text" id="loginname" name="loginname">

				</td>
				<td id="13" style="color:springgreen" width="20"></td><td id="14" style="color:red" width="200"></td>
			</tr>
			<tr height="50px">
				<td width="200"></td><td height="12" width="200" >职业：<span>*</span></td>
				<td><input type="text"  id="occupation" name="job" maxlength="30"></td>
				<td id="15" style="color:springgreen" width="20"></td><td id="16" style="color:red" width="200"></td>
			</tr>
			<tr height="50px">
				<td width="200"></td><td height="12" width="200" name="">电子邮箱：<span>*</span></td>
				<td><input type="text" id="address" name="email" maxlength="300"></td>
				<td id="17" style="color:springgreen" width="20"></td><td id="18" style="color:red" width="200"></td>
			</tr >
			<tr height="50px">
				<td width="200"></td><td height="12" width="200">紧急联系人：<span>*</span></td>
				<td><input type="text"  id="guradian" name="urgentperson" maxlength="30"></td>
				<td id="19" style="color:springgreen" width="20"></td><td id="20" style="color:red" width="200"></td>
			</tr>
			<tr height="50px">
				<td width="200"></td><td height="12" width="200">手机号：<span>*</span></td>
				<td><input type="text" id="pnum" name="phone" maxlength="20"></td>
				<td id="11" style="color:springgreen" width="20"></td><td id="12" style="color:red" width="200"></td>
			</tr>
			<tr height="50px">
				<td width="200"></td><td height="12" width="200" >身份证号：<span>*</span></td>
				<td><input type="text" id="idcard" name="idcard" maxlength="18"></td>
				<td id="1" style="color:springgreen" width="20"></td><td id="2" style="color:red" width="200"></td>
			</tr>
			<tr height="50px">
				<td width="200"></td><td height="12" width="200" >请输入密码：<span>*</span></td>
				<td height="12"><input id="password" name="password"  type="password" maxlength="30"></td>
				<td id="3" style="color:springgreen" width="20"></td><td id="4" style="color:red" width="200"></td>
			</tr>\
			<tr height="50px">
				<td width="200"></td><td height="12" width="200" maxlength="30">请再次输入密码：<span>*</span></td>
				<td height="12"><input id="passwordConfirm" type="password"
					name="passwordConfirm" maxlength="30"></td>
				<td id="5" style="color:springgreen" width="20"></td><td id="6" style="color:red" width="200"></td>
			</tr>

			<tr height="50px">
				<td width="200"></td><td>
					<div align="right">
						<input id="sub" type="button" name="Submit" onclick="test1()" value="注册">
						<!-- 注册信息提交去哪？？？我在action写了跳转到登陆页面，成功后去index登陆 -->
					</div>
				</td>
				<td><input type="reset"> <br></td>
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
(function a1(){
var sub = document.getElementById("sub");
//初始化移入移出事件
if(sub.addEventListener){
sub.addEventListener("click", test1);
}else if(sub.attachEvent){
sub.attachEvent("onClick", test1);
}
})();
function test1(){

	var name = document.getElementById("name");
	var pnum = document.getElementById("pnum");
	var password = document.getElementById("password");
	var passwordConfirm = document.getElementById("passwordConfirm");
	var idcard = document.getElementById("idcard");
	var job= document.getElementById("occupation");
	var address = document.getElementById("address");
	var guradian = document.getElementById("guradian");
//var re = /^[0-9]+.?[0-9]*$/; //判断字符串是否为数字,//若判断正整数，则后边是：/^[1-9]+[0-9]*]*$/
	var re=/^[0-9]{1,10}[0][1-9][0-2][0-9]{1,4}[x,X,0-9]$/;
	var re2=/^[0-9]{1,10}[1][0-2][0-2][0-9]{1,4}[x,X,0-9]$/;
	var re3=/^[0-9]{1,10}[0][1-9][3][0-1][0-9]{1,3}[x,X,0-9]$/;
	var re4=/^[0-9]{1,10}[1][0-2][3][0-1][0-9]{1,3}[x,X,0-9]$/;
	var idc=idcard.value;
	var d=new Date();
	var year=d.getFullYear();
	var month=d.getMonth()+1;
	var day=d.getDate(); 
	var y=idc.substring(6,10);
	var m=idc.substring(10,12);
	var d=idc.substring(12,14);

if(name.value==null||name.value=="")
{
	document.getElementById("7").innerHTML="";
	document.getElementById("8").innerHTML="×不能为空";name.focus();}
else if(job.value==null||job.value=="")
{
	document.getElementById("7").innerHTML="√";
	document.getElementById("8").innerHTML="";
	document.getElementById("9").innerHTML="√";
	document.getElementById("10").innerHTML="";
	document.getElementById("13").innerHTML="√";
	document.getElementById("14").innerHTML="";
	document.getElementById("15").innerHTML="";
	document.getElementById("16").innerHTML="×不能为空";job.focus();}
else if(address.value==null||address.value=="")
{
	document.getElementById("7").innerHTML="√";
	document.getElementById("8").innerHTML="";
	document.getElementById("9").innerHTML="√";
	document.getElementById("10").innerHTML="";
	document.getElementById("13").innerHTML="√";
	document.getElementById("14").innerHTML="";
	document.getElementById("15").innerHTML="√";
	document.getElementById("16").innerHTML="";
	document.getElementById("17").innerHTML="";
	document.getElementById("18").innerHTML="×不能为空";address.focus();}
else if(guradian.value==null||guradian.value=="")
{
	document.getElementById("7").innerHTML="√";
	document.getElementById("8").innerHTML="";
	document.getElementById("9").innerHTML="√";
	document.getElementById("10").innerHTML="";
	document.getElementById("13").innerHTML="√";
	document.getElementById("14").innerHTML="";
	document.getElementById("15").innerHTML="√";
	document.getElementById("16").innerHTML="";
	document.getElementById("17").innerHTML="√";
	document.getElementById("18").innerHTML="";
	document.getElementById("19").innerHTML="";
	document.getElementById("20").innerHTML="×不能为空";guradian.focus();}
else if(pnum.value==null||pnum.value=="")
{
	document.getElementById("7").innerHTML="√";
	document.getElementById("8").innerHTML="";
	document.getElementById("9").innerHTML="√";
	document.getElementById("10").innerHTML="";
	document.getElementById("13").innerHTML="√";
	document.getElementById("14").innerHTML="";
	document.getElementById("15").innerHTML="√";
	document.getElementById("16").innerHTML="";
	document.getElementById("17").innerHTML="√";
	document.getElementById("18").innerHTML="";
	document.getElementById("19").innerHTML="√";
	document.getElementById("20").innerHTML="";
	document.getElementById("11").innerHTML="";
	document.getElementById("12").innerHTML="×不能为空";pnum.focus();}
else if(idcard.value==null||idcard.value=="")
{
	document.getElementById("7").innerHTML="√";
	document.getElementById("8").innerHTML="";
	document.getElementById("9").innerHTML="√";
	document.getElementById("10").innerHTML="";
	document.getElementById("13").innerHTML="√";
	document.getElementById("14").innerHTML="";
	document.getElementById("15").innerHTML="√";
	document.getElementById("16").innerHTML="";
	document.getElementById("17").innerHTML="√";
	document.getElementById("18").innerHTML="";
	document.getElementById("19").innerHTML="√";
	document.getElementById("20").innerHTML="";
	document.getElementById("11").innerHTML="√";
	document.getElementById("12").innerHTML="";
	document.getElementById("1").innerHTML="";
	document.getElementById("2").innerHTML="×不能为空";idcard.focus();}



else if (!re.test(idcard.value)&&!re2.test(idcard.value)&&!re3.test(idcard.value)&&!re4.test(idcard.value))
{
	document.getElementById("7").innerHTML="√";
	document.getElementById("8").innerHTML="";
	document.getElementById("9").innerHTML="√";
	document.getElementById("10").innerHTML="";
	document.getElementById("13").innerHTML="√";
	document.getElementById("14").innerHTML="";
	document.getElementById("15").innerHTML="√";
	document.getElementById("16").innerHTML="";
	document.getElementById("17").innerHTML="√";
	document.getElementById("18").innerHTML="";
	document.getElementById("19").innerHTML="√";
	document.getElementById("20").innerHTML="";
	document.getElementById("11").innerHTML="√";
	document.getElementById("12").innerHTML="";
	 document.getElementById("1").innerHTML="";
	document.getElementById("2").innerHTML="×请输入正确身份证号";
		 idcard.focus();
	 }
else if (idcard.value.length!=18)
{
	document.getElementById("7").innerHTML="√";
	document.getElementById("8").innerHTML="";
	document.getElementById("9").innerHTML="√";
	document.getElementById("10").innerHTML="";
	document.getElementById("13").innerHTML="√";
	document.getElementById("14").innerHTML="";
	document.getElementById("15").innerHTML="√";
	document.getElementById("16").innerHTML="";
	document.getElementById("17").innerHTML="√";
	document.getElementById("18").innerHTML="";
	document.getElementById("19").innerHTML="√";
	document.getElementById("20").innerHTML="";
	document.getElementById("11").innerHTML="√";
	document.getElementById("12").innerHTML="";
	 document.getElementById("1").innerHTML="";
	document.getElementById("2").innerHTML="×请输入正确身份证号";
		 idcard.focus();
	 }

else if(y>year)
{
	document.getElementById("7").innerHTML="√";
	document.getElementById("8").innerHTML="";
	document.getElementById("9").innerHTML="√";
	document.getElementById("10").innerHTML="";
	document.getElementById("13").innerHTML="√";
	document.getElementById("14").innerHTML="";
	document.getElementById("15").innerHTML="√";
	document.getElementById("16").innerHTML="";
	document.getElementById("17").innerHTML="√";
	document.getElementById("18").innerHTML="";
	document.getElementById("19").innerHTML="√";
	document.getElementById("20").innerHTML="";
	document.getElementById("11").innerHTML="√";
	document.getElementById("12").innerHTML="";
	document.getElementById("1").innerHTML="";
	document.getElementById("2").innerHTML="×请输入正确身份证号";
}
else if(y==year&&m>month)
{
	document.getElementById("7").innerHTML="√";
	document.getElementById("8").innerHTML="";
	document.getElementById("9").innerHTML="√";
	document.getElementById("10").innerHTML="";
	document.getElementById("13").innerHTML="√";
	document.getElementById("14").innerHTML="";
	document.getElementById("15").innerHTML="√";
	document.getElementById("16").innerHTML="";
	document.getElementById("17").innerHTML="√";
	document.getElementById("18").innerHTML="";
	document.getElementById("19").innerHTML="√";
	document.getElementById("20").innerHTML="";
	document.getElementById("11").innerHTML="√";
	document.getElementById("12").innerHTML="";
	document.getElementById("1").innerHTML="";
	document.getElementById("2").innerHTML="×请输入正确身份证号";
}
else if(y==year&&m==month&&d>day)
{
	document.getElementById("7").innerHTML="√";
	document.getElementById("8").innerHTML="";
	document.getElementById("9").innerHTML="√";
	document.getElementById("10").innerHTML="";
	document.getElementById("13").innerHTML="√";
	document.getElementById("14").innerHTML="";
	document.getElementById("15").innerHTML="√";
	document.getElementById("16").innerHTML="";
	document.getElementById("17").innerHTML="√";
	document.getElementById("18").innerHTML="";
	document.getElementById("19").innerHTML="√";
	document.getElementById("20").innerHTML="";
	document.getElementById("11").innerHTML="√";
	document.getElementById("12").innerHTML="";
	document.getElementById("1").innerHTML="";
	document.getElementById("2").innerHTML="×请输入正确身份证号";
}
else if(password.value==null||password.value=="")
{
	document.getElementById("7").innerHTML="√";
	document.getElementById("8").innerHTML="";
	document.getElementById("9").innerHTML="√";
	document.getElementById("10").innerHTML="";
	document.getElementById("13").innerHTML="√";
	document.getElementById("14").innerHTML="";
	document.getElementById("15").innerHTML="√";
	document.getElementById("16").innerHTML="";
	document.getElementById("17").innerHTML="√";
	document.getElementById("18").innerHTML="";
	document.getElementById("19").innerHTML="√";
	document.getElementById("20").innerHTML="";
	document.getElementById("11").innerHTML="√";
	document.getElementById("12").innerHTML="";
	document.getElementById("1").innerHTML="√";
	document.getElementById("2").innerHTML="";
	document.getElementById("3").innerHTML="";
	document.getElementById("4").innerHTML="×不能为空";password.focus();}
else if(passwordConfirm.value==null||passwordConfirm.value=="")
{
	document.getElementById("7").innerHTML="√";
	document.getElementById("8").innerHTML="";
	document.getElementById("9").innerHTML="√";
	document.getElementById("10").innerHTML="";
	document.getElementById("13").innerHTML="√";
	document.getElementById("14").innerHTML="";
	document.getElementById("15").innerHTML="√";
	document.getElementById("16").innerHTML="";
	document.getElementById("17").innerHTML="√";
	document.getElementById("18").innerHTML="";
	document.getElementById("19").innerHTML="√";
	document.getElementById("20").innerHTML="";
	document.getElementById("11").innerHTML="√";
	document.getElementById("12").innerHTML="";
	document.getElementById("1").innerHTML="√";
	document.getElementById("2").innerHTML="";
	document.getElementById("3").innerHTML="√";
	document.getElementById("4").innerHTML="";
	document.getElementById("5").innerHTML="";
	document.getElementById("6").innerHTML="×不能为空";password.focus();}
 else if(password.value != passwordConfirm.value)
{
	 document.getElementById("7").innerHTML="√";
		document.getElementById("8").innerHTML="";
		document.getElementById("9").innerHTML="√";
		document.getElementById("10").innerHTML="";
		document.getElementById("13").innerHTML="√";
		document.getElementById("14").innerHTML="";
		document.getElementById("15").innerHTML="√";
		document.getElementById("16").innerHTML="";
		document.getElementById("17").innerHTML="√";
		document.getElementById("18").innerHTML="";
		document.getElementById("19").innerHTML="√";
		document.getElementById("20").innerHTML="";
	document.getElementById("11").innerHTML="√";
	document.getElementById("12").innerHTML="";
	document.getElementById("1").innerHTML="√";
	document.getElementById("2").innerHTML="";
	document.getElementById("3").innerHTML="";
	document.getElementById("4").innerHTML="×两次密码不一致";
	document.getElementById("5").innerHTML="";
	document.getElementById("6").innerHTML="";
	passwordConfirm.focus();	
}
else
document.forms["form1"].submit();
}
	
</script>