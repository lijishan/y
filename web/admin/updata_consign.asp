<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<%
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
sql="update consigns set company='"&request("company")&"',address='"&request("address")&"',tel='"&request("tel")&"',person='"&request("person")&"',url='"&request("url")&"',jtzw='"&request("jtzw")&"',hka='"&request("hka")&"',city='"&request("city")&"',zpnum='"&request("zpnum")&"',nianlings='"&request("nianlings")&"',zyes='"&request("zyes")&"',hkas='"&request("hkas")&"',edus='"&request("edus")&"',hkbs='"&request("hkbs")&"',languages='"&request("languages")&"',pthuas='"&request("pthuas")&"',sexs='"&request("sexs")&"',jobtypes='"&request("jobtypes")&"',marrys='"&request("marrys")&"',computers='"&request("computers")&"',shisus='"&request("shisus")&"',moneys='"&request("moneys")&"',youxiaos='"&request("youxiaos")&"',zptext='"&request("zptext")&"' where id="&clng(request("id"))
'rs.open sql,conn,1,1
conn.execute(sql)
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('�޸ĳɹ�,�������أ�');"&"window.location.href = 'admin_consign.asp'"&" </script>"
%>
