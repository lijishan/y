<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->

<html>
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"1" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��¼��ʱ���������µ�¼��д��ҳ��ǰҳ��д�����ѱ��棩��');"&"window.location.href = 'index.asp'"&" </script>"
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
sql="select rctype,language,lanlevel,languages,lanlevels,pthua,computer,kgzjl,gznum,kothertc,kmubiao from in_user where id="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
%>
						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="272">
								<tr>
									<td height="27" colspan="2">
									<p align="left">
									&nbsp;<a href="control.asp">��Ա����</a> �� ������������ �� <a href="in_control1.asp">��һ��</a> �� 
									�ڶ���</td>
								</tr>
								<tr>
									<td width="25%" valign="top">
									<!--#include file="in_menu.asp"-->									</td>
								  <td width="75%" valign="top" align="center" style="border: 1px solid #000000">
									<form method="POST" action="upinfo2.asp">
										<table border="0" width="516" cellspacing="0" cellpadding="0" id="table5">
											<tr>
												<td height="40" colspan="3">
												<p align="center"><b>
												�ض������س��빤����������</b></td>
											</tr>
											<tr>
												<td height="40" width="104" align="right">
												�˲����ͣ�</td>
												<td width="115" height="40" bgcolor="#FFFBF7"> 
<SELECT NAME=rctype STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION VALUE="0" <%if rs("rctype") ="" then Response.Write "selected"%>>����ѡ��</OPTION>
<OPTION VALUE=��ͨ��ְ selected <%if rs("rctype") ="��ͨ��ְ" then Response.Write "selected"%>>��ͨ��ְ</OPTION>
<OPTION VALUE=Ӧ���ҵ�� <%if rs("rctype") ="Ӧ���ҵ��" then Response.Write "selected"%>>Ӧ���ҵ��</OPTION> 
<OPTION VALUE=��ѧ�� <%if rs("rctype") ="��ѧ��" then Response.Write "selected"%>>��ѧ��</OPTION> 
</SELECT></td>
												<td height="40" width="297">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="104" align="right">
												�������֣�</td>
												<td width="115" height="40" bgcolor="#FFFBF7"> 
<SELECT SIZE=1 NAME=language STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION VALUE=�� <%if rs("language") ="��" then Response.Write "selected"%>>��</OPTION>
<OPTION VALUE=Ӣ�� selected <%if rs("language") ="Ӣ��" then Response.Write "selected"%>>Ӣ��</OPTION> 
<OPTION VALUE=���� <%if rs("language") ="����" then Response.Write "selected"%>>����</OPTION> 
<OPTION VALUE=���� <%if rs("language") ="����" then Response.Write "selected"%>>����</OPTION> 
<OPTION VALUE=���� <%if rs("language") ="����" then Response.Write "selected"%>>����</OPTION> 
<OPTION VALUE=���� <%if rs("language") ="����" then Response.Write "selected"%>>����</OPTION> 
<OPTION VALUE=������ <%if rs("language") ="������" then Response.Write "selected"%>>������</OPTION> 
<OPTION VALUE=�������� <%if rs("language") ="��������" then Response.Write "selected"%>>��������</OPTION> 
<OPTION VALUE=�������� <%if rs("language") ="��������" then Response.Write "selected"%>>��������</OPTION> 
<OPTION VALUE=���� <%if rs("language") ="����" then Response.Write "selected"%>>����</OPTION> 
</SELECT></td>
												<td height="40" width="297">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="104" align="right">
												����ˮƽ��</td>
												<td width="115" height="40" bgcolor="#FFFBF7"> 
