<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="md5.asp"-->
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('����δ��½���¼��ʱ�������µ�¼���������');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
call CodeIsTrue("kill.asp")
if Request.Cookies("vip")<>"true" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��վֻ��VIP�û��ſ�����ע���˻�����ͨ�û���Ҫע���˻�������ϵ���Ǵ���QQ-451079368���绰-13981528686��');"&"history.back()"&" </script>"
Response.End
end if 
if Request.Cookies("user")="1" then
sql="select pwd from in_user where id="&Request.Cookies("id")
rs.Open sql,conn,1,1
if rs("pwd")<>md5(request("pwd")) then
rs.close
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('�������');"&"window.location.href = 'kill.asp'"&" </script>"
Response.End
end if
rs.close
sql="select pic from in_user where id="&clng(Request.Cookies("id"))
rs.Open sql,conn,1,1
pic=rs("pic")
rs.close
if pic<>"" then
set objfso=server.createobject("scripting.filesystemobject")
file=server.mappath(".\")+"\"+pic
objfso.deletefile file
set objfso=nothing
end if
sql="DELETE FROM endepot WHERE inid="&clng(Request.Cookies("id"))
rs.Open sql,conn,1,1
sql="DELETE FROM indepot WHERE inid="&clng(Request.Cookies("id"))
rs.Open sql,conn,1,1
sql="DELETE FROM message WHERE tid="&clng(Request.Cookies("id"))&" and ttype='1'"
rs.Open sql,conn,1,1
sql="DELETE FROM message WHERE fid="&clng(Request.Cookies("id"))&" and ftype='1'"
rs.Open sql,conn,1,1
sql="DELETE FROM in_user WHERE id="&clng(Request.Cookies("id"))
rs.Open sql,conn,1,1
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('ע���ɹ�,�������أ�');"&"window.location.href = 'exit.asp'"&" </script>"
end if


if Request.Cookies("user")="2" then
sql="select pwd from en_user where id="&Request.Cookies("id")
rs.Open sql,conn,1,1
if rs("pwd")<>md5(request("pwd")) then
rs.close
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('�������');"&"window.location.href = 'kill.asp'"&" </script>"
Response.End
end if
rs.close
sql="DELETE FROM en_user WHERE id="&clng(Request.Cookies("id"))
rs.Open sql,conn,1,1
sql="DELETE FROM endepot WHERE enid="&clng(Request.Cookies("id"))
rs.Open sql,conn,1,1
set rs1=server.createobject("adodb.recordset")
sql1="select id from job where enid="&clng(Request.Cookies("id"))
rs1.Open sql1,conn,1,1
if rs1.recordcount<>0 then
rs1.movefirst
for i=1 to rs1.recordcount
sql="DELETE FROM indepot WHERE jobid="&rs1("id")
rs.Open sql,conn,1,1
rs1.movenext
next
end if
sql="DELETE FROM job WHERE enid="&clng(Request.Cookies("id"))
rs.Open sql,conn,1,1
sql="DELETE FROM message WHERE tid="&clng(Request.Cookies("id"))&" and ttype='2'"
rs.Open sql,conn,1,1
sql="DELETE FROM message WHERE fid="&clng(Request.Cookies("id"))&" and ftype='2'"
rs.Open sql,conn,1,1
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('ע���ɹ�,�������أ�');"&"window.location.href = 'exit.asp'"&" </script>"
end if
%>