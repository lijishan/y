<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../css.css"  type="text/css">
<title>��վ��Ѷ����</title>
<base target="_self">
</head>

<body bgcolor="#CAD7F7" vlink="#000000">

<table border="0" width="100%" cellspacing="0" cellpadding="4" bgcolor="#FFFFFF" style="border:1px solid #000000; " height="209">
	<tr>
		<td background="images/admin_bg_1.gif" height="25" width="709" colspan="5">
		<p align="center"><font size="2" color="#FFFFFF"><b>ί����Ƹ����</b></font></td>
	</tr>
	<tr>
		<td bgcolor="#F1F3F5" height="26" align="center" width="430">
					<p align="left"><b><a href="admin_add_consign.asp">���ְλ</a></b> <a href="admin_add_consign_nolog.asp" target="_blank">. </a></td>
		<td bgcolor="#F1F3F5" height="26" align="center" width="67">
					��</td>
		<td bgcolor="#F1F3F5" height="26" align="center" width="60">
					��</td>
		<td bgcolor="#F1F3F5" height="26" align="center" width="60">
					��</td>
		<td bgcolor="#F1F3F5" height="26" align="center" width="60">
					��</td>
	</tr>
	<tr>
		<td bgcolor="#F1F3F5" height="100%" align="center" width="709" colspan="5">
<%
sql="select id,company,url,jtzw,addtime from consigns order by id desc"
rs.open sql,conn,1,1
if rs.recordcount=0 then
           response.write "����ί����Ƹ��"
           else
rs.pagesize=20
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
%>

					<table border="0" width="650" cellspacing="0" cellpadding="0" height="25">
						<tr>
							<td width="104">
							����ְλ<font color="#FF0000"><%=rs.recordcount%></font>��</td>
							<td width="112">
							<p align="center">��ǰҳ��:<font color="#FF0000"><%=session("page")%></font>/<%=rs.pagecount%></td>
							<td width="248">
							<p align="center">&lt; <a href="admin_consign.asp?action=f">
							��ҳ</a>&nbsp;&nbsp;
							<a href="admin_consign.asp?action=p">��һҳ</a>&nbsp;&nbsp;
							<a href="admin_consign.asp?action=n">��һҳ</a>&nbsp;&nbsp;
							<a href="admin_consign.asp?action=l">βҳ</a> &gt;</td>
							<td width="186">
							<form method="POST" action="admin_consign.asp">
		<p align="center">��ת�� 
		<input type="text" name="page1" size="5" style="border: 1px solid #000000"> 
		ҳ&nbsp; 
	<input type="submit" value="�ύ" name="B1"></p>
</form>
</td>
						</tr>
					</table>
					</td>
	</tr>
	<tr>
		<td height="100%" valign="top" width="709" colspan="5">
		
		<table border="0" width="100%" cellspacing="0" cellpadding="0" height="24">
			<tr>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="65" height="25" bgcolor="#E5E5E5">
				<p align="center"><b>���</b></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="262" height="25" bgcolor="#FFFFFF">
				<p align="center"><b>��Ƹְλ</b></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="209" height="25" bgcolor="#E5E5E5">
				<p align="center"><b>��Ƹ��˾</b></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="129" height="25" bgcolor="#FFFFFF">
				<p align="center"><b>���ʱ��</b></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="107" align="center" height="25" colspan="3" bgcolor="#E5E5E5">
				<b>����</b></td>
			</tr>
<%
rs.absolutepage=session("page")
for ii=1 to rs.pagesize
%>	
			<tr>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="65" bgcolor="#E5E5E5" height="25">
				<p align="center">��<%=rs("id")%></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="262" height="25">
				��<a target="_blank" href="../show_consign.asp?id=<%=rs("id")%>"><%=rs("jtzw")%></a></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="209" height="25" bgcolor="#E5E5E5">
				<p align="center"><a target="_blank" href="<%=rs("url")%>">
				<%=rs("company")%></a></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="129" height="25">
				<p align="center"><%=rs("addtime")%></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="28" align="center" height="25" bgcolor="#E5E5E5">
				<a target="_blank" href="../show_consign.asp?id=<%=rs("id")%>">
				�鿴</a></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="35" align="center" height="25" bgcolor="#E5E5E5">
				<a href="admin_up_consign.asp?id=<%=rs("id")%>">�޸�</a></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="28" align="center" height="25" bgcolor="#E5E5E5">
				<a onClick="{if(confirm('���棺�˲�����ɾ��ί����Ƹ��<%=rs("jtzw")%>����������')){return true;}return false;}" href="del_consign.asp?id=<%=rs("id")%>"><span style="text-decoration: none">ɾ��</a></td>
			</tr>
		<%
rs.movenext
if rs.eof then exit for
next
%>

		</table>

		</td>
	</tr>
	<tr>
		<td height="100%" align="center" width="709" colspan="5">
					<table border="0" width="650" cellspacing="0" cellpadding="0" height="25">
						<tr>
							<td width="104">
							��������<font color="#FF0000"><%=rs.recordcount%></font>ƪ</td>
							<td width="112">
							<p align="center">��ǰҳ��:<font color="#FF0000"><%=session("page")%></font>/<%=rs.pagecount%></td>
							<td width="248">
							<p align="center">&lt; <a href="admin_consign.asp?action=f">
							��ҳ</a>&nbsp;&nbsp;
							<a href="admin_consign.asp?action=p">��һҳ</a>&nbsp;&nbsp;
							<a href="admin_consign.asp?action=n">��һҳ</a>&nbsp;&nbsp;
							<a href="admin_consign.asp?action=l">βҳ</a> &gt;</td>
							<td width="186">
							<form method="POST" action="admin_consign.asp">
		<p align="center">��ת�� 
		<input type="text" name="page1" size="5" style="border: 1px solid #000000"> 
		ҳ&nbsp; 
	<input type="submit" value="�ύ" name="B2"></p>
</form>
</td>
						</tr>
					</table>

		</td>
	</tr>
</table>
<%

rs.close
			set rs=nothing
			set conn=nothing
end if
%>

</body>

</html>