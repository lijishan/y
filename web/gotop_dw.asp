<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<html>
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"2" then
response.write "<script language=JavaScript>" & chr(13) & "alert('����δ��½���¼��ʱ�������µ�¼���������');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
%>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=webname%> - ��Ա���� - ��ҵ�˲ſ�</title>
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
						<td height="86" width="237">��</td>
						<td height="86" width="128">
						<img border="0" src="images/controltop1.gif" width="128" height="90"></td>
						<td height="86" width="58">��</td>
					</tr>
					<tr>
						<td width="705" colspan="4" valign="top">
						<%'���%>

						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="272">
								<tr>
									<td height="27" colspan="2">
									<p align="left">
									&nbsp;��Ա���� �� ��ҵ��Ƹ��Ϣά��</td>
								</tr>
								<tr>
									<td width="25%" valign="top">
									<!--#include file="en_menu.asp"-->
									</td>
									<td width="75%" valign="top" align="center" style="border: 1px solid #000000">
																		<table border="0" width="93%" cellspacing="0" cellpadding="0" id="table5">
											<tr>
												<td height="40">
												<p align="center"><b>��ҵ��Ƹ��Ϣ��������ǰ����</b>                                                
												<p align="left"><span class="STYLE6">&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE7">������Ƹְλ�����ӣ������Ƹְλ���ܻᱻ�ú���ʾ��������������Ļ��ʻ��󽵵ͣ��Ӷ���Ƹ�ɹ���Ҳ���½�����վ�ر�Ϊ��ҵ�û��Ƴ���Ƹְλ������������ʱ�����������Ƹְλ��ʾλ�á�ͬʱ�����ڱ�վ��ҳ������ְλ���͡�ְλ��Ϣ��ҳ��Ķ����������������������ְλ��ť�����<span class="STYLE4">��Ƹְλ�����Զ���������ǰ����ʾ</span>��</span></span>                                                
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
           response.write "����û�з�����Ƹ��Ϣ��"
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
														  <b>���</b></font></td>
															<td height="30" width="151" align="center" bordercolor="#C0C0C0" style="border-left:1px solid #C0C0C0; border-top:1px solid #C0C0C0; border-bottom:1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#D9D9D9">
															<font color="#0A5DF6">
															<b>ְ&nbsp; λ</b></font></td>
															<td height="30" width="47" align="center" bordercolor="#C0C0C0" style="border-left:1px solid #C0C0C0; border-top:1px solid #C0C0C0; border-bottom:1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#D9D9D9">
															<font color="#0A5DF6">
															<b>ѧ��</b></font></td>
															<td height="30" width="89" align="center" bordercolor="#C0C0C0" style="border-left:1px solid #C0C0C0; border-top:1px solid #C0C0C0; border-bottom:1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#D9D9D9">
															<font color="#0A5DF6">
															<b>��������</b></font></td>
															<td height="30" width="185" bordercolor="#C0C0C0" style="border: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#D9D9D9">
															<p align="center">
															<font color="#0A5DF6">
														  <b>����</b></font></td>
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
									<input type="submit" value="����ְλ" name="G1">
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
							<p align="center">��ǰҳ��:<font color="#FF0000"><%=session("page")%></font>/<%=rs.pagecount%>&nbsp;&nbsp;&nbsp;&nbsp; 
							&lt; <a href="gotop_dw.asp?action=f">��ҳ</a>&nbsp;&nbsp;
							<a href="gotop_dw.asp?action=p">��һҳ</a>&nbsp;&nbsp;
							<a href="gotop_dw.asp?action=n">��һҳ</a>&nbsp;&nbsp;
							<a href="gotop_dw.asp?action=l">βҳ</a> &gt;&nbsp;&nbsp;&nbsp;&nbsp; ��ת�� 
		<input type="text" name="page1" size="5" style="border: 1px solid #000000"> ҳ&nbsp; 
	<input type="submit" value="�ύ" name="B1"></form></td>
							</tr>
					</table>

												</td>
											</tr>
											<%end if%>
										</table>
									
��</td>
								</tr>
							</table>
						</div>
						<%'���%>

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