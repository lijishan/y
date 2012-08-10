<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title>个人求职 - <%=webname%></title>
</head>

<body>
<!--#include file="top_index.asp"-->
<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="206">
		<tr>
			<td style="border-left: 1px solid #0086DF; border-right: 1px solid #0086DF" width="760" valign="top">
			<div align="center">
				<table border="0" width="99%" cellspacing="0" cellpadding="0" id="table2" height="205">
					<tr>
						<td width="206" valign="top" align="center">
						<table border="0" width="85%" cellspacing="0" cellpadding="0" id="table3">
							<tr>
								<td height="36" style="border-top:1px solid #D4D4D4; border-left:1px solid #D4D4D4; border-right:1px solid #D4D4D4; border-bottom-width: 1px">
								<img border="0" src="images/company1.gif" width="192" height="41"></td>
							</tr>
							<tr>
								<td height="36" style="border-left:1px solid #D4D4D4; border-right:1px solid #D4D4D4; border-bottom-width: 1px" valign="top">
										<div align="center">
											<table border="0" width="96%" cellspacing="0" cellpadding="0" id="table16" height="25">
<%
sql="select top 10 name,id from en_user where lock=false and name<>'' order by clicks desc"
rs.open sql,conn,1,1
if rs.eof or rs.bof then
           response.write "暂无企业信息！"
           rs.close
           else
           for i1=1 to 10
%>
												<tr>
													<td width="14" height="18">
													<p align="center">
													<img border="0" src="images/link1.gif" width="6" height="11"></td>
													<td height="20">
													<a title ="<%=rs("name")%>" target =_blank href="company.asp?id=<%=rs("id")%>">
													<%=rs("name")%></a></td>
												</tr>
<%
rs.movenext
if rs.eof then exit for
next
rs.close
end if
%>			
											
											</table>
										</div>
										</td>
							</tr>
							<tr>
								<td height="36" style="border-top:1px solid #D4D4D4; border-left:1px solid #D4D4D4; border-right:1px solid #D4D4D4; border-bottom-width: 1px">
								<img border="0" src="images/websearch.gif" width="192" height="41"></td>
							</tr>
							<tr>
								<td height="36" style="border-left: 1px solid #D4D4D4; border-right: 1px solid #D4D4D4; border-top-width: 1px; border-bottom-width: 1px">
								<table border="0" width="100%" cellspacing="0" cellpadding="0" height="25" id="table11">
							<form method="POST" action="search.asp" TARGET="_blank">
								<tr>
										<td height="30">
										<p align="left"> 
<SELECT SIZE=1 NAME=gzdd STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION value="0">请选择工作省份</OPTION>
<%
call listarea("")
%>
</SELECT></td>
									</tr>
									<tr>
										<td height="30">
										<p align="left"> 
												<SELECT SIZE="1" NAME="job" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF">
<OPTION VALUE="0">::请选择职位类别::</OPTION>
<%
call listjob("")
%>
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
<OPTION VALUE="不限">不限</OPTION> <OPTION VALUE="1">一天内</OPTION> 
<OPTION VALUE="2">二天内</OPTION> <OPTION VALUE="3">三天内</OPTION> <OPTION VALUE="7">一星期内</OPTION> 
<OPTION VALUE="14">二星期内</OPTION> <OPTION VALUE="30">一个月内</OPTION> <OPTION VALUE="91">三个月内</OPTION> 
<OPTION VALUE="183">六个月内</OPTION> <OPTION VALUE="365">一年内</OPTION> </SELECT></td>
									</tr>
									<tr>
										<td height="30">
										<input type="radio" value="1" checked name="class">职位&nbsp;&nbsp;&nbsp; 
										<input type="radio" name="class" value="2">人才</td>
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
end if %>
										</td>
									</tr>
								</form>
								</table>
								</td>
							</tr>
							<tr>
								<td height="36" style="border-top:1px solid #D4D4D4; border-left:1px solid #D4D4D4; border-right:1px solid #D4D4D4; ">
								<map name="FPMap1">
								<area href="article2.asp" shape="rect" coords="135, 9, 184, 24">
								</map>
								<img border="0" src="images/qzjq.gif" width="192" height="41" usemap="#FPMap1"></td>
							</tr>
							<tr>
								<td height="36" style="border-left:1px solid #D4D4D4; border-right:1px solid #D4D4D4">
								<img border="0" src="images/qzjq1.gif" width="192" height="70"></td>
							</tr>
							<tr>
								<td height="36" style="border-bottom:1px solid #D4D4D4; border-left:1px solid #D4D4D4; border-right:1px solid #D4D4D4; border-top-width: 1px; " valign="top">
										<div align="center">
											<table border="0" width="94%" cellspacing="0" cellpadding="0" id="table13" height="25">
<%
sql="select top 10 id,title from article where class=2 order by id desc"
rs.open sql,conn,1,1
if rs.eof or rs.bof then
           response.write "暂无文章！"
           rs.close
           else
           for i1=1 to 10
