<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<%
if trim(request("what"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��Ŀ����Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
sql="select id from "&request("how")&"list where "&request("how")&"class='"&request("what")&"'"
rs.open sql,conn,1,1
if rs.recordcount<>0 then
rs.close
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('����Ŀ�Ѿ���');" & "history.back()" & "</script>" 
Response.End
else
rs.close
sql="insert into "&request("how")&"list("&request("how")&"class) values('"&request("what")&"')"
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('��Ŀ��ӳɹ���');"&"window.location.href = 'admin_list.asp'"&" </script>"
end if
%>
