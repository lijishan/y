<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<html>
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"1" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��¼��ʱ�����µ�¼��д��ҳ���ݣ�');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
%>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=webname%> - ��Ա���� - ������������</title>
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
						<%
sql="select name,code,bdate,sex,guoji,shenggao,tizhong,minzu,marry,hka,hkb,edu,zye,zhuanyen1,zyes,zhuanyen2,school,bydate,zzmm,zcheng,jyjl from in_user where id="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
%>

						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="951">
								<tr>
									<td height="27" colspan="2">
									<p align="left">
									&nbsp;<a href="control.asp">��Ա����</a> �� ������������ �� ��һ��</td>
								</tr>
								<tr>
									<td width="25%" valign="top">
									<!--#include file="in_menu.asp"-->
									</td>
									<td width="75%" valign="top" align="center" style="border: 1px solid #000000">
									<form method="POST" action="upinfo1.asp">
										<table border="0" width="100%" cellspacing="0" cellpadding="0" height="40" id="table5">
											<tr>
												<td height="40" colspan="3">
												<p align="center"><b>
												��һ�������˻�����������</b></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">
												������ʵ������</td>
											  <td width="35%" height="40" bgcolor="#FFFBF7"><input type="text" name="name" size="23" readonly style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("name")%>"></td>
												<td height="40" width="44%">
												  <span class="STYLE2">*�����ֹ�޸ģ������Ҫ������ϵ����Ա</span></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">
												���֤���룺</td>
												<td width="35%" height="40" bgcolor="#FFFBF7">
											  <input name="code" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("code")%>" size="23" maxlength="20"></td>
												<td height="40" width="44%"> ����ģ��������<strong><font color="#993300">��֤��ҵ�û�</font></strong>���ɼ������������� </td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">
												�������ڣ�</td>
												<td width="35%" height="40" bgcolor="#FFFBF7">
											  <input type="text" name="bdate" size="23" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("bdate")%>"></td>
												<td height="40" width="44%">
												<font color="#FF0000">*&nbsp; 
												����ʽΪ1984-01-09��</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">
												�Ա�</td>
												<td height="40" width="35%">
												<INPUT TYPE="radio"<%if rs("sex") ="��" then Response.Write "checked"%> VALUE="��" NAME="sex"> 
�� <INPUT TYPE="radio" <%if rs("sex") ="Ů" then Response.Write "checked"%> NAME="sex" VALUE="Ů"> 
Ů </td>
												<td height="40" width="44%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">
												������</td>
												<td width="35%" height="40" bgcolor="#FFFBF7">
												<SELECT NAME=guoji STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION VALUE=�й� selected <%if rs("guoji") ="�й�" then Response.Write "selected"%>>�й�</OPTION> 
<OPTION VALUE=���� <%if rs("guoji") ="����" then Response.Write "selected"%>>����</OPTION>
<OPTION VALUE=�ձ� <%if rs("guoji") ="�ձ�" then Response.Write "selected"%>>�ձ�</OPTION> 
<OPTION VALUE=���� <%if rs("guoji") ="����" then Response.Write "selected"%>>����</OPTION> 
<OPTION VALUE=����� <%if rs("guoji") ="�����" then Response.Write "selected"%>>�����</OPTION> 
<OPTION VALUE=���� <%if rs("guoji") ="����" then Response.Write "selected"%>>����</OPTION> 
<OPTION VALUE=���� <%if rs("guoji") ="����" then Response.Write "selected"%>>����</OPTION> 
<OPTION VALUE=Ӣ�� <%if rs("guoji") ="Ӣ��" then Response.Write "selected"%>>Ӣ��</OPTION>
 <OPTION VALUE=̩�� <%if rs("guoji") ="̩��" then Response.Write "selected"%>>̩�� </OPTION>
                                                </SELECT></td>
												<td height="40" width="44%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">��ߣ�</td>
												<td height="40" width="35%">
												<input name="shenggao" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("shenggao")%>" size="23" maxlength="4"></td>
												<td height="40" width="44%">
												<font color="#FF0000">*&nbsp; 
												����λcm��</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">���أ�</td>
												<td height="40" width="35%">
												<input name="tizhong" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("tizhong")%>" size="23" maxlength="4"></td>
												<td height="40" width="44%">
												<font color="#FF0000">*&nbsp; 
												����λkg��</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">���壺</td>
											  <td width="35%" height="40" bgcolor="#EFEBEF"><input name="minzu" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("minzu")%>" size="23" maxlength="10"></td>
												<td height="40" width="44%">
												<font color="#FF0000">*&nbsp; 
												���磺����</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">����״����</td>
												<td width="35%" height="40" bgcolor="#FFFBF7"> 
