<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<%
if trim(request("title"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('标题不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("content"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('内容不能为空！');" & "history.back()" & "</script>" 
Response.End
end if

sql="update article set title='"&request("title")&"',content='"&request("content")&"',class="&request("class")&",comefrom='"&request("comefrom")&"' where id="&clng(request("id"))
'rs.open sql,conn,1,1
conn.execute(sql)
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('文章修改成功！');"&"window.location.href = 'admin_article.asp'"&" </script>"
%>
