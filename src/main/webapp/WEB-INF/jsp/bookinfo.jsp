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
			<a href="/Cplus">C++</a>
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
			<li>
			<c:if test="${user.level!='admin'}">
			<a href="/html5">html5</a>
			</c:if>
			</li>
			<ul class="rl">
				<li >
				<c:if test="${(user.id==-999||user==null)}"><a href="/register">注册</a></c:if>
				<c:if test="${user.id!=-999&&user!=null&&user.level=='user'}"><a href="/Shoppingcar">购物车</a></c:if>
				<c:if test="${user.id!=-999&&user!=null&&user.level=='admin'}"><a href="/searchUsers">检索用户</a></c:if>
				</li>
				<li >
				<c:if test="${(user.id==-999||user==null)}"><a href="/login">登录</a></c:if>
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
				<p id="login">
				<c:if test="${(user.id==-999||user.id==null)}"><a href="/login"><a href="/login">请登录</a></c:if>
				<c:if test="${user.id!=-999&&user.id!=null&&user.level=='user'}">欢迎，程序猿${user.loginName}</c:if>
				<c:if test="${user.id!=-999&&user.id!=null&&user.level=='admin'}">欢迎，管理员${user.loginName}</c:if>
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
			<h1 class="title">${book.name}</h1>
			<div class="entry">
                <h1 class="title"><font size="5">内容简介</font></h1>
				<p><img src="images/${book.image }" alt="" width="195" height="239" class="left" />
    			${book.textarea}
    			</p>
			</div>
            <div class="entry">
            <h1 class="title"><font size="5">作者简介</font></h1>
　			<p>比尔·盖茨 [1]  （Bill Gates），全名威廉·亨利·盖茨三世，简称比尔或盖茨。1955年10月28日出生于美国华盛顿州西雅图，企业家、软件工程师、慈善家、微软公司创始人。曾任微软董事长、CEO和首席软件设计师。
比尔·盖茨13岁开始计算机编程设计 [1]  ，18岁考入哈佛大学，一年后从哈佛退学，1975年与好友保罗·艾伦一起创办了微软公司 [2]  ，比尔盖茨担任微软公司董事长、CEO和首席软件设计师。</p>
			</div>
			<div class="meta">
				<p class="byline">A New Book to everone By Mr.C</p>
				<p class="links">
				<c:if test="${(user.id==-999||user==null)}"><a href="/login" class="more">立即购买</a></c:if> 
				<c:if test="${(user.id!=-999&&user.id!=null&&user.level=='user')}"><a href="/GetOrder?bookid=${book.id }" class="more">立即购买</a></c:if> 
				<b>|</b> 
				<c:if test="${(user.id==-999||user==null)}"><a href="/login" class="more">加入购物车</a></c:if> 
				<c:if test="${(user.id!=-999&&user.id!=null&&user.level=='user')}"><a href="/add?bookid=${book.id}&url=Bookinfo" class="more">加入购物车</a></c:if> 
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