<SELECT SIZE=1 NAME=marry STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION VALUE=δ�� <%if rs("marry") ="δ��" then Response.Write "selected"%>>δ�� <OPTION VALUE=�ѻ� <%if rs("marry") ="�ѻ�" then Response.Write "selected"%>>�ѻ� 
<OPTION VALUE=���� <%if rs("marry") ="����" then Response.Write "selected"%>>����</OPTION> 
</SELECT></td>
												<td height="40" width="44%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">�������ڵأ�</td>
												<td width="35%" height="40" bgcolor="#EFEBEF">
<SELECT SIZE=1 NAME=hka STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION value="0" <%if rs("hka") ="" then Response.Write "selected"%>>���������б���ѡ��</OPTION>
<%
call listarea(rs("hka"))
%>
</SELECT></td>
												<td height="40" width="44%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">Ŀǰ���ڵأ�</td>
												<td height="40" width="35%">
<SELECT SIZE=1 NAME=hkb STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION value="0" <%if rs("hkb") ="" then Response.Write "selected"%>>���������б���ѡ��</OPTION>
<%
call listarea(rs("hkb"))
%>
</SELECT></td>
												<td height="40" width="44%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">������߽����̶ȣ�</td>
												<td height="40" width="35%">
<SELECT SIZE=1 NAME=edu STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1"> 
<OPTION VALUE="0" <%if rs("edu") ="" then Response.Write "selected"%>>���������б���ѡ��</OPTION>
<OPTION VALUE=Сѧ <%if rs("edu") ="Сѧ" then Response.Write "selected"%>>Сѧ</OPTION>
<OPTION VALUE=���� <%if rs("edu") ="����" then Response.Write "selected"%>>����</OPTION>
<OPTION VALUE=���� <%if rs("edu") ="����" then Response.Write "selected"%>>����</OPTION>
<OPTION VALUE=�м� <%if rs("edu") ="�м�" then Response.Write "selected"%>>�м�</OPTION> 
<OPTION VALUE=��ר <%if rs("edu") ="��ר" then Response.Write "selected"%>>��ר</OPTION>
<OPTION VALUE=��ר <%if rs("edu") ="��ר" then Response.Write "selected"%>>��ר</OPTION> 
<OPTION VALUE=���� <%if rs("edu") ="����" then Response.Write "selected"%>>����</OPTION>
<OPTION VALUE=˶ʿ <%if rs("edu") ="˶ʿ" then Response.Write "selected"%>>˶ʿ</OPTION> 
<OPTION VALUE=��ʿ <%if rs("edu") ="��ʿ" then Response.Write "selected"%>>��ʿ</OPTION> 
</SELECT></td>
												<td height="40" width="44%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">��ѧרҵ���</td>
												<td height="40" width="35%"> 
<SELECT NAME=zye STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1" size="1"> 
<OPTION VALUE="0" <%if rs("zye") ="" then Response.Write "selected"%>>��ѡ������ѧ��רҵ</OPTION>
<%
call listzhy(rs("zye"))
%>
</SELECT></td>
												<td height="40" width="44%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">רҵ���ƣ�</td>
												<td height="40" width="35%">
												<input name="zhuanyen1" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("zhuanyen1")%>" size="23" maxlength="20"></td>
												<td height="40" width="44%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">�ڶ�רҵ���</td>
												<td height="40" width="35%"> 
