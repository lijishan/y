<!--#include file="conn.asp"-->
<%
if session("login")<>"yes" and  (Request.Cookies("login")<>"yes")then
response.write "<script language=JavaScript>" & chr(13) & "alert('��δ��½���ʺ��������,���ص�½��');" & "history.back()" & "</script>" 
response.end
end if
sql="DELETE FROM imgdata WHERE num="&clng(request("id"))
rs2.Open sql,conn2,1,1
set rs2=nothing
set conn2=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('ɾ���ɹ�,�������أ�');"&"JavaScript:window.close();"&" </script>"

%>