<!--#include file="conn.asp"-->
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"2" then
response.write "<script language=JavaScript>" & chr(13) & "alert('����δ��½��');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
if Request.Cookies("vip")<>"false" then
sql="DELETE FROM job WHERE id="&clng(request("id"))&"and enid="&Request.Cookies("id")
rs.Open sql,conn,1,1
sql="DELETE FROM indepot WHERE jobid="&clng(request("id"))
rs.Open sql,conn,1,1
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('ɾ���ɹ�,�������أ�');"&"window.location.href = 'enjob.asp'"&" </script>"
else
response.write "<script language=JavaScript>" & chr(13) & "alert('�Բ��𣬡���ͨ�û�������ɾ��������ְλ�����޸ģ����������ɡ�VIP�û���ӵ������Ȩ�ޣ�');"&"window.location.href = 'enjob.asp'"&" </script>"
end if 
%>
