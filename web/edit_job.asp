<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->

<html>
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"2" then
response.write "<script language=JavaScript>" & chr(13) & "alert('����δ��½��');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
%>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=webname%> - ��Ա���� - ������Ƹ��Ϣ</title>
</head>

<body>
<!--#include file="top_index.asp"-->
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
sql="select * from job where id="&clng(request("id"))&" and enid="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
%>


						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="272">
								<tr>
									<td height="27" colspan="2">
									<p align="left">
									&nbsp;��Ա���� �� ��ҵ��Ƹ��Ϣ�޸�</td>
								</tr>
								<tr>
									<td width="25%" valign="top">
									<!--#include file="en_menu.asp"-->
									</td>
									<td width="75%" valign="top" align="center" style="border: 1px solid #000000">
									<form method="POST" action="edit_job_db.asp">
										<table border="0" width="490" cellspacing="0" cellpadding="0" id="table5">
											<tr>
												<td height="40" colspan="4">
												<p align="center"><b>��ҵ��Ƹ��Ϣ�޸�</b></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">ְλ���ͣ�</td>
												<td height="40" width="397" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" colspan="3"> 
<SELECT SIZE="1" NAME="job" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF">
<OPTION VALUE="0" <%if rs("job") ="" then Response.Write "selected"%>>::��ѡ��ְλ���::</OPTION>
<%
call listjob(rs("job"))
%>
</SELECT> <font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">����ְλ��</td>
											  <td height="40" width="397" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" colspan="3"> 
	<% if Request.Cookies("vip")="true" then %>
	<INPUT MAXLENGTH=20 SIZE=15 NAME=jtzw STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF" value="<%=rs("jtzw")%>">
	<%else%>										  
<INPUT MAXLENGTH=6 SIZE=15 NAME=jtzw STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF" value="<%=rs("jtzw")%>">
<%end if %>
<font color="#FF0000">*��ͨ�û�6����,VIP�û�20����</font>[ֻ�����뺺��]</td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">����������</td>
												<td height="40" width="397" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" colspan="3"> 
<SELECT SIZE=1 NAME=hka STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION value="0" <%if rs("hka") ="" then Response.Write "selected"%>>���������б���ѡ��</OPTION>
<%
call listarea(rs("hka"))
%>
</SELECT> <font color="#FF0000">*</font>&nbsp; ���ڳ���<INPUT MAXLENGTH=8 SIZE=9 NAME=city STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF" value="<%=rs("city")%>">
<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">��Ƹ������</td>
												<td height="40" width="131" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<INPUT MAXLENGTH=10  SIZE=4 NAME=zpnum STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF" value="<%=rs("zpnum")%>"> 
��</td>
												<td height="40" width="82" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE" align="center"> 
����Ҫ��</td>
												<td height="40" width="172" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<INPUT MAXLENGTH=30 SIZE=7 NAME=nianlings STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF" value="<%=rs("nianlings")%>"> 
��</td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">רҵҪ��</td>
												<td height="40" width="131" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<SELECT NAME=zyes STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF" size="1"> 
<OPTION VALUE=���� <%if rs("zyes") ="����" then Response.Write "selected"%>>���� </OPTION>
<%
call listzhy(rs("zyes"))
%>
</SELECT></td>
												<td height="40" width="82" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE" align="center"> 
����Ҫ��</td>
												<td height="40" width="172" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<B> 
<SELECT SIZE=1 NAME=hkas STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=���� <%if rs("hkas") ="����" then Response.Write "selected"%>>����</OPTION>
<%
call listarea(rs("hkas"))
%>
</SELECT></B></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">ѧ��Ҫ��</td>
												<td height="40" width="131" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
<SELECT SIZE=1 NAME=edus STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=���� <%if rs("edus") ="����" then Response.Write "selected"%>>����</OPTION>
<OPTION VALUE=���� <%if rs("edus") ="����" then Response.Write "selected"%>>����</OPTION>
<OPTION VALUE=���� <%if rs("edus") ="����" then Response.Write "selected"%>>����</OPTION>
<OPTION VALUE=�м� <%if rs("edus") ="�м�" then Response.Write "selected"%>>�м�</OPTION> 
<OPTION VALUE=��ר <%if rs("edus") ="��ר" then Response.Write "selected"%>>��ר</OPTION>
<OPTION VALUE=��ר <%if rs("edus") ="��ר" then Response.Write "selected"%>>��ר</OPTION> 
<OPTION VALUE=���� <%if rs("edus") ="����" then Response.Write "selected"%>>����</OPTION>
<OPTION VALUE=˶ʿ <%if rs("edus") ="˶ʿ" then Response.Write "selected"%>>˶ʿ</OPTION> 
<OPTION VALUE=��ʿ <%if rs("edus") ="��ʿ" then Response.Write "selected"%>>��ʿ</OPTION> 
</SELECT></td>
												<td height="40" width="82" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE" align="center">
