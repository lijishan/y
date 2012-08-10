<!--#include file="conn.asp"-->
<%
if request("what")="请输入职位关键字" then
what=""
else
what=request("what")
end if
if request("class")="1" then
response.redirect "psearchj.asp?gzdd="+request("gzdd")+"&job="+request("job")+"&what="+what+"&date="+request("date")
else
response.redirect "psearchp.asp?gzdd="+request("gzdd")+"&job="+request("job")+"&what="+what+"&date="+request("date")
end if
%>