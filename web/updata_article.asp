<!--#include file="conn.asp"-->
<%
if session("login")<>"yes" then
response.write "<script language=JavaScript>" & chr(13) & "alert('����δ��½���߳�ʱ,���ص�½��');"&"window.location.href = '../'"&" </script>"
response.end
end if
if trim(request("title"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('���ⲻ��Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("content"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('���ݲ���Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if

sql="update article set title='"&Replace(request("title"),"'","''")&"',content='"&Replace(request("content"),"'","''")&"',class="&request("class")&",comefrom='"&request("comefrom")&"' where id="&clng(request("id"))
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('�����޸ĳɹ���');"&"window.location.href = 'admin_article.asp'"&" </script>"
%>
