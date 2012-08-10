<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="md5.asp"-->
<meta http-equiv="content-type" content="text/html; charset=GBK" />


<%
if request("ttype")="1" then
if trim(request("pwd"))="" and trim(request("answer"))="" then sql="update in_user set question='"&request("question")&"',vip="&request("vip")&",rz="&request("rz")&",lock="&request("lock")&" where id="&request("id")
if trim(request("pwd"))="" and trim(request("answer"))<>"" then sql="update in_user set question='"&request("question")&"',vip="&request("vip")&",rz="&request("rz")&",lock="&request("lock")&",answer='"&md5(trim(request("answer")))&"' where id="&request("id")
if trim(request("pwd"))<>"" and trim(request("answer"))="" then sql="update in_user set question='"&request("question")&"',vip="&request("vip")&",rz="&request("rz")&",lock="&request("lock")&",pwd='"&md5(trim(request("pwd")))&"' where id="&request("id")
if trim(request("pwd"))<>"" and trim(request("answer"))<>"" then sql="update in_user set question='"&request("question")&"',vip="&request("vip")&",rz="&request("rz")&",lock="&request("lock")&",pwd='"&md5(trim(request("pwd")))&"',answer='"&md5(trim(request("answer")))&"' where id="&request("id")
end if
if request("ttype")="2" then
if trim(request("pwd"))="" and trim(request("answer"))="" then sql="update en_user set question='"&request("question")&"',vip="&request("vip")&",rz="&request("rz")&",lock="&request("lock")&" where id="&request("id")
if trim(request("pwd"))="" and trim(request("answer"))<>"" then sql="update en_user set question='"&request("question")&"',vip="&request("vip")&",rz="&request("rz")&",lock="&request("lock")&",answer='"&md5(trim(request("answer")))&"' where id="&request("id")
if trim(request("pwd"))<>"" and trim(request("answer"))="" then sql="update en_user set question='"&request("question")&"',vip="&request("vip")&",rz="&request("rz")&",lock="&request("lock")&",pwd='"&md5(trim(request("pwd")))&"' where id="&request("id")
if trim(request("pwd"))<>"" and trim(request("answer"))<>"" then sql="update en_user set question='"&request("question")&"',vip="&request("vip")&",rz="&request("rz")&",lock="&request("lock")&",pwd='"&md5(trim(request("pwd")))&"',answer='"&md5(trim(request("answer")))&"' where id="&request("id")
end if
'rs.open sql,conn,1,1
conn.execute(sql)
set rs=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('修改成功，即将返回！');" & "history.back()" & "</script>" 
%>

