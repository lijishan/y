<!--#include file="conn.asp"-->
<%
if session("id")="" or session("ac")="" or session("user")<>"2" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��¼��ʱ!! �����µ�¼����д��ҳ���ݣ�');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if

if isdate(request("picdate"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('���ڸ�ʽ����ȷ��');" & "history.back()" & "</script>" 
Response.End
end if

sql="update en_user set pic='"&request("pic")&"',picdate='"&request("picdate")&"',picdays='"&request("picdays")&"',morepic='"&request("morepic")&"' where id="&clng(session("id"))
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('�ɹ����ã���')</script>"
%>