<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<%
if session("login")<>"yes" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��δ��½���ʺ��������,���ص�½��');" & "history.back()" & "</script>" 
response.end
end if
if trim(request("company"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��˾������Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("jtzw"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('����λ�ò���Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("city"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('���ڳ��в���Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("zptext"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��λְ����������Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
sql="insert into   consigns(company,address,tel,person,url,jtzw,hka,city,zpnum,nianlings,zyes,hkas,edus,hkbs,languages,pthuas,sexs,jobtypes,marrys,computers,shisus,moneys,youxiaos,zptext) values('"&request("company")&"','"&request("address")&"','"&request("tel")&"','"&request("person")&"','"&request("url")&"','"&request("jtzw")&"','"&request("hka")&"','"&request("city")&"','"&request("zpnum")&"','"&request("nianlings")&"','"&request("zyes")&"','"&request("hkas")&"','"&request("edus")&"','"&request("hkbs")&"','"&request("languages")&"','"&request("pthuas")&"','"&request("sexs")&"','"&request("jobtypes")&"','"&request("marrys")&"','"&request("computers")&"','"&request("shisus")&"','"&request("moneys")&"','"&request("youxiaos")&"','"&request("zptext")&"')"
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('ί����Ƹְλ��ӳɹ���');"&"window.location.href = 'admin_consign.asp'"&" </script>"
%>
