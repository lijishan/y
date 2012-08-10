<!--#include file="conn.asp"-->
<%
if session("login")<>"yes" then
response.write "<script language=JavaScript>" & chr(13) & "alert('您还未登陆或者超时,请重登陆！');"&"window.location.href = '../'"&" </script>"
response.end
end if
if trim(request("name"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('站名不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if request("url")="" or request("url")="http://" or instr(request("url"),"http://")=0 then
response.write "<script language=JavaScript>" & chr(13) & "alert('网站地址不正确！');" & "history.back()" & "</script>" 
Response.End
end if
sql="update link set name='"&request("name")&"',url='"&request("url")&"',about='"&Replace(request("about"),"'","''")&"' where id="&clng(request("id"))
rs.open sql,conn,1,1
set rs=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('信息修改成功！');"&"window.location.href = 'admin_link.asp'"&" </script>"
%>
