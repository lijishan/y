<!--#include file="header.asp"-->

<%
    dim array_news
%>

    <div class="grid_12" style="height:10px;"></div>
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
                        article_num = 10
                        class_id = 1001
                    %>
                    <!--#include file="index_info.asp"-->
                    <%
                    if (ubound(array_news) > 0) then
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
                            <li class="news-item"><span><a href="list.asp?class=<%=class_id%>">更多&gt;&gt;</a></span></li>
                    <%
                    else
                    %>
                        <li class="news-item"> 暂无信息 </li>
                    <%
                    End if
                    %>
                    </ul>
                </div>
                <div id="tabs-2">
                    <ul>
                    <%
                        article_num = 10
                        class_id = 1002
                    %>
                    <!--#include file="index_info.asp"-->
                    <%
                    if (ubound(array_news) > 0) then
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
                            <li class="news-item"><span><a href="list.asp?class=<%=class_id%>">更多&gt;&gt;</a></span></li>
                    <%
                    else
                    %>
                        <li class="news-item"> 暂无信息 </li>
                    <%
                    End if
                    %>
                    </ul>
                </div>
                <div id="tabs-3">
                    <ul>
                    <%
                        article_num = 10
                        class_id = 1010
                    %>
                    <!--#include file="index_info.asp"-->
                    <%
                    if (ubound(array_news) > 0) then
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
                            <li class="news-item"><span><a href="list.asp?class=<%=class_id%>">更多&gt;&gt;</a></span></li>
                    <%
                    else
                    %>
                        <li class="news-item"> 暂无信息 </li>
                    <%
                    End if
                    %>
                    </ul>
                </div>
            </div>
        </div>
        <div class="grid_3 omega" id="info">
            <div class=" news-widget1 info-widget">
                <%
                    article_num = 10
                    class_id = 1009
                %>
                <h4 class="section-header header">近期招聘会 <span><a href="list.asp?class=<%=class_id%>">更多&gt;&gt;</a></span></h4>
                <ul>
                    <!--#include file="index_info.asp"-->
                    <%
                    if (ubound(array_news) > 0) then
                        for i1=0 to ubound(array_news, 2)
                            id = array_news(0, i1)
                            title = array_news(1, i1)
                            pub_time = array_news(2, i1)
                            class_id = array_news(3, i1)
                        %>
                            <li class="news-item"><!--[<%=class_id%>]--><a target=_blank href="view.asp?what=article&id=<%=id%>"><%=title%></a></li>
                    <%
                        next
                    else
                    %>
                        <li class="news-item"> 暂无信息 </li>
                    <%
                    End if
                    %>
                    </ul>
                </ul>
            </div>
        </div>
    </div>
    <div class="clear"></div>
    <div class="grid_12" style="height:10px;"></div>
    <div class="grid_12" style="overflow:hidden">
        <embed src="/images/adbanner.swf" quality="high" type="application/x-shockwave-flash" wmode="transparent" width="940" height="120" pluginspage="http://www.macromedia.com/go/getflashplayer" allowScriptAccess="always"></embed>
    </div>
    <div class="clear"></div>
    <div class="grid_12" style="height:10px;"></div>
    <div class="grid_12">
        <div class="grid_6 alpha" id="news3">
            <div class=" news-widget1 info-widget">
                <%
                    article_num = 10
                    class_id = 1030
                %>
                <h4 class="section-header header">玉州概况<span><a href="list.asp?class=<%=class_id%>">更多&gt;&gt;</a></span></h4>
                <ul>
                    <!--#include file="index_info.asp"-->
                    <%
                    if (ubound(array_news) > 0) then
                        for i1=0 to ubound(array_news, 2)
                            id = array_news(0, i1)
                            title = array_news(1, i1)
                            pub_time = array_news(2, i1)
                            class_id = array_news(3, i1)
                        %>
                            <li class="news-item"><!--[<%=class_id%>]--><a target=_blank href="view.asp?what=article&id=<%=id%>"><%=title%></a>&nbsp;&nbsp;<span>[<%=pub_time%>]</span></li>
                    <%
                        next
                    else
                    %>
                        <li class="news-item"> 暂无信息 </li>
                    <%
                    End if
                    %>
                </ul>
            </div>
        </div>
        <div class="grid_6 omega" id="news4">
            <div class=" news-widget1 info-widget">
                <%
                   article_num = 10
                   class_id = 1031
                %>
                <h4 class="section-header header">机构设置<span><a href="list.asp?class=<%=class_id%>">更多&gt;&gt;</a></span></h4>
                <ul>
                    <!--#include file="index_info.asp"-->
                    <%
                    if (ubound(array_news) > 0) then
                        for i1=0 to ubound(array_news, 2)
                            id = array_news(0, i1)
                            title = array_news(1, i1)
                            pub_time = array_news(2, i1)
                            class_id = array_news(3, i1)
                        %>
                            <li class="news-item"><!--[<%=class_id%>]--><a target=_blank href="view.asp?what=article&id=<%=id%>"><%=title%></a>&nbsp;&nbsp;<span>[<%=pub_time%>]</span></li>
                    <%
                        next
                    else
                    %>
                        <li class="news-item"> 暂无信息 </li>
                    <%
                    End if
                    %>
                </ul>
            </div>
        </div>
    </div>
    <div class="grid_12" style="height:10px;"></div>
    <div class="grid_12" style="overflow:hidden">
            <embed src="/images/adbanner.swf" quality="high" type="application/x-shockwave-flash" wmode="transparent" width="940" height="120" pluginspage="http://www.macromedia.com/go/getflashplayer" allowScriptAccess="always"></embed>
    </div>
    <div class="grid_12" style="height:10px;"></div>
    <!-- 会员中心 -->
    <div class="grid_12" style="overflow:hidden">
            <!--登录与搜索-->
            <div class="grid_4 alpha" style="overflow:hidden">
                <div class="grid_4 alpha omega" style="overflow:hidden">
                    <div class="search_box">
                        <h4 class="section-header header">会员登录</h4>
                        <div>
                    <%
                        if Request.Cookies("ggval")<>"81528686528" then
                        Response.Cookies("id")=""
                        Response.Cookies("ac")=""
                        Response.Cookies("user")=""
                        end if
                        if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")="" then
                    %>
                        <form methond="post" action="/login.asp" onSubmit="return test()">
                            <div class="grid_1 alpha">&nbsp;&nbsp;用户名: </div>
                            <div class='grid_3 alpha omega'><input type='text' size='28' name='name'></div>
                            <div class='grid_1 alpha'>&nbsp;&nbsp;密 码:</div>
                            <div class='grid_3 alpha omega'><input type='password' size='28' name='pwd'></div>
                            <div class='grid_1 alpha'>&nbsp;&nbsp;验证码:</div>
                            <div class='grid_3 alpha omega'><input type='text' size='14' name='code'><%call getcode()%></div>
                            <div class='grid_1 alpha'>&nbsp;&nbsp;会员类型</div>
                            <div class='grid_3  alpha omega'>
                                <select size="1" name="user">
									<option selected value="0">-请选择会员类别-</option>
										<option value="1" selected>个人用户</option>
										<option value="2">企业用户</option>
									</select>
							</div>
                            <div class='grid_2 alpha omega' style="alignt:center">&nbsp;&nbsp;<input type='submit' size='10' value='登录'></div>
                            <div class='grid_2 alpha omega' style="alignt:center">&nbsp;<input type='submit' size='10' value='忘记密码'></div>
                        </form>
                    <%
                        else
                        sql="select id from message where ttype='"&Request.Cookies("user")&"' and tid="&Request.Cookies("id")&" and new=true"
                        rs.open sql,conn,1,1
                        msg_count = rs.recordCount
                        rs.close
                    %>
                            <div class="grid_3">
                                欢迎<%
                                        if Request.Cookies("user")="1" then response.write"个人用户"
                                        if Request.Cookies("user")="2" then response.write"企业用户"
                                    %>
                                <span style="font-weight:bold;color:red;"><%=Request.Cookies("name")%></span>
                            </div><br/><br/>
                            <div class="grid_3">
                                <ul>
                                    <li style='font-size:13pt;'><a href="control.asp">进入会员中心&gt;&gt;</a></li>
                                    <li style='font-size:13pt;'><a href="message.asp">消息管理</a></b> (<font color="#FF0000"><%=msg_count%></font>条新信息)</li>
                                    <li>&nbsp;</li>
                                    <li style='font-size:13pt;'><a href="exit.asp">退出登陆</a></li>
                                </ul>

                            </div>
                    <%
                        end if
                    %>
                        </div>
                    </div>
                </div>
                <div class="grid_4 alpha omega" style="height:10px;"></div>
                <div class="grid_4 alpha omega" style="overflow:hidden">
                    <div class="search_box">
                        <h4 class="section-header header">职位搜索</h4>
                    </div>
                </div>
            </div>
            <!-- 热门职位 -->
            <div class="grid_5" style="overflow:hidden">
            </div>
            <!-- 人才推荐 -->
            <div class="grid_3 omega" style="overflow:hidden">
            </div>
    </div>

    <script>
            $(function() {
                $( "#tabs1" ).tabs({
                    event: "mouseover"
                });
            });
    </script>
    <!--#include file="footer.asp"-->
</div>
<script language=javascript>
  function test()
  {
      if (document.form1.name.value==""){
	      alert("请输入用户名！")
		  document.form1.name.focus();
		  return false
		    }
	  if (document.form1.pwd.value==""){
	      alert("请输入密码！");
		  document.form1.pwd.focus();
		  return false
		  }
		  if (document.form1.code.value==""){
	      alert("请输入验证码！");
		  document.form1.code.focus();
		  return false
		  }
		   if (document.form1.user.value=="0"){
	      alert("请选择会员类别！");
		  document.form1.user.focus();
		  return false
		  }
		  return true
  }
  function reset_form()
  {
   document.form1.name.value="";
   document.form1.pwd.value="";
   document.form1.user.value="";
   document.form1.name.focus;
  }
</script>
    <!--#include file="footer_hide_ad.asp"-->
</body></html>