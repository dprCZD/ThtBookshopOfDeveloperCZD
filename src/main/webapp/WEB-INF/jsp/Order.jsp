<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<title>程序猿C的电子书屋</title>
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
				<li ><a href="/Shoppingcar">购物车</a></li>
				<li ><a href="/loginout">登出</a></li>
				<li ><a href="/personal">个人中心</a></li>
			</ul>
			
		</ul>
	</div>
</div>
<div id="logo">
	<h1><a href="#">程序猿C的电子书屋</a></h1>
	<h2> personal information</h2>
	<table>
		<tr>
			<td width="100px"></td>
			<td>
			<p id="login">
				<c:if test="${(user.id==-999)}"><a href="/login"><a href="/login">请登录</a></c:if>
				<c:if test="${user.id!=-999}">欢迎，程序猿${user.loginName}</c:if>
			</p>
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
			<h1 class="title">${user.loginName }的订单 </h1>
			<div class="entry">
				<p><img src="/images/per4.png"  width="140" height="125" class="left" /></p>
				<table id="personal">
					<tr>
						<td width="150"><h2 >订单总价:</h2></td>
						<td width="150"><h2 >${Allprice}</h2></td>
					</tr>
					<tr>
						<td width="150"><h2>书籍数:</h2></td>
						<td width="150"><h2 >${Booknum}</h2></td>
					</tr>
					<tr>
						<td width="150"><h2 >用户书币:</h2></td>
						<td width="150"><h2 id="money">${user.money }</h2></td>
					</tr>					
					<tr>
						<td width="150"><h2 >购买后剩余书币:</h2></td>
						<td width="150"><h2 id="money">${user.money-Allprice }</h2></td>
					</tr>					
				</table>
				
			</div>
			<div class="meta">
				<p class="byline">Order Information</p>
				<p class="links">
				<c:if test="${Allprice>user.money }"><a href="#" class="more">余额不足</a></c:if>
				<c:if test="${Allprice<=user.money }"><a href="/buysuccess" class="more">立即购买</a></c:if>
			</div>
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