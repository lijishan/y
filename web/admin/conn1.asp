<%
  set conn=server.createobject("adodb.connection")
  conn.Open "provider=Microsoft.jet.oledb.4.0;data source=" & Server.MapPath("../db/zp#db.mdb")
%>