<!--#include file="conn.asp"-->
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('����δ��½��');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
sql="DELETE FROM message WHERE id="&clng(request("id"))&"and tid="&Request.Cookies("id")&" and ttype='"&Request.Cookies("user")&"'"
rs.Open sql,conn,1,1
set rs=nothing
set conn=nothing
Response.Cookies("newinfo")=""
response.write "<script language=JavaScript>" & chr(13) & "alert('��Ϣ��ɾ����');" & "window.close()" & "</script>" 

%>
