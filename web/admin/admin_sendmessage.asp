<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<%

if request("ttype")="1" then 
sql="select name,ac from in_user where id="&clng(request("tid"))
ttype="1"
else
sql="select name,ac from en_user where id="&clng(request("tid"))
ttype="2"
end if
rs.open sql,conn,1,1
if rs.recordcount=0 then
rs.close
set rs=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('�Ƿ������ύ��');" & "window.close()" & "</script>" 
Response.End
end if
%>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../css.css"  type="text/css">
<title>ϵͳ��Ϣ����</title>
</head>

<body>
<div align="center">
	<table border="0" width="400" cellspacing="0" cellpadding="0" height="300" id="table1">
		<tr>
			<td valign="top">
			<form method="POST" action="admin_sendmessage_db.asp">
				<table border="0" width="400" cellspacing="0" cellpadding="0" id="table2" height="296">
					<tr>
						<td height="30" background="images/jobbg1.gif" style="border: 1px solid #C0C0C0" width="398" colspan="2">
						<p align="center"><b><font color="#0A5DF6">ϵͳ��Ϣ����</font></b></td>
					</tr>
					<tr>
						<td height="28" width="69" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2">
						<p align="center"><b>�ռ��ˣ�</b></td>
						<td height="28" width="331" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2">&nbsp;<%=rs("ac")%>(<%=rs("name")%>)</td>
					</tr>
					<tr>
						<td width="69" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2">
						<p align="center"><b>��&nbsp; �⣺</b></td>
						<td width="331" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2">
						&nbsp;<input type="text" name="title" size="44" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=request("title")%>"></td>
					</tr>
					<tr>
						<td width="69" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2" height="148">
						<p align="center"><b>��&nbsp; �ݣ�</b><p align="center">(<font color="#FF0000"><a target="_blank" href="../ubbhelp.asp"><font color="#FF0000"><u>ubb</u></font></a></font>֧��)</td>
						<td width="331" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" valign="top" height="148" align="center" bgcolor="#EEFFF2">
						<textarea rows="11" name="content" cols="43" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"><%=request("content")%></textarea></td>
					</tr>
					<tr>
						<td height="34" width="400" colspan="2" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2">
						<p align="center">
						<input type="submit" value="����" name="B1">&nbsp;&nbsp;&nbsp;
						<input type="reset" value="���" name="B2"></td>
					</tr>
				</table>
			<input type="hidden" name="ttype" value="<%=ttype%>">
			<input type="hidden" name="tid" value="<%=request("tid")%>">

			</form>
			</td>
		</tr>
	</table>
</div>

</body>

</html>
<%
rs.close
set rs=nothing
set conn=nothing
%>