<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<%
if trim(request("title"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('���ⲻ��Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("content"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('���ݲ���Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if

sql="update guest set title='"&request("title")&"',content='"&Replace(request("content"),"'","''")&"',rtime='"&now()&"',reply='"&Replace(request("reply"),"'","''")&"',show="&request("show")&" where id="&clng(request("id"))
'rs.open sql,conn,1,1
conn.execute(sql)
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('�����޸ĳɹ���');"&"window.location.href = 'admin_guest.asp'"&" </script>"
%>
