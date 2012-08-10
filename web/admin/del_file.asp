<!--#include file="auth.asp"-->
<!--#include FILE="conn.asp"-->
<%
sql="DELETE FROM files WHERE address='"&request("file")&"'"
'rs.open sql,conn,1,1
conn.execute(sql)
set rs=nothing
set conn=nothing
set objfso=server.createobject("scripting.filesystemobject")
file=server.mappath(".\")+"\"+request("file")
objfso.deletefile file
set objfso=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('删除成功,即将返回！');"&"window.location.href = 'admin_upfiles.asp'"&" </script>"
%>