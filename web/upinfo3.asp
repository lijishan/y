<!--#include file="conn_reg.asp"-->
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"1" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��¼��ʱ!! �����µ�¼����д��ҳ���ݣ�');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
if trim(request("jobtype"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ѡ����ְ���ͣ�');" & "history.back()" & "</script>" 
Response.End
end if
if request("job")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ѡ��ӦƸְλ���ͣ�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("job1"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('ӦƸ����ְλһ����Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
else
Response.Cookies("sjob")="ok"
Response.Cookies("sjob").expires=(now+1/6) '����4Сʱ
end if
if request("gzdd")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ѡ��ϣ������ʡ�ݣ�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("gzcs"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('ϣ���������в���Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("grzz"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('�����Դ�����Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if len(request("grzz"))>300 then
response.write "<script language=JavaScript>" & chr(13) & "alert('�����Դ����ܳ���300�֣�');" & "history.back()" & "</script>" 
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

sql="update in_user set jobtype='"&request("jobtype")&"',job='"&request("job")&"',job1='"&request("job1")&"',job2='"&request("job2")&"',job3='"&request("job3")&"',job4='"&request("job4")&"',job5='"&request("job5")&"',gzdd='"&request("gzdd")&"',gzcs='"&request("gzcs")&"',gzcs1='"&request("gzcs1")&"',yuex='"&request("yuex")&"',grzz='"&request("grzz")&"',address='"&request("address")&"',posts='"&request("posts")&"',phone='"&request("phone")&"',shouji='"&request("shouji")&"',oicq='"&request("oicq")&"',email='"&request("email")&"',web='"&request("web")&"' where id="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
response.redirect "control.asp"%>
