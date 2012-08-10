<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<html>
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('您还未登陆！');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
%>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=webname%> - 会员中心 - 站内信息</title>
<style type="text/css">
<!--
.STYLE1 {font-weight: bold}
.STYLE2 {
	color: #FF3399;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<!--#include file="top_index.asp"-->
<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="421">
		<tr>
			<td style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf; border-top: 1px solid #ffc6bf" width="760" valign="top" bgcolor="#FEFBF4">
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
						

						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="272">
								<tr>
									<td height="27" colspan="2">
									<p align="left">
									&nbsp;会员中心 → 站内信息</td>
								</tr>
								<tr>
									<td width="25%" valign="top">
									<%if Request.Cookies("user")="1" then%>
									<!--#include file="in_menu.asp"-->
									<%end if%>
									<%if Request.Cookies("user")="2" then%>
									<!--#include file="en_menu.asp"-->
									<%end if%>
									</td>
								  <td width="75%" valign="top" align="center" style="border: 1px solid #000000">
																		<table border="0" width="93%" cellspacing="0" cellpadding="0" id="table5">
											<tr>
												<td height="40">
												<p align="center"><b>站内信息</b></td>
											</tr>
											<tr>
												<td height="322" valign="top">
												<div align="center">
													<table border="0" width="517" cellspacing="0" cellpadding="0" id="table6" height="118">
<%
sql="select * from message where ttype='"&Request.Cookies("user")&"' and tid="&Request.Cookies("id")&" order by id desc"
rs.open sql,conn,1,1
if rs.recordcount=0 then
           response.write "您还没有任何信息！"
           else
rs.pagesize=10
if request("action")="n" then
session("page")=session("page")+1
else
if request("action")="p" then
session("page")=session("page")-1
else
if request("action")="f" then
session("page")=1
else
if request("action")="l" then
session("page")=rs.pagecount
else
if isnumeric(request("page1"))=true then
session("page")=clng(request("page1"))
else
session("page")=1
end if
end if
end if
end if
end if
if session("page")>rs.pagecount then session("page")=rs.pagecount
if session("page")<1 then session("page")=1
rs.absolutepage=session("page")

														%>
														<tr>
															<td height="30" width="26" align="center" bordercolor="#C0C0C0" style="border-left:1px solid #C0C0C0; border-top:1px solid #C0C0C0; border-bottom:1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#D9D9D9">
															<p align="center">
															<font color="#0A5DF6">
															<b>已读</b></font></td>
															<td height="30" width="217" align="center" bordercolor="#C0C0C0" style="border-left:1px solid #C0C0C0; border-top:1px solid #C0C0C0; border-bottom:1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#D9D9D9">
															<font color="#0A5DF6">
															<b>主题</b></font></td>
															<td height="30" width="123" align="center" bordercolor="#C0C0C0" style="border-left:1px solid #C0C0C0; border-top:1px solid #C0C0C0; border-bottom:1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#D9D9D9">
															<font color="#0A5DF6">
															<b>发信人</b></font></td>
															<td height="30" width="114" bordercolor="#C0C0C0" style="border: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#D9D9D9">
															<p align="center">
															<font color="#0A5DF6">
															<b>操作</b></font></td>
														</tr>
<%
set rs1=server.createobject("adodb.recordset")
for ii=1 to rs.pagesize
if rs("ftype")="1" then
sql1="select name from in_user where id="&rs("fid")
rs1.open sql1,conn,1,1
name="<a target='_blank' href='person.asp?id="&rs("fid")&"'>"&rs1("name")&"</a>"
rs1.close
end if
if rs("ftype")="2" then
sql1="select name from en_user where id="&rs("fid")
rs1.open sql1,conn,1,1
name="<a target='_blank' href='company.asp?id="&rs("fid")&"'>"&rs1("name")&"</a>"
rs1.close
end if
if rs("ftype")="0" then name="<font color='#FF0000'>"&"系统信息"&"</font>"
%>	
												
												<tr>
															<td height="30" width="26" align="center" bordercolor="#C0C0C0" style="border-left: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
															<img border="0" src="<%
															if rs("new")=true then
															response.write "images/m_news.gif"
															else
															response.write "images/m_olds.gif"
                                                            end if
															%>" width="21" height="14"></td>
															<td height="30" width="217" align="center" bordercolor="#C0C0C0" style="border-left: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
<a href="JavaScript:openScript('showmessage.asp?id=<%=rs("id")%>',450,300)"><%if rs("new")=true then response.write "<b>"%><%=rs("title")%><%if rs("new")=true then response.write "</b>"%></a></td>
															<td height="30" width="123" align="center" bordercolor="#C0C0C0" style="border-left: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
<%=name%></td>
															<td height="30" width="114" align="center" bordercolor="#C0C0C0" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
															<p align="center">
															<a href="JavaScript:openScript('showmessage.asp?id=<%=rs("id")%>',450,300)"><img border="0" src="images/cha_depot.gif" width="53" height="17"></a>
															<a onClick="{if(confirm('此操作将删除信息<<%=rs("title")%>>，继续吗？')){return true;}return false;}" href="del_message.asp?id=<%=rs("id")%>">
															<img border="0" src="images/del_depot.gif" width="53" height="17"></a></td>
													  </tr>
														<%
rs.movenext
if rs.eof then exit for
next
%>
	<tr>
															<td height="30" width="480" align="center" bordercolor="#C0C0C0" style="border-left: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" colspan="4" bgcolor="#E3E3E3">
															为节省空间，请及时删除无用的信息！<a onClick="{if(confirm('此操作将删除您的所有站内消息，继续吗？')){return true;}return false;}" href="del_message.asp?id=all"><img border="0" src="images/all_del.gif" width="80" height="17"></a></td>
													  </tr>
	<tr>
	  <td height="15" align="center" bordercolor="#C0C0C0" style="border-left: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" colspan="4">提示：本站站内信息<span class="STYLE2">最长保存时间为两个月</span>，到期后，不管是否阅读，都将被系统自动删除！</td>
	  </tr>
	</table>
												</div>
												</td>
											</tr>
											<tr>
												<td height="38" align="center">
												<table border="0" width="524" cellspacing="0" cellpadding="0" height="29">
						<tr>
							<td width="524" height="29">
							<form method="POST" action="message.asp">
							<p align="center">当前页码:<font color="#FF0000"><%=session("page")%></font>/<%=rs.pagecount%>&nbsp;&nbsp;&nbsp;&nbsp; 
							&lt; <a href="message.asp?action=f">首页</a>&nbsp;&nbsp;
							<a href="message.asp?action=p">上一页</a>&nbsp;&nbsp;
							<a href="message.asp?action=n">下一页</a>&nbsp;&nbsp;
							<a href="message.asp?action=l">尾页</a> &gt;&nbsp;&nbsp;&nbsp;&nbsp; 跳转到 
		<input type="text" name="page1" size="5" style="border: 1px solid #000000"> 页&nbsp; 
	<input type="submit" value="提交" name="B1"></form></td>
							</tr>
					</table>

												</td>
											</tr>
											<%end if%>
										</table>
									
　</td>
								</tr>
							</table>
						</div>
						<%'表格%>

						</td>
					</tr>
			  </table>
			</div>
			</td>
		</tr>
	</table>
</div>
<%
set rs1=nothing
rs.close
set rs=nothing
set conn=nothing
%>

<!--#include file="base.asp"-->
</body>

</html>