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
<title><%=webname%> - ��Ա���� - ������Ƹ��Ϣ</title>
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
						

						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="272">
								<tr>
									<td height="27" colspan="2">
									<p align="left">
									&nbsp;��Ա���� �� ������Ƹ��Ϣ</td>
								</tr>
								<tr>
									<td width="25%" valign="top">
									<!--#include file="en_menu.asp"-->
									</td>
									<td width="75%" valign="top" align="center" style="border: 1px solid #000000">
									<form method="POST" action="add_job_db.asp">
										<table border="0" width="490" cellspacing="0" cellpadding="0" id="table5">
											<tr>
												<td height="40" colspan="4">
												<p align="center"><b>������Ƹ��Ϣ</b>                                                
												<p align="center"></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">ְλ���ͣ�</td>
												<td height="40" width="397" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" colspan="3"> 
												<SELECT SIZE="1" NAME="job" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF">
<OPTION VALUE="0">::��ѡ��ְλ���::</OPTION>
<%
call listjob("")
%>
</SELECT> <font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">����ְλ��</td>
											  <td height="40" width="397" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" colspan="3"> 
	 <% if Request.Cookies("vip")="true" then %>
	 <INPUT MAXLENGTH=20 SIZE=15 NAME=jtzw STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF">
	 	 <%else%>
<INPUT MAXLENGTH=6 SIZE=15 NAME=jtzw STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF">
<%end if %>
<font color="#FF0000">* 
��ͨ�û�6����,VIP�û�20����</font><br>[ע�⣺ְλ����ֻ�����뺺��,���ܺ��пո����Ӣ�ı��ŵȡ�]
</td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">����������</td>
												<td height="40" width="397" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" colspan="3"> 
<SELECT SIZE=1 NAME=hka STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION value="0">���������б���ѡ��</OPTION>
<%
call listarea("")
%>
</SELECT> <font color="#FF0000">*</font>&nbsp; ���ڳ���<INPUT MAXLENGTH=8 SIZE=9 NAME=city STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF">
<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">��Ƹ������</td>
												<td height="40" width="131" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<INPUT NAME=zpnum STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF" value="1"  SIZE=4 MAXLENGTH=10> 
��</td>
												<td height="40" width="82" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE" align="center"> 
����Ҫ��</td>
												<td height="40" width="172" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<INPUT MAXLENGTH=30 SIZE=7 NAME=nianlings STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
�� ��дΪ 25-30 </td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">רҵҪ��</td>
												<td height="40" width="131" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<SELECT NAME=zyes STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF" size="1"> 
<OPTION VALUE=����>����</OPTION>
<%
call listzhy("")
%>
</SELECT></td>
												<td height="40" width="82" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE" align="center"> 
����Ҫ��</td>
												<td height="40" width="172" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<B> 
<SELECT SIZE=1 NAME=hkas STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION  VALUE=����>����
<%
call listarea("")
%>
</SELECT></B></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">ѧ��Ҫ��</td>
												<td height="40" width="131" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
<SELECT SIZE=1 
                  NAME=edus STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=����>���� <OPTION VALUE=����>���� <OPTION VALUE=����>���� <OPTION VALUE=�м�>�м� 
<OPTION VALUE=��ר>��ר <OPTION VALUE=��ר>��ר <OPTION VALUE=����>���� <OPTION VALUE=˶ʿ>˶ʿ 
<OPTION VALUE=��ʿ>��ʿ </SELECT></td>
												<td height="40" width="82" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE" align="center">
Ŀǰס�أ�</td>
												<td height="40" width="172" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
<B> 
<SELECT SIZE=1 NAME=hkbs STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION  VALUE=����>����</OPTION>
<%
call listarea("")
%>
</SELECT></B></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">����Ҫ��</td>
												<td height="40" width="131" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<SELECT 
                  SIZE=1 NAME=languages STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=���� selected>���� <OPTION VALUE=Ӣ��>Ӣ�� <OPTION VALUE=����>���� <OPTION VALUE=����>���� 
