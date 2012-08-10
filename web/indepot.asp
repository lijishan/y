<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<html>
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"1" then
response.write "<script language=JavaScript>" & chr(13) & "alert('您还未登陆或登录超时，请重新登录后操作！！');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
%>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=webname%> - 会员中心 - 个人职位库</title>
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
									&nbsp;会员中心 → 个人职位库</td>
								</tr>
								<tr>
									<td width="25%" valign="top">
									<!--#include file="in_menu.asp"-->
									</td>
									<td width="75%" valign="top" align="center" style="border: 1px solid #000000">
																		<table border="0" width="93%" cellspacing="0" cellpadding="0" id="table5">
											<tr>
												<td height="40">
												<p align="center"><b>个人职位库</b></td>
											</tr>
											<tr>
												<td height="322" valign="top">
												<div align="center">
													<table border="0" width="511" cellspacing="0" cellpadding="0" id="table6">
														<%
sql="select id,jobid from indepot where inid="&Request.Cookies("id")&" order by id desc"
rs.open sql,conn,1,1
if rs.recordcount=0 then
           response.write "您暂时没有职位信息！"
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
															<td height="30" width="36" align="center" bordercolor="#C0C0C0" style="border-left:1px solid #C0C0C0; border-top:1px solid #C0C0C0; border-bottom:1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#D9D9D9">
															<p align="center">
															<font color="#0A5DF6">
															<b>编号</b></font></td>
															<td height="30" width="108" align="center" bordercolor="#C0C0C0" style="border-left:1px solid #C0C0C0; border-top:1px solid #C0C0C0; border-bottom:1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#D9D9D9">
															<font color="#0A5DF6">
															<b>招聘职位</b></font></td>
															<td height="30" width="154" align="center" bordercolor="#C0C0C0" style="border-left:1px solid #C0C0C0; border-top:1px solid #C0C0C0; border-bottom:1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#D9D9D9">
															<font color="#0A5DF6">
															<b>招聘单位</b></font></td>
															<td height="30" width="54" align="center" bordercolor="#C0C0C0" style="border-left:1px solid #C0C0C0; border-top:1px solid #C0C0C0; border-bottom:1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#D9D9D9">
															<font color="#0A5DF6">
															<b>工作城市</b></font></td>
															<td height="30" width="113" bordercolor="#C0C0C0" style="border: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#D9D9D9">
															<p align="center">
															<font color="#0A5DF6">
															<b>操作</b></font></td>
														</tr>
														<%
set rs1=server.createobject("adodb.recordset")
set rs2=server.createobject("adodb.recordset")
for ii=1 to rs.pagesize
sql1="select id,enid,jtzw,city from job where id="&rs("jobid")
rs1.open sql1,conn,1,1
set rs2=server.createobject("adodb.recordset")
sql2="select id,name from en_user where id="&rs1("enid")
rs2.open sql2,conn,1,1
%>	
												<tr>
															<td height="30" width="36" align="center" bordercolor="#C0C0C0" style="border-left: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"><%=rs("id")%></td>
															<td height="30" width="108" align="center" bordercolor="#C0C0C0" style="border-left: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
															<a target =_blank  href="job.asp?id=<%=rs1("id")%>">
															<%=rs1("jtzw")%></a></td>
															<td height="30" width="154" align="center" bordercolor="#C0C0C0" style="border-left: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
															<a  target =_blank href="company.asp?id=<%=rs2("id")%>">
															<%=rs2("name")%></a></td>
															<td height="30" width="54" align="center" bordercolor="#C0C0C0" style="border-left: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"><%=rs1("city")%></td>
															<td height="30" width="113" align="center" bordercolor="#C0C0C0" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
															<p align="center">
															<a href="job.asp?id=<%=rs1("id")%>" target="_blank">
															<img border="0" src="images/cha_depot.gif" width="53" height="17"></a>
															<a onClick="{if(confirm('此操作将删除<<%=rs1("jtzw")%>>的招聘信息，继续吗？')){return true;}return false;}" href="del_indepot.asp?id=<%=rs("id")%>">
															<img border="0" src="images/del_depot.gif" width="53" height="17"></a></td>
														</tr>
														<%
rs.movenext
if rs.eof then exit for
rs1.close
rs2.close
next
%>
	</table>
												</div>
												</td>
											</tr>
											<tr>
												<td height="38" align="center">
												<table border="0" width="524" cellspacing="0" cellpadding="0" height="29">
						<tr>
							<td width="524" height="29">
							<form method="POST" action="indepot.asp">
							<p align="center">当前页码:<font color="#FF0000"><%=session("page")%></font>/<%=rs.pagecount%>&nbsp;&nbsp;&nbsp;&nbsp; 
							&lt; <a href="indepot.asp?action=f">首页</a>&nbsp;&nbsp;
							<a href="indepot.asp?action=p">上一页</a>&nbsp;&nbsp;
							<a href="indepot.asp?action=n">下一页</a>&nbsp;&nbsp;
							<a href="indepot.asp?action=l">尾页</a> &gt;&nbsp;&nbsp;&nbsp;&nbsp; 跳转到 
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
rs.close
set rs1=nothing
set rs2=nothing
set rs=nothing
set conn=nothing
%>

<!--#include file="base.asp"-->
</body>

</html>