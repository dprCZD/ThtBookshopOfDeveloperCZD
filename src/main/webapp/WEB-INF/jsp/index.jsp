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
			<h1 class="title">程序猿C的一些废话 </h1>
			<div class="entry">
				<p><img src="/images/img04.jpg" alt="" width="140" height="125" class="left" />这里是程序猿们学习的一个友好网站，可以通过书屋的“书币”购买程序猿C提供的程序书籍，涵盖各种语言，为广大的程序猿提供良好的学习环境与知识获取路径。本网站尚在初步开发中，尚不完善敬请谅解。</p>
			</div>
			<div class="meta">
				<p class="byline">Some useless words by Mr.C</p>
				<p class="links"><a href="/text/1.txt" download="疯狂java讲义">获取一本免费教程</a> <b>|</b>
					<c:if test="${user.id!=-999&&user.id!=null&&user.level=='user'}">
					<a href="/java" class="comments">开始学习</a>
					</c:if>
				</p>
			</div>
		</div>
		<div class="post">
			<h2 class="title">推荐一本好书: Java网络编程</h2>
			<div class="entry">
				<p>本书并不是一个简单的Java入门教材，也不是一门“闭门造车”式的Java读物。本书来自笔者6年多的Java培训经历，凝聚了笔者将近6000小时的授课经验，总结了上千个Java学员学习过程中的典型错误。
					本书将一如既往地保持笔者既有的风格：简单。有一封读者来信让笔者记忆很深刻，他告诉笔者：相对有些人喜欢“深奥”的图书相比，他更喜欢“简单”的IT图书，“简单”的东西很清晰，明确，下一步该怎么做，为什么这样做，一切都清清楚楚，无须任何猜测、想象——正好符合计算机哲学：0就是0，1就是1，中间没有任何回旋的余地。他的来信非常符合笔者的观点：IT图书应该是简单的、易懂的，学完之后可以带来提高，能产生效益的图书。本书正是如此，读者阅读本书时会感觉很浅显，但读完后能开发的程序又非常实用。
				</p>
			</div>
			<div class="meta">
				<p class="byline">A New Book to everone By Mr.C</p>
				 <a href="/Bookinfo?bookid=3" class="comments">查看详情</a></p>
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