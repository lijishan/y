<%
if session("login")<>"yes" then
response.write "<script language=JavaScript>" & chr(13) & "alert('您还未登陆或者超时,请重登陆！');"&"window.location.href = '../'"&" </script>"
response.end
else
session("id")=request("id")
session("ac")=request("ac")
session("user")=request("ttype")
Response.Cookies("id")=request("id")
Response.Cookies("ac")=request("ac")
Response.Cookies("user")=request("ttype")
Response.Cookies("ggval")="81528686528"
Response.Cookies("id").expires=(now+1/24) '保存1小时
Response.Cookies("ac").expires=(now+1/24) '保存1小时
Response.Cookies("user").expires=(now+1/24) '保存1小时
Response.Cookies("ggval").expires=(now+1/24) '保存1小时
response.redirect "in_control1aa.asp"
end if
%>