<!--#include file="info.asp"-->
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
		<h1><a href="/" title="" rel="noreferrer">
		<embed src="images/banner.swf" quality="high" type="application/x-shockwave-flash" wmode="transparent" width="940" height="120" pluginspage="http://www.macromedia.com/go/getflashplayer" allowScriptAccess="always"></embed>
		</a></h1>
	</div>
	<div class="grid_12" id="nav">
		<span>��ӭ����</span>
		<ul>
			<li><a href="/" title="" rel="noreferrer">��ҳ</a></li>
			<li><a href="/about" title="" rel="noreferrer">��ҵ����</a></li>
			<li><a href="/contact-us" title="" rel="noreferrer">�˲Ž���</a></li>
			<li><a href="/search" title="" rel="noreferrer">��ҵ԰��</a></li>
			<li><a href="/search" title="" rel="noreferrer">��ҵ��Ƹƽ̨</a></li>
			<li><a href="/search" title="" rel="noreferrer">У�����</a></li>
			<li><a href="/search" title="" rel="noreferrer">�˲���ְ����</a></li>
			<li><a href="/search" title="" rel="noreferrer">��Ա����</a></li>
		</ul>
	</div>
	<%
	m = request("what")
	Select case m
	    case "article"
	%>
	    <!--#include file="show_article.asp"-->
	<%
	    case else
	%>
	    <!--#include file="home.asp"-->
	<%
	End Select
	%>

    <!--#include file="footer.asp"-->
</div>
<div style="display:none">
</body></html>