<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<%
sql="select * from guest where id="&clng(request("id"))
rs.open sql,conn,1,1
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../css.css"  type="text/css">
<title>���������޸�</title>
<base target="_self">
</head>

<body bgcolor="#CAD7F7" style="text-align: center">

<p align="center">��</p>
<p align="center">
<form method="POST" action="updata_guest.asp">
						<table border="0" width="587" cellspacing="0" cellpadding="0" height="465">
							<tr>
								<td height="25" background="images/admin_bg_1.gif" width="585" colspan="2" style="border-left: 1px solid #000000; border-right: 1px solid #000000; border-top: 1px solid #000000; border-bottom-width: 1px">
								<p align="center"><font color="#FFFFFF"><b>����</b></font><b><font color="#FFFFFF">�����޸�</font></b></td>
							</tr>
							<tr>
								<td height="35" width="144" align="center" bgcolor="#F0F0F0" style="border-left: 1px solid #000000; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px dotted #000000">
								����:</td>
								<td height="35" width="431" bgcolor="#F0F0F0" style="border-right:1px solid #000000; border-left-width: 1px; border-top-width: 1px; border-bottom: 1px dotted #000000">
								<p align="center">
								<input type="text" name="title" size="25" value="<%=rs("title")%>"></td>
							</tr>
							<tr>
								<td width="144" align="center" bgcolor="#F0F0F0" style="border-left: 1px solid #000000; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px dotted #000000; ">
								����:</td>
								<td width="431" bgcolor="#F0F0F0" style="border-right:1px solid #000000; border-left-width: 1px; border-top-width: 1px; border-bottom: 1px dotted #000000">
								<p align="center">
								&nbsp;<textarea rows="12" name="content" cols="57"><%=rs("content")%></textarea></td>
							</tr>
							<tr>
								<td width="144" align="center" bgcolor="#F0F0F0" style="border-left: 1px solid #000000; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #000000; " height="35">
								�ظ�:</td>
								<td width="431" bgcolor="#F0F0F0" style="border-right:1px solid #000000; border-left-width: 1px; border-top-width: 1px; border-bottom: 1px solid #000000; " height="35">
								<p align="center">&nbsp;<textarea rows="9" name="reply" cols="59"><%=rs("reply")%></textarea></td>
							</tr>
							<tr>
								<td width="144" align="center" bgcolor="#F0F0F0" style="border-left: 1px solid #000000; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #000000; " height="35">
                                ��ʾ��</td>
								<td width="431" bgcolor="#F0F0F0" style="border-right:1px solid #000000; border-left-width: 1px; border-top-width: 1px; border-bottom: 1px solid #000000; " height="35">
                                <input name="show" type="radio" value="true" checked <%if rs("show")=true then response.write "checked"%>>
                                ��ʾ&nbsp;&nbsp;&nbsp; 
                                <input type="radio" <%if rs("show")=false then response.write "checked"%> name="show" value="false">����ʾ</td>
							</tr>
							<tr>
								<td width="587" align="center" style="border-right-width: 1px; border-top-width: 1px" colspan="2" height="9" background="images/yy.gif">
								</td>
							</tr>
							<tr>
								<td width="587" align="center" style="border-right-width: 1px; border-top-width: 1px" colspan="2" height="79">
								<input type="submit" value="�ύ" name="B1"></td>
							</tr>
						</table>
					<input type="hidden" name="id" value="<%=request("id")%>">
</form>
<%
rs.close
set rs=nothing
set conn=nothing
%>
</body>

</html>