<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->

<% if Request.Cookies("user")="2" then  
response.write "<script language=JavaScript>" & chr(13) & "alert('��ҵ�û���ֱ���������˲���Ϣ����ְλ����������רΪ�����û��ṩ�ģ�');"& "JavaScript:window.close();" & " </script>"
Response.End
end if
if Request.Cookies("sjob")<>"ok" then
response.write "<script language=JavaScript>" & chr(13) & "alert('�����û���ã��㻹δ��д����Ļ�����Ϣ���������Ļ�����Ϣ����ѵġ�����������ְλ��Ϣ��');"& "JavaScript:window.close();" & " </script>"
Response.End
end if
sql="select id,enid,jtzw,hka,city,addtime,sexs,edus from job where enid in (select id from en_user where lock=false and name<>'')"
if request("gzdd")<>"0" and request("gzdd")<>"" then sql=sql+" and hka='"&request("gzdd")&"'"
if request("job")<>"0" and request("job")<>"" then sql=sql+" and job='"&request("job")&"'"
if Trim(request("what"))<>"" then sql=sql+"and jtzw like '%"&Trim(request("what"))&"%'"
if request("date")<>"����" and request("date")<>"" then sql=sql+" and datediff('d',addtime,Now())<"&request("date")
sql=sql+" order by id desc"
rs.open sql,conn,1,1
%>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title>ְλ��ͨ���� - <%=webname%></title>
</head>

<body>
<!--#include file="top_index.asp"-->
<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="106">
		<tr>
			<td style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf" width="760" valign="top">
			<div align="center">
				<table border="0" width="98%" cellspacing="0" cellpadding="0" id="table2" height="164">
					<tr>
						<td style="border: 1px solid #C0C0C0" valign="top">
						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="147">
								<tr>
									<td height="40" width="740" background="images/bg11.gif">
									<table border="0" width="740" cellspacing="0" cellpadding="0" id="table4" height="31">
										<tr>
											<td width="127">��</td>
											<td width="587">
											<p align="center">������<b><%
											if request("gzdd")="0" then
											response.write "���е���"
											else
											response.write request("gzdd")
											end if
											%></b> ְλ���<b><%
											if request("job")="0" then
											response.write "�������"
											else
											response.write request("job")
											end if
											%></b> 
											�ؼ��֣�<b><%
											if request("what")="" then
											response.write "����"
											else
											response.write request("what")
											end if
											%> </b>ʱ�䣺<b><%
											if request("date")=""or request("date")="����" then
											response.write "����"
											else
											response.write request("date")&"����"
											end if
											%> </b>�ҵ���¼��<b><%=rs.recordcount%></b></td>
										</tr>
									</table>
									</td>
								</tr>
								<tr>
									<td valign="top" align="center">
<%
if rs.recordcount=0 then
rs.close
response.write "��ʱû�����ְλ��" 
else
rs.pagesize=20
if request("action")="n" then
session("page")=session("page")+1
else
if request("action")="p" then
session("page")=session("page")-1
else
if request("action")="f" then
session("page")=1
else
if request("action")="l" then
session("page")=rs.pagecount
else
if isnumeric(request("page1"))=true then
session("page")=clng(request("page1"))
else
session("page")=1
end if
end if
end if
end if
end if
if session("page")>rs.pagecount then session("page")=rs.pagecount
if session("page")<1 then session("page")=1
rs.absolutepage=session("page")
%>
									<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table5" height="92">
									<tr>
										<td width="166" height="30" align="center" background="imagen/web_01_05.gif" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; ">
										<b>�� Ƹ ְ λ</b></td>
										<td width="189" height="30" align="center" background="imagen/web_01_05.gif" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; ">
										<b>�� Ƹ �� ˾</b></td>
										<td width="96" height="30" align="center" background="imagen/web_01_05.gif" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; ">
										<b>��&nbsp; ��</b></td>
										<td width="60" height="30" align="center" background="imagen/web_01_05.gif" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; ">
															<b>�Ա�Ҫ��</b></td>
										<td width="60" height="30" align="center" background="imagen/web_01_05.gif" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; ">
															<b>ѧ��Ҫ��</b></td>
										<td width="100" height="30" align="center" background="imagen/web_01_05.gif" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; ">
										<b>��&nbsp; ��</b></td>
									</tr>
<%
set rs2=server.createobject("adodb.recordset")
for ii=1 to 20
sql2="select id,name,vip from en_user where id="&rs("enid")
rs2.open sql2,conn,1,1
%>	
								<tr>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="166" height="30" align="center" background="images/bg9.gif"><a target =_blank  href="job.asp?id=<%=rs("id")%>">
															<%=rs("jtzw")%></a><% if rs2("vip") then 
										response.write"&nbsp;<font color=#ff0000>[��]</font>"
										end if %> </td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="189" height="30" align="center" background="images/bg9.gif"><a  target =_blank href="company.asp?id=<%=rs2("id")%>">
															<%=rs2("name")%></a></td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="96" height="30" align="center" background="images/bg9.gif">
										<p align="center"><%=rs("hka")%>��<%=rs("city")%></td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="60" height="30" align="center" background="images/bg9.gif">
															[<%=rs("sexs")%>]</td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="60" height="30" align="center" background="images/bg9.gif">
															[<%=rs("edus")%>]</td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="100" height="30" align="center" background="images/bg9.gif">
										<%
								a=instr(rs("addtime"),chr(32))-1
								response.write Mid(rs("addtime"),1,a)
								%>
								</td>
									</tr>
<%
rs.movenext
if rs.eof then exit for
rs2.close
next
%>
								<tr>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="734" height="42" align="center" colspan="6"><table border="0" width="504" cellspacing="0" cellpadding="0" height="31">
						<tr>
							<td width="120">
							<p align="center">��ǰҳ��:<font color="#FF0000"><%=session("page")%></font>/<%=rs.pagecount%></td>
							<td width="225">
							<p align="center">&lt; <a href="psearchj.asp?action=f&gzdd=<%=request("gzdd")%>&job=<%=request("job")%>&date=<%=request("date")%>&what=<%=request("what")%>">��ҳ</a>&nbsp;&nbsp;
							<a href="psearchj.asp?action=p&gzdd=<%=request("gzdd")%>&job=<%=request("job")%>&date=<%=request("date")%>&what=<%=request("what")%>">��һҳ</a>&nbsp;&nbsp;
							<a href="psearchj.asp?action=n&gzdd=<%=request("gzdd")%>&job=<%=request("job")%>&date=<%=request("date")%>&what=<%=request("what")%>">��һҳ</a>&nbsp;&nbsp;
							<a href="psearchj.asp?action=l&gzdd=<%=request("gzdd")%>&job=<%=request("job")%>&date=<%=request("date")%>&what=<%=request("what")%>">βҳ</a> &gt;</td>
							<form method="POST" action="psearchj.asp?gzdd=<%=request("gzdd")%>&job=<%=request("job")%>&date=<%=request("date")%>&what=<%=request("what")%>">
							<td width="159">							
		<p>��ת�� 
		<input type="text" name="page1" size="4" style="border: 1px solid #000000"> ҳ&nbsp; 
	<input type="submit" value="�ύ" name="B1"></p>
</td>
</form>
						</tr>
					</table>
</td>
									</tr>
									</table>
									<%
										rs.close
										end if
										%>

									</td>
									</tr>
								</table>
								</div>
							</td>
						</tr>
					</table>
					</div>
				</td>
		</tr>
	</table>
</div>
<%
set rs2=nothing
set rs=nothing
set conn=nothing
%>

<!--#include file="base.asp"-->
</body>

</html>