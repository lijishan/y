<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->

<html>
<%
if session("id")="" or session("ac")="" or session("user")<>"2" then
response.write "<script language=JavaScript>" & chr(13) & "alert('����δ��½���¼��ʱ�������µ�¼���������');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
%>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=webname%> - ��Ա���� - ��ҵ��������</title>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
.STYLE2 {font-weight: bold}
.STYLE3 {color: #993366}
.STYLE4 {color: #990000}
-->
</style>
</head>

<body>
<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="421">
		<tr>
			<td style="border-left: 1px solid #0086DF; border-right: 1px solid #0086DF" width="760" valign="top" bgcolor="#FEFBF4">
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
						<%
sql="select ac,email,name,trade,cxz,fund,yuangong,area,faren,fdate,jianj,address,zip,pname,pnames,phone,fax,renshi,sex,rstel,web,pic,picdate,picdays,morepic from en_user where id="&clng(session("id"))
rs.open sql,conn,1,1
%>

						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="272">
								<tr>
									<td height="27" colspan="2">
									<p align="left">
									&nbsp;��Ա���� �� ��ҵ��������-�� ǰ �� ����<font color=#FF000000><%=rs("ac")%>: <%=rs("name")%></font></td>
								</tr>
								<tr>
									<td width="2%" valign="top">&nbsp;</td>
								  <td width="98%" valign="top" align="center" style="border: 1px solid #000000">
									<form method="POST" action="upinfo_en1.asp">
										<table border="0" width="97%" cellspacing="0" cellpadding="0" id="table5">
											<tr>
												<td height="34" colspan="3">
												<p align="center" class="STYLE1"><b>�����������</b></td>
											</tr>
											<tr>
                                              <td width="19%" height="40" align="right" bgcolor="#FFFBF7"><span class="STYLE5">��ҵͼƬ�������ڣ�</span></td>
											  <td width="42%" height="40" bgcolor="#FFFBF7"><input type="text" name="picdate" size="40" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("picdate")%>"></td>
											  <td width="39%" height="40" bgcolor="#FFFBF7"><font color="#FF0000">*&nbsp; 
											    ����ʽΪ1984-01-09��</font></td>
										  </tr>
											<tr>
                                              <td height="20" align="right" bgcolor="#FFFBF7"><span class="STYLE5">ͼƬ������Ч�ڣ�</span></td>
											  <td height="20" align="right" bgcolor="#FFFBF7"><input type="text" name="picdays" size="40" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("picdays")%>"></td>
											  <td height="20" align="right" bgcolor="#FFFBF7"><div align="left">��λ���죬����Ϊ�գ���������<span class="STYLE1">0</span></div></td>
										  </tr>
											<tr>
                                              <td height="20" align="right" bgcolor="#FFFBF7"><span class="STYLE2">ͼƬ��ַ��</span></td>
											  <td height="0" align="right" bgcolor="#FFFBF7"><input type="text" name="pic" size="40" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("pic")%>"></td>
											  <td height="10" align="right" bgcolor="#FFFBF7"><div align="left">ʹ�þ��Ե�ַ����<span class="STYLE3">http://www.abc.com/abc.jpg</span></div></td>
										  </tr>
											<tr>
											  <td height="20" align="right" bgcolor="#FFFBF7">����ͼƬ��ַ��</td>
											  <td height="20" align="right" bgcolor="#FFFBF7"><input type="text" name="morepic" size="40" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("morepic")%>"></td>
											  <td height="10" align="right" bgcolor="#FFFBF7"><div align="left">�磺<span class="STYLE4">200705/abc.html</span>,û���������գ��ǿո�</div></td>
										  </tr>
											
											<tr>
												<td height="40" colspan="3">
												<p align="center">
												<input type="submit" value="����" name="B1"></td>
											</tr>
										</table>
									</form>
                                  ��</td>
								</tr>
							</table>
						</div>
						<%'���%></td>
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
</body>

</html>