<!--#include file="conn.asp"-->
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"2" then
response.write "<script language=JavaScript>" & chr(13) & "alert('�����߱���Ȩ�ޣ�');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
sql="DELETE FROM imgdata WHERE num="&clng(request("id"))
rs2.Open sql,conn2,1,1
set rs2=nothing
set conn2=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('ɾ���ɹ�,�������أ�');"&"window.location.href = '../en_uppic.asp'"&" </script>"

%>