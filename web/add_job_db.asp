<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"2" then
response.write "<script language=JavaScript>" & chr(13) & "alert('����δ��½���¼��ʱ�������µ�¼���������');" & "history.back()" & "</script>" 
Response.End
end if
str=request("jtzw")
if request("job")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ѡ��ְλ���ͣ�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("jtzw"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('����ְλ����Ϊ�գ�');" & "history.back()" & "</script>" 
Response.End
end if
if Request.Cookies("vip")="true" then 
 if len(request("jtzw"))>20 then
     response.write "<script language=JavaScript>" & chr(13) & "alert('����ְλVIP�û����ܳ���20�֣�');" & "history.back()" & "</script>" 
  Response.End
 end if
 else 
  if len(request("jtzw"))>6 then
   response.write "<script language=JavaScript>" & chr(13) & "alert('����ְλ��ͨ�û����ܳ���6�֣�VIP�û����ܳ���20�֣�');" & "history.back()" & "</script>"
   end if      
end if
if request("hka")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ѡ����������');" & "history.back()" & "</script>" 
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
if Request.Cookies("vip")="true" then 
if len(request("zptext"))>500 then
response.write "<script language=JavaScript>" & chr(13) & "alert('��λְ��������ͨ�û����ܳ���100�֣�VIP�û����ܳ���500�֣�');" & "history.back()" & "</script>" 
Response.End
end if
else
if len(request("zptext"))>100 then
response.write "<script language=JavaScript>" & chr(13) & "alert('��λְ��������ͨ�û����ܳ���100�֣�VIP�û����ܳ���500�֣�');" & "history.back()" & "</script>" 
Response.End
end if
end if 

sql="select id from job where enid="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
if Request.Cookies("vip")="false" then
if rs.recordcount>=en_max1 then
rs.close
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('��Ǹ����ͨ�û������Ƹְλ�����ռ�Ϊ��"&en_max1&"������������Ҫ�����ְλ�����ռ䣬��������VIP�û���һ���Ը���200Ԫ������ӵ��"&en_vip_max1&"��ְλ�ռ䣨�Ժ������ѣ������ѷ�ʽ������غ�ҳ�����·��ġ����ʽ����');" & "history.back()" & "</script>" 
Response.End
end if
else
if rs.recordcount>=en_vip_max1 then
rs.close
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('��Ǹ�����ġ�"&en_vip_max1&   "����ְλ�����ռ��������������ɾ��ʧЧ��ְλ�ռ䣻Ҳ�����⹺���¿ռ䣬200Ԫ/20�����������У��Ժ������ѣ������ѷ�ʽ������غ�ҳ�����·��ġ����ʽ����');" & "history.back()" & "</script>" 
Response.End
end if
end if
rs.close
sql="select id from job"
rs.open sql,conn,1,1
if rs.recordcount>3000 then 
response.write "<script language=JavaScript>" & chr(13) & "alert('��Ǹ��ʹ�õ��ڣ�����ϵ���ǣ��绰-13981528686 ��QQ-451079368��');" & "history.back()" & "</script>" 
Response.End
end if
rs.close
sql="insert into job(enid,job,jtzw,hka,city,zpnum,nianlings,zyes,hkas,edus,hkbs,languages,pthuas,sexs,jobtypes,marrys,computers,shisus,moneys,youxiaos,zptext) values("&Request.Cookies("id")&",'"&request("job")&"','"&request("jtzw")&"','"&request("hka")&"','"&request("city")&"','"&request("zpnum")&"','"&request("nianlings")&"','"&request("zyes")&"','"&request("hkas")&"','"&request("edus")&"','"&request("hkbs")&"','"&request("languages")&"','"&request("pthuas")&"','"&request("sexs")&"','"&request("jobtypes")&"','"&request("marrys")&"','"&request("computers")&"','"&request("shisus")&"','"&request("moneys")&"','"&request("youxiaos")&"','"&request("zptext")&"')"
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
Response.Cookies("newjob")="ok"
Response.Cookies("newjob").expires=(now+1/6) '����4Сʱ
response.write "<script language=JavaScript>" & chr(13) & "alert('�����ɹ�,�������أ�');"&"window.location.href = 'enjob.asp'"&" </script>"


%>