<!--#include file="conn1.asp"-->

<%
response.write request("adminname")
'conn.open
sql="select * from gogo_admin where gogo_name='"&request("adminname")&"'"
rs = conn.execute(sql)
response.write rs("gogo_name")
%>