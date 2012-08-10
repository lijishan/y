<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="md5.asp"-->
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
response.write "<script language=JavaScript>" & chr(13) & "alert('用户名错误或用户类型选择错误！');" & "history.back()" & "</script>" 
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
set rs1=server.createobject("adodb.recordset")
rs1.open sql1,conn,1,1
set rs1=nothing
if rs("name")<>"" then Response.Cookies("name")=rs("name")
Response.Cookies("vip")=LCase(rs("vip"))
Response.Cookies("id")=rs("id")
Response.Cookies("ac")=rs("ac")
Response.Cookies("rdate")=rs("rdate")
Response.Cookies("ggval")="81528686528"
Response.Cookies("user")=request("user")
Response.Cookies("name").expires=(now+1/6) '保存4小时
Response.Cookies("vip").expires=(now+1/6) '保存4小时
Response.Cookies("id").expires=(now+1/6) '保存4小时
Response.Cookies("ac").expires=(now+1/6) '保存4小时
Response.Cookies("user").expires=(now+1/6) '保存4小时
Response.Cookies("ggval").expires=(now+1/6) '保存4小时
Response.Cookies("rdate").expires=(now+1/6) '保存4小时
rs.close
set rs=nothing
set rs8=server.createobject("adodb.recordset")
sql="select id from job where enid="&Request.Cookies("id")
rs8.open sql,conn,1,1
if rs8.recordcount>0 then 
Response.Cookies("newjob")="ok"
Response.Cookies("newjob").expires=(now+1/6) '保存4小时
rs8.close
set rs8=nothing
else
Response.Cookies("newjob")=""
rs8.close
set rs8=nothing
end if
set rs9=server.createobject("adodb.recordset")
sql="select id from message where ttype='"&Request.Cookies("user")&"' and tid="&Request.Cookies("id")&" and new=true"
rs9.open sql,conn,1,1
if rs9.recordcount<>0 then 
Response.Cookies("newinfo")="new"
else
Response.Cookies("newinfo")=""
end if 
rs9.close	
set conn=nothing
set rs9=nothing
response.redirect "en_control1.asp"
end if
end if
rs.close
rs9.close
set rs=nothing
set rs9=nothing
set conn=nothing
end if
%>
