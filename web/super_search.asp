<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('此功能仅为注册用户提供！');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
else
if Request.Cookies("user")="1" then response.redirect "search_job_vip.asp"
if Request.Cookies("user")="2" then response.redirect "search_person_vip.asp"
end if
%>
