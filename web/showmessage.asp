<!--#include file="conn.asp"-->
<!--#include file="unhtml.asp"-->
<!--#include file="ubb.asp"-->
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('�����߱���Ȩ�ޣ�');" & "history.back()" & "</script>" 
Response.End
end if
sql="select * from message where id="&clng(request("id"))
rs.open sql,conn,1,1
if rs("tid")<> clng(Request.Cookies("id")) or (rs("ttype")<> Request.Cookies("user")) then
rs.close
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('�����߱���Ȩ��!!!');" & "history.back()" & "</script>" 
Response.End
end if
set rs1=server.createobject("adodb.recordset")
if rs("ftype")="1" then
sql1="select name from in_user where id="&rs("fid")
rs1.open sql1,conn,1,1
name="<a target='_blank' href='person.asp?id="&rs("fid")&"'>"&rs1("name")&"</a>"
rs1.close
end if
if rs("ftype")="2" then
sql1="select name from en_user where id="&rs("fid")
rs1.open sql1,conn,1,1
name="<a target='_blank' href='company.asp?id="&rs("fid")&"'>"&rs1("name")&"</a>"
rs1.close
end if
if rs("ftype")="0" then name="<font color='#FF0000'>"&"ϵͳ��Ϣ(����ظ�)"&"</font>"
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
				<table border="0" width="400" cellspacing="0" cellpadding="0" id="table2" height="297">
					<tr>
						<td height="30" background="images/jobbg1.gif" style="border: 1px solid #C0C0C0" width="398" colspan="2">
						<p align="center"><b><font color="#0A5DF6">վ����Ϣ</font></b></td>
					</tr>
					<tr>
						<td height="28" width="73" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2" align="center">
						<p align="center"><b>�� �� �ˣ�</b></td>
						<td height="28" width="324" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2">&nbsp;<%=name%></td>
					</tr>
					<tr>
						<td width="73" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2" align="center">
						<p align="center"><b>��&nbsp;&nbsp;&nbsp; �⣺</b></td>
						<td width="324" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2">
						&nbsp;<%=rs("title")%></td>
					</tr>
					<tr>
						<td width="73" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2" align="center">
						<b>����ʱ�䣺</b></td>
						<td width="324" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2">
						&nbsp;<%=rs("addtime")%></td>
					</tr>
					<tr>
						<td width="73" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2" height="136">
						<p align="center"><b>��&nbsp;&nbsp;&nbsp; �ݣ�</b></td>
						<td width="324" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0; line-height:150%" height="136">
						��<%=ubbcode(unhtml(rs("content")))%></td>
					</tr>
					<tr>
						<td height="49" width="75" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2">
						<p align="center">
						<b>��&nbsp;&nbsp;&nbsp; ����</b></td>
						<td height="49" width="325" style="border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2">
						<p align="center">
						<a onClick="{if(confirm('�˲�����ɾ����Ϣ<<%=rs("title")%>>��������')){return true;}return false;}" href="del_messageb.asp?id=<%=rs("id")%>">
						<img border="0" src="images/m_delete.gif" width="40" height="40"></a>&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="sendmessage.asp?tid=<%=rs("fid")%>&ttype=<%=rs("ftype")%>&title=<%="RE:"+rs("title")%>">
						<img border="0" src="images/m_reply.gif" width="40" height="40"></a></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</div>

</body>

</html>
<%
sql1="update message set new="&false&" where id="&rs("id")
rs1.open sql1,conn,1,1
set rs1=nothing
rs.close
Response.Cookies("newinfo")=""
set rs=nothing
set conn=nothing
%>