<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="md5.asp"-->

<%
if instr(request("name"),"'")<>0 then
response.write "<script language=JavaScript>" & chr(13) & "alert('�Ƿ������ύ��');" & "history.back()" & "</script>" 
Response.End
end if
if request("pwd")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('����û����д��');" & "history.back()" & "</script>" 
Response.End
end if
if request("pwd")<>request("pwd1") then
response.write "<script language=JavaScript>" & chr(13) & "alert('�����������벻��ȷ��');" & "history.back()" & "</script>" 
Response.End
end if
call codeistrue("search_pwd1.asp")
name=request("name")
pwd=request("pwd")
if request("user")="1" then
sql="select answer from in_user where ac='"&name&"'"
rs.open sql,conn,1,1
if rs("answer")<>md5(request("answer")) then
response.write "<script language=JavaScript>" & chr(13) & "alert('����𰸴���');" & "history.back()" & "</script>" 
rs.close
Response.End
else
rs.close
sql="update in_user set pwd='"&md5(pwd)&"' where ac='"&name&"'"
rs.open sql,conn,1,1
response.write "<script language=JavaScript>" & chr(13) & "alert('�����޸ĳɹ�,�����µ�½��');"&"window.location.href = 'index.asp'"&" </script>"
end if
else
if request("user")="2" then
sql="select answer from en_user where ac='"&name&"'"
rs.open sql,conn,1,1
if rs("answer")<>md5(request("answer")) then
response.write "<script language=JavaScript>" & chr(13) & "alert('����𰸴���');" & "history.back()" & "</script>" 
rs.close
Response.End
else
rs.close
sql="update en_user set pwd='"&md5(pwd)&"' where ac='"&name&"'"
rs.open sql,conn,1,1
response.write "<script language=JavaScript>" & chr(13) & "alert('�����޸ĳɹ�,�����µ�½��');"&"window.location.href = 'index.asp'"&" </script>"
end if
end if
end if
set rs=nothing
set conn=nothing
%>
