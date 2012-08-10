<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="unhtml.asp"-->
<!--#include file="top_index.asp"-->
<title> <%=webname%></title>

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




<TABLE width=760 border=0 align="center" cellPadding=0 cellSpacing=3 bgColor=#ffc6bf>
  <TBODY>
    <TR>
      <td height="16"><TD vAlign=top bgColor=#ffffff><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
          <TR>
            <TD vAlign=top width=185><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                      <TR>
                        <TD width=5 height=26><IMG height=26 
                        src="imagen/web_01_03.gif" 
                        width=5></TD>
                        <TD width=19><IMG height=26 
                        src="imagen/web_01_04.gif" 
                        width=19></TD>
                        <TD 
                      background="imagen/web_01_05.gif"><TABLE cellSpacing=0 cellPadding=0 width="100%" 
border=0>
                          <TBODY>
                            <TR>
                              <TD colSpan=2 height=4></TD>
                            </TR>
                            <TR>
                              <TD width=6></TD>
                              <TD 
                    class=mune>会员登录</TD>
                            </TR>
                          </TBODY>
                        </TABLE></TD>
                      </TR>
                    </TBODY>
                  </TABLE></TD>
                </TR>
                <TR>
                  <TD vAlign=top align=middle ><%
if Request.Cookies("ggval")<>"81528686528" then 
Response.Cookies("id")=""
Response.Cookies("ac")=""
Response.Cookies("user")="" 
end if 
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")="" then


