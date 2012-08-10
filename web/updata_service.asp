<!--#include file="conn.asp"-->
<%
if session("login")<>"yes" then
response.write "<script language=JavaScript>" & chr(13) & "alert('您还未登陆或者超时,请重登陆！');"&"window.location.href = '../'"&" </script>"
response.end
end if
if trim(request("service"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('内容不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if request("cht")="0" then
sql="update service set service='"&Replace(request("service"),"'","''")&"' where id=1"
else
sql="update service set service='"&Replace(request("service"),"'","''")&"',chtime='"&now()&"' where id=1"
end if
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('修改成功！');"&"window.location.href = 'admin_up_service.asp'"&" </script>"
%>
