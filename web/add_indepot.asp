<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"1" then
response.write "<script language=JavaScript>" & chr(13) & "alert('�����߱���Ȩ�ޣ�');" & "history.back()" & "</script>" 
Response.End
end if
sql="select id from indepot where inid="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
if Request.Cookies("vip")="false" then
if rs.recordcount>=in_max then
rs.close
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('��Ǹ����ͨ�û����ְλ������Ϊ"&in_max&"�����������ɾ����Ч��ְλ��Ϣ�����Ӵ�ְλ��Ϣ��������Ҫ����Ŀ����������������VIP�û���һ���Ը���50Ԫ���Ժ������ѣ�������ӵ��"&in_vip_max&"��ְλ�����������ѷ�ʽ����Ա�������·��ġ����ʽ������ѯ�绰��13981528686 QQ��451079368��');" & "history.back()" & "</script>" 
Response.End
end if
else
if rs.recordcount>=in_vip_max then
rs.close
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('��Ǹ������"&in_vip_max&"��ְλ��������������Ҫ����Ŀ���������������Ա��ϵ���绰��13981528686 QQ��451079368');" & "history.back()" & "</script>" 
Response.End
end if
end if
rs.close
sql="select id from job where id="&clng(request("jobid"))
rs.open sql,conn,1,1
if rs.recordcount=0 then
rs.close
response.write "<script language=JavaScript>" & chr(13) & "alert('�޴���Ƹ��Ϣ��');" & "history.back()" & "</script>" 
Response.End
end if
rs.close
sql="select id from indepot where inid="&clng(Request.Cookies("id"))& "and jobid="&clng(request("jobid"))
rs.open sql,conn,1,1
if rs.recordcount<>0 then
rs.close
response.write "<script language=JavaScript>" & chr(13) & "alert('���Ѿ���ӹ�����Ƹ��Ϣ��');" & "history.back()" & "</script>" 
Response.End
end if
rs.close
sql="insert into indepot(inid,jobid) values("&Request.Cookies("id")&","&request("jobid")&")"
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('��ӳɹ���');" & "history.back()" & "</script>" 

%>
