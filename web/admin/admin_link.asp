<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../css.css"  type="text/css">
<title>��վ�������</title>
<base target="_self">
</head>

<body bgcolor="#CAD7F7" vlink="#000000">

<table border="0" width="100%" cellspacing="0" cellpadding="4" bgcolor="#FFFFFF" style="border:1px solid #000000; " height="88">
	<tr>
		<td background="images/admin_bg_1.gif" height="25">
		<p align="center"><font size="2" color="#FFFFFF"><b>�������ӹ���</b></font></td>
	</tr>
	<tr>
		<td bgcolor="#F1F3F5" height="24">
					<p align="left"><b><font size="2">
					<a href="admin_add_link.asp">�������</a></font></b></p>
				</td>
	</tr>
	<tr>
		<td bgcolor="#F1F3F5" height="33" align="center">
		<table border="0" width="761" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" height="21">
			<tr>
				
				<td width="34" bgcolor="#E5E5E5" align="center" style="border-bottom: 1px dotted #000000; ; border-left-width:1px; border-right-width:1px; border-top-width:1px" height="25">
				<b>
				<font size="2">���</font></b></td>
				
				<td width="109" bgcolor="#FFFFFF" align="center" style="border-bottom: 1px dotted #000000; ; border-left-width:1px; border-right-width:1px; border-top-width:1px" height="25">
				<b>
				<font size="2">վ��</font></b></td>
				<td bgcolor="#E5E5E5" width="167" align="center" style="border-bottom: 1px dotted #000000; ; border-left-width:1px; border-right-width:1px; border-top-width:1px" height="25">
				<b>
				<font size="2">��ַ</font></b></td>
				<td width="223" align="center" style="border-bottom: 1px dotted #000000; ; border-left-width:1px; border-right-width:1px; border-top-width:1px" height="25">
				<b>
				<font size="2">˵��</font></b></td>
				<td bgcolor="#E5E5E5" width="149" align="center" style="border-bottom: 1px dotted #000000; ; border-left-width:1px; border-right-width:1px; border-top-width:1px" height="25">
				<font size="2"><b>���</b></font><b><font size="2">ʱ��</font></b></td>
				<td bgcolor="#FFFFFF" width="79" align="center" style="border-bottom: 1px dotted #000000; ; border-left-width:1px; border-right-width:1px; border-top-width:1px" height="25" colspan="2">
				<b>����</b></td>
				</tr>
			<%
		   		   sql="select * from link order by id desc"
                      rs.open sql,conn,1,1
           if rs.recordcount=0 then
           response.write "����������ӣ�"
           else
           rs.movefirst
           for i=1 to rs.recordcount
				%>
			
			<tr>
				
				<td width="34" bgcolor="#E5E5E5" align="center" style="border-bottom: 1px dotted #000000; border-left-width:1px; border-right-width:1px; border-top-width:1px" height="25">
					<%=rs("id")%></td>
				
				<td width="109" bgcolor="#FFFFFF" align="center" style="border-bottom: 1px dotted #000000; border-left-width:1px; border-right-width:1px; border-top-width:1px" height="25">
				<%=rs("name")%>
				</td>
				<td bgcolor="#E5E5E5" width="167" align="center" style="border-bottom: 1px dotted #000000; border-left-width:1px; border-right-width:1px; border-top-width:1px" height="25">
				<p align="left"><a target="_blank" href="<%=rs("url")%>"><%=rs("url")%></a></td>
				<td width="223" align="center" style="border-bottom: 1px dotted #000000; border-left-width:1px; border-right-width:1px; border-top-width:1px" height="25">
				��<%=rs("about")%></td>
				<td bgcolor="#E5E5E5" width="149" align="center" style="border-bottom: 1px dotted #000000; border-left-width:1px; border-right-width:1px; border-top-width:1px" height="25"><%=rs("t")%></td>
				<td bgcolor="#FFFFFF" width="41" align="center" style="border-bottom: 1px dotted #000000; border-left-width:1px; border-right-width:1px; border-top-width:1px" height="25">
				<span style="text-decoration: none"><a href="admin_up_link.asp?id=<%=rs("id")%>">�޸�</a></span></td>
				<td bgcolor="#FFFFFF" width="38" align="center" style="border-bottom: 1px dotted #000000; border-left-width:1px; border-right-width:1px; border-top-width:1px" height="25">
				<a onClick="{if(confirm('���棺�˲�����ɾ����վ��<%=rs("name")%>����������Ϣ��������')){return true;}return false;}" href="del_link.asp?id=<%=rs("id")%>"><span style="text-decoration: none">ɾ��</span></a></td>
				</tr>
				<%
			rs.movenext
			next
			end if
			rs.close
			set rs=nothing
			set conn=nothing
			%>
		</table>
		</td>
	</tr>
</table>

</body>

</html>