<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<%
sql="DELETE FROM consigns WHERE id="&clng(request("id"))
'rs.open sql,conn,1,1
conn.execute(sql)
set rs=nothing
set con=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('删除成功,即将返回！');"&"window.location.href = 'admin_consign.asp'"&" </script>"
%>