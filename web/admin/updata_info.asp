<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<%
if trim(request("webname"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��վ���Ʋ���Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("webaddress"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��վ��ַ����Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("logo"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('logo��ַ����Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if request("adminemail")="@" or instr(request("adminemail"),"@")=0 then
response.write "<script language=JavaScript>" & chr(13) & "alert('�����ַ����ȷ��');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("address"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('ͨѶ��ַ����Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if isnumeric(request("post"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('��������ӦΪ���֣�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("tel"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('����绰����Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if isnumeric(request("qq"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('QQ����ӦΪ���֣�');" & "history.back()" & "</script>" 
Response.End
end if
if isnumeric(request("upsize"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('�ϴ�����ӦΪ���֣�');" & "history.back()" & "</script>" 
Response.End
end if
if isnumeric(request("in_max"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ͨ�����û�ְλ������ӦΪ���֣�');" & "history.back()" & "</script>" 
Response.End
end if
if isnumeric(request("in_vip_max"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('�߼������û�ְλ������ӦΪ���֣�');" & "history.back()" & "</script>" 
Response.End
end if
if isnumeric(request("en_max1"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ͨ��ҵ�û��˲ſ�����ӦΪ���֣�');" & "history.back()" & "</script>" 
Response.End
end if
if isnumeric(request("en_vip_max1"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('�߼���ҵ�û��˲ſ�����ӦΪ���֣�');" & "history.back()" & "</script>" 
Response.End
end if
if isnumeric(request("en_max2"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ͨ��ҵ�û�ְλ��������ӦΪ���֣�');" & "history.back()" & "</script>" 
Response.End
end if
if isnumeric(request("en_vip_max2"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('�߼���ҵ�û�ְλ��������ӦΪ���֣�');" & "history.back()" & "</script>" 
Response.End
end if
if isnumeric(request("index1"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ҳ��ʾ��ְ������ӦΪ���֣�');" & "history.back()" & "</script>" 
Response.End
end if
if isnumeric(request("index2"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ҳ��ʾ�¼���ҵ��ӦΪ���֣�');" & "history.back()" & "</script>" 
Response.End
end if
if isnumeric(request("index3"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ҳ��ʾ�Ƽ�ְλ��ӦΪ���֣�');" & "history.back()" & "</script>" 
Response.End
end if
if isnumeric(request("index4"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ҳ��ʾ�����˲���ӦΪ���֣�');" & "history.back()" & "</script>" 
Response.End
end if
if isnumeric(request("index5"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ҳ��ʾ��ְ������ӦΪ���֣�');" & "history.back()" & "</script>" 
Response.End
end if
if isnumeric(request("index6"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ҳ��ʾ����ί����Ƹ��ӦΪ���֣�');" & "history.back()" & "</script>" 
Response.End
end if

upsize=request("upsize")
logo=request("logo")
webname=request("webname")
webaddress=request("webaddress")
adminemail=request("adminemail")
address=request("address")
post=request("post")
tel=request("tel")
qq=request("qq")
index1=request("index1")
index2=request("index2")
index3=request("index3")
index4=request("index4")
index5=request("index5")
index6=request("index6")



sql="update info set webname='"&webname&"',webaddress='"&webaddress&"',adminemail='"&adminemail&"',logo='"&logo&"',address='"&address&"',post="&post&",tel='"&tel&"',index1='"&index1&"',index2='"&index2&"',index3='"&index3&"',index4='"&index4&"',index5='"&index5&"',index6='"&index6&"',qq="&qq&" where id=1"
'rs.open sql,conn,1,1
conn.execute(sql)
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('�޸ĳɹ�,�������أ�');"&"window.location.href = 'webinfo.asp'"&" </script>"

%>
