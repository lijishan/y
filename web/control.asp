<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<html>
<%
if Request.Cookies("ggval")<>"81528686528" then 
Response.Cookies("id")=""
Response.Cookies("ac")=""
Response.Cookies("user")="" 
end if 
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('您还未登陆或登录超时，请重新登录后操作！！');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if

if Request.Cookies("user")="1" then
sql="select job1 from in_user where id="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
if isnull(rs("job1")) then
response.write "<script language=JavaScript>" & chr(13) & "alert('您还需填写余下的基本信息!【应聘资料共3页,请仔细填写每一项，这样才能被招聘方搜索到！！】');"&"window.location.href = 'in_control1.asp'"&" </script>"

end if
rs.close
end if 
%>
 <head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=webname%> - 会员中心</title>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
.STYLE2 {font-size: 12px}
.STYLE4 {color: #FF0000; font-weight: bold; }
.STYLE5 {
	color: #006666;
	font-weight: bold;
}
.STYLE6 {
	font-size: 16pt;
	color: #CC33CC;
}
-->
</style>
</head>

<body>
<!--#include file="top_index.asp"-->
<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="421">
		<tr>
			<td style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf;border-top: 1px solid #ffc6bf" width="760" valign="top" bgcolor="#FEFBF4">
			<div align="center">
				<table border="0" width="705" cellspacing="0" cellpadding="0" id="table2" height="379">
					<tr>
						<td height="86" width="214">
						<img border="0" src="images/control.gif" width="282" height="90"></td>
						<td height="86" width="237">　</td>
						<td height="86" width="128">
						<img border="0" src="images/controltop1.gif" width="128" height="90"></td>
						<td height="86" width="58">　</td>
					</tr>
					<tr>
						<td width="705" colspan="4" valign="top">
						<%
						if Request.Cookies("user")="1" then
						%>

						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="272">
								<tr>
									<td height="27">
									<p align="left">
									&nbsp;会员中心 → 首页</td>
								    <td height="27"><div align="center" class="STYLE5">提示：为了你的资料安全，退出会员中心一定要点“<span class="STYLE6">退出会员中心</span>”</div></td>
								</tr>
								<tr>
									<td width="26%" rowspan="2" valign="top"><!--#include file="in_menu.asp"--></td>
									<td width="74%" valign="top" align="center" background="images/men.gif" bgcolor="#FEFBF4">
									<div align="center">
										<table border="0" width="90%" cellspacing="0" cellpadding="0" id="table5" height="242">
											<tr>
												<td valign="top">
												<table border="0" width="470" cellspacing="0" cellpadding="0" id="table6" height="365">
													<tr>
													  <td height="30" colspan="3">
												<font color="#000000"><b>&nbsp;&nbsp;&nbsp;
												</b></font><b>
												<font color="#0A5DF6">亲爱的个人用户：<%=Request.Cookies("ac")%>，您好！欢迎加入杰博528免费人才招聘网，我们将为您提供最贴切的服务！</font></b></td>
													</tr>
													<tr>
														<td colspan="3">　<font color=#ff0000>
													  <MARQUEE onmousemove=this.stop() onmouseout=this.start() scrollAmount=2>													  [好消息！！本站感谢广大朋友的支持与厚爱，首页照片显示，每天仅需1元！！版面有限，敬请从速！！QQ：451079368，电话：13981528686 
													  </MARQUEE></font></td>
													</tr>
													<tr>
														<td height="30" colspan="3">
														<p align="left"><b>
													  以下是您的站内基本信息： </b>【<img src="images/jtou.gif" width="16" height="16"><a href="yfcb_gr.html" target="_blank">了解普通用户与VIP用户差别</a>】</td>
													</tr>
													<tr>
														<td height="30" width="130" align="left">
														<p align="right">用户类别：</td>
														<td height="30" width="12" align="left">
														　</td>
													  <td height="30" width="328">
														<font color="#FF0000"><%
														if Request.Cookies("vip")="true" then
														response.write "VIP高级"
														else
														response.write "普通级别"
                                                        end if
														%></font>个人用户&nbsp; 
														系统编号：<%
														if Request.Cookies("user")="1" then
														response.write "IN"&Request.Cookies("id")
														else
														response.write "EN"&Request.Cookies("id")
														end if
														%></td>
													</tr>
													<tr>
														<td height="30" width="130" align="left">
														<p align="right">
														您的站内信息：</td>
											<%
											sql="select id from message where ttype='"&Request.Cookies("user")&"' and tid="&Request.Cookies("id")
											rs.open sql,conn,1,1
										%>
														<td height="30" width="12" align="left">
														　</td>
														<td height="30" width="328"><%=rs.recordcount%>条</td>
													</tr>
													<tr>
														<td height="30" width="130" align="left">
														<p align="right">您的职位库存：</td>
														<%
														rs.close
														sql="select id from indepot where inid="&Request.Cookies("id")
														rs.open sql,conn,1,1
														%>
														<td height="30" width="12" align="left">
														　</td>
														<td height="30" width="328"><%=rs.recordcount%>个</td>
													</tr>
													<tr>
														<td height="30" width="130" align="left">
														<p align="right">
														您的个人简历被阅：</td>
														<%
														rs.close
														sql="select clicks from in_user where id="&Request.Cookies("id")
														rs.open sql,conn,1,1							
														%>
														<td height="30" width="12" align="left">
														　</td>
														<td height="30" width="328"><%=rs("clicks")%>次</td>
													</tr>
													<tr>
														<td height="15" width="130" align="left">
														<p align="right">
														收录您入库的企业：</td>
														<%
														rs.close
														sql="select id from endepot where inid="&Request.Cookies("id")
														rs.open sql,conn,1,1							
														%>
														<td width="12" height="18" align="left">
														　</td>
														<td width="328" height="15"><%=rs.recordcount%>个</td>
													</tr>
													<tr>
													  <td height="12" align="left"><div align="right" ><font color=#ff0000>图片服务开始时间：</font></div></td>
											          <td height="12" align="left">&nbsp;</td>
											          <td height="12" align="left">
													  <%
														rs.close
														sql="select picdays,picdate,rz from in_user where id="&Request.Cookies("id")
														rs.open sql,conn,1,1							
														 if not(isnull(rs("picdate"))) then 
														 response.write rs("picdate")
														 else 
														response.write "你暂没有申请付费服务！！"
														end if %>														 </td>
												  </tr>
													<tr>
													  <td height="12" align="left"><div align="right"><font color=#ff0000>图片服务总天数：</font></div></td>
												      <td height="12" align="left">&nbsp;</td>
												      <td height="12" align="left">
														 <%
																	
														 if not(isnull(rs("picdays"))) then 
														 response.write rs("picdays") 
													     response.write"天"
														 else 
														response.write "你暂没有申请图片服务！！"
														end if %></td>
												  </tr>
													<tr>
													  <td height="6" align="left"><div align="right"><font color=#ff0000>已提供服务天数：</font></div></td>
												      <td height="12" rowspan="2" align="left">&nbsp;</td>
												      <td height="12" align="left">
													  <% if  date()-rs("picdate")>rs("picdays")then
													  response.write "你申请付费服务已到期！！"
													  else
													  response.write date()-rs("picdate")&"天"													  end if 
													  %></td>
												  </tr>
													<tr>
													  <td height="6" align="left"><div align="right">◆◆身份状态◆◆：</div></td>
												      <td height="6" align="left"><% if  rs("rz")=true then
													  response.write "<font color=#0033CC>★★认证会员★★</font>"
													  else
													  response.write "<font color=#0033CC>●●非认证会员●●</font>"
													  end if 
													  %> 
												      [会员认证是免费的，<a href="rz.html" target="_blank">详情</a>] </td>
												  </tr>
													<tr>
														<td height="57" align="left" colspan="3">　<b>提示：只有所有必填信息填写完毕后您的资料才可能被用人单位所搜索</b><br>
														  &nbsp;&nbsp;&nbsp;&nbsp;简历推荐星级：注册未填写完详细信息
														    <font color=#ff0000>2星</font>， 填写完所有信息 <font color=#ff0000>3星</font>，上传有图片 <font color=#ff0000>4星</font>，首页（排行榜）推荐
														    <font color=#ff0000>5星</font>。
												          <p></td>
													</tr>
												</table>												</td>
											</tr>
										</table>
									</div>									</td>
								</tr>
								<tr>
								  <td valign="top" align="center" bgcolor="#FEFBF4"><table width="460" height="160" border="1" align="center" cellspacing="0" bordercolor="#FFCCFF">
                                    <tr>
                                      <td colspan="2"><p align="center" ><font color=#0066FF>杰博528人才网，首页黄金推荐位价格表</font><span class="STYLE4">[自选服务]</span></p>                                        </td>
                                    </tr>
                                    <tr>
                                      <td width="245"><span class="STYLE2">推荐A位：200元/推荐项.月 </span></td>
                                      <td width="205"><span class="STYLE2">推荐B位：350元/推荐项.月</span></td>
                                    </tr>
                                    <tr>
                                      <td><p class="STYLE2">推荐C位：200元/推荐项.周 </p>                                        </td>
                                      <td width="205"><span class="STYLE2">推荐D位：300元/推荐项.月</span></td>
                                    </tr>
                                    <tr>
                                      <td><p class="STYLE2">推荐E位：200元/推荐项.月 </p>                                        </td>
                                      <td width="205"><span class="STYLE2">推荐F位：300元/推荐项.月</span></td>
                                    </tr>
                                    <tr>
                                      <td><p class="STYLE2">推荐G位：200元/推荐项.月 </p>                                        </td>
                                      <td width="205"><span class="STYLE2">推荐H位：200元/推荐项.月</span></td>
                                    </tr>
                                    <tr>
                                      <td><p><font color=#ff0000>推荐H位：1元/推荐项.天（个人首页推荐）</font></p>                                      </td>
                                      <td width="205"><span class="STYLE2">推荐I位：200元/推荐项.月 </span></td>
                                    </tr>
                                    <tr>
                                      <td><span class="STYLE2">推荐J位：50元/推荐项.月 </span></td>
                                      <td width="205"><span class="STYLE2">特别推荐位置，价商定</span></td>
                                    </tr>
                                    <tr>
                                      <td colspan="2"><div align="right"><a href="tjjw.html" target="_blank"><strong>查看详细介绍</strong>...</a></div></td>
                                    </tr>
                                  </table>								    
								  <p class="STYLE2">&nbsp;</p>							      </td>
							  </tr>
							</table>
						</div>
						<%
						else
						%>

						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="272">
								<tr>
									<td height="27">
									<p align="left">
									&nbsp;会员中心 → 首页用户</td>
								    <td height="27"><div align="center"><span class="STYLE5">提示：为了你的资料安全，退出会员中心一定要点“<span class="STYLE6">退出会员中心</span>”</span></div></td>
								</tr>
								<tr>
									<td width="26%" rowspan="2" valign="top">
									<!--#include file="en_menu.asp"-->									</td>
									<td width="74%" valign="top" align="center" background="images/men.gif" bgcolor="#FEFBF4">
									<div align="center">
										<table border="0" width="90%" cellspacing="0" cellpadding="0" id="table5" height="242">
											<tr>
												<td valign="top">
												<table border="0" width="470" cellspacing="0" cellpadding="0" id="table6" height="356">
													<tr>
														<td height="30" colspan="3">
												<font color="#000000"><b>&nbsp;&nbsp;&nbsp;
												</b></font><b>
												<font color="#0A5DF6">亲爱的企业用户：<%=Request.Cookies("ac")%>，您好！欢迎加入杰博528免费人才招聘网，我们将为您提供最贴切的服务！</font></b></td>
													</tr>
													
													<tr>
														<td height="30" colspan="3">
														<p align="left"><b>
													  以下是您的站内基本信息：</b>【<img src="images/jtou.gif" width="16" height="16"><a href="yfcb_dw.html" target="_blank">了解普通用户与VIP用户差别</a>】</td>
													</tr>
													<tr>
														<td height="29" width="156" align="left">
														<p align="right">用户类别：</td>
														<td height="29" width="18" align="left">
														　</td>
														<td height="29" width="296"><font color="#FF0000"><%
														if Request.Cookies("vip")="true" then
														response.write "VIP高级"
														else
														response.write "普通级别"
                                                        end if
														%></font>企业用户&nbsp; 
														系统编号：<%
														if Request.Cookies("user")="1" then
														response.write "IN"&Request.Cookies("id")
														else
														response.write "EN"&Request.Cookies("id")
														end if
														%></td>
													</tr>
													<tr>
														<td height="29" width="156" align="left">
														<p align="right">
														您的站内信息：</td>
											<%
											sql="select id from message where ttype='"&Request.Cookies("user")&"' and tid="&Request.Cookies("id")
											rs.open sql,conn,1,1
										%>
														<td height="29" width="18" align="left">
														　</td>
														<td height="29" width="296"><%=rs.recordcount%>条</td>
													</tr>
													<tr>
														<td height="30" width="156" align="left">
														<p align="right">您的招聘信息：</td>
														<%
											rs.close
										
											sql="select id from job where enid="&Request.Cookies("id")
											rs.open sql,conn,1,1
										%>
														<td height="30" width="18" align="left">
														　</td>
														<td height="30" width="296"><%=rs.recordcount%>条</td>
													</tr>
													<tr>
														<td height="31" width="156" align="left">
														<p align="right">您的人才库存：</td>
														<%
														rs.close
														sql="select id from endepot where enid="&Request.Cookies("id")
														rs.open sql,conn,1,1
														%>
														<td height="31" width="18" align="left">
														　</td>
														<td height="31" width="296"><%=rs.recordcount%>个</td>
													</tr>
													<tr>
														<td height="30" width="156" align="left">
														<p align="right">
														您的公司资料被阅：</td>
														<%
														rs.close
														sql="select clicks from en_user where id="&Request.Cookies("id")
														rs.open sql,conn,1,1							
														%>
														<td height="30" width="18" align="left">
														　</td>
														<td height="30" width="296"><%=rs("clicks")%>次</td>
													</tr>
													<tr>
														<td height="15" width="156" align="left">
														<p align="right">
														招聘信息被收录：</td>
														<%
														rs.close
														sql="select id from indepot where jobid in (select id from job where enid="&Request.Cookies("id")&")"
														rs.open sql,conn,1,1							
														%>
														<td width="18" height="0" align="left">
														　</td>
														<td width="296" height="0"><%=rs.recordcount%>次</td>
													</tr>
													<tr>
                                                      <td height="12" align="left"><div align="right"><font color=#ff00000>图片服务开始时间：</font></div></td>
													  <td height="12" align="left">&nbsp;</td>
													  <td height="12" align="left"><%
														rs.close
														sql="select picdays,picdate,rz from en_user where id="&Request.Cookies("id")
														rs.open sql,conn,1,1							
														 if not(isnull(rs("picdate"))) then 
														 response.write rs("picdate")
														 else 
														response.write "你暂没有申请图片服务！！"
														end if %>                                                      </td>
												  </tr>
													<tr>
                                                      <td height="12" align="left"><div align="right"><font color=#ff00000>图片服务总天数：</font></div></td>
													  <td height="12" align="left">&nbsp;</td>
													  <td height="12" align="left"><%
																	
														 if not(isnull(rs("picdays"))) then 
														 response.write rs("picdays") 
													     response.write"天"
														 else 
														response.write "你暂没有申请付费服务！！"
														end if %></td>
												  </tr>
													<tr>
                                                      <td height="6" align="left"><div align="right" ><font color=#ff00000>已提供服务天数：</font></div></td>
													  <td height="12" rowspan="2" align="left">&nbsp;</td>
													  <td height="12" align="left"><% if  date()-rs("picdate")>rs("picdays")then
													  response.write "你申请付费服务已到期！！"
													  else
													  response.write date()-rs("picdate")&"天"													  end if 
													  %></td>
												  </tr>
													<tr>
													  <td height="6" align="left"><div align="right">◆◆身份状态◆◆：</div></td>
												      <td height="12" align="left"><% if  rs("rz")=true then
													  response.write "<font color=#0033CC>★★认证会员★★</font>"
													  else
													  response.write "<font color=#0033CC>●●非认证会员●●</font>"
													  end if 
													  %>
[会员认证是免费的，<a href="rz.html" target="_blank">详情</a>] </td>
												  </tr>
													
													<tr>
														<td height="12" align="left" colspan="3">　<b>提示：只有所有必填信息填写完毕您的资料才可能被求职者所搜索</b></td>
													</tr>
												</table>												</td>
											</tr>
										</table>
									</div>									</td>
								</tr>
								<tr>
								  <td valign="top" align="center" bgcolor="#FEFBF4"><table width="460" height="160" border="1" align="center" cellspacing="0" bordercolor="#FFCCFF">
                                    <tr>
                                      <td colspan="2"><p align="center" ><font color=#0066FF>杰博528人才网，首页黄金推荐位价格表</font><span class="STYLE4">[自选服务]</span></p></td>
                                    </tr>
                                    <tr>
                                      <td width="245"><span class="STYLE2">推荐A位：200元/推荐项.月 </span></td>
                                      <td width="205"><span class="STYLE2">推荐B位：350元/推荐项.月</span></td>
                                    </tr>
                                    <tr>
                                      <td><p class="STYLE2">推荐C位：200元/推荐项.周 </p></td>
                                      <td width="205"><span class="STYLE2">推荐D位：300元/推荐项.月</span></td>
                                    </tr>
                                    <tr>
                                      <td><p class="STYLE2">推荐E位：200元/推荐项.月 </p></td>
                                      <td width="205"><span class="STYLE2">推荐F位：300元/推荐项.月</span></td>
                                    </tr>
                                    <tr>
                                      <td><p class="STYLE2">推荐G位：200元/推荐项.月 </p></td>
                                      <td width="205"><span class="STYLE2">推荐H位：200元/推荐项.月</span></td>
                                    </tr>
                                    <tr>
                                      <td><p class="STYLE2">推荐H位：1元/推荐项.天 </p></td>
                                      <td width="205"><span class="STYLE2">推荐I位：200元/推荐项.月 </span></td>
                                    </tr>
                                    <tr>
                                      <td><span class="STYLE2">推荐J位：50元/推荐项.月 </span></td>
                                      <td width="205"><span class="STYLE2">特别推荐位置，价商定</span></td>
                                    </tr>
                                    <tr>
                                      <td colspan="2"><div align="right"><a href="tjjw.html" target="_blank"><strong>查看详细介绍</strong>...</a></div></td>
                                    </tr>
                                  </table></td>
							  </tr>
							</table>
						</div><%
end if
%>
						</td>
					</tr>
			  </table>
			</div>
			</td>
		</tr>
	</table>
</div>
<%
rs.close
set rs=nothing
set conn=nothing
%>
<!--#include file="base.asp"-->
</body>

</html>