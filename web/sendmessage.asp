<%if Request.Cookies("vip")<>"true" then
 if date()-cdate(Request.Cookies("rdate"))>3 then
response.write "<script language=JavaScript>" & chr(13) & "alert('��Ǹ����վ��ѡ�����վ����Ϣ����ͨ��Ա�������ʱ���3�죬��VIP��Ա����������ʹ�ã���������ʱ���ѵ��ڣ���ʹ��������ϵ��ʽ��ϵ�������Ҫʹ�ô˹��ܣ���������VIP��Ա�������Ա����˵������ѯ�绰-13981528686��QQ-451079368��');" & "JavaScript:window.close();" & "</script>" 
end if
end if 
%>
<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('�����߱���Ȩ�ޣ�');" & "history.back()" & "</script>" 
Response.End
end if
if request("ttype")<>"1" and request("ttype")<>"2" then
response.write "<script language=JavaScript>" & chr(13) & "alert('ϵͳ��Ϣ������ظ���');" & "history.back()" & "</script>" 
end if

if request("ttype")="1" then 
sql="select name from in_user where id="&clng(request("tid"))
ttype="1"
else
sql="select name from en_user where id="&clng(request("tid"))
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
<link rel="stylesheet" href="css.css"  type="text/css">
<title>������Ϣ</title>
</head>

<body>
<div align="center">
	<table border="0" width="400" cellspacing="0" cellpadding="0" height="300" id="table1">
		<tr>
			<td valign="top">
			<form method="POST" action="sendmessage_db.asp">
				<table border="0" width="400" cellspacing="0" cellpadding="0" id="table2" height="278">
					<tr>
						<td height="30" background="images/jobbg1.gif" style="border: 1px solid #C0C0C0" width="398" colspan="3">
						<p align="center"><b><font color="#0A5DF6">վ����Ϣ����</font></b></td>
					</tr>
					<tr>
						<td height="28" width="69" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2">
						<p align="center"><b>�ռ��ˣ�</b></td>
						<td height="28" width="331" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2" colspan="2">&nbsp;<%=rs("name")%></td>
					</tr>
					<tr>
						<td width="69" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2">
						<p align="center"><b>��&nbsp; �⣺</b></td>
						<td width="331" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2" colspan="2">
						&nbsp;<input type="text" name="title" size="44" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=request("title")%>"></td>
					</tr>
					<tr>
						<td width="69" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2" height="35">
						<p align="center"><b>��֤�룺</b></td>
						<td width="44" style="border-left-width: 1px; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" height="35" align="center" bgcolor="#EEFFF2">
						<input name="code" size="4" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px; float:right"></td>
						<td width="288" style="border-right:1px solid #C0C0C0; border-left-width: 1px; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" height="35" align="center" bgcolor="#EEFFF2">
						<p align="left"><%call getcode%></td>
					</tr>
					<tr>
						<td width="69" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2" height="123">
						<p align="center"><b>��&nbsp; �ݣ�</b></td>
						<td width="331" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" height="123" align="center" bgcolor="#EEFFF2" colspan="2">
						<textarea rows="8" name="content" cols="43" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"><%=request("content")%></textarea></td>
					</tr>
					<tr>
						<td height="30" width="400" colspan="3" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2">
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