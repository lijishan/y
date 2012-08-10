<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title>求职技巧 -<%=webname%></title>
</head>

<body>
<!--#include file="top_index.asp"-->
<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="206">
		<tr>
			<td style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf; border-top: 1px solid #ffc6bf" width="760" valign="top">
			<div align="center">
				<table border="0" width="99%" cellspacing="0" cellpadding="0" id="table2" height="205">
					<tr>
						<td width="206" valign="top" align="center">
						<table border="0" width="87%" cellspacing="0" cellpadding="0" id="table3">
							<tr>
								<td height="36" style="border-top:1px solid #D4D4D4; border-left:1px solid #D4D4D4; border-right:1px solid #D4D4D4; border-bottom-width: 1px">
								<img border="0" src="images/article.gif" width="192" height="41"></td>
							</tr>
							<tr>
								<td height="36" style="border-left: 1px solid #D4D4D4; border-right: 1px solid #D4D4D4; border-top-width: 1px; border-bottom-width: 1px">
								<table border="0" width="95%" cellspacing="0" cellpadding="0" height="25" id="table11">
							<form method="POST" action="search_article.asp" TARGET="_blank">
								<tr>
										<td height="30">
										<p align="left"> 
<select size="1" name="class">
<option value="0" selected>请选择文章类别</option>
<option value="1">新闻动态</option>
<option value="2">求职技巧</option>
</select></td>
									</tr>
									<tr>
										<td height="30">
										<p align="left"> 
												<select size="1" name="how">
												<option selected value="1">按文章标题
												</option>
												<option value="2">按文章内容</option>
												</select></td>
									</tr>
									<tr>
										<td height="30">  
						<input onFocus="this.value=''" type="text" name="what" size="20" value="关键字"></td>
									</tr>
									<tr>
										<td height="30">
										<p align="center">
										<input border="0" src="images/s2.gif" name="I1" width="53" height="20" type="image"></td>
									</tr>
									</form>
								</table>
								</td>
							</tr>
							<tr>
								<td height="36" style="border-top:1px solid #D4D4D4; border-left:1px solid #D4D4D4; border-right:1px solid #D4D4D4; ">
								<img border="0" src="images/article2.gif" width="192" height="41"></td>
							</tr>
							<tr>
								<td height="36" style="border-left:1px solid #D4D4D4; border-right:1px solid #D4D4D4">
								<img border="0" src="images/article3.gif" width="192" height="70"></td>
							</tr>
							<tr>
								<td height="36" style="border-bottom:1px solid #D4D4D4; border-left:1px solid #D4D4D4; border-right:1px solid #D4D4D4; border-top-width: 1px; " valign="top">
										<div align="center">
											<table border="0" width="94%" cellspacing="0" cellpadding="0" id="table13" height="25">
<%
set rs1=server.createobject("adodb.recordset")
sql="select top 10 id,title from article where class=2 order by click desc"
rs1.open sql,conn,1,1
if rs1.eof or rs1.bof then
           response.write "暂无文章！"
           rs1.close
           else
           for i1=1 to 10
title=rs1("title")
if len(title)>13 then title=left(title,11)&"..."
%>
												<tr>
													<td width="16" height="18">
													<p align="center">
													<img border="0" src="images/ls3.gif" width="13" height="22"></td>
													<td height="18">
													<a  target="_blank" href="show_article.asp?id=<%=rs1("id")%>">
								<%=title%></a></td>
												</tr>
<%
rs1.movenext
if rs1.eof then exit for
next
rs1.close
end if
%>			
											
											</table>
										</div>
										</td>							</tr>
						</table>
						</td>
						<td valign="top">
						<div align="center">
							<table border="0" width="99%" cellspacing="0" cellpadding="0" id="table14" height="197">
								<tr>
									<td height="46" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; border-bottom-width: 1px" width="540" background="images/bg4.gif">
									<table border="0" width="537" cellspacing="0" cellpadding="0" id="table15" height="30">
										<tr>
											<td valign="bottom" width="110">
											</td>
											<td valign="bottom" width="427">
											<p align="center"><b><font size="4" color="#000080"></font></b></td>
										</tr>
									</table>
									</td>
								</tr>
								<tr>
									<td style="border-bottom:1px solid #C0C0C0; border-left:1px solid #C0C0C0; border-right:1px solid #C0C0C0; border-top-width: 1px" valign="top" align="center">
									<table border="0" width="96%" cellspacing="0" cellpadding="0" id="table16" height="20">
										<%
sql="select * from article where class=2 order by id desc"
rs.open sql,conn,1,1
if rs.recordcount=0 then
rs.close
           response.write "暂无文章！"
           else
rs.pagesize=17
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
for ii=1 to rs.pagesize
%>	
										<tr>
											<td width="5%" height="25" background="images/bg1.gif">
											<p align="center">
											<img border="0" src="images/new2.gif" width="11" height="11"></td>
											<td height="25" background="images/bg1.gif" width="79%"><a target="_blank" href="show_article.asp?id=<%=rs("id")%>"><%=rs("title")%></a></td>
											<td height="25" width="16%" background="images/bg1.gif"><%
								a=instr(rs("addtime"),chr(32))-1
								response.write Mid(rs("addtime"),1,a)
								%></td>
										</tr>
<%
rs.movenext
if rs.eof then exit for
next
%>
									<tr>
											<td height="25" colspan="3" align="center">
											<p align="center">
											<table border="0" width="504" cellspacing="0" cellpadding="0" height="31">
						<tr>
							<td width="120">
							<p align="center">当前页码:<font color="#FF0000"><%=session("page")%></font>/<%=rs.pagecount%></td>
							<td width="225">
							<p align="center">&lt; <a href="article2.asp?action=f">首页</a>&nbsp;&nbsp;
							<a href="article2.asp?action=p">上一页</a>&nbsp;&nbsp;
							<a href="article2.asp?action=n">下一页</a>&nbsp;&nbsp;
							<a href="article2.asp?action=l">尾页</a> &gt;</td>
							<form method="POST" action="article2.asp">
							<td width="159">							
		<p>跳转到 
		<input type="text" name="page1" size="4" style="border: 1px solid #000000"> 页&nbsp; 
	<input type="submit" value="提交" name="B1"></p>
</td>
</form>
						</tr>
					</table>
</td>
										</tr>
										<%
										rs.close
										end if
										%>
									</table>
									</td>
								</tr>
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