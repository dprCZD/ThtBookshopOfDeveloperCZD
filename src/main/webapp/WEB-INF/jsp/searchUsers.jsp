<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			<li class="current_page_item">
			<c:if test="${user.level!='admin'}">
			<a href="/index">Homepage</a>
			</c:if>
			<c:if test="${user.level=='admin'}">
			<a href="/index">Homepage</a>
			</c:if>
			</li>
			<li>
			<c:if test="${user.level!='admin'}">
			<a href="/java">Java</a>
			</c:if>
			<c:if test="${user.level=='admin'}">
			<a href="/allBookData">书籍信息</a>
			</c:if>
			</li>
			<li>
			<c:if test="${user.level!='admin'}">
			<a href="/C++">C++</a>
			</c:if>
			<c:if test="${user.level=='admin'}">
			<a href="/allUserData">用户信息</a>
			</c:if>
			</li>
			<li>
			<c:if test="${user.level!='admin'}">
			<a href="/python">Python</a>
			</c:if>
			<c:if test="${user.level=='admin'}">
			<a href="/addbooktosql">增加书籍</a>
			</c:if></li>

			<ul class="rl">
				<li >
			<a href="/searchUsers">检索用户</a>
				
				</li>
				<li >
				<c:if test="${(user.id==-999||user==null)}"><a href="/login"><a href="/login">登录</a></c:if>
				<c:if test="${user.id!=-999&&user!=null}"><a href="/loginout">登出</a></c:if>
				</li>
				<li >
				<c:if test="${(user.id==-999||user==null)}"></c:if>
				<c:if test="${user.id!=-999&&user!=null}"><a href="/personal">个人中心</a></c:if>
				</li>
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
				<p id="login"><a href="/login" >欢迎,管理员:${user.loginName }</a></p>
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
			<h1 class="title">搜索用户</h1>
			<form name="form1" method="post" onsubmit="" action="/Searchuser">
		<table border="0" align="center" height="500px">
		   	<tr height="50px">
				<td width="50"></td><td height="12" width="200">用户信息：<span>*</span></td>
				<td><input type="text" id="name" name="username" maxlength="40"></td>
				<c:if test="${msg=='failed' }">×未找到该用户</c:if>
			</tr>
			
			
			<tr height="50px">
				<td width="200"></td><td>
					<div align="right">
						<input id="sub" type="submit" name="Submit"  value="提交">
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
				<h2>搜索信息</h2>
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
