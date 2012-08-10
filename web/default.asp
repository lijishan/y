<!--#include file="info.asp"-->
<!--#include file="index_info.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="unhtml.asp"-->
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US"><head profile="http://gmpg.org/xfn/11">
<title><%=webname%></title>
<meta http-equiv="content-type" content="text/html; charset=GBK">
<meta name="robots" content="all">
<link rel="stylesheet" type="text/css" media="screen" href="scripts/style.css">
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" media="screen" href="scripts/ie6.css" />
<![endif]-->
<style type="text/css" media="screen"></style>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
</head>
<body>
<div class="container_12" id="wrapper">
	<div class="grid_12" id="navigation">
		<h1><a href="/" title="" rel="noreferrer"><img src="images/logo.jpg" alt=""></a></h1>
	</div>
	<div class="grid_12" id="nav">
		<span>欢迎光临</span>
		<ul>
			<li><a href="/" title="" rel="noreferrer">主页</a></li>
			<li><a href="/about" title="" rel="noreferrer">就业服务</a></li>
			<li><a href="/contact-us" title="" rel="noreferrer">人才交流</a></li>
			<li><a href="/search" title="" rel="noreferrer">企业园地</a></li>
			<li><a href="/search" title="" rel="noreferrer">企业招聘平台</a></li>
			<li><a href="/search" title="" rel="noreferrer">校企合作</a></li>
			<li><a href="/search" title="" rel="noreferrer">人才求职意向</a></li>
			<li><a href="/search" title="" rel="noreferrer">会员中心</a></li>
		</ul>
	</div>
	<div class="grid_12" style="height:10px;"></div>
	<div class="clear"></div>
	<div class="grid_12" id="featured-articles">
		<div class="grid_3 alpha" id="slide">
			<img src="http://news.baidu.com/z/resource/r/image/2012-08-07/c56318522128ecff111288b6193ed7f5.jpg"/>
		</div>
		<div class="grid_6" id="news">
			<ul>
				<li class="section-header">最新动态</li>
				<%
					for i1=1 to ubound(arr1) - 1
				%>
				<li><%=arr1(i1)%></li>
				<%
					next
				%>
			</ul>			
		</div>
		<div class="grid_3 omega" id="info">
			<ul>
				<li class="section-header">近期招聘会</li>
				<%
					for i1=1 to ubound(arr2) - 1
				%>
				<li><%=arr2(i1)%></li>
				<%
					next
				%>
			</ul>
		</div>
	</div>	
	<div class="clear"></div>
	<div class="grid_12" style="overflow:hidden"><img src="http://d1.sina.com.cn/pfpghc/48/17/pic261748.jpg" /></div>
	<div class="clear"></div>
	<div class="grid_12" style="height:10px;"></div>
	<div class="grid_12" id="featured-articles">	
		<div class="grid_9 alpha">
			<div class="grid_9 alpha omega" style="height:200px;">
				<ul>
					<li class="section-header">最新职位</li>
				</ul>
				<table width="100%">
					<tr>
						<td width="20%">发布时间</td>
						<td width="30%">招聘职位</td>
						<td width="25%">工作地</td>
						<td width="30%">学历要求</td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</table>
			</div>
			<div class="grid_9 alpha omega" style="height:200px;">
				<ul>
					<li class="section-header">人才信息</li>
				</ul>
			</div>
		<div class="grid_9" style="overflow:hidden"><img src="http://i0.sinaimg.cn/ty/2011hqj/aoyun/olympic_london_home_banner.jpg" /></div>
		</div>

		<div class="grid_3 omega sidebar">
			企业园地
			<ul>
				<li class="section-header"></li>
				<li><img src="images/gonghang.gif" /></li>
				<li><img src="images/jianhang.gif" /></li>
				<li><img src="images/gonghang.gif" /></li>
				<li><img src="images/jianhang.gif" /></li>
				<li><img src="images/gonghang.gif" /></li>
				<li><img src="images/jianhang.gif" /></li>
				<li><img src="images/gonghang.gif" /></li>
				<li><img src="images/jianhang.gif" /></li>
				<li><img src="images/gonghang.gif" /></li>
				<li><img src="images/jianhang.gif" /></li>
				<li><img src="images/gonghang.gif" /></li>
				<li><img src="images/gonghang.gif" /></li>
				<li><img src="images/gonghang.gif" /></li>
				<li><img src="images/gonghang.gif" /></li>
			</ul>
		</div>
	</div>


</div>
</body></html>