%>
<style type="text/css">
<!--
.STYLE2 {color: #ffc6bf}
-->
</style>
<tr>
								<td height="100" bgcolor="#FEFBF4" style="border-bottom:1px solid #DBD3BD; border-left:1px solid #DBD3BD; border-right:1px solid #DBD3BD; ">
								<form method="POST" name="form1" action="login.asp" onSubmit="return test()">
									<table border="0" width="193" cellspacing="0" cellpadding="0" id="table4">
										<tr>
											<td height="30" width="56" align="center">
											用户名：</td>
											<td height="30" width="137" align="center">
											<input name="name" size="16" style="float: left"></td>
										</tr>
										<tr>
											<td height="30" width="56" align="center">
											密&nbsp; 码：</td>
											<td height="30" width="137" align="center">
											<input type="password" name="pwd" size="16" style="float: left"></td>
										</tr>
										<tr>
											<td height="30" width="56" align="center">
											验证码：</td>
											<td height="30" width="137" align="center">
											<input name="code" size="4" style="float: left; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"><%call getcode()%></td>
										</tr>
										<tr>
											<td height="30" width="56" align="center">
											类&nbsp; 型：</td>
											<td height="30" width="137" align="center">
											<p align="left">
											<select size="1" name="user">
											<option selected value="0">-请选择会员类别											</option>
											<option value="1">个人用户</option>
											<option value="2">企业用户</option>
											</select></td>
										</tr>
										<tr>
										  <td height="30" width="193" align="center" colspan="2">
											<INPUT type=image src=images/dl.gif alt="登录" name="dl">&nbsp;
											<a href="search_pwd1.asp"><img border="0" src="images/pass.gif" alt="忘记密码" width="77" height="21"></a></td>
										</tr>
								  </form>
<tr>
											<td height="30" width="193" align="center" colspan="2">
											<a href="register.asp">
											<img border="0" src="images/reg.gif" alt="新用户注册" width="193" height="61"></a></td>
</tr>
			  </table>				  </td>
								
							<%
							
							else
							%>
		  <tr>
								<td height="100" bgcolor="#FEFBF4" style="border-bottom:1px solid #DBD3BD; border-left:1px solid #DBD3BD; border-right:1px solid #DBD3BD; ">
														<div align="center">
									<table border="0" width="193" cellspacing="0" cellpadding="0" id="table7" height="128">
										<tr>
											<td height="61" width="193" colspan="3">&nbsp;&nbsp;&nbsp; 欢迎<%
											if Request.Cookies("user")="1" then response.write"个人用户"
											if Request.Cookies("user")="2" then response.write"企业用户"
											
											%><font color="#FF0000"><%=Request.Cookies("ac")%></font>进入【杰博528免费人才招聘网】,请在下面进行您的操作。</td>
										</tr>
										<tr>
											<td height="40" width="25" align="right">
											<img border="0" src="images/menu.gif" width="10" height="10"></td>
											<td height="40" width="6" align="right">　</td>
											<td height="40" width="162">
											<a href="control.asp"><b><font color=#ff0000>进入会员中心</font></b></a></td>
										</tr>
										<tr>
											<td height="40" width="25" align="right">
											<img border="0" src="images/menu.gif" width="10" height="10"></td>
											<td height="40" width="6" align="right">　</td>
											<td height="40" width="162">
											<b>
											<%
											sql="select id from message where ttype='"&Request.Cookies("user")&"' and tid="&Request.Cookies("id")&" and new=true"
											
											
											rs.open sql,conn,1,1
											%>
											<a href="message.asp">消息管理</a></b> (<font color="#FF0000"><%=rs.recordcount%></font>条新信息)</td>
										<%
										if rs.recordcount<>0 then response.write "<embed src=newpm.swf loop=false hidden=true autostart=true width=0 height=0 name=foobar mastersound=mastersound></embed>"
										rs.close
										%>
										</tr>
										<tr>
											<td height="40" width="25" align="right">
											<img border="0" src="images/menu.gif" width="10" height="10"></td>
											<td height="40" width="6" align="right">　</td>
											<td height="40" width="162">
											<b>
											<a href="exit.asp">退出登陆</a></b></td>
										</tr>
									</table>
								</div>
						
						<%
							end if
							%>   </TD>
          </TR>
                <TR>
                  <TD width=5 height=5><IMG height=5 
                  src="imagen/web_01_28.gif" 
              width=5></TD>
                </TR>
        </TBODY>
            </TABLE></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffc6bf></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD vAlign=top><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD vAlign=top><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                      <TR>
                        <TD width=19><IMG height=26 
                        src="imagen/web_01_04.gif" 
                        width=19></TD>
                        <TD width="100%" 
                      background="imagen/web_01_05.gif"><TABLE cellSpacing=0 cellPadding=0 width="100%" 
border=0>
                          <TBODY>
                            <TR>
                              <TD width=200><TABLE cellSpacing=0 cellPadding=0 width="100%" 
                              border=0>
                                <TBODY>
                                  <TR>
                                    <TD colSpan=2 height=4></TD>
                                  </TR>
                                  <TR>
                                    <TD class=mune>&nbsp;&nbsp;职位/人才在线搜索</TD>
                                  </TR>
                                </TBODY>
                              </TABLE></TD>
                              <TD align=right>&nbsp;</TD>
                              <TD width=19>&nbsp;</TD>
                            </TR>
                          </TBODY>
                        </TABLE></TD>
                      </TR>
                      <TR>
                        <TD colSpan=2 height=10></TD>
                      </TR>
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
end if %><br>&nbsp;&nbsp; &nbsp;&nbsp; <A  href="law.asp?id=4&what=常见问题" 
                              target=_blank><strong><font color=#ff0000>〓〓</font> 新手指南 <font color=#ff0000>〓〓</font></strong></A></td>
									</tr>
							</form>
								</table></TD>
                      </TR>
                    </TBODY>
                  </TABLE></TD>
                  <TD vAlign=top width=134><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                      <TR>
                        <TD 
                      background="imagen/web_01_05.gif" 
                      colSpan=3 height=26>&nbsp;</TD>
                      </TR>
                      <TR>
                        <TD vAlign=top colSpan=2 rowSpan=5><IMG 
                        src="imagen/city_line.gif" 
                        width=2 border=0></TD>
                        <TD height=10></TD>
                      </TR>
                      <TR vAlign=top align=middle>
                        <TD><table width="200" align="center" cellspacing="0"style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf">
                        <tr>
                          <td width="196" align="center"  bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; ">求职新闻</td>
                        </tr>
                        <tr>
                          <table border="0" width="100%" cellspacing="0" cellpadding="0" id="table9" height="23">
<%
sql="select top "&index1&" id,title,addtime from article where class=1 order by id desc"
rs.open sql,conn,1,1
if rs.eof or rs.bof then
%>
											<tr>
												<td align="center" colspan="2">暂无新闻！
												　</td>
											</tr>
<%
rs.close
else
for i1=1 to index1
title=rs("title")
if len(title)>13 then title=left(title,12)&"..."
%>
											<tr>
												<td width="9%" align="center" height="23">
												<p align="center">
												<img border="0" src="images/new2.gif"></td>
												<td height="23" width="91%"><a  target="_blank" href="show_article.asp?id=<%=rs("id")%>">
								<%=title%></a></td>
											</tr>
<%
rs.movenext
if rs.eof then exit for
next
rs.close
end if
%>			
						  </table>
                        </tr>
                      </table></TD>
                      </TR>
                      <TR>
                        <TD height=14></TD>
                      </TR>
                      <TR vAlign=top align=middle>
                        <TD height=10><TABLE cellSpacing=0 cellPadding=0 width="98%" 
                          border=0>
                          <TBODY>
                            <TR>
                              
                                                            <TD width="46%"><TABLE cellSpacing=0 cellPadding=0 width="85%" 
                          border=0>
                                <TBODY>
                                 
                                </TBODY>
                              </TABLE></TD>
                            </TR>
                          </TBODY>
                        </TABLE></TD>
                      </TR>
                    </TBODY>
                  </TABLE></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=4 bgColor=#ffc6bf></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=183 vAlign=top bgcolor="#FFFFFF"><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width=19><IMG height=26 
                  src="imagen/web_01_04.gif" 
                width=19></TD>
                  <TD width="100%" 
                background="imagen/web_01_05.gif"><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                      <TR>
                        <TD colSpan=2 height=4></TD>
                      </TR>
                      <TR>
                        <TD width=6></TD>
                        <TD class=mune>网站公告</TD>
                      </TR>
                    </TBODY>
                  </TABLE></TD>
                  <TD width=5><IMG height=26 
                  src="imagen/web_01_17.gif" 
              width=5></TD>
                </TR>
              </TBODY>
            </TABLE> <% sql="select notice from notice where id=1"
				rs.open sql,conn,1,1
				%>  <marquee ONMOUSEOVER="this.stop()" ONMOUSEOUT="this.start()" width="140" height="200" direction="up" scrolldelay="60" scrollamount="1">
                                          <% =unHtml(rs("notice")) %>
              </marquee>
	  <% rs.close %></TD>
    </TR>  
  </TBODY>
</TABLE>
</TD>
</TABLE>
<!--#include file="ad_syad1.asp"--><TABLE width=760 border=0 align="center" cellPadding=0 cellSpacing=0 style="border-right: 2px solid #ffc6bf">
  <TBODY>
    <TR>
      <TD width="500" rowspan="2" vAlign=top><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
          <TR>
            <TD width=3 rowSpan=3><IMG height=140 
            src="imagen/yqzp_imgaes_01.gif" width=3></TD>
            <TD width="496" height=3 bgColor=#ffc6bf></TD>
            <TD width=0 rowSpan=3><IMG height=140 
            src="imagen/yqzp_imgaes_01.gif" 
        width=3></TD>
          </TR>
          <TR>
            <TD height="143" vAlign=top>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                      <TR>
                        <TD width=5><IMG height=26 
                  src="imagen/web_01_03.gif" 
width=5></TD>
                        <TD width=19><IMG height=26 
                  src="imagen/web_01_04.gif" 
                width=19></TD>
                        <TD vAlign=top width="460" 
                background="imagen/web_01_05.gif"><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                            <TBODY>
                              <TR>
                                <TD><TABLE cellSpacing=0 cellPadding=0 width="100%" 
border=0>
                                    <TBODY>
                                      <TR>
                                        <TD colSpan=2 height=4></TD>
                                      </TR>
                                      <TR>
                                        <TD width=6></TD>
                                        <TD class=mune> 最新注册企业</TD>
                                      </TR>
                                    </TBODY>
                                </TABLE></TD>
                                <TD align=right width=258><img src="images/zz.gif" width="14" height="9"><a href="zpdw.asp" target="_blank">更多最新加入企业</a><img src="images/new.gif" width="33" height="16"></TD>
                              </TR>
                            </TBODY>
                        </TABLE></TD>
                        <TD width=14 background="imagen/web_01_05.gif">&nbsp;</TD>
                      </TR>
                      <TR vAlign=top align=middle>
                        <TD colSpan=4>
                          <%
sql="select top "&index2&" en_user.name,en_user.rdate,en_user.area,en_user.id from en_user where name<>'' order by en_user.id desc"
rs.open sql,conn,1,1
%>
                            <a href="zpdw.asp"></a>
                          <%for ii=1 to index2 %>
						  <div align="left"><font color=#ff0000>〓</font>&nbsp;&nbsp;<a target =_blank href="company.asp?id=<%=rs("id")%>" class="STYLE11"><%=rs("name")%></a> 〖<%=rs("area")%>〗
                          <%a=instr(rs("rdate"),chr(32))-1 
								    response.write Mid(rs("rdate"),1,a)
								 									%>
                                                  <%
rs.movenext
if rs.eof then exit for
next
rs.close
%> </div>                        </TD>
                      </TR>
                      <TR>
                        <TD colSpan=4 height=5><TABLE cellSpacing=0 cellPadding=0 width="96%" border=0>
                            <TBODY>
                              <TR>
                                <TD><IMG height=5 
                        src="imagen/yqzp_imgaes_02.gif" 
                        width=5></TD>
                                <TD align=right><IMG height=5 
                        src="imagen/yqzp_imgaes_03.gif" 
                        width=5></TD>
                              </TR>
                            </TBODY>
                        </TABLE></TD>
                      </TR>
                    </TBODY>
              </TABLE>              </TD>
          </TR>
        </TBODY>
      </TABLE></TD>
      <TD width=2 rowspan="2"></TD>
      <TD width=19><IMG height=26 
                  src="imagen/web_01_04.gif" 
                width=19></TD>
      <TD width=186 background="imagen/web_01_05.gif">&nbsp;委托招聘</TD>
      <TD width=51 background="imagen/web_01_05.gif">&nbsp;<a href="consign.asp" target="_blank">更多</a></TD>
    </TR>
    <TR>
      <TD colspan="3"><table border="0" width="96%" cellspacing="0" cellpadding="0" id="table16" height="25">
<%
sql="select top "&index6&" id,jtzw,edus,sexs from consigns  order by addtime desc"
rs.open sql,conn,1,1
if rs.eof or rs.bof then
           response.write "暂无信息！"
           rs.close
           else
           for i1=1 to index6
%>
												<tr>
													<td width="25" height="18">
													  <p align="center" style="color: #FF0000; font-size: 14px">聘</td>
													<td height="20">
													<a title ="<%=rs("jtzw")%>" target =_blank href="show_consign.asp?id=<%=rs("id")%>">
													<%=rs("jtzw")%></a>  性别:<%=rs("sexs")%> 学历:<%=rs("edus")%></td>
												</tr>
<%
rs.movenext
if rs.eof then exit for
next
rs.close
end if
%>			
											
											</table></TD>
    </TR>
  </TBODY>
</TABLE>
<!--#include file="ad_syad2.asp"-->
<TABLE width=760 border=0 align="center" cellPadding=0 cellSpacing=0>
  <TBODY>
    <TR>
      <TD vAlign=top><TABLE cellSpacing=0 cellPadding=0 width=760 border=0>
        <TBODY>
          <TR>
            <TD vAlign=top><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width=8 height=26><IMG height=26 
                  src="imagen/list_l_u.gif" width=8></TD>
                  <TD width=18><IMG height=26 
                  src="imagen/list_l_but.gif" 
                width=18></TD>
                  <TD width="100%" 
                background="imagen/list_l_line.gif"><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                      <TR>
                        <TD colSpan=2 height=4></TD>
                      </TR>
                      <TR>
                        <TD width=6></TD>
                        <TD class=mune>最新招聘职位/人才信息</TD>
                      </TR>
                    </TBODY>
                  </TABLE></TD>
                  <TD width=2><IMG height=26 
                  src="imagen/list_l_u_r.gif" 
                width=2></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
            <TD width=4></TD>
            <TD vAlign=top width=187><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width=2 height=26><IMG height=26 
                  src="imagen/list_l_l02.gif" 
                width=2></TD>
                  <TD width=18><IMG height=26 
                  src="imagen/list_l_but02.gif" 
                  width=18></TD>
                  <TD width="100%" 
                background="imagen/list_l_line.gif"><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                      <TR>
                        <TD colSpan=2 height=4></TD>
                      </TR>
                      <TR>
                        <TD width=6></TD>
                        <TD class=mune>求职指导</TD>
                      </TR>
                    </TBODY>
                  </TABLE></TD>
                  <TD width=8><IMG height=26 
                  src="imagen/list_l_u02.gif" 
                width=8></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
          </TR>
        </TBODY>
      </TABLE></TD>
    </TR>
    <TR>
      <TD vAlign=top><TABLE width=760 border=0 align="left" cellPadding=0 cellSpacing=0>
        <TBODY>
          <TR>
            <TD width=1 bgColor=#fcc7c7></TD>
            <TD width="555" align=middle vAlign=top><TABLE cellSpacing=0 cellPadding=0 width=544 border=0>
              <TBODY>
                <TR>
                  <TD vAlign=top><%
sql="select top "&index3&" job.id,job.enid,job.jtzw,job.hka,job.city,job.addtime,en_user.vip from job,en_user where job.enid=en_user.id and en_user.lock=false order by job.addtime desc"
rs.open sql,conn,1,1
if rs.recordcount=0 then
rs.close
response.write "暂时没有推荐职业！" 
else
%>
                                <img src="images/job1.gif" width="544" height="40" border="0" usemap="#Map">
                                <table border="0" width="544" cellspacing="0" cellpadding="0" id="table12" height="49">
                                  <tr>
                                    <td height="25" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="146" align="center"><p><b>招聘职位</b></td>
                                    <td height="25" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="205" align="center"><p><b>公&nbsp; 司</b></td>
                                    <td height="25" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="101" align="center"><b>城&nbsp; 市</b></td>
                                    <td height="25" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="92" align="center"><b>日&nbsp; 期</b></td>
                                  </tr>
                                  <%
set rs2=server.createobject("adodb.recordset")
for ii=1 to index3
sql2="select id,name from en_user where id="&rs("enid")
rs2.open sql2,conn,1,1
%>
                                  <tr>
                                    <td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="146" height="25" align="center" background="images/bg1.gif"><a target =_blank  href="job.asp?id=<%=rs("id")%>">
									<% if (date()-rs("addtime"))<=3 then	%>					
										 <font color=#990099><%=rs("jtzw")%></font></a>
										<% end if %>
										<% if (date()-rs("addtime"))>3 then%>	 <%=rs("jtzw")%></a><% end if %></td>
                                    <td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="205" height="25" align="center" background="images/bg1.gif"><a  target =_blank href="company.asp?id=<%=rs2("id")%>">『<%=rs2("name")%>』</a>
                                        <%if rs("vip")=true then response.write "<font color='#FF0000'>VIP</font>"%></td>
                                    <td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="101" height="25" align="center" background="images/bg1.gif"><p align="center"><%=rs("hka")%>·<%=rs("city")%></td>
                                    <td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="92" height="25" align="center" background="images/bg1.gif"><%
										if (date()-rs("addtime"))<=10 then 
								a=instr(rs("addtime"),chr(32))-1
								response.write "<font color =#FF0000>" 
								response.write Mid(rs("addtime"),6,a-4) 
								response.write "<img  alt='最新加入招聘职位' src=images/hot.gif>"
								end if 
								if (date()-rs("addtime"))>10 then 
								 a=instr(rs("addtime"),chr(32))-1
								response.write Mid(rs("addtime"),1,a)								 
								end if 
							
								%>                                    </td>
                                  </tr>
                                  <%
rs.movenext
if rs.eof then exit for
rs2.close
next
rs.close
%>
                                </table>
                              <%
end if
%></TD>
                </TR>
                <TR>
                  <TD height=5></TD>
                </TR>
              </TBODY>
            </TABLE><%
sql="select top "&index4&" id,name,job1,gzdd,edu,sex,rdate,zhuanyen1,gzcs from in_user where lock=false and name<>''  order by rdate desc"
rs.open sql,conn,1,1
if rs.recordcount=0 then
rs.close
response.write "暂时没有注册用户！" 
else
%>
            <a href="http://www.ms0833.cn/"><img src="images/ms.jpg" alt="眉山计算机信息中心" width="550" height="75" border="0"></a>								<br><img src="images/person.gif" width="544" height="40" border="0" usemap="#Map2">
								<table border="0" width="544" cellspacing="0" cellpadding="0" id="table12" height="49">
									<tr>
										<td height="25" bgcolor="#DAE3DA" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="75" align="center">
										<p>
										<b>姓&nbsp; 名</b></td>
										<td height="25" bgcolor="#DAE3DA" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="54" align="center">
										<p>
										<b>性 别</b></td>
										<td height="25" bgcolor="#DAE3DA" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="62" align="center">
										<b>学 历</b></td>
										<td height="25" bgcolor="#DAE3DA" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="159" align="center">
										<b>专业</b></td>
										<td height="25" bgcolor="#DAE3DA" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="101" align="center"><strong>希望工作地区</strong></td>
										<td height="25" bgcolor="#DAE3DA" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="93" align="center">
										<b>日&nbsp; 期</b></td>
									</tr>
<%
for ii=1 to index4
%>	
								<tr>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="75" height="25" align="center" background="images/bg1.gif"><a  target =_blank href="person.asp?id=<%=rs("id")%>"><%=rs("name")%></a></td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="54" height="25" align="center" background="images/bg1.gif">
										[<%=rs("sex")%>]</td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="62" height="25" align="center" background="images/bg1.gif">
										[<%=rs("edu")%>]</td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="159" height="25" align="center" background="images/bg1.gif"><%=rs("zhuanyen1")%></td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="101" height="25" align="center" background="images/bg1.gif"><%=rs("gzdd")%>&nbsp;<%=rs("gzcs")%></td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="93" height="25" align="center" background="images/bg1.gif"><%
								if (date()-rs("rdate"))<=10 then 										
								a=instr(rs("rdate"),chr(32))-1
								response.write "<font color =#FF0000>" 
								response.write Mid(rs("rdate"),6,a-4)
								response.write "<img  alt='最新加入的人才' src=images/new.gif>"
								end if 										
								if (date()-rs("rdate"))>10 then 		
								a=instr(rs("rdate"),chr(32))-1
								response.write Mid(rs("rdate"),1,a)
								end if 
								%></td>
								  </tr>
<%
rs.movenext
if rs.eof then exit for
next
rs.close
%>
								</table>
<%
end if
%></TD>
            <TD width=1 bgColor=#fcc7c7></TD>
            <TD width=5></TD>
            <TD width=1 bgColor=#fcc7c7></TD>
            <TD vAlign=top align=middle width=196><TABLE cellSpacing=0 cellPadding=0 width="95%" align=center 
border=0>
              <TBODY>
                <TR>
                  <TD height=10></TD>
                </TR>
                <TR>
                  <TD vAlign=top><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                      <TR>
                        <TD width=177 height=68 rowSpan=2><IMG 
                        style="MARGIN-LEFT: 0px; MARGIN-RIGHT: 4px" height=52 
                        src="imagen/qjzd_img.gif" 
                        width=58 align=left border=1><B>专题：职业规划</B><BR>
                              你是不是发现你总是在找工作？你是不是觉得此刻你的职场道路坎坷万千，前途渺茫？你是不是对跳槽犹豫不决？……</TD>
                      </TR>
                    </TBODY>
                  </TABLE></TD>
                </TR>
                <TR>
                  <TD height=17></TD>
                </TR>
                <TR>
                  <TD><TABLE cellSpacing=1 cellPadding=0 width="100%" border=0>
                    <TBODY>
                      <TR bgColor=#fddddd height=25>
                        <TD width="48%" align=middle><a href="article2.asp" target="_blank" class="mune" style="color: #FF0000">求职技巧</a></TD>
                        <TD width="47%" align=middle><a href="article1.asp" target="_blank" class="mune" style="color: #FF0000">职场新闻</a></TD>
                        <TD width="5%" align=middle>&nbsp;</TD>
                      </TR>
                      <TR bgColor=#fddddd height=25>
                        <TD align=middle><a href="article1.asp" target="_blank" class="mune" style="color: #FF0000; font-weight: bold"></a><a href="qzjq1.html" target="_blank" class="mune" style="color: #FF0000">职场专题</a></TD>
                        <TD align=middle><a href="bbs/" target="_blank" class="mune" style="color: #FF0000; font-weight: bold">职场论坛</a><a href="article1.asp" target="_blank" class="mune" style="color: #FF0000; font-weight: bold"></a></TD>
                        <TD>&nbsp;</TD>
                      </TR>
                    </TBODY>
                  </TABLE></TD>
                </TR>
                <TR>
                  <TD height=17></TD>
                </TR>
                <TR>
                  <TD><table border="0" width="100%" cellspacing="0" cellpadding="0" id="table9" height="23">
<%
sql="select top "&index5&" id,title,addtime from article where class=2 order by id desc"
rs.open sql,conn,1,1
if rs.eof or rs.bof then
%>
											<tr>
												<td align="center" colspan="2">暂无新闻！
												　</td>
											</tr>
<%
rs.close
else
for i1=1 to index5
title=rs("title")
if len(title)>14 then title=left(title,12)&"..."
%>
											<tr>
												<td width="9%" align="center" height="23">
												  <p align="center" style="font-weight: bold; color: #FF0000">◎</td>
												<td height="23" width="91%"><a  target="_blank" href="show_article.asp?id=<%=rs("id")%>">
								<%=title%></a></td>
											</tr>
<%
rs.movenext
if rs.eof then exit for
next
rs.close
end if
%>			
										</table></TD>
                </TR>
                <TR>
                  <TD height=5></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
            <TD width=1 bgColor=#fcc7c7></TD>
          </TR>
          <TR>
            <TD colSpan=3><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width=8 height=7><IMG height=7 
                  src="imagen/list_l_d01.gif" 
                width=8></TD>
                  <TD width="100%" 
                background="imagen/list_l_d_line.gif" 
                height=7></TD>
                  <TD width=2><IMG height=7 
                  src="imagen/list_l_d_r.gif" 
                width=2></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
            <TD></TD>
            <TD colSpan=3><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width=2 height=7><IMG height=7 
                  src="imagen/list_l_d_d02.gif" 
                width=2></TD>
                  <TD width="100%" 
                background="imagen/list_l_d_line.gif" 
                height=7></TD>
                  <TD width=8><IMG height=7 
                  src="imagen/list_l_d02.gif" 
                width=8></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
          </TR>
        </TBODY>
      </TABLE></TD>
    </TR>
  </TBODY>
</TABLE>
<table width="757" border="0" align="center" cellspacing="0" style="border-left: 2px solid #ffc6bf; border-right: 2px solid #ffc6bf">
  <tr>
    <td height="30" background="imagen/web_01_05.gif" bgcolor="#FFE3C6"><span class="STYLE3"><img src="images/blue_point.gif" width="16" height="16"><span class="STYLE20"><span class="STYLE19"> 更多搜索-&gt;请输入你想应聘的职位或人才类型（如：销售助理、注册会计师、平面设计、建筑专业、应用物理等）</span><strong>↓</strong></span></span></td>
  </tr>
  <tr>
    <td height="105"><div align="center">
    <table width="200" border="1" cellspacing="0" bordercolor="#FF6666">
            <tr>
              <td><iframe id="baiduframe" marginwidth="0" marginheight="0" scrolling="no"
  framespacing="0" vspace="0" hspace="0" frameborder="0" width="750" height="90" 
  src="http://unstat.baidu.com/bdun.bsc?tn=ggang6_pg&cv=1&cid=1009000&csid=243&bgcr=ffffff&ftcr=000000&urlcr=0000ff&tbsz=500&sropls=1,2,3,4,5,6&kwgp=0">
</iframe>

 </td>
            </tr>
        </table>
    热门搜索关键字：<a href="http://www.baidu.com/s?wd=博客&bar=&cl=3&tn=ggang6_pg" target="_blank">博客</a> <a href="http://www.baidu.com/s?wd=mp3&bar=&cl=3&tn=ggang6_pg" target="_blank">mp3</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=游戏" target="_blank">游戏</a> <a href="http://www.baidu.com/s?wd=电影&bar=&cl=3&tn=ggang6_pg" target="_blank">电影</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=跑跑卡丁车" target="_blank">跑跑卡丁车</a> <a href="http://www.baidu.com/s?wd=迅雷&bar=&cl=3&tn=ggang6_pg" target="_blank">迅雷</a> <a href="http://www.baidu.com/s?wd=劲舞团&bar=&cl=3&tn=ggang6_pg" target="_blank">劲舞团</a> <a href="http://www.bhttp://www.baidu.com/s?tn=ggang6_pg&word=武林外传" target="_blank">武林外传</a> <a href="http://www.baidu.com/s?wd=蔡依林&bar=&cl=3&tn=ggang6_pg" target="_blank">蔡依林</a> <a href="http://www.baidu.com/s?wd=周杰伦&bar=&cl=3&tn=ggang6_pg" target="_blank">周杰伦</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&word=故宫" target="_blank">故宫</a> <a href="http://www.baidu.com/s?wd=刘亦菲&bar=&cl=3&tn=ggang6_pg" target="_blank">刘亦菲</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&word=人体艺术写真" target="_blank">人体艺术写真</a> <a href="http://www.baidu.com/s?wd=图片&bar=&cl=3&tn=ggang6_pg" target="_blank">图片</a> </div></td>
  </tr>
</table>
<table width="760" border="0" align="center" cellspacing="0"style="border-left: 2px solid #ffc6bf; border-right: 2px solid #ffc6bf">
  <tr>
    <td width="553"><div align="right"><a href="http://www.ggkjcn.com/ls" target="_blank"><img src="images/lsxz1.gif" alt="免费点歌，手机铃声图片下载" width="553" height="56" border="0"></a></div></td>
    <td width="200"><div align="left"><a href="http://www.ggkjcn.com/ls" target="_blank"><img src="images/ltxz.gif" alt="免费点歌，手机铃声图片下载" width="200" height="56" border="0"></a></div></td>
  </tr>
</table><!--#include file="syzpgr.asp"--> <%
set rs2=nothing
set rs=nothing
set conn=nothing
%>
<!--#include file="base_index.asp"-->
<map name="Map"><area shape="rect" coords="430,7,515,31" href="grqz.asp" target="_blank">
</map>
<map name="Map2"><area shape="rect" coords="422,4,513,30" href="qyzp.asp" target="_blank">
</map>