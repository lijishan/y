<!--#include file="conn.asp"-->
<%
if session("id")="" or session("ac")="" or session("user")<>"1" then
response.write "<script language=JavaScript>" & chr(13) & "alert('登录超时!! 请重新登录后填写本页内容！');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if


sql="update in_user set jobtype='"&request("jobtype")&"',job='"&request("job")&"',job1='"&request("job1")&"',job2='"&request("job2")&"',job3='"&request("job3")&"',job4='"&request("job4")&"',job5='"&request("job5")&"',gzdd='"&request("gzdd")&"',gzcs='"&request("gzcs")&"',gzcs1='"&request("gzcs1")&"',yuex='"&request("yuex")&"',grzz='"&request("grzz")&"',address='"&request("address")&"',posts='"&request("posts")&"',phone='"&request("phone")&"',shouji='"&request("shouji")&"',oicq='"&request("oicq")&"',email='"&request("email")&"',web='"&request("web")&"' where id="&clng(session("id"))

'sql="update in_user set name='"&request("name")&"',code='"&request("code")&"',bdate='"&request("bdate")&"',sex='"&request("sex")&"',guoji='"&request("guoji")&"',shenggao='"&request("shenggao")&"',tizhong='"&request("tizhong")&"',minzu='"&request("minzu")&"',marry='"&request("marry")&"',hka='"&request("hka")&"',hkb='"&request("hkb")&"',edu='"&request("edu")&"',zye='"&request("zye")&"',zhuanyen1='"&request("zhuanyen1")&"',zyes='"&request("zyes")&"',zhuanyen2='"&request("zhuanyen2")&"',school='"&request("school")&"',bydate='"&request("bydate")&"',zzmm='"&request("zzmm")&"',zcheng='"&request("zcheng")&"',jyjl='"&request("jyjl")&"' where id="&clng(session("id"))
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
response.redirect "control_admin.asp"%>
