<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('�����߱���Ȩ�ޣ�');" & "history.back()" & "</script>" 
Response.End
end if
if request("ttype")<>"1" and request("ttype")<>"2" then
response.write "<script language=JavaScript>" & chr(13) & "alert('ϵͳ��Ϣ������ظ���');" & "history.back()" & "</script>" 
end if
call codeistrue("")
if request("ttype")="1" then 
sql="select name from in_user where id="&clng(request("tid"))
ttype="1"
else
sql="select name from en_user where id="&clng(request("tid"))
ttype="2"
end if
rs.open sql,conn,1,1
if rs.recordcount=0 then
rs.close
set rs=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('�Ƿ������ύ��');" & "window.close()" & "</script>" 
Response.End
end if
rs.close
if trim(request("title"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('���ⲻ��Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("content"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��Ϣ���ݲ���Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
sql="insert into message(ttype,tid,ftype,fid,content,title) values('"&ttype&"',"&request("tid")&",'"&Request.Cookies("user")&"',"&Request.Cookies("id")&",'"&request("content")&"','"&request("title")&"')"
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('���ͳɹ���');" & "window.close()" & "</script>" 
%>