Ŀǰס�أ�</td>
												<td height="40" width="172" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
<B> 
<SELECT SIZE=1 NAME=hkbs STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION  VALUE=���� <%if rs("hkbs") ="����" then Response.Write "selected"%>>����</OPTION>
<%
call listarea(rs("hkbs"))
%>
</SELECT></B></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">����Ҫ��</td>
												<td height="40" width="131" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<SELECT SIZE=1 NAME=languages STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=���� <%if rs("languages") ="����" then Response.Write "selected"%>>����</OPTION>
<OPTION VALUE=Ӣ�� <%if rs("languages") ="Ӣ��" then Response.Write "selected"%>>Ӣ��</OPTION> 
<OPTION VALUE=���� <%if rs("languages") ="����" then Response.Write "selected"%>>����</OPTION> 
<OPTION VALUE=���� <%if rs("languages") ="����" then Response.Write "selected"%>>����</OPTION> 
<OPTION VALUE=���� <%if rs("languages") ="����" then Response.Write "selected"%>>����</OPTION> 
<OPTION VALUE=���� <%if rs("languages") ="����" then Response.Write "selected"%>>����</OPTION> 
<OPTION VALUE=������ <%if rs("languages") ="������" then Response.Write "selected"%>>������</OPTION> 
<OPTION VALUE=�������� <%if rs("languages") ="��������" then Response.Write "selected"%>>��������</OPTION> 
<OPTION VALUE=�������� <%if rs("languages") ="��������" then Response.Write "selected"%>>��������</OPTION> 
<OPTION VALUE=���� <%if rs("languages") ="����" then Response.Write "selected"%>>����</OPTION></SELECT></td>
												<td height="40" width="82" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE" align="center"> 
��ͨ���̶ȣ�</td>
												<td height="40" width="172" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<SELECT SIZE=1 NAME=pthuas STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=��׼ <%if rs("pthuas") ="��׼" then Response.Write "selected"%>>��׼</OPTION>
<OPTION VALUE=���� <%if rs("pthuas") ="����" then Response.Write "selected"%>>����</OPTION> 
<OPTION VALUE=���� <%if rs("pthuas") ="����" then Response.Write "selected"%>>����</OPTION>
<OPTION VALUE=һ�� <%if rs("pthuas") ="һ��" then Response.Write "selected"%>>һ��</OPTION> 
<OPTION VALUE=�ϲ� <%if rs("pthuas") ="�ϲ�" then Response.Write "selected"%>>�ϲ�</OPTION>
</SELECT></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">�Ա�Ҫ��</td>
												<td height="40" width="131" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<SELECT SIZE=1 NAME=sexs STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=���� <%if rs("sexs") ="����" then Response.Write "selected"%>>����</OPTION>
<OPTION VALUE=�� <%if rs("sexs") ="��" then Response.Write "selected"%>>��</OPTION>
<OPTION VALUE=Ů <%if rs("sexs") ="Ů" then Response.Write "selected"%>>Ů</OPTION>
</SELECT></td>
												<td height="40" width="82" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE" align="center"> 
�������ʣ�</td>
												<td height="40" width="172" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<SELECT SIZE=1 NAME=jobtypes STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=ȫְ <%if rs("jobtypes") ="ȫְ" then Response.Write "selected"%>>ȫְ</OPTION>
<OPTION VALUE=��ְ <%if rs("jobtypes") ="��ְ" then Response.Write "selected"%>>��ְ</OPTION>
<OPTION VALUE=���߼�� <%if rs("jobtypes") ="���߼��" then Response.Write "selected"%>>���߼��</OPTION>
</SELECT></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">����״����</td>
												<td height="40" width="131" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<SELECT SIZE=1 NAME=marrys STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=���� <%if rs("marrys") ="����" then Response.Write "selected"%>>����</OPTION>
