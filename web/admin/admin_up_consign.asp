<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<%
sql="select * from consigns where id="&clng(request("id"))
rs.open sql,conn,1,1
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../css.css"  type="text/css">
<title>ί����Ƹ���</title>
<base target="_self">
</head>

<body bgcolor="#CAD7F7" style="text-align: center">

<p align="center">
						<table border="0" width="461" cellspacing="0" cellpadding="0" height="214">
							<tr>
								<td height="25" background="images/admin_bg_1.gif" width="459" style="border-left: 1px solid #000000; border-right: 1px solid #000000; border-top: 1px solid #000000; border-bottom-width: 1px">
								<p align="center"><font color="#FFFFFF"><b>
								ί����Ƹ�޸�</b></font></td>
							</tr>
							<tr>
								<td width="460" align="center" bgcolor="#F0F0F0" style="border-left: 1px solid #000000; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px dotted #000000">
								<form method="POST" action="updata_consign.asp">
										<table border="0" width="520" cellspacing="0" cellpadding="0" id="table5">
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">
												��Ƹ��˾��</td>
												<td height="40" width="430" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" colspan="3"> 
<input type="text" name="company" size="30" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("company")%>"></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">
												��ϵ��ַ��</td>
												<td height="40" width="430" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" colspan="3"> 
<input type="text" name="address" size="30" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("address")%>"></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">
												��ϵ�绰��</td>
												<td height="40" width="430" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" colspan="3"> 
<input type="text" name="tel" size="30" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("tel")%>"></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">
												�� ϵ �ˣ�</td>
												<td height="40" width="430" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" colspan="3"> 
<input type="text" name="person" size="30" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("person")%>"></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">
												��˾��վ��</td>
												<td height="40" width="430" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" colspan="3"> 
<input type="text" name="url" size="30" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("url")%>"></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">����ְλ��</td>
												<td height="40" width="397" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" colspan="3"> 
<INPUT MAXLENGTH=30 SIZE=30 NAME=jtzw STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF" value="<%=rs("jtzw")%>"></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">����������</td>
												<td height="40" width="397" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" colspan="3"> 
<input type="text" name="hka" size="20" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("hka")%>"> &nbsp; ���ڳ���<INPUT MAXLENGTH=30 SIZE=9 NAME=city STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF" value="<%=rs("city")%>"></td>
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
<input type="text" name="zyes" size="19" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("zyes")%>"></td>
												<td height="40" width="82" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE" align="center"> 
����Ҫ��</td>
												<td height="40" width="172" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<input type="text" name="hkas" size="20" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("hkas")%>"></td>
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
<input type="text" name="hkbs" size="20" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("hkbs")%>"></td>
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
												<td height="40" width="490" align="center" colspan="4" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#DFF3DE">��λְ������������Ҫ��</td>
											</tr>
											<tr>
												<td height="40" width="490" align="center" colspan="4" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0"> 
												<TEXTAREA ROWS="8" NAME="zptext" COLS="64" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"><%=rs("zptext")%></TEXTAREA></td>
											</tr>
											<tr>
												<td height="40" width="520" align="center" colspan="4">
												<input type="submit" value="�ύ" name="B1"></td>
											</tr>
											</table>
									<input type="hidden" name="id" value="<%=rs("id")%>">
									</form>
									</td>
							</tr>
							</table>
					
</p>
</body>
</html>
<%
rs.close
set rs=nothing
set conn=nothing
%>