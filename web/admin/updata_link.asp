<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<%
if trim(request("name"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('վ������Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if request("url")="" or request("url")="http://" or instr(request("url"),"http://")=0 then
response.write "<script language=JavaScript>" & chr(13) & "alert('��վ��ַ����ȷ��');" & "history.back()" & "</script>" 
Response.End
end if
sql="update link set name='"&request("name")&"',url='"&request("url")&"',about='"&request("about")&"' where id="&clng(request("id"))
'rs.open sql,conn,1,1
conn.execute(sql)
set rs=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('��Ϣ�޸ĳɹ���');"&"window.location.href = 'admin_link.asp'"&" </script>"
%>