title=rs("title")
if len(title)>13 then title=left(title,11)&"..."
%>
												<tr>
													<td width="16" height="18">
													<p align="center">
													<img border="0" src="images/ls3.gif" width="13" height="22"></td>
													<td height="18">
													<a  target="_blank" href="show_article.asp?id=<%=rs("id")%>">
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
										</div>
										</td>							</tr>
						</table>
						</td>
						<td valign="top">
						<div align="center">
							<table border="0" width="99%" cellspacing="0" cellpadding="0" id="table14" height="193">
								<tr>
									<td height="46" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; border-bottom-width: 1px" width="540" background="images/bg6.gif">
									<table border="0" width="537" cellspacing="0" cellpadding="0" id="table15" height="30">
										<tr>
											<td valign="bottom" width="110">
											</td>
											<td width="427">
											<p align="right">
											<a href="grqz1.asp">&gt;&gt; 更多</a>&nbsp;&nbsp;&nbsp; </td>
										</tr>
									</table>
									</td>
								</tr>
								<tr>
									<td style="border-bottom:1px solid #C0C0C0; border-left:1px solid #C0C0C0; border-right:1px solid #C0C0C0; border-top-width: 1px" valign="top" align="center" height="57">
<%
sql="select top 10 id,enid,jtzw,hka,city,addtime from job where enid in (select id from en_user where vip=true and lock=false) order by id desc"
rs.open sql,conn,1,1
if rs.recordcount=0 then
rs.close
response.write "暂时没有推荐职业！" 
else
%><table border="0" width="544" cellspacing="0" cellpadding="0" id="table12" height="49">
									<tr>
										<td height="25" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="205" align="center">
										<p>
										<b>公&nbsp; 司</b></td>
										<td height="25" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="146" align="center">
										<p>
										<b>招聘职位</b></td>
										<td height="25" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="101" align="center">
										<b>城&nbsp; 市</b></td>
										<td height="25" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="92" align="center">
										<b>日&nbsp; 期</b></td>
									</tr>
<%
set rs2=server.createobject("adodb.recordset")
for ii=1 to 10
sql2="select id,name from en_user where id="&rs("enid")
rs2.open sql2,conn,1,1
%>	
								<tr>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="205" height="25" align="center" background="images/bg1.gif"><a  target =_blank href="company.asp?id=<%=rs2("id")%>">
															<%=rs2("name")%></a></td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="146" height="25" align="center" background="images/bg1.gif"><a target =_blank  href="job.asp?id=<%=rs("id")%>">
															<%=rs("jtzw")%></a></td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="101" height="25" align="center" background="images/bg1.gif">
										<p align="center"><%=rs("hka")%>·<%=rs("city")%></td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="92" height="25" align="center" background="images/bg1.gif">
										<%
								if (date()-rs("addtime"))<=10 then 
								a=instr(rs("addtime"),chr(32))-1
								response.write "<font color =#FF0000>" 
								response.write Mid(rs("addtime"),1,a) 
								response.write " New</font>"
								end if 
								if (date()-rs("addtime"))>10 then 
								 a=instr(rs("addtime"),chr(32))-1
								response.write Mid(rs("addtime"),1,a)								 
								end if 
								%>
								</td>
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
%>
</td>
								</tr>
								<tr>
									<td valign="top" align="center" height="15">
</td>
								</tr>
								<tr>
									<td height="46" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; border-bottom-width: 1px" width="540" background="images/bg7.gif">
									<table border="0" width="537" cellspacing="0" cellpadding="0" id="table15" height="30">
										<tr>
											<td valign="bottom" width="110">
											</td>
											<td width="427">
											<p align="right">
											<a href="grqz2.asp">&gt;&gt; 更多</a>&nbsp;&nbsp;&nbsp; </td>
										</tr>
									</table>
									</td>
								</tr>
								<tr>
									<td style="border-bottom:1px solid #C0C0C0; border-left:1px solid #C0C0C0; border-right:1px solid #C0C0C0; border-top-width: 1px" valign="top" align="center" height="57">
<%
sql="select top 20 id,enid,jtzw,hka,city,addtime from job where enid in (select id from en_user where lock=false and name<>'') order by id desc"
rs.open sql,conn,1,1
if rs.recordcount=0 then
rs.close
response.write "暂时没有推荐职业！" 
else
%><table border="0" width="544" cellspacing="0" cellpadding="0" id="table12" height="49">
									<tr>
										<td height="25" bgcolor="#D2F0AA" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="205" align="center">
										<p>
										<b>公&nbsp; 司</b></td>
										<td height="25" bgcolor="#D2F0AA" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="146" align="center">
										<p>
										<b>招聘职位</b></td>
										<td height="25" bgcolor="#D2F0AA" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="101" align="center">
										<b>城&nbsp; 市</b></td>
										<td height="25" bgcolor="#D2F0AA" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="92" align="center">
										<b>日&nbsp; 期</b></td>
									</tr>
<%
set rs2=server.createobject("adodb.recordset")
for ii=1 to 20
sql2="select id,name from en_user where id="&rs("enid")
rs2.open sql2,conn,1,1
%>	
								<tr>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="205" height="25" align="center" background="images/bg1.gif"><a  target =_blank href="company.asp?id=<%=rs2("id")%>">
															<%=rs2("name")%></a></td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="146" height="25" align="center" background="images/bg1.gif"><a target =_blank  href="job.asp?id=<%=rs("id")%>">
															<%=rs("jtzw")%></a></td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="101" height="25" align="center" background="images/bg1.gif">
										<p align="center"><%=rs("hka")%>·<%=rs("city")%></td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="92" height="25" align="center" background="images/bg1.gif">
										<%
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
								%>
								</td>
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
%>
</td>								</tr>
								</table>
						</div>
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
set rs=nothing
set conn=nothing
%>
<!--#include file="base.asp"-->
</body>

</html>