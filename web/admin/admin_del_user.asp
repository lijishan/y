<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<%
if request("ttype")="1" then
sql="select pic from in_user where id="&clng(request("id"))
rs.Open sql,conn,1,1
pic=rs("pic")
rs.close
if pic<>"" then
set objfso=server.createobject("scripting.filesystemobject")
file=server.mappath("..\")+".\"+pic
objfso.deletefile file
set objfso=nothing
end if
sql="DELETE FROM endepot WHERE inid="&clng(request("id"))
rs.Open sql,conn,1,1
sql="DELETE FROM indepot WHERE inid="&clng(request("id"))
rs.Open sql,conn,1,1
sql="DELETE FROM message WHERE tid="&clng(request("id"))&" and ttype='1'"
rs.Open sql,conn,1,1
sql="DELETE FROM message WHERE fid="&clng(request("id"))&" and ftype='1'"
rs.Open sql,conn,1,1
sql="DELETE FROM in_user WHERE id="&clng(request("id"))
rs.Open sql,conn,1,1
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('删除成功,即将返回！');"&"window.location.href = 'admin_inuser.asp'"&" </script>"
end if
if request("ttype")="2" then
sql="DELETE FROM en_user WHERE id="&clng(request("id"))
rs.Open sql,conn,1,1
sql="DELETE FROM endepot WHERE enid="&clng(request("id"))
rs.Open sql,conn,1,1
set rs1=server.createobject("adodb.recordset")
sql1="select id from job where enid="&clng(request("id"))
rs1.Open sql1,conn,1,1
if rs1.recordcount<>0 then
rs1.movefirst
for i=1 to rs1.recordcount
sql="DELETE FROM indepot WHERE jobid="&rs1("id")
rs.Open sql,conn,1,1
rs1.movenext
next
end if
sql="DELETE FROM job WHERE enid="&clng(request("id"))
rs.Open sql,conn,1,1
sql="DELETE FROM message WHERE tid="&clng(request("id"))&" and ttype='2'"
rs.Open sql,conn,1,1
sql="DELETE FROM message WHERE fid="&clng(request("id"))&" and ftype='2'"
rs.Open sql,conn,1,1
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('删除成功,即将返回！');"&"window.location.href = 'admin_enuser.asp'"&" </script>"
end if
%>