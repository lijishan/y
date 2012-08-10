<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<%
if trim(request("what"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('项目不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
sql="update "&request("how")&"list set "&request("how")&"class='"&request("what")&"' where id="&request("id")
'rs.open sql,conn,1,1
conn.execute(sql)
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('修改成功，请刷新后查看结果！');" & "window.close()" & "</script>" 
%>
