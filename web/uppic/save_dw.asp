<!--#include file="conn.asp"-->
<% dim rs
   dim sql 
   dim id 
if not(isnumeric(request("id"))) then
response.write "<script language=JavaScript>" & chr(13) & "alert('��������');" & "history.back()" & "</script>" 
Response.End
rs.close
end if
id=request("id") 
sql="select id from imgdata where id="&id
rs2.open sql,conn2,1,1
if rs2.recordcount<>0 then
response.write "<script language=JavaScript>" & chr(13) & "alert('�����ϴ���ͼƬ�������Ҫ�ٴ��ϴ�������ɾ��ԭ���ϴ���ͼƬ��');" & "history.back()" & "</script>" 
Response.End
end if 
FormSize = Request.TotalBytes
FormData = Request.BinaryRead(FormSize)
if FormSize>30000  then
response.write "<script language=JavaScript>" & chr(13) & "alert('���ϴ����ļ���СΪ"&FormSize/1000&" K���������30K�����ƣ��봦������ϴ��������Ҫ������ϵ���ǽ��д���');" & "history.back()" & "</script>" 
Response.End
end if
Image=ImageUp (FormSize,Formdata)
set rs=server.CreateObject("adodb.recordset")
sql="SELECT * FROM imgdata"
rs.Open sql,conn,1,3
rs.AddNew
rs("imagedata") = NULL
rs("imagedata").appendchunk Image
rs("time") = now()
rs("id")=id
rs("type")="��ҵ"
rs.Update
rs.Close
set rs=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('ͼƬ�ɹ��ϴ�����վͼƬ���ݿ��У����ڱ�վͼƬ�����Ǹ��ѷ����뼰ʱ��ϵ��վ����ԱΪ�㿪ͨ[ѯ��QQ-451079368 �绰-13981528686]������Ϣ����վVIP��Ա������1�����ͼƬ��ʾʱ�䣬�뼰ʱ��ϵ����Ϊ�㿪ͨ����');" &"window.location.href = '../en_uppic.asp'" &"</script>" 

%>
<%
function ImageUp(formsize,formdata)
    bncrlf=chrb(13) & chrb(10)
    divider=leftb(formdata,instrb(formdata,bncrlf)-1)
    datastart=instrb(formdata,bncrlf&bncrlf)+4
    dataend=instrb(datastart+1,formdata,divider)-datastart
    imageup=midb(formdata,datastart,dataend)
end function

%>