<SELECT SIZE=1 NAME=lanlevel STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION VALUE=��    <%if rs("lanlevel") ="��" then Response.Write "selected"%>>��</OPTION>
<OPTION VALUE=�ļ�  <%if rs("lanlevel") ="�ļ�" then Response.Write "selected"%>>�ļ�</OPTION> 
<OPTION VALUE=�˼�  <%if rs("lanlevel") ="�˼�" then Response.Write "selected"%>>�˼�</OPTION>
<OPTION VALUE=����  <%if rs("lanlevel") ="����" then Response.Write "selected"%>>����</OPTION> 
<OPTION VALUE=����  <%if rs("lanlevel") ="����" then Response.Write "selected"%>>����</OPTION>
<OPTION VALUE=��ͨ  <%if rs("lanlevel") ="��ͨ" then Response.Write "selected"%>>��ͨ</OPTION> 
<OPTION VALUE=����  <%if rs("lanlevel") ="����" then Response.Write "selected"%>>����</OPTION> 
<OPTION VALUE=һ�� selected  <%if rs("lanlevel") ="һ��" then Response.Write "selected"%>>һ��</OPTION> 
</SELECT></td>
												<td height="40" width="297">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="104" align="right">
												�����������֣�</td>
												<td width="115" height="40" bgcolor="#FFFBF7"> 
<SELECT SIZE=1 NAME=languages STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION VALUE=�� selected <%if rs("languages") ="��" then Response.Write "selected"%>>��</OPTION>
<OPTION VALUE=Ӣ�� <%if rs("languages") ="Ӣ��" then Response.Write "selected"%>>Ӣ��</OPTION>
<OPTION VALUE=���� <%if rs("languages") ="����" then Response.Write "selected"%>>����</OPTION> 
<OPTION VALUE=���� <%if rs("languages") ="����" then Response.Write "selected"%>>����</OPTION> 
<OPTION VALUE=���� <%if rs("languages") ="����" then Response.Write "selected"%>>����</OPTION> 
<OPTION VALUE=���� <%if rs("languages") ="����" then Response.Write "selected"%>>����</OPTION> 
<OPTION VALUE=������ <%if rs("languages") ="������" then Response.Write "selected"%>>������</OPTION>
<OPTION VALUE=�������� <%if rs("languages") ="��������" then Response.Write "selected"%>>��������</OPTION> 
<OPTION VALUE=�������� <%if rs("languages") ="��������" then Response.Write "selected"%>>�������� </OPTION>
<OPTION VALUE=���� <%if rs("languages") ="����" then Response.Write "selected"%>>����</OPTION> 
</SELECT></td>
												<td height="40" width="297">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="104" align="right">
												��������ˮƽ��</td>
												<td width="115" height="40" bgcolor="#FFFBF7"> 
<SELECT SIZE=1 NAME=lanlevels STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION VALUE=�� selected <%if rs("lanlevels") ="��" then Response.Write "selected"%>>��</OPTION>
<OPTION VALUE=����  <%if rs("lanlevels") ="����" then Response.Write "selected"%>>����</OPTION> 
<OPTION VALUE=��ͨ  <%if rs("lanlevels") ="��ͨ" then Response.Write "selected"%>>��ͨ</OPTION> 
<OPTION VALUE=����  <%if rs("lanlevels") ="����" then Response.Write "selected"%>>����</OPTION> 
<OPTION VALUE=һ��  <%if rs("lanlevels") ="һ��" then Response.Write "selected"%>>һ��</OPTION> 
</SELECT></td>
												<td height="40" width="297">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="104" align="right">
												��ͨ���̶ȣ�</td>
												<td width="115" height="40" bgcolor="#FFFBF7"> 
<SELECT SIZE=1 NAME=pthua STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION VALUE="0" <%if rs("pthua") ="" then Response.Write "selected"%>>��ѡ��</OPTION>
<OPTION VALUE=��׼ <%if rs("pthua") ="��׼" then Response.Write "selected"%>>��׼</OPTION>
<OPTION VALUE=���� <%if rs("pthua") ="����" then Response.Write "selected"%>>����</OPTION> 
<OPTION VALUE=���� <%if rs("pthua") ="����" then Response.Write "selected"%>>����</OPTION>
<OPTION VALUE=һ�� selected <%if rs("pthua") ="һ��" then Response.Write "selected"%>>һ��</OPTION> 
<OPTION VALUE=�ϲ� <%if rs("pthua") ="�ϲ�" then Response.Write "selected"%>>�ϲ� </OPTION> 
</SELECT></td>
												<td height="40" width="297">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="104" align="right">
												�����������</td>
												<td width="115" height="40" bgcolor="#FFFBF7"> 
