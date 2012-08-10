<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<%
if trim(request("service"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('内容不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if request("cht")="0" then
sql="update service set service='"&Replace(request("service"),"'","''")&"' where id="&request("id")
else
sql="update service set service='"&Replace(request("service"),"'","''")&"',chtime='"&now()&"' where id="&request("id")
end if
'rs.open sql,conn,1,1
conn.execute(sql)
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('修改成功！');"&"window.location.href = 'admin_up_service.asp?id="&request("id")&"'"&" </script>"
%>
