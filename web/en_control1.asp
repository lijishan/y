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
<title><%=webname%> - ��Ա���� - ��ҵ��������</title>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
.STYLE2 {color: #0066FF}
-->
</style>
</head>

<body>
<!--#include file="top_index.asp"-->
<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="421">
		<tr>
			<td style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf;border-top: 1px solid #ffc6bf" width="760" valign="top" bgcolor="#FEFBF4">
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
sql="select email,name,trade,cxz,fund,yuangong,area,faren,fdate,jianj,address,zip,pname,pnames,phone,fax,renshi,sex,rstel,rz,web from en_user where id="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
if rs.eof or rs.bof then
response.redirect "nodata.html"
rs.close
end if
%>

						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="272">
								<tr>
									<td height="27" colspan="2">
									<p align="left">
									&nbsp;��Ա���� �� ��ҵ��������</td>
								</tr>
								<tr>
									<td width="25%" valign="top">
									<!--#include file="en_menu.asp"-->
									</td>
								  <td width="75%" valign="top" align="center" style="border: 1px solid #000000">
									<form method="POST" action="upinfo_en.asp">
										<table border="0" width="93%" cellspacing="0" cellpadding="0" id="table5">
											<tr>
												<td height="40" colspan="3">
												<p align="center"><b>��ҵ��������</b></td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">��˾���ƣ�</td>
											  <td height="40"><INPUT TYPE="text" NAME="name" SIZE="40" readonly MAXLENGTH=40 VALUE="<%=rs("name")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"></td>
											  <td height="40"><span class="STYLE2">*�޸�����ϵ����Ա</span></td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">��˾������ҵ��</td>
												<td height="40" width="58%"> 
<SELECT SIZE=1 NAME=trade STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE="0" <%if rs("trade") ="" then Response.Write "selected"%>>���������б���ѡ��</OPTION>
<%
call listcompany(rs("trade"))
%>
</SELECT> <font color="#FF0000">*</font></td>
												<td height="40" width="17%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">��˾��ҵ���ʣ�</td>
												<td height="40" width="58%"> 
<SELECT SIZE=1 NAME=cxz STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE="0" <%if rs("cxz") ="" then Response.Write "selected"%>>���������б���ѡ��</OPTION>
<OPTION VALUE=�������� <%if rs("cxz") ="��������" then Response.Write "selected"%>>��������</OPTION> 
<OPTION VALUE=������� <%if rs("cxz") ="�������" then Response.Write "selected"%>>�������</OPTION> 
<OPTION VALUE=��ҵ��λ <%if rs("cxz") ="��ҵ��λ" then Response.Write "selected"%>>��ҵ��λ</OPTION> 
<OPTION VALUE=������ҵ <%if rs("cxz") ="������ҵ" then Response.Write "selected"%>>������ҵ</OPTION> 
<OPTION VALUE=������ҵ <%if rs("cxz") ="������ҵ" then Response.Write "selected"%>>������ҵ</OPTION>
<OPTION VALUE=�ɷ���ҵ <%if rs("cxz") ="�ɷ���ҵ" then Response.Write "selected"%>>�ɷ���ҵ</OPTION>  
<OPTION VALUE=������ҵ <%if rs("cxz") ="������ҵ" then Response.Write "selected"%>>������ҵ</OPTION> 
<OPTION VALUE=������ҵ <%if rs("cxz") ="������ҵ" then Response.Write "selected"%>>������ҵ</OPTION> 
<OPTION VALUE=˽Ӫ��ҵ <%if rs("cxz") ="˽Ӫ��ҵ" then Response.Write "selected"%>>˽Ӫ��ҵ</OPTION>
<OPTION VALUE=������֯ <%if rs("cxz") ="������֯" then Response.Write "selected"%>>������֯</OPTION> 
<OPTION VALUE=�������� <%if rs("cxz") ="��������" then Response.Write "selected"%>>��������</OPTION> 
</SELECT> <font color="#FF0000">*</font></td>
												<td height="40" width="17%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">��˾ע���ʽ�</td>
												<td height="40" width="58%"> 
<INPUT TYPE="text" NAME="fund" SIZE="6" MAXLENGTH=6 VALUE="<%=rs("fund")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
												�������</td>
												<td height="40" width="17%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">��˾Ա��������</td>
												<td height="40" width="58%"> 
<INPUT TYPE="text" NAME="yuangong" SIZE="10" MAXLENGTH=10 VALUE="<%=rs("yuangong")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"></td>
												<td height="40" width="17%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">��˾���ڵ�����</td>
												<td height="40" width="58%">
<SELECT SIZE=1 NAME=area STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION value="0" <%if rs("area") ="" then Response.Write "selected"%>>���������б���ѡ��</OPTION>
<%
call listarea(rs("area"))
%>
</SELECT> <font color="#FF0000">*</font></td>
												<td height="40" width="17%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">��˾���˴���</td>
												<td height="40" width="58%"> 
<INPUT TYPE="text" NAME="faren" SIZE="10" MAXLENGTH=20 VALUE="<%=rs("faren")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"></td>
												<td height="40" width="17%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">��˾�������ڣ�</td>
												<td width="58%" height="40" bgcolor="#E7E7E7"> 
<INPUT TYPE="text" NAME="fdate" SIZE="10"  MAXLENGTH=10 VALUE="<%=rs("fdate")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
(���磺1982-11-12) <font color="#FF0000">*</font></td>
												<td height="40" width="17%">��</td>
											</tr>
											<tr>
												<td height="40" colspan="3" bgcolor="#FFFBF7">
												<p align="center">��˾��鼰ҵ���� 
											  <font color="#FF0000">*</font>300������</td>
											</tr>
											<tr>
												<td height="40" colspan="3" bgcolor="#E7E7E7">
												<p align="center"> 
											  <TEXTAREA ROWS="10" NAME="jianj" COLS="53" STYLE="border:1px solid #000000; background-color: #FFfFFF; color: #000060; padding-left:4; padding-right:4; padding-top:1; padding-bottom:1"><%=rs("jianj")%></TEXTAREA></td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">ͨѶ��ַ��</td>
												<td width="58%" height="40" bgcolor="#FFFBF7"> 
<INPUT TYPE="text" NAME="address" SIZE="30" MAXLENGTH=40 VALUE="<%=rs("address")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"></td>
												<td height="40" width="17%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">�������룺</td>
												<td width="58%" height="40" bgcolor="#FFFBF7"> 
											  <INPUT TYPE="text" NAME="zip" SIZE="13" MAXLENGTH=6 VALUE="<%=rs("zip")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"></td>
												<td height="40" width="17%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">��ϵ�ˣ�</td>
												<td width="58%" height="40" bgcolor="#E7E7E7"> <INPUT TYPE="text" NAME="pname" SIZE="20" MAXLENGTH=20 VALUE="<%=rs("pname")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF">
											  <font color="#FF0000">*</font></td>
												<td height="40" width="17%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">��ϵ��ְλ��</td>
												<td height="40" width="58%"> <INPUT TYPE="text" NAME="pnames" SIZE="20" MAXLENGTH=40 VALUE="<%=rs("pnames")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"></td>
												<td height="40" width="17%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">��ϵ�绰��</td>
											  <td height="40" colspan="2"> 
											   <% if Request.Cookies("vip")="true" or rs("rz")=true then %>
	 <INPUT TYPE="text" NAME="phone" SIZE="15"  MAXLENGTH=40 VALUE="<%=rs("phone")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF">
	 	 <%else%>
<INPUT TYPE="text" NAME="phone" SIZE="15" readonly MAXLENGTH=40 VALUE="<%=rs("phone")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF">
<%end if %>
											  
											  

<font color="#FF0000">*��ͨ�û���ֹ�޸�,�޸��ṩ֤��[<a href="nomo.html" target="_blank">�鿴ԭ��</a>]</font></td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">����绰��</td>
											  <td width="58%" height="40" bgcolor="#FFFBF7"> <INPUT TYPE="text" NAME="fax" SIZE="20" MAXLENGTH=40 VALUE="<%=rs("fax")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"></td>
												<td height="40" width="17%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">�������䣺</td>
												<td height="40" width="58%"> <INPUT TYPE="text" NAME="email" SIZE="20" MAXLENGTH=40 VALUE="<%=rs("email")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF">
												<font color="#FF0000">*</font></td>
												<td height="40" width="17%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">���¾���������</td>
												<td height="40" width="58%"> <INPUT TYPE="text" NAME="renshi" SIZE="20" MAXLENGTH=40 VALUE="<%=rs("renshi")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF">&nbsp;
<INPUT TYPE=radio VALUE=���� NAME=sex <%if rs("sex") ="����" then Response.Write "checked"%>>����
<INPUT TYPE=radio VALUE=С�� NAME=sex <%if rs("sex") ="С��" then Response.Write "checked"%>>С��</td>
												<td height="40" width="17%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">���¾���绰��</td>
												<td height="40" width="58%"> 
<INPUT TYPE="text" NAME="rstel" SIZE="20" MAXLENGTH=40 VALUE="<%=rs("rstel")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"></td>
												<td height="40" width="17%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">��˾��ַ��</td>
											  <td height="40" width="58%"> 
<INPUT TYPE="text" NAME="web" SIZE="20" MAXLENGTH=50 VALUE="<%=rs("web")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF">
<a href="boke/" target="_blank"><font color=#ff0000>����������빫˾����</font></a> </td>
												<td height="40" width="17%">��											    </td>
											</tr>
											<tr>
												<td height="40" colspan="3">
												<p align="center">
												<input type="submit" value="���" name="B1"></td>
											</tr>
										</table>
									</form>
                                    <p><font color=#ff0000>��ʾ�����ϲ�׼ȷ����������ְ�߰���������������������������Ϣ��</font></p></span>��</td>
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
<!--#include file="base.asp"-->
</body>

</html>