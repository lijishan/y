<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<%
ip=request.servervariables("remote_addr")
 if trim(request("title"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('���ⲻ��Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("content"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('���ݲ���Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if len(request("content"))>300 then
response.write "<script language=JavaScript>" & chr(13) & "alert('���ݲ��ܳ���150�����֣�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("username"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��������Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
call codeistrue("add_guest.asp")
title=Trim(Request("title"))
content=Request("content")
username=Trim(request("username"))
email=request("email")
qq=request("qq")
homepage=request("homepage")
show=request("show")
addtime=now()
sex=request("sex")
sql="insert into guest(title,content,username,email,qq,addtime,ip,homepage,sex) values('"&title&"','"&content&"','"&username&"','"&email&"','"&qq&"','"&addtime&"','"&ip&"','"&homepage&"',"&sex&")"
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
response.write ("<Script Language=Javascript>window.alert('������Գɹ������ǽ�������̵�ʱ���ڶ��������������ش�лл��Ա�վ��֧�֣�');location.href='guest.asp';</Script>")


%>