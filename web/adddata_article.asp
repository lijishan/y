<!--#include file="conn.asp"-->
<%
if session("login")<>"yes" then
response.write "<script language=JavaScript>" & chr(13) & "alert('您还未登陆或登录超时，请重新登录后操作！！');"&"window.location.href = '../'"&" </script>"
response.end
end if
if trim(request("title"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('标题不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("content"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('内容不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
title=Trim(Request("title"))
content=Request("content")
comefrom=Trim(request("comefrom"))
class1=request("class")
sql="insert into article(title,content,class,comefrom) values('"&Replace(title,"'","''")&"','"&Replace(content,"'","''")&"','"&class1&"','"&comefrom&"')"
rs.open sql,conn,1,1
response.write ("<Script Language=Javascript>window.alert('添加文章成功！');location.href='admin_article.asp';</Script>")
set rs=nothing
set conn=nothing
%>
