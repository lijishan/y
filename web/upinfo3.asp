<!--#include file="conn_reg.asp"-->
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"1" then
response.write "<script language=JavaScript>" & chr(13) & "alert('登录超时!! 请重新登录后填写本页内容！');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
if trim(request("jobtype"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('请选择求职类型！');" & "history.back()" & "</script>" 
Response.End
end if
if request("job")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('请选择应聘职位类型！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("job1"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('应聘具体职位一不能为空！');" & "history.back()" & "</script>" 
Response.End
else
Response.Cookies("sjob")="ok"
Response.Cookies("sjob").expires=(now+1/6) '保存4小时
end if
if request("gzdd")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('请选择希望工作省份！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("gzcs"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('希望工作城市不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("grzz"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('个人自传不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if len(request("grzz"))>300 then
response.write "<script language=JavaScript>" & chr(13) & "alert('个人自传不能超过300字！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("phone"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('联系电话不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if request("email")="@" or instr(request("email"),"@")=0 then
response.write "<script language=JavaScript>" & chr(13) & "alert('邮箱地址不正确！');" & "history.back()" & "</script>" 
Response.End
end if

sql="update in_user set jobtype='"&request("jobtype")&"',job='"&request("job")&"',job1='"&request("job1")&"',job2='"&request("job2")&"',job3='"&request("job3")&"',job4='"&request("job4")&"',job5='"&request("job5")&"',gzdd='"&request("gzdd")&"',gzcs='"&request("gzcs")&"',gzcs1='"&request("gzcs1")&"',yuex='"&request("yuex")&"',grzz='"&request("grzz")&"',address='"&request("address")&"',posts='"&request("posts")&"',phone='"&request("phone")&"',shouji='"&request("shouji")&"',oicq='"&request("oicq")&"',email='"&request("email")&"',web='"&request("web")&"' where id="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
response.redirect "control.asp"%>
