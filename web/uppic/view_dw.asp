
<!--#include file="conn.asp"--> 
<% '相片浏览页
dim rs
dim i
dim pageno
dim qq
dim sql


set rs=server.CreateObject("adodb.recordset")
sql="SELECT * FROM imgdata   where type='企业' order by num desc"
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
response.write "暂无用户上传图片"
end if 
%>

<html>

<head>

<title>相片浏览页</title>
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
      <font size="1">序号：<%=rs("num")%>  上传日期：<%=rs("time")%> 用户ID：<a href="../company.asp?id=<%=rs("id")%>" target="_blank"><%=rs("id")%></a> 用户类型：<%=rs("type")%> <a href="kkk1.asp?id=<%=rs("num")%>" target="_blank">查看图片</a>  </font></td>
  </tr> 
  
      
  
     <%
rs.movenext

next

%></table>
    
<%
for i=1 to rs.pagecount
%>
<a href=view_dw.asp?page=<%=i%> target="_self"><%=i%></a>
<%next

rs.close
conn.close
%>
<center>
</center>
</body>

</html>