<!--#include file="info.asp"-->
<!--#include file="conn_reg.asp"-->
<!--#include file="md5.asp"-->

<%
str=request("zpname")
if request("name")="" or request("pwd")="" or (request("user")<>"1" and request("user")<>"2") or request("question")="" or request("answer")=""or request("email")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ȷ��������Ϣ�Ѿ���д��');" & "history.back()" & "</script>" 
Response.End
end if
if request("email")="@" or instr(request("email"),"@")=0 then
response.write "<script language=JavaScript>" & chr(13) & "alert('�����ַ����ȷ��');" & "history.back()" & "</script>" 
Response.End
end if
if request("zpname")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��Ƹ��λ���ƻ����������û��д��');" & "history.back()" & "</script>" 
Response.End
end if
if request("phone")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('������ϵ�绰��û��д��');" & "history.back()" & "</script>" 
Response.End
end if
if request("pwd")<>request("pwd1") then
response.write "<script language=JavaScript>" & chr(13) & "alert('�����������벻��ȷ��');" & "history.back()" & "</script>" 
Response.End
end if
if instr(request("name"),"'")<>0 then
response.write "<script language=JavaScript>" & chr(13) & "alert('�Ƿ������ύ��');" & "history.back()" & "</script>" 
Response.End
end if

if len(request("zpname"))>20then
response.write "<script language=JavaScript>" & chr(13) & "alert('��˾��/�������ܳ���20���֣�');" & "history.back()" & "</script>" 
Response.End
end if
call codeistrue("register_sy.asp")
name=request("name")
email=request("email")
pwd=request("pwd")
question=request("question")
answer=request("answer")
zpname=request("zpname")
phone=request("phone")

content="�ܲ�528�����Ƹ����ӭ����"&"�뾡�췢����Ƹ/��ְ��Ϣ!"

if request("user")="1" then
byyx=request("byyx")
zy=request("zy")
sex=request("sex")
bdate=request("bdate")
shenggao=request("shenggao")
tizhong=request("tizhong")
gzdd=request("gzdd")
gzcs=request("gzcs")
edu=request("edu")
zye=request("zye")
kmubiao=request("kmubiao")
jyjl=request("jyjl")
kothertc=request("kothertc")
kgzjl=request("kgzjl")
grzz=request("grzz")

if trim(request("sex"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ѡ���Ա�');" & "history.back()" & "</script>" 
Response.End
end if
if isdate(request("bdate"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('�������ڸ�ʽ����ȷ��');" & "history.back()" & "</script>" 
Response.End
end if
if isnumeric(request("shenggao"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('û��д��߻�������ݲ���ȷ��');" & "history.back()" & "</script>" 
Response.End
end if
if isnumeric(request("tizhong"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('û��д���ػ�������ݲ���ȷ��');" & "history.back()" & "</script>" 
Response.End
end if
if request("hkb")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ѡ��ϣ������������');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("gzcs"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('ϣ����������û���');" & "history.back()" & "</script>" 
Response.End
end if
if request("edu")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ѡ����߽����̶ȣ�');" & "history.back()" & "</script>" 
Response.End
end if
if request("zye")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ѡ��רҵ���');" & "history.back()" & "</script>" 
Response.End
end if
if request("byyx")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('����д��ı�ҵԺУ��');" & "history.back()" & "</script>" 
Response.End
end if
if request("zy")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('����д�����ѧרҵ��');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("jyjl"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('�ܽ�������ѵ���� ����Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if len(request("jyjl"))>400 then
response.write "<script language=JavaScript>" & chr(13) & "alert('�ܽ�������ѵ���� ���ܳ���400�֣�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("kothertc"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��������������ר�� ����Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if len(request("kothertc"))>200 then
response.write "<script language=JavaScript>" & chr(13) & "alert('��������������ר�� ���ܳ���200�֣�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("kgzjl"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('������ϸ�������� ����Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if len(request("kgzjl"))>400 then
response.write "<script language=JavaScript>" & chr(13) & "alert('������ϸ�������� ���ܳ���400�֣�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("grzz"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('���Ҽ��/�ܽ� ����Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if len(request("grzz"))>300 then
response.write "<script language=JavaScript>" & chr(13) & "alert('���Ҽ��/�ܽ� ���ܳ���300�֣�');" & "history.back()" & "</script>" 
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
sql="select id from in_user where ac='"&name&"'"
rs.open sql,conn,1,1
if rs.recordcount<>0 then
response.write "<script language=JavaScript>" & chr(13) & "alert('���û����Ѿ���ע�ᣡ');" & "history.back()" & "</script>" 
Response.End
else
rs.close
sql="insert into in_user(ac,pwd,question,answer,email,name,phone,school,zhuanyen1,sex,bdate,shenggao,tizhong,gzcs,gzdd,hkb,edu,zye,kmubiao,jyjl,kothertc,kgzjl,grzz) values('"&name&"','"&md5(pwd)&"','"&question&"','"&md5(answer)&"','"&email&"','"&zpname&"','"&phone&"','"&byyx&"','"&zy&"','"&sex&"','"&bdate&"','"&shenggao&"','"&tizhong&"','"&gzcs&"','"&gzdd&"','"&gzdd&"','"&edu&"','"&zye&"','"&kmubiao&"','"&jyjl&"','"&kothertc&"','"&kgzjl&"','"&grzz&"')"
rs.open sql,conn,1,1
sql="select id from in_user where ac='"&name&"'"
rs.open sql,conn,1,1
id=rs("id")
rs.close
sql="insert into message(ttype,tid,ftype,content,title) values('1',"&id&",'0','"&content&"','��ϲ���ɹ�ע�ᣡ')"
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('ע������û��ɹ�������ע��������µ�¼����������ϡ�ְλ����Ŀ���ݵ�¼�룡��Ԥף����ְ�ɹ�����');"&"window.location.href = 'reglogin_gr.asp'"&" </script>"
end if
end if

%>