<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->

<%
if Request.Cookies("user")="1" then  
response.write "<script language=JavaScript>" & chr(13) & "alert('�����û���ֱ��������ְλ��Ϣ�����˲�����������רΪ��ҵ�û��ṩ�ģ�');"& "JavaScript:window.close();" & " </script>"
Response.End
end if
if Request.Cookies("newjob")<>"ok" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��ҵ�û���ã��㻹δ������Ƹְλ���뷢����Ƹְλ����ѵġ������������˲���Ϣ��');"& "JavaScript:window.close();" & " </script>"
Response.End
end if
sql="select id,name,job1,gzdd,edu,sex,rdate,vip,zhuanyen1 from in_user where name<>'' and lock=false"
if request("gzdd")<>"0" and request("gzdd")<>"" then sql=sql+" and gzdd='"&request("gzdd")&"'"
if request("job")<>"0" and request("job")<>"" then sql=sql+" and job='"&request("job")&"'"
if Trim(request("what"))<>"" then sql=sql+" and job1 like '%"&Trim(request("what"))&"%'"
if request("date")<>"����" and request("date")<>"" then sql=sql+" and datediff('d',rdate,Now())<"&request("date")
sql=sql+" order by vip asc,id desc"
rs.open sql,conn,1,1
%>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title>�˲���ͨ���� - <%=webname%></title>
<style type="text/css">
<!--
.STYLE1 {font-weight: bold}
-->
</style></head>

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
									<td height="40" width="740" background="images/bg12.gif">
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
											%> </b> </b>ʱ�䣺<b><%
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
response.write "��ʱû������˲ţ�" 
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
										<td width="102" height="30" align="center" background="imagen/web_01_05.gif" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; ">
										<b>��&nbsp; ��</b></td>   
										<td width="158" height="30" align="center" background="imagen/web_01_05.gif" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; ">
										<b>Ӧ Ƹ ְ λ</b></td>
										<td width="161" height="30" align="center" background="imagen/web_01_05.gif" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; ">
										<b>Ӧ Ƹ �� ר ҵ</b></td>
										<td width="102" height="30" align="center" background="imagen/web_01_05.gif" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; "><strong>ϣ����������</strong></td>
										<td width="60" height="30" align="center" background="imagen/web_01_05.gif" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; ">
															<b>�Ա�</b></td>
										<td width="52" height="30" align="center" background="imagen/web_01_05.gif" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; ">
															<b>ѧ��</b></td>
										<td width="106" height="30" align="center" background="imagen/web_01_05.gif" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; ">
										<b>��&nbsp; ��</b></td>   
									</tr>
<%
for ii=1 to 20
%>	
								<tr>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="102" height="30" align="center" background="images/bg9.gif"><a  target =_blank href="person.asp?id=<%=rs("id")%>"><%=rs("name")%></a><% if rs("vip") then 
										response.write"&nbsp;<font color=#ff0000>[��]</font>"
										end if %> </td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="158" height="30" align="center" background="images/bg9.gif"><% if isnull(rs("job1"))then
										response.write rs("zhuanyen1")+"��ְλ"
										else 										
										response.write rs("job1")
										end if 
										%></td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="161" height="30" align="center" background="images/bg9.gif"><%=rs("zhuanyen1")%></td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="102" height="30" align="center" background="images/bg9.gif"><%=rs("gzdd")%></td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="60" height="30" align="center" background="images/bg9.gif">[<%=rs("sex")%>]</td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="52" height="30" align="center" background="images/bg9.gif">[<%=rs("edu")%>]</td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="106" height="30" align="center" background="images/bg9.gif"><%
								a=instr(rs("rdate"),chr(32))-1
								response.write Mid(rs("rdate"),1,a)
								%>
                                  ��</td>
									</tr>
<%
rs.movenext
if rs.eof then exit for
next
%>
								<tr>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " height="42" align="center" colspan="7"><table border="0" width="504" cellspacing="0" cellpadding="0" height="31">
						<tr>
							<td width="120">
							<p align="center">��ǰҳ��:<font color="#FF0000"><%=session("page")%></font>/<%=rs.pagecount%></td>
							<td width="225">
							<p align="center">&lt; <a href="psearchp.asp?action=f&gzdd=<%=request("gzdd")%>&job=<%=request("job")%>&date=<%=request("date")%>&what=<%=request("what")%>">��ҳ</a>&nbsp;&nbsp;   
							<a href="psearchp.asp?action=p&gzdd=<%=request("gzdd")%>&job=<%=request("job")%>&date=<%=request("date")%>&what=<%=request("what")%>">��һҳ</a>&nbsp;&nbsp;   
							<a href="psearchp.asp?action=n&gzdd=<%=request("gzdd")%>&job=<%=request("job")%>&date=<%=request("date")%>&what=<%=request("what")%>">��һҳ</a>&nbsp;&nbsp;   
							<a href="psearchp.asp?action=l&gzdd=<%=request("gzdd")%>&job=<%=request("job")%>&date=<%=request("date")%>&what=<%=request("what")%>">βҳ</a> &gt;</td>   
							<form method="POST" action="psearchp.asp?gzdd=<%=request("gzdd")%>&job=<%=request("job")%>&date=<%=request("date")%>&what=<%=request("what")%>">
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
set rs=nothing
set conn=nothing
%>

<!--#include file="base_df.asp"-->
</body>

</html>