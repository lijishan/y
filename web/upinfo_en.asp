<!--#include file="conn_reg.asp"-->
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"2" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��¼��ʱ!! �����µ�¼����д��ҳ���ݣ�');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if

if len(request("name"))>20then
response.write "<script language=JavaScript>" & chr(13) & "alert('��˾�����ܳ���20���֣�');" & "history.back()" & "</script>" 
Response.End
end if
if request("trade")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ѡ��˾������ҵ��');" & "history.back()" & "</script>" 
Response.End
end if
if request("cxz")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ѡ��˾���ʣ�');" & "history.back()" & "</script>" 
Response.End
end if
if request("area")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ѡ��˾���ڵ�����');" & "history.back()" & "</script>" 
Response.End
end if
if isdate(request("fdate"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('�������ڸ�ʽ����ȷ��');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("jianj"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��˾��鲻��Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if len(request("jianj"))>300 then
response.write "<script language=JavaScript>" & chr(13) & "alert('��˾��鲻�ܳ���300�֣�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("pname"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ϵ�˲���Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("phone"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ϵ�绰����Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if request("email")="@" or instr(request("email"),"@")=0 then
response.write "<script language=JavaScript>" & chr(13) & "alert('�����ַ����ȷ��');" & "history.back()" & "</script>" 
Response.End
end if

sql="update en_user set trade='"&request("trade")&"',cxz='"&request("cxz")&"',fund='"&request("fund")&"',yuangong='"&request("yuangong")&"',area='"&request("area")&"',faren='"&request("faren")&"',fdate='"&request("fdate")&"',jianj='"&request("jianj")&"',address='"&request("address")&"',zip='"&request("zip")&"',pname='"&request("pname")&"',pnames='"&request("pnames")&"',phone='"&request("phone")&"',fax='"&request("fax")&"',email='"&request("email")&"',renshi='"&request("renshi")&"',sex='"&request("sex")&"',rstel='"&request("rstel")&"',web='"&request("web")&"' where id="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
response.redirect "control.asp"%>
