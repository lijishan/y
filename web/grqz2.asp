<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->

<html>

<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>ְλ�б� -<%=webname%></title>
<style type="text/css">
<!--
.STYLE1 {color: #006666}
.STYLE14 {color: #FF3399}
-->
</style>
</head>

<body>
<!--#include file="top_index.asp"-->
<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="106">
		<tr>
			<td style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf; border-top: 1px solid #ffc6bf" width="760" valign="top">
			<div align="center">
				<table border="0" width="98%" cellspacing="0" cellpadding="0" id="table2" height="164">
					<tr>
						<td style="border: 1px solid #C0C0C0" valign="top">
						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="147">
								<tr>
									<td height="40" width="740" background="images/bg10.gif">
									<table border="0" width="740" cellspacing="0" cellpadding="0" id="table4" height="31">
										<tr>
											<td width="127" height="40">��</td>
											<form method="POST" action="grqz2.asp">
											<td width="587">
											&nbsp;&nbsp;&nbsp;
												<SELECT SIZE="1" NAME="job" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF">
<OPTION VALUE="0" selected>::��ѡ��ְλ���::</OPTION>
<option value="0">����</option>
<%
call listjob("")
%>
</SELECT>  
<SELECT ID=create_date NAME=date size="1"> 
<option selected value="����">��ѡ�񷢲�ʱ��</option>
<OPTION VALUE="����">����</OPTION> <OPTION VALUE="7">һ������</OPTION> 
<OPTION VALUE="30">һ������</OPTION> <OPTION VALUE="183">��������</OPTION> 
</SELECT>
										<% if Request.Cookies("sjob")="ok" then %>	<input type="submit" value="ɸѡ" name="B2">
<%else
response.write "<font color=#FF0000>��¼������,���������û�(����������)ʹ��</font>"
end if %>
										</td>
</form>
										</tr>
										
									</table>
									</td>
								</tr>
								<tr>
									<td valign="top" align="center">
									<%
sql="select id,enid,jtzw,hka,city,addtime,sexs,edus from job where enid in (select id from en_user where lock=false and name<>'')"
if request("gzdd")<>"0" and request("gzdd")<>"" then sql=sql+" and hka='"&request("gzdd")&"'"
if request("job")<>"0" and request("job")<>"" then sql=sql+" and job='"&request("job")&"'"
if request("date")<>"����" and request("date")<>"" then sql=sql+" and datediff('d',addtime,Now())<"&request("date")
sql=sql+" order by addtime desc"
rs.open sql,conn,1,1
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
										<td width="127" height="30" align="center" background="imagen/web_01_05.gif" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; ">
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
sql2="select id,name from en_user where id="&rs("enid")
rs2.open sql2,conn,1,1
%>	
								<tr>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="166" height="30" align="center" background="images/bg9.gif"><a target =_blank  href="job.asp?id=<%=rs("id")%>">
															<%=rs("jtzw")%></a></td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="189" height="30" align="center" background="images/bg9.gif"><a  target =_blank href="company.asp?id=<%=rs2("id")%>">
															<%=rs2("name")%></a></td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="127" height="30" align="center" background="images/bg9.gif">
										<p align="center"><%=rs("hka")%>��<%=rs("city")%></td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="60" height="30" align="center" background="images/bg9.gif">
															[<%=rs("sexs")%>]</td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="60" height="30" align="center" background="images/bg9.gif">
															[<%=rs("edus")%>]</td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="100" height="30" align="center" background="images/bg9.gif">
										<%
								if (date()-rs("addtime"))<=10 then 
								a=instr(rs("addtime"),chr(32))-1
								response.write "<font color =#FF0000>" 
								response.write Mid(rs("addtime"),6,a-4) 
								response.write "<img  alt='���¼�����Ƹְλ' src=images/hot.gif>"
								end if 
								if (date()-rs("addtime"))>10 then 
								 a=instr(rs("addtime"),chr(32))-1
								response.write Mid(rs("addtime"),1,a)								 
								end if 
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
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="734" height="42" align="center" colspan="6"><table width="650" border="0" cellspacing="0">
                                          <tr>
                                            <td>&nbsp;</td>
                                          </tr>
                                          <tr>
                                            <td><span class="STYLE14">����ְλ����-&gt;����������ӦƸ��ְλ���磺��ѧ��������������ƽ����Ƶȣ���</span></td>
                                          </tr>
                                          <tr>
                                            <td><div align="center">
                                             <div align="center"><iframe id="baiduframe" marginwidth="0" marginheight="0" scrolling="no"
  framespacing="0" vspace="0" hspace="0" frameborder="0" width="750" height="90" 
  src="http://unstat.baidu.com/bdun.bsc?tn=ggang6_pg&cv=1&cid=1009000&csid=243&bgcr=ffffff&ftcr=000000&urlcr=0000ff&tbsz=500&sropls=1,2,3,4,5,6&kwgp=0">
</iframe>


</div>
                                            </div></td>
                                          </tr>
                                        </table>
										<table border="0" width="504" cellspacing="0" cellpadding="0" height="31">
						<tr>
							<td width="120">
							<p align="center">��ǰҳ��:<font color="#FF0000"><%=session("page")%></font>/<%=rs.pagecount%></td>
							<td width="225">
							<p align="center">&lt; <a href="grqz2.asp?action=f&gzdd=<%=request("gzdd")%>&job=<%=request("job")%>&date=<%=request("date")%>">��ҳ</a>&nbsp;&nbsp;
							<a href="grqz2.asp?action=p&gzdd=<%=request("gzdd")%>&job=<%=request("job")%>&date=<%=request("date")%>">��һҳ</a>&nbsp;&nbsp;
							<a href="grqz2.asp?action=n&gzdd=<%=request("gzdd")%>&job=<%=request("job")%>&date=<%=request("date")%>">��һҳ</a>&nbsp;&nbsp;
							<a href="grqz2.asp?action=l&gzdd=<%=request("gzdd")%>&job=<%=request("job")%>&date=<%=request("date")%>">βҳ</a> &gt;</td>
							<form method="POST" action="grqz2.asp?gzdd=<%=request("gzdd")%>&job=<%=request("job")%>&date=<%=request("date")%>">
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