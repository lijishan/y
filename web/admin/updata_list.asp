<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<%
if trim(request("what"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��Ŀ����Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
sql="update "&request("how")&"list set "&request("how")&"class='"&request("what")&"' where id="&request("id")
'rs.open sql,conn,1,1
conn.execute(sql)
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('�޸ĳɹ�����ˢ�º�鿴�����');" & "window.close()" & "</script>" 
%>