<OPTION VALUE=δ�� <%if rs("marrys") ="δ��" then Response.Write "selected"%>>δ��</OPTION>
<OPTION VALUE=�ѻ� <%if rs("marrys") ="�ѻ�" then Response.Write "selected"%>>�ѻ�</OPTION>
<OPTION VALUE=���� <%if rs("marrys") ="����" then Response.Write "selected"%>>����</OPTION>
</SELECT></td>
												<td height="40" width="82" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE" align="center"> 
�����������</td>
												<td height="40" width="172" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<SELECT SIZE=1 NAME=computers STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=���� <%if rs("computers") ="����" then Response.Write "selected"%>>����</OPTION>
<OPTION VALUE=һ�� <%if rs("computers") ="һ��" then Response.Write "selected"%>>һ��</OPTION>
<OPTION VALUE=��ͨ <%if rs("computers") ="��ͨ" then Response.Write "selected"%>>��ͨ</OPTION>
<OPTION VALUE=���� <%if rs("computers") ="����" then Response.Write "selected"%>>����</OPTION>
<OPTION VALUE=���� <%if rs("computers") ="����" then Response.Write "selected"%>>����</OPTION>
<OPTION VALUE=�ϲ� <%if rs("computers") ="�ϲ�" then Response.Write "selected"%>>�ϲ�</OPTION>
</SELECT></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">�ṩʳ�ޣ�</td>
												<td height="40" width="131" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<SELECT SIZE=1 NAME=shisus STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=���ṩ <%if rs("shisus") ="���ṩ" then Response.Write "selected"%>>���ṩ</OPTION>
<OPTION VALUE=�ṩ <%if rs("shisus") ="�ṩ" then Response.Write "selected"%>>�ṩ</OPTION>
<OPTION VALUE=ֻ�ṩ�� <%if rs("shisus") ="ֻ�ṩ��" then Response.Write "selected"%>>ֻ�ṩ��</OPTION>
<OPTION VALUE=ֻ�ṩס <%if rs("shisus") ="ֻ�ṩס" then Response.Write "selected"%>>ֻ�ṩס</OPTION> 
</SELECT></td>
												<td height="40" width="82" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE" align="center"> 
												н��ˮƽ��</td>
												<td height="40" width="172" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
												<input type="text" name="moneys" size="9" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("moneys")%>">(�����ʾ����)</td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">��Ч���ޣ�</td>
												<td height="40" width="131" style="border: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">  
<SELECT SIZE=1 NAME=youxiaos STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=������Ч <%if rs("youxiaos") ="������Ч" then Response.Write "selected"%>>������Ч</OPTION>
<OPTION VALUE=һ���� <%if rs("youxiaos") ="һ����" then Response.Write "selected"%>>һ����</OPTION>
<OPTION VALUE=����� <%if rs("youxiaos") ="�����" then Response.Write "selected"%>>�����</OPTION>
<OPTION VALUE=һ���� <%if rs("youxiaos") ="һ����" then Response.Write "selected"%>>һ����</OPTION> 
<OPTION VALUE=������ <%if rs("youxiaos") ="������" then Response.Write "selected"%>>������</OPTION>
<OPTION VALUE=���� <%if rs("youxiaos") ="����" then Response.Write "selected"%>>����</OPTION>
<OPTION VALUE=һ�� <%if rs("youxiaos") ="һ��" then Response.Write "selected"%>>һ��</OPTION>
<OPTION VALUE=���� <%if rs("youxiaos") ="����" then Response.Write "selected"%>>����</OPTION> 
<OPTION VALUE=���� <%if rs("youxiaos") ="����" then Response.Write "selected"%>>����</OPTION>
<OPTION VALUE=�������� <%if rs("youxiaos") ="��������" then Response.Write "selected"%>>��������</OPTION>
</SELECT></td>
												<td height="40" width="82" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE"> ��</td>
												<td height="40" width="172" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> ��</td>
											</tr>
											<tr>
												<td height="40" width="490" align="center" colspan="4" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#DFF3DE">��λְ������������Ҫ�� 
												<font color="#FF0000">* ��ͨ�û�100���ڣ�VIP�û�500����</font></td>
											</tr>
											<tr>
												<td height="40" width="490" align="center" colspan="4" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0"> 
												<TEXTAREA ROWS="8" NAME="zptext" COLS="64" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"><%=rs("zptext")%></TEXTAREA></td>
											</tr>
											<tr>
												<td height="40" width="490" align="center" colspan="4">
												<input type="submit" value="�ύ" name="B1"></td>
											</tr>
											</table>
									<input type="hidden" name="id" value="<%=rs("id")%>">
									</form>
									</td>
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