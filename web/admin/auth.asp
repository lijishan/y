<%
if session("login")<>"yes" then
response.write "<script language=JavaScript>" & chr(13) & "alert('您还未登陆或者超时,请重登陆！');"&"window.top.location.href = '../'"&" </script>"
response.end
end if
%>