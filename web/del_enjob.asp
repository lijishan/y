<!--#include file="conn.asp"-->
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"2" then
response.write "<script language=JavaScript>" & chr(13) & "alert('您还未登陆！');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
if Request.Cookies("vip")<>"false" then
sql="DELETE FROM job WHERE id="&clng(request("id"))&"and enid="&Request.Cookies("id")
rs.Open sql,conn,1,1
sql="DELETE FROM indepot WHERE jobid="&clng(request("id"))
rs.Open sql,conn,1,1
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('删除成功,即将返回！');"&"window.location.href = 'enjob.asp'"&" </script>"
else
response.write "<script language=JavaScript>" & chr(13) & "alert('对不起，【普通用户】不能删除所发布职位（可修改），请升级成【VIP用户】拥有所有权限！');"&"window.location.href = 'enjob.asp'"&" </script>"
end if 
%>
