<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"2" then
response.write "<script language=JavaScript>" & chr(13) & "alert('�����߱���Ȩ�ޣ�');" & "history.back()" & "</script>" 
Response.End
end if
sql="select id from endepot where enid="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
if Request.Cookies("vip")="false" then
if rs.recordcount>=en_max2 then
rs.close
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('��Ǹ����ͨ�û��˲ſ�����Ϊ"&en_max2&"�����������ɾ����Ч���˲���Ϣ�����Ӵ��˲���Ϣ��������Ҫ����Ŀ����������������VIP�û���һ���Ը���200Ԫ���Ժ��������ѣ�������ӵ��"&en_vip_max2&"���˲ſ����������ѷ�ʽ�����Ա�������·��ġ����ʽ������ѯ�绰��13981528686 QQ��451079368�� ');" & "history.back()" & "</script>" 
Response.End
end if
else
if rs.recordcount>=en_vip_max2 then
rs.close
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('��Ǹ������"&en_vip_max2&"���˲ſ��������������ɾ����Ч���˲���Ϣ�����Ӵ��˲���Ϣ��������Ҫ����Ŀ���������������Ա��ϵ���绰��13981528686 QQ��451079368');" & "history.back()" & "</script>" 
Response.End
end if
end if
rs.close
sql="select id from in_user where id="&clng(request("inid"))
rs.open sql,conn,1,1
if rs.recordcount=0 then
rs.close
response.write "<script language=JavaScript>" & chr(13) & "alert('�޴��˲ţ�');" & "history.back()" & "</script>" 
Response.End
end if
rs.close
sql="select id from endepot where enid="&clng(Request.Cookies("id"))& "and inid="&clng(request("inid"))
rs.open sql,conn,1,1
if rs.recordcount<>0 then
rs.close
response.write "<script language=JavaScript>" & chr(13) & "alert('���Ѿ���ӹ����˲ţ�');" & "history.back()" & "</script>" 
Response.End
end if
rs.close
sql="insert into endepot(enid,inid) values("&Request.Cookies("id")&","&request("inid")&")"
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('��ӳɹ���');" & "history.back()" & "</script>" 

%>
