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
                    <div class="search_box" style="height:180px">
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
                                    <li style='font-size:13pt;'><a href="exit.asp">退出登录</a></li>
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
                    <div class="search_box"style="height:265px">
                        <h4 class="section-header header">职位搜索</h4>
<!--搜索框开始-->
<table>
<TR vAlign=top align=middle>
                        <TD align=middle colSpan=2><table border="0" width="100%" cellspacing="0" cellpadding="0" height="25" id="table11">
							<form method="POST" action="search.asp" TARGET="_blank">
								<tr>
										<td height="30">
										<p align="left">
<SELECT SIZE=1 NAME=gzdd STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF">
<OPTION value="0">请选择工作省份</OPTION>
<OPTION VALUE=北京市>北京市</OPTION><OPTION VALUE=上海市>上海市</OPTION><OPTION VALUE=天津市>天津市</OPTION><OPTION VALUE=重庆市>重庆市</OPTION><OPTION VALUE=河北省>河北省</OPTION><OPTION VALUE=河南省>河南省</OPTION><OPTION VALUE=海南省>海南省</OPTION><OPTION VALUE=西昌市>西昌市</OPTION><OPTION VALUE=福建省>福建省</OPTION><OPTION VALUE=甘肃省>甘肃省</OPTION><OPTION VALUE=广东省>广东省</OPTION><OPTION VALUE=广西省>广西省</OPTION><OPTION VALUE=四川省>四川省</OPTION><OPTION VALUE=贵州省>贵州省</OPTION><OPTION VALUE=湖北省>湖北省</OPTION><OPTION VALUE=湖南省>湖南省</OPTION><OPTION VALUE=吉林省>吉林省</OPTION><OPTION VALUE=江苏省>江苏省</OPTION><OPTION VALUE=江西省>江西省</OPTION><OPTION VALUE=辽宁省>辽宁省</OPTION><OPTION VALUE=青海省>青海省</OPTION><OPTION VALUE=山东省>山东省</OPTION><OPTION VALUE=山西省>山西省</OPTION><OPTION VALUE=陕西省>陕西省</OPTION><OPTION VALUE=云南省>云南省</OPTION><OPTION VALUE=浙江省>浙江省</OPTION><OPTION VALUE=黑龙江省>黑龙江省</OPTION><OPTION VALUE=宁夏自治区>宁夏自治区</OPTION><OPTION VALUE=新疆自治区>新疆自治区</OPTION><OPTION VALUE=西藏自治区>西藏自治区</OPTION><OPTION VALUE=内蒙古自治区>内蒙古自治区</OPTION><OPTION VALUE=香港特别行政区>香港特别行政区</OPTION><OPTION VALUE=澳门特别行政区>澳门特别行政区</OPTION><OPTION VALUE=台湾省>台湾省</OPTION><OPTION VALUE=国外地区>国外地区</OPTION>
</SELECT></td>
							  </tr>
									<tr>
										<td height="30">
										<p align="left">
												<SELECT SIZE="1" NAME="job" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF">
<OPTION VALUE="0">::请选择职位类别::</OPTION>
<OPTION VALUE=经营/管理类>经营/管理类</OPTION><OPTION VALUE=财务类>财务类</OPTION><OPTION VALUE=销售/业务类>销售/业务类</OPTION><OPTION VALUE=市场类>市场类</OPTION><OPTION VALUE=设计类>设计类</OPTION><OPTION VALUE=客户服务类>客户服务类</OPTION><OPTION VALUE=行政/人事类>行政/人事类</OPTION><OPTION VALUE=IT网络/计算机专业人员>IT网络/计算机专业人员</OPTION><OPTION VALUE=文职类>文职类</OPTION><OPTION VALUE=工业/工厂类>工业/工厂类</OPTION><OPTION VALUE=后勤/服务类>后勤/服务类</OPTION><OPTION VALUE=卫生医疗/美容保健类>卫生医疗/美容保健类</OPTION><OPTION VALUE=食品、餐饮/旅游/休闲娱乐>食品、餐饮/旅游/休闲娱乐</OPTION><OPTION VALUE=电子/通讯类专业人员>电子/通讯类专业人员</OPTION><OPTION VALUE=机械专业人员>机械专业人员</OPTION><OPTION VALUE=房地产/建筑专业人员>房地产/建筑专业人员</OPTION><OPTION VALUE=金融/经济专业人员>金融/经济专业人员</OPTION><OPTION VALUE=文教体卫/法律专业人员>文教体卫/法律专业人员</OPTION><OPTION VALUE=服务业专业人员>服务业专业人员</OPTION><OPTION VALUE=其它专业人员>其它专业人员</OPTION>
</SELECT></td>
									</tr>
									<tr>
										<td height="30">
<input onFocus="this.value=''" type="text" name="what" size="20" style="padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="请输入职位关键字"></td>
									</tr>
									<tr>
										<td height="30">