<SELECT NAME=zyes STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1" size="1"> 
<OPTION value="��">��ѡ������ѧ��רҵ</OPTION>
<%
call listzhy(rs("zyes"))
%>
</SELECT></td>
												<td height="40" width="44%">��</td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">
												�ڶ�רҵ���ƣ�</td>
												<td height="40" width="35%">
												<input name="zhuanyen2" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("zhuanyen2")%>" size="23" maxlength="20"></td>
												<td height="40" width="44%">��</td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">��ҵԺУ��</td>
												<td height="40" width="35%">
												<input name="school" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("school")%>" size="23" maxlength="20"></td>
												<td height="40" width="44%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">��ҵ���ڣ�</td>
												<td width="35%" height="40" bgcolor="#EFEBEF">
											  <input name="bydate" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("bydate")%>" size="23" maxlength="20"></td>
												<td height="40" width="44%">
												<font color="#FF0000">*&nbsp; 
												����ʽΪ1984-01-09��</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">������ò��</td>
												<td width="35%" height="40" bgcolor="#FFFBF7"> 
<SELECT SIZE=1 NAME=zzmm STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1"> 
<OPTION VALUE="0" <%if rs("zzmm") ="" then Response.Write "selected"%>>���������б���ѡ��</OPTION>
<OPTION VALUE=��Ա <%if rs("zzmm") ="��Ա" then Response.Write "selected"%>>��Ա</OPTION> 
<OPTION VALUE=��Ա <%if rs("zzmm") ="��Ա" then Response.Write "selected"%>>��Ա</OPTION>
<OPTION VALUE=Ⱥ�� selected <%if rs("zzmm") ="Ⱥ��" then Response.Write "selected"%>>Ⱥ��</OPTION> 
<OPTION VALUE=�������� <%if rs("zzmm") ="��������" then Response.Write "selected"%>>��������</OPTION> 
<OPTION VALUE=���� <%if rs("zzmm") ="����" then Response.Write "selected"%>>����</OPTION> 
</SELECT></td>
												<td height="40" width="44%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">����ְ�ƣ�</td>
												<td width="35%" height="40" bgcolor="#FFFBF7">
<SELECT SIZE=1 NAME=zcheng STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1"> 
<OPTION VALUE="0" <%if rs("zcheng") ="" then Response.Write "selected"%>>���������б���ѡ��</OPTION>
<OPTION VALUE=�߼� <%if rs("zcheng") ="�߼�" then Response.Write "selected"%>>�߼�</OPTION> 
<OPTION VALUE=�м� <%if rs("zcheng") ="�м�" then Response.Write "selected"%>>�м�</OPTION>
<OPTION VALUE=���� <%if rs("zcheng") ="����" then Response.Write "selected"%>>����</OPTION> 
<OPTION VALUE=���� selected <%if rs("zcheng") ="����" then Response.Write "selected"%>>����</OPTION>
<OPTION VALUE=���� <%if rs("zcheng") ="����" then Response.Write "selected"%>>����</OPTION> 
</SELECT></td>
												<td height="40" width="44%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
											  <td width="100%" height="40" colspan="3" align="center" bgcolor="#FFFBF7">
												�ܽ�������ѵ������<font color="#FF0000">*400������</font><br>
												�밴�գ�X��X��X��X��X�� ѧУ����ѵ�������� רҵ����Ŀ����&nbsp; 
											  ��ú���֤�� ��д��</td>
										  </tr>
											<tr>
												<td width="100%" height="40" colspan="3" align="right" bgcolor="#EFEBEF">
												<p align="center">
											  <textarea rows="8" name="jyjl" cols="65" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"><%=rs("jyjl")%></textarea></td>
											</tr>
											<tr>
												<td width="100%" height="40" colspan="3" align="right" bgcolor="#FFFBF7">
												<p align="center">
											  <input type="submit" value="��һҳ" name="B1"></td>
											</tr>
										</table>
									</form>
									<p><span class="STYLE1">��ʾ������㡰��һҳ������˵�����¼��ʱ�������µ�¼��д��ҳ���ݡ�</span>��</td>
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