<!--#include file="conn_reg.asp"-->
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"1" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��¼��ʱ!! �����µ�¼����д��ҳ���ݣ�');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
if request("rctype")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ѡ���˲����ͣ�');" & "history.back()" & "</script>" 
Response.End
end if
if request("pthua")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ѡ����ͨ��ˮƽ��');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("kgzjl"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('���˹�����������Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if len(request("kgzjl"))>400 then
response.write "<script language=JavaScript>" & chr(13) & "alert('���˹����������ܳ���400�֣�');" & "history.back()" & "</script>" 
Response.End
end if
if isnumeric(request("gznum"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('����ʱ���ʽ����ȷ��');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("kothertc"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('������������Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if len(request("kothertc"))>200 then
response.write "<script language=JavaScript>" & chr(13) & "alert('�����������ܳ���200�֣�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("kmubiao"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('ְҵĿ�겻��Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if len(request("kmubiao"))>100 then
response.write "<script language=JavaScript>" & chr(13) & "alert('ְҵĿ�겻�ܳ���100�֣�');" & "history.back()" & "</script>" 
Response.End
end if
sql="update in_user set rctype='"&request("rctype")&"',language='"&request("language")&"',lanlevel='"&request("lanlevel")&"',languages='"&request("languages")&"',lanlevels='"&request("lanlevels")&"',pthua='"&request("pthua")&"',computer='"&request("computer")&"',kgzjl='"&request("kgzjl")&"',gznum='"&request("gznum")&"',kothertc='"&request("kothertc")&"',kmubiao='"&request("kmubiao")&"' where id="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
response.redirect "in_control3.asp"%>
