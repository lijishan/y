
<!--#include file="conn.asp"--> 
<% '��Ƭ���ҳ
dim rs
dim i
dim pageno
dim qq
dim sql


set rs=server.CreateObject("adodb.recordset")
sql="SELECT * FROM imgdata order by num desc"
rs.Open sql,conn,3,1
if rs.recordcount<>0 then
RS.pagesize=25
ye=rs.pagecount
page=request("page")
if page="" then 
pageno=1
else
pageno=page
end if
rs.absolutepage=pageno
else
response.write "�����û��ϴ�ͼƬ"
end if 
%>

<html>

<head>

<title>��Ƭ���ҳ</title>
</head>

<body>

<table width="713" height="400" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td valign="top" width="713">
    <table width="760" border="0">
    <%
for i=1 to rs.pagesize 
if rs.bof or rs.eof then 
exit for
end if


%>
  <tr>
    <td width="880">
      <font size="1">��ţ�<%=rs("num")%>  �ϴ����ڣ�<%=rs("time")%> �û�ID��<% if rs("type")="��ҵ" then %> <a href="../company.asp?id=<%=rs("id")%>" target="_blank"><%=rs("id")%></a><%else%><a href="../person.asp?id=<%=rs("id")%>" target="_blank"><%=rs("id")%></a><%end if%> �û����ͣ�<%=rs("type")%> <a href="kkk1.asp?id=<%=rs("num")%>" target="_blank">�鿴ͼƬ</a>  </font></td>
  </tr> 
  
      
  
     <%
rs.movenext

next

%></table>
    
<%
for i=1 to rs.pagecount
%>
<a href=index.asp?page=<%=i%> target="_self"><%=i%></a>
<%next

rs.close
conn.close
%>
<center>
  <table border="0" cellpadding="0" cellspacing="0"  width="748" height="27" >
    <tr>
      <td width="748" height="27" align="center">
    <hr>
    
    <font color="#666699" size="2">
    
    <b><a href="view_dw.asp" target="_blank">��ҵ�û�</a> <a href="view_gr.asp" target="_blank">�����û�</a> </b></font>      </td>
    </tr>
  </table>
  
</center>
</body>

</html>