<SELECT ID=create_date NAME=date size="1">
<option selected value="不限">请选择发布时间</option>
<OPTION VALUE="不限">不限</OPTION> <OPTION VALUE="7">一星期内</OPTION>
<OPTION VALUE="30">一个月内</OPTION> <OPTION VALUE="183">六个月内</OPTION>
<OPTION VALUE="365">一年内</OPTION> </SELECT></td>
									</tr>
									<tr>
										<td height="30">
										<% if Request.Cookies("user")="1" then %>
										<input type="radio" value="1" checked name="class">职位&nbsp;&nbsp;&nbsp;
										<input type="radio" name="class" value="2">人才</td>
										<%else%>
										<input type="radio" value="1"  name="class">职位&nbsp;&nbsp;&nbsp;
										<input type="radio" checked name="class" value="2">人才</td>
										<%end if %>
									</tr>
									<tr>
										<td height="30">
										<p align="left">
										<% if Request.Cookies("id")<>"" or Request.Cookies("ac")<>"" or Request.Cookies("user")<>"" then %>
										<input border="0" src="images/s2.gif" name="I1" width="53" height="20" type="image">&nbsp;&nbsp;&nbsp;&nbsp;
										<a href="super_search.asp">
										<img border="0" src="images/s1.gif" width="79" height="20"></a>
										<%else
response.write "<font color=#FF0000>登录后才可搜索</font>"
end if %></td>
									</tr>
							</form>
								</table></TD>
                      </TR>
</table>

<!--搜索框结束-->
                    </div>
                </div>
            </div>
            <!-- 热门职位 -->
            <div class="grid_5" style="overflow:hidden">
                <div class="info-widget " style="height:458px">
                    <h4 class="section-header header">热门职位<span><a href="grqz1.asp">更多&gt;&gt;</a></span></h4>
                    <!--#include file="ad_syad1.asp"-->
                </div>
            </div>
            <!-- 人才推荐 -->
            <div class="grid_3 omega" style="overflow:hidden">
                <div class="search_box" style="height:458px">
                    <h4 class="section-header header">人才推荐</h4>
<%
sql="select top "&index4&" id,name,job1,gzdd,edu,sex,rdate,zhuanyen1,gzcs from in_user where lock=false and name<>''  order by rdate desc"
rs.open sql,conn,1,1
if rs.recordcount=0 then
    rs.close
    response.write "暂时没有注册用户！"
else
%>
    <%
    for ii=1 to index4
    %>
    <li class='news-item'>
        <a target =_blank href="person.asp?id=<%=rs("id")%>"><strong><%=rs("name")%></strong></a>
        [<%=rs("sex")%>]
        [<%=rs("edu")%>]
        <%=rs("zhuanyen1")%>
        <%=rs("gzdd")%>&nbsp;<%=rs("gzcs")%>
    </li>
    <%
    rs.movenext
    if rs.eof then exit for
    next
    rs.close
end if
%>

                </div>
            </div>
    </div>
    <div class="grid_12" style="height:10px;"></div>
    <!--热门招聘 -->
    <div class="grid_12">
        <div class="grid_9 alpha">
            <div class='info-widget search_box' style="height:200px">
                <h4 class="section-header header" style='margin-bottom:0px;'>热门招聘</h4>
                <!--#include file="ad_syad2.asp"-->
            </div>
        </div>
        <div class="grid_3 omega">
            <div class='info-widget' style="height:200px">
                <h4 class="section-header header">委托招聘<span>更多&gt;&gt;</span></h4>
                <ul style='margin-left:5px;'>
                <%
                sql="select top "&index6&" id,jtzw,edus,sexs from consigns  order by addtime desc"
                rs.open sql,conn,1,1
                if rs.eof or rs.bof then
                           response.write "<li>暂无信息！</li>"
                           rs.close
                           else
                           for i1=1 to index6
                %>
                <li><span style="color:red;font-weight:bold;height:15px;font-size:14pt;">聘</span><a title ="<%=rs("jtzw")%>" target =_blank href="show_consign.asp?id=<%=rs("id")%>">
                <%=rs("jtzw")%></a>  性别:<%=rs("sexs")%> 学历:<%=rs("edus")%></li>
                <%
                rs.movenext
                if rs.eof then exit for
                next
                rs.close
                end if
                %>
                </ul>
            </div>
        </div>
    </div>
    <div class="grid_12" style="height:10px;"></div>
    <!--名企招聘 -->
    <div class="grid_12">
        <div class="grid_12 alpha omega info-widget" style="min-height:200px">
            <h4 class="section-header header">名企招聘</h4>
            <ul>
                          <%
sql="select top "&index2&" en_user.name,en_user.rdate,en_user.area,en_user.id from en_user where name<>'' order by en_user.id desc"
rs.open sql,conn,1,1
%>
                          <%for ii=1 to index2 %>
						  <li class="news-item"><a target =_blank title=" 〖<%=rs("area")%>〗" href="company.asp?id=<%=rs("id")%>" class="STYLE11"><%=rs("name")%>（<%=rs("area")%>）</a></li>
                                                  <%
rs.movenext
if rs.eof then exit for
next
rs.close
%>
            </ul>
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