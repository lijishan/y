<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="unhtml.asp"-->
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title>ί������ - <%=webname%></title>
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
                                  <td height="25">��<a target="_blank" href="law.asp?id=5&what=ʲô��ί����Ƹ">ʲô��ί����Ƹ</a></td>
                                </tr>
                                <tr>
                                  <td height="25">��<a target="_blank" href="law.asp?id=6&what=��ô����ί����Ƹ">��ô����ί����Ƹ</a></td>
                                </tr>
                                <tr>
                                  <td height="25">��<a target="_blank" href="law.asp?id=7&what=ί����Ƹ���շѱ�׼">ί����Ƹ���շѱ�׼</a></td>
                                </tr>
                                <tr>
                                  <td height="25">��<a href="upfiles\other/wtdj.doc" target="_blank">ί����Ƹ��(�Ҽ�Ŀ�����Ϊ��</a></td>
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
           response.write "����ְλ��"
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
											��<b><font size="4" color=#ff0000>��Ƹ <%=rs("jtzw")%></font></b>&nbsp; 
								����ʱ�䣺<%
								a=instr(rs("addtime"),chr(32))-1
								response.write Mid(rs("addtime"),1,a)
								%><br>���ģ�<%=rs("clicks")%>��</td>
										</tr>
										<tr>
											<td width="510" height="25" colspan="4" align="center" background="imagen/web_01_05.gif" bgcolor="#D5EAF4">
										  <p align="left"><b>����λְ��������Ҫ��</b></td>
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
											<b>��������Ϣ</b></td>
											<td width="438" height="25" colspan="3" background="imagen/web_01_05.gif" bgcolor="#D5EAF4">��</td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4">
											��Ƹְλ��</td>
											<td width="438" height="25" colspan="3" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("jtzw")%></td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4">
											��Ƹ��ҵ��</td>
											<td width="438" height="25" colspan="3" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%if rs("url")<>"" then %>
											<a target =_blank  href="<%=rs("url")%>"><%=rs("company")%></a>
											<%else%>
											<%=rs("company")%>
											<%end if %></td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4">
											����ʱ�䣺</td>
											<td width="188" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%
								a=instr(rs("addtime"),chr(32))-1
								response.write Mid(rs("addtime"),1,a)
								%></td>
											<td width="80" height="25" align="center" style="border-top: 1px solid #D5EAF4">
											��Ч���ޣ�</td>
											<td width="174" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("youxiaos")%></td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4">
											��Ƹ������</td>
											<td width="188" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("zpnum")%></td>
											<td width="80" height="25" align="center" style="border-top: 1px solid #D5EAF4">
											ѧ��Ҫ��</td>
											<td width="174" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("edus")%></td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4">
											רҵҪ��</td>
											<td width="188" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("zyes")%></td>
											<td width="80" height="25" align="center" style="border-top: 1px solid #D5EAF4">
											�Ա�Ҫ��</td>
											<td width="174" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("sexs")%></td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4">�����ص㣺</td>
											<td width="188" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("hka")&"&nbsp;"&rs("city")%></td>
											<td width="80" height="25" align="center" style="border-top: 1px solid #D5EAF4">
											����������</td>
											<td width="174" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("computers")%></td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4">
											����Ҫ��</td>
											<td width="188" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("languages")%></td>
											<td width="80" height="25" align="center" style="border-top: 1px solid #D5EAF4">
											����Ҫ��</td>
											<td width="174" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%
								if rs("nianlings")="" then
								response.write "����"
								else
								response.write rs("nianlings")
								end if
								%></td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4">
											����Ҫ��</td>
											<td width="188" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("hkas")%></td>
											<td width="80" height="25" align="center" style="border-top: 1px solid #D5EAF4">
											н��ˮƽ��</td>
											<td width="174" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4">
<%
if rs("moneys")="" then
response.write "����"
else
response.write rs("moneys")&"Ԫ/��"
end if
%></td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4">
											����Ҫ��</td>
											<td width="188" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("marrys")%></td>
											<td width="80" height="25" align="center" style="border-top: 1px solid #D5EAF4">
											�ṩʳ�ޣ�</td>
											<td width="174" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("shisus")%></td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4">
											����̶ȣ�</td>
											<td width="188" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4"><%=rs("pthuas")%></td>
											<td width="80" height="25" align="center" style="border-top: 1px solid #D5EAF4">��</td>
											<td width="174" height="25" style="border-right: 1px solid #D5EAF4; border-top: 1px solid #D5EAF4">��</td>
										</tr>
										<tr>
											<td width="514" height="25" colspan="4" align="center" background="imagen/web_01_05.gif" bgcolor="#D5EAF4">
										  <p align="left"><b>����ϵ��ʽ</b></td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-right-width: 1px; border-top: 1px solid #D5EAF4; border-bottom-width: 1px">
											��ϵ��ַ��</td>
											<td width="442" height="25" colspan="3" style="border-left-width: 1px; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4"><%=rs("address")%></td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-right-width: 1px; border-top: 1px solid #D5EAF4; border-bottom-width: 1px">
											��ϵ�绰��</td>
											<td width="188" height="25" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #D5EAF4; padding: 0"><%=rs("tel")%></td>
											<td width="80" height="25" align="center" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #D5EAF4; padding: 0">��</td>
											<td width="174" height="25" style="border-left-width: 1px; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4; padding: 0">��</td>
										</tr>
										<tr>
											<td width="72" height="25" align="center" style="border-left: 1px solid #D5EAF4; border-right-width: 1px; border-top: 1px solid #D5EAF4; border-bottom: 1px solid #D5EAF4">
											�� ϵ �ˣ�</td>
											<td width="188" height="25" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #D5EAF4"><%=rs("person")%></td>
											<td width="80" height="25" align="center" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">��</td>
											<td width="174" height="25" style="border-left-width: 1px; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">��</td>
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