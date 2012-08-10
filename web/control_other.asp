
<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="421">
		<tr>
			<td style="border-left: 1px solid #0086DF; border-right: 1px solid #0086DF" width="760" valign="top" bgcolor="#FEFBF4">
			<div align="center">
				<table border="0" width="705" cellspacing="0" cellpadding="0" id="table2" height="379">
					<tr>
						<td height="86" width="214">
						<img border="0" src="../images/control.gif" width="282" height="90"></td>
						<td height="86" width="237">　</td>
						<td height="86" width="128">
						<img border="0" src="../images/controltop1.gif" width="128" height="90"></td>
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
									<td height="27" colspan="2">
									<p align="left">
									&nbsp;会员中心 → 首页</td>
								</tr>
								<tr>
									<td width="26%" valign="top"><!--#include file="in_menu_other.asp"--></td>
									<td width="74%" valign="top" align="center" background="../images/men.gif" bgcolor="#FEFBF4">
									<div align="center">
										<table border="0" width="90%" cellspacing="0" cellpadding="0" id="table5" height="242">
											<tr>
												<td valign="top">
												<table border="0" width="470" cellspacing="0" cellpadding="0" id="table6" height="369">
													<tr>
														<td height="30" colspan="3">
												<font color="#000000"><b>&nbsp;&nbsp;&nbsp;
												</b></font><b>
												<font color="#0A5DF6">亲爱的个人用户：<%=Request.Cookies("ac")%>，您好！欢迎加入杰博528免费人才招聘网，我们将为您提供最贴切的服务！</font></b></td>
													</tr>
													<tr>
														<td height="10" colspan="3" bgcolor="#000000">　<font color=#ffff00>
													  <MARQUEE onmousemove=this.stop() onmouseout=this.start() scrollAmount=2>
													  [好消息！！本站感谢广大朋友的支持与厚爱，首页照片显示，每天仅需1元！！版面有限，敬请从速！！QQ：451079368，电话：13981528686 
													  </MARQUEE></font></td>
													</tr>
													<tr>
														<td height="30" colspan="3">
														<p align="left"><b>
														以下是您的站内基本信息：</b></td>
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
													  <td height="12" align="left"><div align="right" ><font color=#ff0000>付费服务开始时间：</font></div></td>
											          <td height="12" align="left">&nbsp;</td>
											          <td height="12" align="left">
													  <%
														rs.close
														sql="select picdays,picdate,rz from in_user where id="&Request.Cookies("id")
														rs.open sql,conn,1,1							
														 if not(isnull(rs("picdate"))) then 
														 response.write rs("picdate")
														 else 
														response.write "你暂没有申请传费服务！！"
														end if %>														 </td>
												  </tr>
													<tr>
													  <td height="12" align="left"><div align="right"><font color=#ff0000>付费服务总天数：</font></div></td>
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
												      <td height="12" align="left"><% if  rs("rz")=true then
													  response.write "<font color=#0033CC>★★认证会员★★</font>"
													  else
													  response.write "<font color=#0033CC>●●非认证会员●●</font>"
													  end if 
													  %>
[会员认证是免费的，<a href="../rz.html" target="_blank">详情</a>] </td>
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
							</table>
						</div>
						<%
						else
						%>

						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="272">
								<tr>
									<td height="27" colspan="2">
									<p align="left">
									&nbsp;会员中心 → 首页用户</td>
								</tr>
								<tr>
									<td width="26%" valign="top">
									<!--#include file="en_menu_other.asp"-->
									</td>
									<td width="74%" valign="top" align="center" background="../images/men.gif" bgcolor="#FEFBF4">
									<div align="center">
										<table border="0" width="90%" cellspacing="0" cellpadding="0" id="table5" height="242">
											<tr>
												<td valign="top">
												<table border="0" width="470" cellspacing="0" cellpadding="0" id="table6" height="417">
													<tr>
														<td height="30" colspan="3">
												<font color="#000000"><b>&nbsp;&nbsp;&nbsp;
												</b></font><b>
												<font color="#0A5DF6">亲爱的企业用户：<%=Request.Cookies("ac")%>，您好！欢迎加入杰博528免费人才招聘网，我们将为您提供最贴切的服务！</font></b></td>
													</tr>
													<tr>
														<td height="10" colspan="3" bgcolor="#000000">　<font color=#ffff00>
													  <MARQUEE onmousemove=this.stop() onmouseout=this.start() scrollAmount=2>
													  [好消息！！本站感谢广大朋友的支持与厚爱，首页推荐招聘职位，每个职位每月只需要200元，包年1500元！！版面有限，敬请从速！！QQ：451079368，电话：13981528686 
													  </MARQUEE></font></td>
													</tr>
													<tr>
														<td height="30" colspan="3">
														<p align="left"><b>
														以下是您的站内基本信息：</b></td>
													</tr>
													<tr>
														<td height="30" width="156" align="left">
														<p align="right">用户类别：</td>
														<td height="30" width="18" align="left">
														　</td>
														<td height="30" width="296"><font color="#FF0000"><%
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
														<td height="30" width="156" align="left">
														<p align="right">
														您的站内信息：</td>
											<%
											sql="select id from message where ttype='"&Request.Cookies("user")&"' and tid="&Request.Cookies("id")
											rs.open sql,conn,1,1
										%>
														<td height="30" width="18" align="left">
														　</td>
														<td height="30" width="296"><%=rs.recordcount%>条</td>
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
														<td height="30" width="156" align="left">
														<p align="right">您的人才库存：</td>
														<%
														rs.close
														sql="select id from endepot where enid="&Request.Cookies("id")
														rs.open sql,conn,1,1
														%>
														<td height="30" width="18" align="left">
														　</td>
														<td height="30" width="296"><%=rs.recordcount%>个</td>
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
                                                      <td height="12" align="left"><div align="right"><font color=#ff0000>付费</font><font color=#ff00000>服务开始时间：</font></div></td>
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
                                                      <td height="12" align="left"><div align="right"><font color=#ff0000>付费</font><font color=#ff00000>服务总天数：</font></div></td>
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
													  <td height="12">
													  <% if  date()-rs("picdate")>rs("picdays")then
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
[会员认证是免费的，<a href="../rz.html" target="_blank">详情</a>] </td>
												  </tr>
													
													<tr>
														<td height="57" align="left" colspan="3">　<p>
														<b>
														提示：只有所有必填信息填写完毕您的资料才可能被求职者所搜索</b>                                                        
														  <p></td>
													</tr>
												</table>
												</td>
											</tr>
										</table>
									</div>
									</td>
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