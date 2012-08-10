<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<html>
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"2" then
response.write "<script language=JavaScript>" & chr(13) & "alert('您还未登陆或登录超时，请重新登录后操作！！');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
%>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=webname%> - 会员中心 - 企业人才库</title>
<style type="text/css">
<!--
.STYLE4 {color: #FF0000; font-weight: bold; }
.STYLE6 {	font-size: 12pt;
	color: #0033CC;
}
.STYLE7 {font-size: 12px}
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
						<%'表格%>

						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="272">
								<tr>
									<td height="27" colspan="2">
									<p align="left">
									&nbsp;会员中心 → 企业招聘信息维护</td>
								</tr>
								<tr>
									<td width="25%" valign="top">
									<!--#include file="en_menu.asp"-->
									</td>
									<td width="75%" valign="top" align="center" style="border: 1px solid #000000">
																		<table border="0" width="93%" cellspacing="0" cellpadding="0" id="table5">
											<tr>
												<td height="40">
												<p align="center"><b>企业招聘信息提升到最前操作</b>                                                
												<p align="left"><span class="STYLE6">&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE7">随着招聘职位的增加，你的招聘职位可能会被置后显示，这样被浏览到的机率会大大降低，从而招聘成功率也会下降，本站特别为企业用户推出招聘职位提升服务，你随时可提升你的招聘职位显示位置【同时出现在本站首页“最新职位”和“职位信息”页面的顶部】，当你点击下面的提升职位按钮后，你的<span class="STYLE4">招聘职位将会自动提升到最前面显示</span>。</span></span>                                                
												<p align="center"></td>
											</tr>
											<tr>
												<td height="322" valign="top">
												<div align="center">
													<table border="0" width="517" cellspacing="0" cellpadding="0" id="table6">
<%
sql="select * from job where enid="&Request.Cookies("id")&" order by id desc"
rs.open sql,conn,1,1
if rs.recordcount=0 then
           response.write "您还没有发布招聘信息！"
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
															<td height="30" width="45" align="center" bordercolor="#C0C0C0" style="border-left:1px solid #C0C0C0; border-top:1px solid #C0C0C0; border-bottom:1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#D9D9D9">
															<p align="center">
															<font color="#0A5DF6">
														  <b>编号</b></font></td>
															<td height="30" width="151" align="center" bordercolor="#C0C0C0" style="border-left:1px solid #C0C0C0; border-top:1px solid #C0C0C0; border-bottom:1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#D9D9D9">
															<font color="#0A5DF6">
															<b>职&nbsp; 位</b></font></td>
															<td height="30" width="47" align="center" bordercolor="#C0C0C0" style="border-left:1px solid #C0C0C0; border-top:1px solid #C0C0C0; border-bottom:1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#D9D9D9">
															<font color="#0A5DF6">
															<b>学历</b></font></td>
															<td height="30" width="89" align="center" bordercolor="#C0C0C0" style="border-left:1px solid #C0C0C0; border-top:1px solid #C0C0C0; border-bottom:1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#D9D9D9">
															<font color="#0A5DF6">
															<b>发布日期</b></font></td>
															<td height="30" width="185" bordercolor="#C0C0C0" style="border: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#D9D9D9">
															<p align="center">
															<font color="#0A5DF6">
														  <b>操作</b></font></td>
														</tr>
														<%
for ii=1 to rs.pagesize
%>	
												<tr>
												  <td height="30" width="45" align="center" bordercolor="#C0C0C0" style="border-left: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"><%=rs("id")%></td>
															<td height="30" width="151" align="center" bordercolor="#C0C0C0" style="border-left: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
<a target="_blank" href="job.asp?id=<%=rs("id")%>"><%=rs("jtzw")%></a></td>
															<td height="30" width="47" align="center" bordercolor="#C0C0C0" style="border-left: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">[<%=rs("edus")%>]</td>
															<td height="30" width="89" align="center" bordercolor="#C0C0C0" style="border-left: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"><%
								a=instr(rs("addtime"),chr(32))-1
								response.write Mid(rs("addtime"),1,a)
								%></td>
															<td height="30" width="185" align="center" bordercolor="#C0C0C0" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
															<p align="center">
															<form method="POST" action="gotopdata_dw.asp?id=<%=rs("id")%>">
									<input type="submit" value="提升职位" name="G1">
                                  </form></td>
													  </tr>
														<%
rs.movenext
if rs.eof then exit for
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
							<form method="POST" action="gotop_dw.asp">
							<p align="center">当前页码:<font color="#FF0000"><%=session("page")%></font>/<%=rs.pagecount%>&nbsp;&nbsp;&nbsp;&nbsp; 
							&lt; <a href="gotop_dw.asp?action=f">首页</a>&nbsp;&nbsp;
							<a href="gotop_dw.asp?action=p">上一页</a>&nbsp;&nbsp;
							<a href="gotop_dw.asp?action=n">下一页</a>&nbsp;&nbsp;
							<a href="gotop_dw.asp?action=l">尾页</a> &gt;&nbsp;&nbsp;&nbsp;&nbsp; 跳转到 
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
set rs=nothing
set conn=nothing
%>

<!--#include file="base.asp"-->
</body>

</html>