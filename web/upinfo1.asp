<!--#include file="conn_reg.asp"-->
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"1" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��¼��ʱ!!�����µ�¼����д��ҳ���ݣ�');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
if len(request("code"))>0 then
if len(request("code"))<>15 and len(request("code"))<>18 then
response.write "<script language=JavaScript>" & chr(13) & "alert('���֤�����ʽ���ԣ�');" & "history.back()" & "</script>" 
Response.End
end if
end if 
if isdate(request("bdate"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('�������ڸ�ʽ����ȷ��');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("sex"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ѡ���Ա�');" & "history.back()" & "</script>" 
Response.End
end if
if isnumeric(request("shenggao"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('��߸�ʽ����ȷ��');" & "history.back()" & "</script>" 
Response.End
end if
if isnumeric(request("tizhong"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('���ظ�ʽ����ȷ��');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("minzu"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('�����������Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if request("hka")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('�������ڵز���Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if request("hkb")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('Ŀǰ���ڵز���Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if request("edu")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('�����̶Ȳ���Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if request("zye")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('רҵ�����Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("zhuanyen1"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('רҵ���Ʋ���Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("school"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ҵѧУ����Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if isdate(request("bydate"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ҵ���ڸ�ʽ����ȷ��');" & "history.back()" & "</script>" 
Response.End
end if
if request("zzmm")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('������ò����Ϊ�ղ���Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if request("zcheng")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('ְ�Ʋ���Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("jyjl"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('�ܽ���/��ѵ��������Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if len(request("jyjl"))>400 then
response.write "<script language=JavaScript>" & chr(13) & "alert('�ܽ���/��ѵ�������ܳ���400�֣�');" & "history.back()" & "</script>" 
Response.End
end if
sql="update in_user set code='"&request("code")&"',bdate='"&request("bdate")&"',sex='"&request("sex")&"',guoji='"&request("guoji")&"',shenggao='"&request("shenggao")&"',tizhong='"&request("tizhong")&"',minzu='"&request("minzu")&"',marry='"&request("marry")&"',hka='"&request("hka")&"',hkb='"&request("hkb")&"',edu='"&request("edu")&"',zye='"&request("zye")&"',zhuanyen1='"&request("zhuanyen1")&"',zyes='"&request("zyes")&"',zhuanyen2='"&request("zhuanyen2")&"',school='"&request("school")&"',bydate='"&request("bydate")&"',zzmm='"&request("zzmm")&"',zcheng='"&request("zcheng")&"',jyjl='"&request("jyjl")&"' where id="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
response.redirect "in_control2.asp"%>
