<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="unhtml.asp"-->
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title>委托招牌 - <%=webname%></title>
</head>
<body>
<!--#include file="top_index.asp"-->
<div align="center">

<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="206">
		<tr>
			<td style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf" width="760" valign="top">
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
							  <td height="109" style="border-left: 1px solid #D4D4D4; border-right: 1px solid #D4D4D4; border-top-width: 1px; border-bottom-width: 1px" valign="top" align="center"><table border="0" width="94%" cellspacing="0" cellpadding="0" id="table17">
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
                              </table></td>
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
sql="select top 15 id,jtzw from consigns order by clicks desc"
rs.open sql,conn,1,1
if rs.eof or rs.bof then
           response.write "暂无职位！"
           rs.close
           else
           for i1=1 to 15
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
										</div>
										</td>
							</tr>

						</table>						</td>
						<td valign="top">
						<div align="center">
							<table border="0" width="99%" cellspacing="0" cellpadding="0" id="table14" height="514">
								<tr>
									<td height="46" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; border-bottom-width: 1px" width="540" background="images/bg16.gif">
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
									<td style="border-bottom:1px solid #C0C0C0; border-left:1px solid #C0C0C0; border-right:1px solid #C0C0C0; border-top-width: 1px" align="center">
									<%
sql="select * from consigns where id="&clng(request("id"))
rs.open sql,conn,1,1
set rs1=server.createobject("adodb.recordset")
sql1="update consigns set clicks="&rs("clicks")+1&" where id="&clng(request("id"))
rs1.open sql1,conn,1,1
%>

									<table border="0" width="95%" cellspacing="0" cellpadding="0" id="table18" height="95">
										<tr>
											<td width="510" height="40" align="center" colspan="4">
											　<b><font size="4" color=#ff0000>招聘 <%=rs("jtzw")%></font></b>&nbsp; 
								发布时间：<%
								a=instr(rs("addtime"),chr(32))-1
								response.write Mid(rs("addtime"),1,a)
								%><br>被阅：<%=rs("clicks")%>次</td>
										</tr>
										<tr>
											<td width="510" height="25" colspan="4" align="center" background="imagen/web_01_05.gif" bgcolor="#D5EAF4">
										  <p align="left"><b>·岗位职责描述及要求</b></td>
										</tr>
										<tr>
											<td width="510" height="80" align="center" colspan="4" style="border-left: 1px solid #D5EAF4; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom-width: 1px">
											<table border="0" width="96%" cellspacing="0" cellpadding="5" height="75%" id="table19">
												<tr>
													<td><%=unhtml(rs("zptext"))%></td>
												</tr>
											</table>
											</td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" background="imagen/web_01_05.gif" bgcolor="#D5EAF4">
											<b>·具体信息</b></td>
											<td width="438" height="25" colspan="3" background="imagen/web_01_05.gif" bgcolor="#D5EAF4">　</td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4">
											招聘职位：</td>
											<td width="438" height="25" colspan="3" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("jtzw")%></td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4">
											招聘企业：</td>
											<td width="438" height="25" colspan="3" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%if rs("url")<>"" then %>
											<a target =_blank  href="<%=rs("url")%>"><%=rs("company")%></a>
											<%else%>
											<%=rs("company")%>
											<%end if %></td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4">
											发布时间：</td>
											<td width="188" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%
								a=instr(rs("addtime"),chr(32))-1
								response.write Mid(rs("addtime"),1,a)
								%></td>
											<td width="80" height="25" align="center" style="border-top: 1px solid #D5EAF4">
											有效期限：</td>
											<td width="174" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("youxiaos")%></td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4">
											招聘人数：</td>
											<td width="188" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("zpnum")%></td>
											<td width="80" height="25" align="center" style="border-top: 1px solid #D5EAF4">
											学历要求：</td>
											<td width="174" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("edus")%></td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4">
											专业要求：</td>
											<td width="188" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("zyes")%></td>
											<td width="80" height="25" align="center" style="border-top: 1px solid #D5EAF4">
											性别要求：</td>
											<td width="174" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("sexs")%></td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4">工作地点：</td>
											<td width="188" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("hka")&"&nbsp;"&rs("city")%></td>
											<td width="80" height="25" align="center" style="border-top: 1px solid #D5EAF4">
											电脑能力：</td>
											<td width="174" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("computers")%></td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4">
											外语要求：</td>
											<td width="188" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("languages")%></td>
											<td width="80" height="25" align="center" style="border-top: 1px solid #D5EAF4">
											年龄要求：</td>
											<td width="174" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%
								if rs("nianlings")="" then
								response.write "不限"
								else
								response.write rs("nianlings")
								end if
								%></td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4">
											户籍要求：</td>
											<td width="188" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("hkas")%></td>
											<td width="80" height="25" align="center" style="border-top: 1px solid #D5EAF4">
											薪金水平：</td>
											<td width="174" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4">
<%
if rs("moneys")="" then
response.write "面议"
else
response.write rs("moneys")&"元/月"
end if
%></td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4">
											婚姻要求：</td>
											<td width="188" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("marrys")%></td>
											<td width="80" height="25" align="center" style="border-top: 1px solid #D5EAF4">
											提供食宿：</td>
											<td width="174" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("shisus")%></td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4">
											国语程度：</td>
											<td width="188" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("pthuas")%></td>
											<td width="80" height="25" align="center" style="border-top: 1px solid #D5EAF4">　</td>
											<td width="174" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4">　</td>
										</tr>
										<tr>
											<td width="514" height="25" colspan="4" align="center" background="imagen/web_01_05.gif" bgcolor="#D5EAF4">
										  <p align="left"><b>·联系方式</b></td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-right-width: 1px; border-top: 1px solid #D5EAF4; border-bottom-width: 1px">
											联系地址：</td>
											<td width="442" height="25" colspan="3" style="border-left-width: 1px; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4"><%=rs("address")%></td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-right-width: 1px; border-top: 1px solid #D5EAF4; border-bottom-width: 1px">
											联系电话：</td>
											<td width="188" height="25" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #D5EAF4; padding: 0"><%=rs("tel")%></td>
											<td width="80" height="25" align="center" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #D5EAF4; padding: 0">　</td>
											<td width="174" height="25" style="border-left-width: 1px; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4; padding: 0">　</td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-right-width: 1px; border-top: 1px solid #D5EAF4; border-bottom: 1px solid #D5EAF4">
											联 系 人：</td>
											<td width="188" height="25" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #D5EAF4"><%=rs("person")%></td>
											<td width="80" height="25" align="center" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">　</td>
											<td width="174" height="25" style="border-left-width: 1px; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">　</td>
										</tr>
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
rs.close
set rs=nothing
set conn=nothing
%></font>
<!--#include file="base.asp"-->
</body>

</html>