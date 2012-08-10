<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<%
if request("cht")="0" then
sql="update notice set notice='"&request("notice")&"' where id=1"
else
sql="update notice set notice='"&request("notice")&"',chtime='"&now()&"' where id=1"
end if
'rs.open sql,conn,1,1
conn.execute sql
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('ÐÞ¸Ä³É¹¦£¡');"&"window.location.href = 'admin_up_notice.asp'"&" </script>"
%>
