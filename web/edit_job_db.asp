<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"2" then
response.write "<script language=JavaScript>" & chr(13) & "alert('�����߱���Ȩ�ޣ�');" & "history.back()" & "</script>" 
Response.End
end if
str=request("jtzw")
if ChkInvaildWord(str) then 
response.write "<script language=JavaScript>" & chr(13) & "alert('������ְλ�����зǷ��ַ�����ʾ��������ְλ��ֻ���ɡ����֡���ĸ�����  (�ո���Ӣ�ı�㡢�����ַ��Ⱦ�������)��  �����ȷʵ��Ҫʹ���ض����ţ�����ϵ���ǣ�QQ-451079368���绰-13981528686��');" & "history.back()" & "</script>"
Response.End
end if
if request("job")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ѡ��ְλ���ͣ�');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("jtzw"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('����λ�ò���Ϊ�գ�');" & "history.back()" & "</script>" 
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
sql="update job set job='"&request("job")&"',jtzw='"&request("jtzw")&"',hka='"&request("hka")&"',city='"&request("city")&"',zpnum='"&request("zpnum")&"',nianlings='"&request("nianlings")&"',zyes='"&request("zyes")&"',hkas='"&request("hkas")&"',edus='"&request("edus")&"',hkbs='"&request("hkbs")&"',languages='"&request("languages")&"',pthuas='"&request("pthuas")&"',sexs='"&request("sexs")&"',jobtypes='"&request("jobtypes")&"',marrys='"&request("marrys")&"',computers='"&request("computers")&"',shisus='"&request("shisus")&"',moneys='"&request("moneys")&"',youxiaos='"&request("youxiaos")&"',zptext='"&request("zptext")&"' where id="&clng(request("id"))&" and enid="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('�޸ĳɹ�,�������أ�');"&"window.location.href = 'enjob.asp'"&" </script>"
Function ChkInvaildWord(Words) 
Const InvaildWords="��|��|��|��|@|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|�~|��|�x|�z|�||��|��| |��|/|��|:|;|<|>|��|��|��|��|��|��|��|��|��|��|��|��|\|��|��|��|��|��|$|%|^|&|*|+|=|~|��|!|��|��|��|��|��|,|��|.|`|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|��|�h|�i|�j|�k|�l|�m|�n|," 
ChkInvaildWord=True
InvaildWord=Split(InvaildWords,"|") 
inWords=LCase(Trim(Words)) 
For i=LBound(InvaildWord) To UBound(InvaildWord) 
If Instr(inWords,InvaildWord(i))>0 Then 
ChkInvaildWord=True 
Exit Function 
End If 
Next 
ChkInvaildWord=False 
End Function 
%>