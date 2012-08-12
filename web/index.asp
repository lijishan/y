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

    <link rel="stylesheet" href="scripts/jqueryui/css/custom-theme/jquery-ui-1.8.22.custom.css" />
    <link rel="stylesheet" href="scripts/slides/carouse.css" />
    <script src="scripts/slides/s"></script>
    <script src="scripts/jqueryui/js/jquery-1.7.2.min.js"></script>
    <script src="scripts/jqueryui/js/jquery-ui-1.8.22.custom.min.js"></script>

</head>
<body>
<div class="container_12" id="wrapper">
    <div class="grid_12" id="navigation">
        <h1><a href="/" title="" rel="noreferrer">
            <!--<img src="images/logo.jpg" alt="">-->
            <embed src="images/banner.swf" quality="high" type="application/x-shockwave-flash" wmode="transparent" width="940" height="120" pluginspage="http://www.macromedia.com/go/getflashplayer" allowScriptAccess="always"></embed>
        </a></h1>
    </div>
    <div class="grid_12" id="nav">
        <span>欢迎光临</span>
        <ul>
            <li><a href="/" title="" rel="noreferrer">主页</a></li>
            <li><a href="/list.asp?class=1001" title="" rel="noreferrer">就业服务</a></li>
            <li><a href="/list.asp?class=1002" title="" rel="noreferrer">人才交流</a></li>
            <li><a href="/list.asp?class=1003" title="" rel="noreferrer">企业园地</a></li>
            <li><a href="/list.asp?class=1004" title="" rel="noreferrer">企业招聘平台</a></li>
            <li><a href="/list.asp?class=1005" title="" rel="noreferrer">校企合作</a></li>
            <li><a href="/list.asp?class=1006" title="" rel="noreferrer">人才求职意向</a></li>
            <li><a href="/" title="" rel="noreferrer">会员中心</a></li>
        </ul>
    </div>
    <div class="grid_12" style="height:10px;"></div>
    <div class="clear"></div>
    <div class="grid_12" id="featured-articles">
        <div class="grid_4 alpha" id="slide">
            <div><img src="/images/editorimages/20120811-1.jpg"/></div>
            <div class="img-caption grid_4 alpha omega" align="center">玉州区积极部署 严防“海葵”</div>
        </div>
        <div class="grid_5 news-widget1" id="news">
            <div id="tabs1" class="news-widget1">
                <ul>
                    <li><a href="#tabs-1">就业服务</a></li>
                    <li><a href="#tabs-2">人才交流</a></li>
                    <li><a href="#tabs-3">人社部门</a></li>
                </ul>
                <div id="tabs-1">
                    <ul>
                        <%
                        for i1=0 to ubound(array_news, 2)
                        id = array_news(0, i1)
                        title = array_news(1, i1)
                        pub_time = array_news(2, i1)
                        class_id = array_news(3, i1)
                        %>
                        <li class="news-item"><!--[<%=class_id%>]--><a target=_blank href="view.asp?what=article&id=<%=id%>"><%=title%></a>&nbsp;&nbsp;<span>[<%=pub_time%>]</span></li>
                        <%
                        next
                        %>
                    </ul>
                </div>
                <div id="tabs-2">
                    <ul>
                        <%
                        for i1=0 to ubound(array_news, 2)
                        id = array_news(0, i1)
                        title = array_news(1, i1)
                        pub_time = array_news(2, i1)
                        class_id = array_news(3, i1)
                        %>
                        <li class="news-item"><!--[<%=class_id%>]--><a target=_blank href="view.asp?what=article&id=<%=id%>"><%=title%></a>&nbsp;&nbsp;<span>[<%=pub_time%>]</span></li>
                        <%
                        next
                        %>
                    </ul>
                </div>
                <div id="tabs-3">
                    <ul>
                        <%
                        for i1=0 to ubound(array_news, 2)
                        id = array_news(0, i1)
                        title = array_news(1, i1)
                        pub_time = array_news(2, i1)
                        class_id = array_news(3, i1)
                        %>
                        <li class="news-item"><!--[<%=class_id%>]--><a target=_blank href="view.asp?what=article&id=<%=id%>"><%=title%></a>&nbsp;&nbsp;<span>[<%=pub_time%>]</span></li>
                        <%
                        next
                        %>
                    </ul>
                </div>
            </div>
        </div>
        <div class="grid_3 omega" id="info">
            <div class=" news-widget1 info-widget">
                <h4 class="section-header header">近期招聘会 <span><a href="#" >更多&gt;&gt;</a></span></h4>
                <ul>
                    <%
                    for i1=0 to ubound(array_recru, 2)
                    id = array_recru(0, i1)
                    title = array_recru(1, i1)
                    pub_time = array_recru(2, i1)
                    class_id = array_recru(3, i1)
                    %>
                    <li class="news-item"><!--[<%=class_id%>]--><a target=_blank href="view.asp?what=article&id=<%=id%>"><%=title%></a></li>
                    <%
                    next
                    %>
                </ul>
            </div>
        </div>
    </div>
    <div class="clear"></div>
    <div class="grid_12" style="overflow:hidden">
        <embed src="/images/adbanner.swf" quality="high" type="application/x-shockwave-flash" wmode="transparent" width="940" height="120" pluginspage="http://www.macromedia.com/go/getflashplayer" allowScriptAccess="always"></embed>
    </div>
    <div class="clear"></div>
    <div class="grid_12" style="height:10px;">
    </div>
    <div class="grid_12" style="height:10px;">
        <div class="grid_6 alpha" id="news3">
            <div class=" news-widget1 info-widget">
                <h4 class="section-header header">玉州概况<span><a href="" >更多&gt;&gt;</a></span></h4>
                <ul>
                        <%
                        for i1=0 to ubound(array_news, 2)
                        id = array_news(0, i1)
                        title = array_news(1, i1)
                        pub_time = array_news(2, i1)
                        class_id = array_news(3, i1)
                        %>
                        <li class="news-item"><!--[<%=class_id%>]--><a target=_blank href="view.asp?what=article&id=<%=id%>"><%=title%></a>&nbsp;&nbsp;<span>[<%=pub_time%>]</span></li>
                        <%
                        next
                        %>
                </ul>
            </div>
        </div>
        <div class="grid_6 omega" id="news4">
            <div class=" news-widget1 info-widget">
                <h4 class="section-header header">机构设置<span><a href="" >更多&gt;&gt;</a></span></h4>
                <ul>
                        <%
                        for i1=0 to ubound(array_news, 2)
                        id = array_news(0, i1)
                        title = array_news(1, i1)
                        pub_time = array_news(2, i1)
                        class_id = array_news(3, i1)
                        %>
                        <li class="news-item"><!--[<%=class_id%>]--><a target=_blank href="view.asp?what=article&id=<%=id%>"><%=title%></a>&nbsp;&nbsp;<span>[<%=pub_time%>]</span></li>
                        <%
                        next
                        %>
                </ul>
            </div>
        </div>

        <div class="grid_12" id="featured-articles">
            <div class="grid_9 alpha">
                <div class="grid_9 alpha omega">
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
                    <li><img src="images/gonghang.gif" /></li>
                </ul>
            </div>
        </div>
        <!--#include file="footer.asp"-->
        <script>
            $(function() {
                $( "#tabs1" ).tabs({
                    event: "mouseover"
                });
            });
            $(function() {
                //$( "#tabs2" ).tabs();
            });
        </script>
    </div>
    <div style="display:none">
</body></html>