<!--#include file="auth.asp"-->
<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<%
if trim(request("title"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('���ⲻ��Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("content"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��Ϣ���ݲ���Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if


if request("class")="all" then  '����ע���û�
sql="select id from in_user"
rs.open sql,conn,1,1
if rs.recordcount<>0 then
rs.movefirst
set rs1=server.createobject("adodb.recordset")
for i=1 to rs.recordcount
sql1="insert into message(ttype,tid,ftype,content,title) values('1',"&rs("id")&",'0','"&Replace(request("content"),"'","''")&"','"&Replace(request("title"),"'","''")&"')"
rs1.open sql1,conn,1,1
rs.movenext
next
end if
rs.close
sql="select id from en_user"
rs.open sql,conn,1,1
if rs.recordcount<>0 then
rs.movefirst
set rs1=server.createobject("adodb.recordset")
for i=1 to rs.recordcount
sql1="insert into message(ttype,tid,ftype,content,title) values('2',"&rs("id")&",'0','"&Replace(request("content"),"'","''")&"','"&Replace(request("title"),"'","''")&"')"
rs1.open sql1,conn,1,1
rs.movenext
next
end if
rs.close
end if



if request("class")="in" then  '���и����û�
sql="select id from in_user"
rs.open sql,conn,1,1
if rs.recordcount<>0 then
rs.movefirst
set rs1=server.createobject("adodb.recordset")
for i=1 to rs.recordcount
sql1="insert into message(ttype,tid,ftype,content,title) values('1',"&rs("id")&",'0','"&Replace(request("content"),"'","''")&"','"&Replace(request("title"),"'","''")&"')"
rs1.open sql1,conn,1,1
rs.movenext
next
end if
rs.close
end if



if request("class")="en" then  '������ҵ�û�
sql="select id from en_user"
rs.open sql,conn,1,1
if rs.recordcount<>0 then
rs.movefirst
set rs1=server.createobject("adodb.recordset")
for i=1 to rs.recordcount
sql1="insert into message(ttype,tid,ftype,content,title) values('2',"&rs("id")&",'0','"&Replace(request("content"),"'","''")&"','"&Replace(request("title"),"'","''")&"')"
rs1.open sql1,conn,1,1
rs.movenext
next
end if
rs.close
end if



if request("class")="vip" then  '���и߼��û�
sql="select id from in_user where vip=true"
rs.open sql,conn,1,1
if rs.recordcount<>0 then
rs.movefirst
set rs1=server.createobject("adodb.recordset")
for i=1 to rs.recordcount
sql1="insert into message(ttype,tid,ftype,content,title) values('1',"&rs("id")&",'0','"&Replace(request("content"),"'","''")&"','"&Replace(request("title"),"'","''")&"')"
rs1.open sql1,conn,1,1
rs.movenext
next
end if
rs.close
sql="select id from en_user where vip=true"
rs.open sql,conn,1,1
if rs.recordcount<>0 then
rs.movefirst
set rs1=server.createobject("adodb.recordset")
for i=1 to rs.recordcount
sql1="insert into message(ttype,tid,ftype,content,title) values('2',"&rs("id")&",'0','"&Replace(request("content"),"'","''")&"','"&Replace(request("title"),"'","''")&"')"
rs1.open sql1,conn,1,1
rs.movenext
next
end if
rs.close
end if


if request("class")="notvip" then  '������ͨ�û�
sql="select id from in_user where vip=false"
rs.open sql,conn,1,1
if rs.recordcount<>0 then
rs.movefirst
set rs1=server.createobject("adodb.recordset")
for i=1 to rs.recordcount
sql1="insert into message(ttype,tid,ftype,content,title) values('1',"&rs("id")&",'0','"&Replace(request("content"),"'","''")&"','"&Replace(request("title"),"'","''")&"')"
rs1.open sql1,conn,1,1
rs.movenext
next
end if
rs.close
sql="select id from en_user where vip=false"
rs.open sql,conn,1,1
if rs.recordcount<>0 then
rs.movefirst
set rs1=server.createobject("adodb.recordset")
for i=1 to rs.recordcount
sql1="insert into message(ttype,tid,ftype,content,title) values('2',"&rs("id")&",'0','"&Replace(request("content"),"'","''")&"','"&Replace(request("title"),"'","''")&"')"
rs1.open sql1,conn,1,1
rs.movenext
next
end if
rs.close
end if


if request("class")="vipin" then  '���и߼������û�
sql="select id from in_user where vip=true"
rs.open sql,conn,1,1
if rs.recordcount<>0 then
rs.movefirst
set rs1=server.createobject("adodb.recordset")
for i=1 to rs.recordcount
sql1="insert into message(ttype,tid,ftype,content,title) values('1',"&rs("id")&",'0','"&Replace(request("content"),"'","''")&"','"&Replace(request("title"),"'","''")&"')"
rs1.open sql1,conn,1,1
rs.movenext
next
end if
rs.close
end if


if request("class")="notvipin" then  '������ͨ�����û�
sql="select id from in_user where vip=false"
rs.open sql,conn,1,1
if rs.recordcount<>0 then
rs.movefirst
set rs1=server.createobject("adodb.recordset")
for i=1 to rs.recordcount
sql1="insert into message(ttype,tid,ftype,content,title) values('1',"&rs("id")&",'0','"&Replace(request("content"),"'","''")&"','"&Replace(request("title"),"'","''")&"')"
rs1.open sql1,conn,1,1
rs.movenext
next
end if
rs.close
end if


if request("class")="vipen" then  '���и߼���ҵ�û�
sql="select id from en_user where vip=true"
rs.open sql,conn,1,1
if rs.recordcount<>0 then
rs.movefirst
set rs1=server.createobject("adodb.recordset")
for i=1 to rs.recordcount
sql1="insert into message(ttype,tid,ftype,content,title) values('2',"&rs("id")&",'0','"&Replace(request("content"),"'","''")&"','"&Replace(request("title"),"'","''")&"')"
rs1.open sql1,conn,1,1
rs.movenext
next
end if
rs.close
end if


if request("class")="notvipen" then  '������ͨ��ҵ�û�
sql="select id from en_user where vip=false"
rs.open sql,conn,1,1
if rs.recordcount<>0 then
rs.movefirst
set rs1=server.createobject("adodb.recordset")
for i=1 to rs.recordcount
sql1="insert into message(ttype,tid,ftype,content,title) values('2',"&rs("id")&",'0','"&Replace(request("content"),"'","''")&"','"&Replace(request("title"),"'","''")&"')"
rs1.open sql1,conn,1,1
rs.movenext
next
end if
rs.close
end if
call addlog("վ�ڶ���Ⱥ��")
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('������ɣ�');"&"window.location.href = 'admin_message.asp'"&" </script>"
%>