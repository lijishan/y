<!--#include file="conn.asp"-->
<!--#include file="md5.asp"-->
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('����δ��½��');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
if request("pwd1")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('����û����д��');" & "history.back()" & "</script>" 
Response.End
end if
if request("pwd1")<>request("pwd2") then
response.write "<script language=JavaScript>" & chr(13) & "alert('�����������벻��ȷ��');" & "history.back()" & "</script>" 
Response.End
end if
pwd=request("pwd1")
if Request.Cookies("user")="1" then
sql1="select pwd from in_user where id="&Request.Cookies("id")
sql2="update in_user set pwd='"&md5(pwd)&"' where id="&Request.Cookies("id")
end if
if Request.Cookies("user")="2" then
sql1="select pwd from en_user where id="&Request.Cookies("id")
sql2="update en_user set pwd='"&md5(pwd)&"' where id="&Request.Cookies("id")
end if
rs.open sql1,conn,1,1
if rs("pwd")<>md5(request("ypwd")) then
response.write "<script language=JavaScript>" & chr(13) & "alert('ԭ�������');" & "history.back()" & "</script>" 
rs.close
set rs=nothing
set conn=nothing
Response.End
else
rs.close
rs.open sql2,conn,1,1
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('�����޸ĳɹ���');"&"window.location.href = 'control.asp'"&" </script>"
end if
%>