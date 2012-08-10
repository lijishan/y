<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title>委托招聘 -job528 <%=webname%></title>
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
						<table border="0" width="87%" cellspacing="0" cellpadding="0" id="table3" height="190">
							<tr>
								<td height="36" style="border-top:1px solid #D4D4D4; border-left:1px solid #D4D4D4; border-right:1px solid #D4D4D4; border-bottom-width: 1px">
								<img border="0" src="images/consign.gif" width="192" height="41"></td>
							</tr>
							<tr>
								<td height="109" style="border-left: 1px solid #D4D4D4; border-right: 1px solid #D4D4D4; border-top-width: 1px; border-bottom-width: 1px" valign="top" align="center">
								<table border="0" width="94%" cellspacing="0" cellpadding="0" id="table17">
									<tr>
										<td height="25">·<a target="_blank" href="law.asp?id=5&what=什么是委托招聘">什么是委托招聘</a></td>
									</tr>
									<tr>
										<td height="25">·<a target="_blank" href="law.asp?id=6&what=怎么申请委托招聘">怎么申请委托招聘</a></td>
									</tr>
									<tr>
										<td height="25">·<a target="_blank" href="law.asp?id=7&what=委托招聘的收费标准">委托招聘的收费标准</a></td>
									</tr>
									<tr>
										<td height="25">·<a href="upfiles\other/wtdj.doc" target="_blank">委托招聘表(右键目标另存为）</a></td>
									</tr>
								</table>								</td>
							</tr>
							<tr>
								<td height="40" style="border-left:1px solid #D4D4D4; border-right:1px solid #D4D4D4; border-top-width: 1px">
								<img border="0" src="images/article1.gif" width="192" height="70"></td>
							</tr>
							<tr>
								<td height="36" style="border-top:1px solid #D4D4D4; border-left:1px solid #D4D4D4; border-right:1px solid #D4D4D4; border-bottom-width: 1px">
								<img border="0" src="images/consign1.gif" width="192" height="41"></td>
							</tr>
							<tr>
								<td height="36" style="border-bottom:1px solid #D4D4D4; border-left:1px solid #D4D4D4; border-right:1px solid #D4D4D4; " valign="top">
										<div align="center">
											<table border="0" width="96%" cellspacing="0" cellpadding="0" id="table16" height="25">
<%
sql="select top 13 id,jtzw from consigns order by clicks desc"
rs.open sql,conn,1,1
if rs.eof or rs.bof then
           response.write "暂无职位！"
           rs.close
           else
           for i1=1 to 13
%>
												<tr>
													<td width="14" height="18">
													<p align="center">
													<img border="0" src="images/link1.gif" width="6" height="11"></td>
													<td height="20">
													<a title ="<%=rs("jtzw")%>" target =_blank href="show_consign.asp?id=<%=rs("id")%>">
													<%=rs("jtzw")%></a></td>
												</tr>
<%
rs.movenext
if rs.eof then exit for
next
rs.close
end if
%>			
											</table>
										</div>							  </td>
							</tr>
						</table>						</td>
						<td valign="top">
						<div align="center">
							<table border="0" width="99%" cellspacing="0" cellpadding="0" id="table14" height="197">
								<tr>
									<td height="46" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; border-bottom-width: 1px" width="540" background="images/bg16.gif">
									<table border="0" width="537" cellspacing="0" cellpadding="0" id="table15" height="30">
										<tr>
											<td valign="bottom" width="110">											</td>
											<td valign="bottom" width="427">
											<p align="center"><b><font size="4" color="#000080"></font></b></td>
										</tr>
									</table>									</td>
								</tr>
								<tr>
									<td style="border-bottom:1px solid #C0C0C0; border-left:1px solid #C0C0C0; border-right:1px solid #C0C0C0; border-top-width: 1px" valign="top" align="center">
									<table border="0" width="516" cellspacing="0" cellpadding="0" id="table16" height="20">
										<tr>										</tr>
										<%
sql="select id,addtime,jtzw,company,url,sexs from consigns order by id desc"
rs.open sql,conn,1,1
if rs.recordcount=0 then
rs.close
%>
<td width="516" height="25" background="images/bg1.gif" colspan="5">
<p align="center">暂时无招聘职位。</td>
<%
else
%>
<tr>
											<td width="31" height="25" background="images/bg1.gif">
											　</td>
											<td height="25" background="images/bg1.gif" width="164">
											<b>招聘职位</b></td>
											<td height="25" background="images/bg1.gif" width="174">
											<b>招聘公司</b></td>
											<td height="25" background="images/bg1.gif" width="67">
											<b>性别</b></td>
											<td height="25" width="80" background="images/bg1.gif">
											<b>发布时间</b></td>
									  </tr>

<%
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
											<td width="31" height="25" background="images/bg1.gif">
											<p align="center">
											<img border="0" src="images/new2.gif" width="11" height="11"></td>
											<td height="25" background="images/bg1.gif" width="164"><a target="_blank" href="show_consign.asp?id=<%=rs("id")%>"><font color=#ff0000><%=rs("jtzw")%></font></a></td>
											<td height="25" background="images/bg1.gif" width="174">
											<%if rs("url")<>"" then %>
											<a target =_blank  href="<%=rs("url")%>"><%=rs("company")%></a>
											<%else%>
											<%=rs("company")%>
											<%end if %>
											</td>
											<td height="25" background="images/bg1.gif" width="67">
											[<%=rs("sexs")%>]</td>
											<td height="25" width="80" background="images/bg1.gif"><%
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
											<td height="25" colspan="5" align="center">
											<p align="center">
											<table border="0" width="504" cellspacing="0" cellpadding="0" height="31">
						<tr>
							<td width="120">
							<p align="center">当前页码:<font color="#FF0000"><%=session("page")%></font>/<%=rs.pagecount%></td>
							<td width="225">
							<p align="center">&lt; <a href="consign.asp?action=f">首页</a>&nbsp;&nbsp;
							<a href="consign.asp?action=p">上一页</a>&nbsp;&nbsp;
							<a href="consign.asp?action=n">下一页</a>&nbsp;&nbsp;
							<a href="consign.asp?action=l">尾页</a> &gt;</td>
							<form method="POST" action="consign.asp">
							<td width="159">							
		<p>跳转到 
		<input type="text" name="page1" size="4" style="border: 1px solid #000000"> 页&nbsp; 
	<input type="submit" value="提交" name="B1"></p></td>
</form>
						</tr>
					</table></td>
									  </tr>
										<%
										rs.close
										end if
										%>
									</table>									</td>
								</tr>
						  </table>
					      <p align="left">说明：如果你需要委托我们为你招聘，请你下载<strong>委托招聘申请登记表</strong>，按要求填好，以附件形式发送到我们的邮箱：ggang6@tom.com中，并请你及时给我们留言，说明你已经将委托书发到我们指定的邮箱，我们在三个工作日内为你发布你的招聘信息，咨询QQ：451079368 咨询电话：13981528686。</p>
						    <p align="center"><a href="upfiles\other/wtdj.doc" target="_blank"><font color=#ff0000>点这里查看/下载<strong>委托招聘申请登记表</strong>[右键“目标另存为”可保存到你的电脑上]</font></a>  </p>
						    <p align="left">&nbsp;</p>
						</div>						</td>
					</tr>
				</table>
			</div>
			</td>
		</tr>
	</table>
</div>
<!--#include file="base.asp"-->
<%
set rs1=nothing
set rs=nothing
set conn=nothing
%>
</body>

</html>