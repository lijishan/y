<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<%
if session("login")<>"yes" then
response.write "<script language=JavaScript>" & chr(13) & "alert('����δ��½���߳�ʱ,���ص�½��');"&"window.location.href = '../'"&" </script>"
response.end
end if
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../css.css"  type="text/css">
<title>���������޸�</title>
<base target="_self">
</head>

<body bgcolor="#CAD7F7" style="text-align: center">

<p align="center">��</p>
<p align="center">
<form method="POST" action="adddata_link.asp">
						<table border="0" width="461" cellspacing="0" cellpadding="0" height="289">
							<tr>
								<td height="25" background="images/admin_bg_1.gif" width="459" colspan="3" style="border-left: 1px solid #000000; border-right: 1px solid #000000; border-top: 1px solid #000000; border-bottom-width: 1px">
								<p align="center"><font color="#FFFFFF"><b>
								�����������</b></font></td>
							</tr>
							<tr>
								<td height="35" width="144" align="center" bgcolor="#F0F0F0" style="border-left: 1px solid #000000; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px dotted #000000">
								��վ����:</td>
								<td height="35" width="186" bgcolor="#F0F0F0" style="border-left-width: 1px; border-top-width: 1px; border-bottom: 1px dotted #000000">
								<p align="center">
								<input type="text" name="name" size="25"></td>
								<td height="35" width="130" bgcolor="#F0F0F0" style="border-left-width: 1px; border-right: 1px solid #000000; border-top-width: 1px; border-bottom: 1px dotted #000000">
								*</td>
							</tr>
							<tr>
								<td height="35" width="144" align="center" bgcolor="#F0F0F0" style="border-left: 1px solid #000000; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px dotted #000000">
								��վ��ַ:</td>
								<td height="35" width="186" bgcolor="#F0F0F0" style="border-left-width: 1px; border-top-width: 1px; border-bottom: 1px dotted #000000">
								<p align="center">
								<input type="text" name="url" size="25"></td>
								<td height="35" width="130" bgcolor="#F0F0F0" style="border-left-width: 1px; border-right: 1px solid #000000; border-top-width: 1px; border-bottom: 1px dotted #000000">
								*</td>
							</tr>
							<tr>
								<td width="144" align="center" bgcolor="#F0F0F0" style="border-left: 1px solid #000000; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px dotted #000000; ">
								��վ���:</td>
								<td width="186" bgcolor="#F0F0F0" style="border-left-width: 1px; border-top-width: 1px; border-bottom: 1px dotted #000000; ">
								<p align="center">
								&nbsp;<textarea rows="4" name="about" cols="24"></textarea></td>
								<td width="130" bgcolor="#F0F0F0" style="border-left-width: 1px; border-right: 1px solid #000000; border-top-width: 1px; border-bottom: 1px dotted #000000; ">
								��</td>
							</tr>
							<tr>
								<td width="461" align="center" style="border-right-width: 1px; border-top-width: 1px" colspan="3" height="1" background="images/yy.gif">
								</td>
							</tr>
							<tr>
								<td width="461" align="center" style="border-right-width: 1px; border-top-width: 1px" colspan="3" height="111">
								<input type="submit" value="�ύ" name="B1"></td>
							</tr>
						</table>
					
					</form>
</p>
</body>

</html>