<SELECT SIZE=1 NAME=computer STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION VALUE=�� selected <%if rs("computer") ="��" then Response.Write "selected"%>> ��</OPTION>
<OPTION VALUE=һ�� <%if rs("computer") ="һ��" then Response.Write "selected"%>>һ��</OPTION>
<OPTION VALUE=��ͨ <%if rs("computer") ="��ͨ" then Response.Write "selected"%>>��ͨ</OPTION>
<OPTION VALUE=���� <%if rs("computer") ="����" then Response.Write "selected"%>>����</OPTION>
<OPTION VALUE=���� <%if rs("computer") ="����" then Response.Write "selected"%>>����</OPTION>
<OPTION VALUE=�ϲ� <%if rs("computer") ="�ϲ�" then Response.Write "selected"%>>�ϲ�</OPTION>
</SELECT></td>
												<td height="40" width="297">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" colspan="3">
												<p align="center">������ϸ��������<BR> 
												������Ӧ���ҵ��,����дʵϰ����ְ���������<font color="#FF0000">*400����</font></td>
											</tr>
											<tr>
												<td height="26" colspan="3" bgcolor="#FFFBF7">
												<p align="center">�밴�գ�������ʱ�䡡�������� 
����˾���ơ� ����������ְλ�������� ������ְԭ�� ��д </td>
											</tr>
											<tr>
												<td height="54" colspan="3" bgcolor="#E7E7E7">
												<p align="center"> 
<TEXTAREA ROWS="9" NAME="kgzjl" COLS="65" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"><%=rs("kgzjl")%></TEXTAREA></td>
											</tr>
											<tr>
												<td height="40" width="104">
												<p align="right">��ع���ʱ�䣺</td>
												<td width="115" height="40" bgcolor="#FFFBF7">
<INPUT 
                  MAXLENGTH=2 SIZE=4 NAME=gznum VALUE="1" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF">
											  ��<font color="#FF0000">*</font></td>
												<td height="40" width="297">
												��</td>
											</tr>
											<tr>
												<td width="516" height="40" colspan="3" bgcolor="#FFFBF7">
											  <p align="center">��������������ר��<BR> 
											  ����ϸ����д�������������˵�λ����˽��㡣<FONT COLOR="#FF0000">*200����</FONT></td>
											</tr>
											<tr>
												<td width="516" height="40" colspan="3" bgcolor="#E7E7E7">
												<p align="center"> 
<TEXTAREA ROWS="9" NAME="kothertc" COLS="65" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"><%=rs("kothertc")%></TEXTAREA></td>
											</tr>
											<tr>
												<td width="516" height="40" colspan="3" bgcolor="#FFFBF7">
												<P ALIGN="center">����ְҵĿ��<BR> 
												  �磺Ѱ��ĳĳ���͵Ĺ�˾��ĳĳ��λ�ȡ������� 
											  <FONT COLOR="#FF0000"><font color="#FF0000">*100����</font></td>
											</tr>
											<tr>
												<td width="516" height="40" colspan="3" bgcolor="#E7E7E7">
												  <p align="center">
												    <textarea rows="9" name="kmubiao" cols="65" style="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"><%=rs("kmubiao")%></textarea>
											  </td>
											</tr>
											<tr>
												<td height="40" colspan="3">
												<p align="center">
												<input type="button" value="��һҳ"  onclick='history.back()' name="B1">
												&nbsp;&nbsp;&nbsp;
												<input type="submit" value="��һҳ" name="B2"></td>
											</tr>
										</table>
									</form>
                                    <span class="STYLE1">��ʾ������㡰��һҳ������˵�����¼��ʱ�������µ�¼��д��ҳ���ݣ�ǰҳ�ѱ��棩��</span>��</td>
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