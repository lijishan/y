<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="md5.asp"-->
<meta http-equiv="content-type" content="text/html; charset=GBK" />

<%
if (request("name") = "") then
    response.write "<script language=JavaScript>history.back()</script>"
    response.end
end if
%>
<%
if instr(request("name"),"'")<>0 then
response.write "<script language=JavaScript>" & chr(13) & "alert('非法数据提交！');" & "history.back()" & "</script>" 
Response.End
else
call CodeIsTrue("index.asp")
pwd=md5(request("pwd"))
if request("user")="1" then
sql="select id,name,ac,pwd,lock,vip,rdate from in_user where ac='"&request("name")&"'"
sql1="update in_user set ltime='"&now()&"',ip='"&request.servervariables("remote_host")&"' where ac='"&request("name")&"'"
end if
if request("user")="2" then
sql="select id,name,ac,pwd,lock,vip,rdate from en_user where ac='"&request("name")&"'"
sql1="update en_user set ltime='"&now()&"',ip='"&request.servervariables("remote_host")&"' where ac='"&request("name")&"'"
end if
rs.open sql,conn,1,1
if rs.eof and rs.bof then
response.write "<script language=JavaScript>" & chr(13) & "alert('用户名错误或用户类型选择错误！111111111');" & "history.back()" & "</script>" 
rs.close
set rs=nothing
set conn=nothing
response.end
else
if pwd<>rs("pwd") then
response.write "<script language=JavaScript>" & chr(13) & "alert('密码错误！');" & "history.back()" & "</script>" 
rs.close
set rs=nothing
set conn=nothing
response.end
else
if rs("lock")=true then
rs.close
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('此帐号已被锁定，请与管理员联系！');"&"window.location.href = 'index.asp'"&" </script>"
response.end
end if

if rs("name")<>"" then Response.Cookies("name")=rs("name")
Response.Cookies("vip")=LCase(rs("vip"))
Response.Cookies("id")=rs("id")
Response.Cookies("ac")=rs("ac")
Response.Cookies("user")=request("user")
Response.Cookies("ggval")="81528686528"
Response.Cookies("rdate")=rs("rdate")
Response.Cookies("name").expires=(now+1/6) '保存4小时
Response.Cookies("vip").expires=(now+1/6) '保存4小时
Response.Cookies("id").expires=(now+1/6) '保存4小时
Response.Cookies("ac").expires=(now+1/6) '保存4小时
Response.Cookies("user").expires=(now+1/6) '保存4小时
Response.Cookies("ggval").expires=(now+1/6) '保存4小时
Response.Cookies("rdate").expires=(now+1/6) '保存4小时
rs.close
if request("user")="1" then
sql="select job1 from in_user where id="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
if isnull(rs("job1")) then
Response.Cookies("sjob")=""
rs.close
else
Response.Cookies("sjob")="ok"
Response.Cookies("sjob").expires=(now+1/6) '保存4小时
rs.close
end if 
end if 
if request("user")="2" then
sql="select id from job where enid="&Request.Cookies("id")
rs.open sql,conn,1,1
if rs.recordcount>0 then 
Response.Cookies("newjob")="ok"
Response.Cookies("newjob").expires=(now+1/6) '保存4小时
rs.close
else
Response.Cookies("newjob")=""
rs.close
end if 
end if 
set rs=nothing
set conn=nothing
response.redirect "index.asp"
end if
end if
rs.close
set rs=nothing
set conn=nothing
end if
%>
