<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<%
sql="update link set ok=true where id="&clng(request("id"))
rs.open sql,conn,1,1
response.write "<script language=JavaScript>" & chr(13) & "alert('�����ɹ����������أ�');" & "history.back()" & "</script>" 
set rs=nothing
%>
