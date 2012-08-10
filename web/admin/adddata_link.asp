<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<%
if trim(request("name"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('站名不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if request("url")="" or request("url")="http://" or instr(request("url"),"http://")=0 then
response.write "<script language=JavaScript>" & chr(13) & "alert('网站地址不正确！');" & "history.back()" & "</script>" 
Response.End
end if
sql="insert into link(name,url,about,t) values('"&request("name")&"','"&request("url")&"','"&request("about")&"','"&now()&"')"
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('友情连接添加成功！');"&"window.location.href = 'admin_link.asp'"&" </script>"
%>
