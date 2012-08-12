<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<%
if trim(request("title"))="" then
	response.write "<script language=JavaScript>" & chr(13) & "alert('标题不能为空！');" & "history.back()" & "</script>" 
	Response.End
end if

if trim(request("content"))="" then
	response.write "<script language=JavaScript>" & chr(13) & "alert('内容不能为空！');" & "history.back()" & "</script>" 
	Response.End
end if

mydate=now()

sql="insert into article (title,content,addtime,comefrom,class) values('"&request("title")&"','"&request("content")&"','"&mydate&"','"&request("comefrom")&"','"&request("class")&"')"
'response.write sql
'response.end

rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
	response.write "<script language=JavaScript>" & chr(13) & "alert('项目添加成功！');"&"window.location.href = 'admin_add_article.asp' </script>"
'end if
%>
