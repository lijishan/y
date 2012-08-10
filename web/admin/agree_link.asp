<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<%
sql="update link set ok=true where id="&clng(request("id"))
rs.open sql,conn,1,1
response.write "<script language=JavaScript>" & chr(13) & "alert('操作成功，即将返回！');" & "history.back()" & "</script>" 
set rs=nothing
%>
