<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<%

sql="DELETE FROM "&request("how")&"list WHERE id="&clng(request("id"))
'rs.Open sql,conn,1,1
conn.execute(sql)
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('删除成功,即将返回！');"&"window.location.href = 'admin_list.asp'"&" </script>"

%>