<OPTION VALUE=����>���� <OPTION VALUE=����>���� <OPTION VALUE=������>������ <OPTION VALUE=��������>�������� 
<OPTION VALUE=��������>�������� <OPTION VALUE=����>����</OPTION> 
</SELECT></td>
												<td height="40" width="82" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE" align="center"> 
��ͨ���̶ȣ�</td>
												<td height="40" width="172" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<SELECT 
                  SIZE=1 NAME=pthuas STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=��׼>��׼ <OPTION VALUE=��ͨ>��ͨ <OPTION VALUE=����>���� <OPTION VALUE=����>���� 
<OPTION VALUE=һ��>һ�� <OPTION VALUE=�ϲ�>�ϲ� </OPTION> </SELECT></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">�Ա�Ҫ��</td>
												<td height="40" width="131" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<SELECT 
                  SIZE=1 NAME=sexs STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=����>���� <OPTION VALUE=��>�� <OPTION VALUE=Ů>Ů </OPTION> </SELECT></td>
												<td height="40" width="82" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE" align="center"> 
�������ʣ�</td>
												<td height="40" width="172" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<SELECT SIZE=1 NAME=jobtypes STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=ȫְ selected>ȫְ <OPTION VALUE=��ְ>��ְ <OPTION VALUE=���߼��>���߼�� 
</SELECT></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">����״����</td>
												<td height="40" width="131" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<SELECT SIZE=1 NAME=marrys STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=����>���� <OPTION VALUE=δ��>δ�� <OPTION VALUE=�ѻ�>�ѻ� <OPTION VALUE=����>���� 
</SELECT></td>
												<td height="40" width="82" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE" align="center"> 
�����������</td>
												<td height="40" width="172" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<SELECT SIZE=1 NAME=computers STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=����>���� <OPTION VALUE=һ��> һ�� <OPTION VALUE=��ͨ>��ͨ <OPTION VALUE=����>���� 
<OPTION VALUE=����>���� <OPTION VALUE=�ϲ�>�ϲ� </SELECT></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">�ṩʳ�ޣ�</td>
												<td height="40" width="131" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
												<SELECT SIZE=1 NAME=shisus STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=���ṩ selected>���ṩ <OPTION VALUE=�ṩ> �ṩ <OPTION VALUE=ֻ�ṩ��>ֻ�ṩ�� <OPTION VALUE=ֻ�ṩס>ֻ�ṩס 
</SELECT></td>
												<td height="40" width="82" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE" align="center"> 
												н��ˮƽ��</td>
												<td height="40" width="172" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
												<input type="text" name="moneys" size="9" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">(�����ʾ����)</td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">��Ч���ޣ�</td>
												<td height="40" width="131" style="border: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">  
<SELECT SIZE=1 NAME=youxiaos STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=������Ч>������Ч <OPTION VALUE=һ����>һ���� <OPTION VALUE=�����>����� <OPTION VALUE=һ����>һ���� 
<OPTION VALUE=������>������ <OPTION VALUE=���� selected>���� <OPTION VALUE=һ��>һ�� <OPTION VALUE=����>���� 
<OPTION VALUE=����>���� <OPTION VALUE=��������>�������� 
</SELECT></td>
												<td height="40" width="82" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE"> ��</td>
												<td height="40" width="172" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> ��</td>
											</tr>
											<tr>
												<td height="40" width="490" align="center" colspan="4" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#DFF3DE">��λְ������������Ҫ�� 
												<font color="#FF0000">* ��ͨ�û�100���ڣ�VIP�û�500���� </font></td>
											</tr>
											<tr>
												<td height="40" width="490" align="center" colspan="4" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0"> 
												<TEXTAREA ROWS="8" NAME="zptext" COLS="64" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"></TEXTAREA></td>
											</tr>
											<tr>
												<td height="40" width="490" align="center" colspan="4">
												  <p>
												    <input type="submit" value="�ύ" name="B1">
												  </p>
											  <p><span class="STYLE1">��ʾ������㡰�ύ������˵�����¼��ʱ�������µ�¼��д��ҳ���ݡ�</span> </p></td>
											</tr>
									  </table>
									</form>
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
set conn=nothing
%>
<!--#include file="base.asp"-->
</body>

</html>