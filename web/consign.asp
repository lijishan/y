<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title>ί����Ƹ -job528 <%=webname%></title>
</head>

<body>
<!--#include file="top_index.asp"-->
<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="206">
		<tr>
			<td style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf; border-top: 1px solid #ffc6bf" width="760" valign="top">
			<div align="center">
				<table border="0" width="99%" cellspacing="0" cellpadding="0" id="table2" height="205">
					<tr>
						<td width="206" valign="top" align="center">
						<table border="0" width="87%" cellspacing="0" cellpadding="0" id="table3" height="190">
							<tr>
								<td height="36" style="border-top:1px solid #D4D4D4; border-left:1px solid #D4D4D4; border-right:1px solid #D4D4D4; border-bottom-width: 1px">
								<img border="0" src="images/consign.gif" width="192" height="41"></td>
							</tr>
							<tr>
								<td height="109" style="border-left: 1px solid #D4D4D4; border-right: 1px solid #D4D4D4; border-top-width: 1px; border-bottom-width: 1px" valign="top" align="center">
								<table border="0" width="94%" cellspacing="0" cellpadding="0" id="table17">
									<tr>
										<td height="25">��<a target="_blank" href="law.asp?id=5&what=ʲô��ί����Ƹ">ʲô��ί����Ƹ</a></td>
									</tr>
									<tr>
										<td height="25">��<a target="_blank" href="law.asp?id=6&what=��ô����ί����Ƹ">��ô����ί����Ƹ</a></td>
									</tr>
									<tr>
										<td height="25">��<a target="_blank" href="law.asp?id=7&what=ί����Ƹ���շѱ�׼">ί����Ƹ���շѱ�׼</a></td>
									</tr>
									<tr>
										<td height="25">��<a href="upfiles\other/wtdj.doc" target="_blank">ί����Ƹ��(�Ҽ�Ŀ�����Ϊ��</a></td>
									</tr>
								</table>								</td>
							</tr>
							<tr>
								<td height="40" style="border-left:1px solid #D4D4D4; border-right:1px solid #D4D4D4; border-top-width: 1px">
								<img border="0" src="images/article1.gif" width="192" height="70"></td>
							</tr>
							<tr>
								<td height="36" style="border-top:1px solid #D4D4D4; border-left:1px solid #D4D4D4; border-right:1px solid #D4D4D4; border-bottom-width: 1px">
								<img border="0" src="images/consign1.gif" width="192" height="41"></td>
							</tr>
							<tr>
								<td height="36" style="border-bottom:1px solid #D4D4D4; border-left:1px solid #D4D4D4; border-right:1px solid #D4D4D4; " valign="top">
										<div align="center">
											<table border="0" width="96%" cellspacing="0" cellpadding="0" id="table16" height="25">
<%
sql="select top 13 id,jtzw from consigns order by clicks desc"
rs.open sql,conn,1,1
if rs.eof or rs.bof then
           response.write "����ְλ��"
           rs.close
           else
           for i1=1 to 13
%>
												<tr>
													<td width="14" height="18">
													<p align="center">
													<img border="0" src="images/link1.gif" width="6" height="11"></td>
													<td height="20">
													<a title ="<%=rs("jtzw")%>" target =_blank href="show_consign.asp?id=<%=rs("id")%>">
													<%=rs("jtzw")%></a></td>
												</tr>
<%
rs.movenext
if rs.eof then exit for
next
rs.close
end if
%>			
											</table>
										</div>							  </td>
							</tr>
						</table>						</td>
						<td valign="top">
						<div align="center">
							<table border="0" width="99%" cellspacing="0" cellpadding="0" id="table14" height="197">
								<tr>
									<td height="46" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; border-bottom-width: 1px" width="540" background="images/bg16.gif">
									<table border="0" width="537" cellspacing="0" cellpadding="0" id="table15" height="30">
										<tr>
											<td valign="bottom" width="110">											</td>
											<td valign="bottom" width="427">
											<p align="center"><b><font size="4" color="#000080"></font></b></td>
										</tr>
									</table>									</td>
								</tr>
								<tr>
									<td style="border-bottom:1px solid #C0C0C0; border-left:1px solid #C0C0C0; border-right:1px solid #C0C0C0; border-top-width: 1px" valign="top" align="center">
									<table border="0" width="516" cellspacing="0" cellpadding="0" id="table16" height="20">
										<tr>										</tr>
										<%
sql="select id,addtime,jtzw,company,url,sexs from consigns order by id desc"
rs.open sql,conn,1,1
if rs.recordcount=0 then
rs.close
%>
<td width="516" height="25" background="images/bg1.gif" colspan="5">
<p align="center">��ʱ����Ƹְλ��</td>
<%
else
%>
<tr>
											<td width="31" height="25" background="images/bg1.gif">
											��</td>
											<td height="25" background="images/bg1.gif" width="164">
											<b>��Ƹְλ</b></td>
											<td height="25" background="images/bg1.gif" width="174">
											<b>��Ƹ��˾</b></td>
											<td height="25" background="images/bg1.gif" width="67">
											<b>�Ա�</b></td>
											<td height="25" width="80" background="images/bg1.gif">
											<b>����ʱ��</b></td>
									  </tr>

<%
rs.pagesize=17
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
for ii=1 to rs.pagesize
%>	
										
										<tr>
											<td width="31" height="25" background="images/bg1.gif">
											<p align="center">
											<img border="0" src="images/new2.gif" width="11" height="11"></td>
											<td height="25" background="images/bg1.gif" width="164"><a target="_blank" href="show_consign.asp?id=<%=rs("id")%>"><font color=#ff0000><%=rs("jtzw")%></font></a></td>
											<td height="25" background="images/bg1.gif" width="174">
											<%if rs("url")<>"" then %>
											<a target =_blank  href="<%=rs("url")%>"><%=rs("company")%></a>
											<%else%>
											<%=rs("company")%>
											<%end if %>
											</td>
											<td height="25" background="images/bg1.gif" width="67">
											[<%=rs("sexs")%>]</td>
											<td height="25" width="80" background="images/bg1.gif"><%
								a=instr(rs("addtime"),chr(32))-1
								response.write Mid(rs("addtime"),1,a)
								%></td>
										</tr>
<%
rs.movenext
if rs.eof then exit for
next
%>
									<tr>
											<td height="25" colspan="5" align="center">
											<p align="center">
											<table border="0" width="504" cellspacing="0" cellpadding="0" height="31">
						<tr>
							<td width="120">
							<p align="center">��ǰҳ��:<font color="#FF0000"><%=session("page")%></font>/<%=rs.pagecount%></td>
							<td width="225">
							<p align="center">&lt; <a href="consign.asp?action=f">��ҳ</a>&nbsp;&nbsp;
							<a href="consign.asp?action=p">��һҳ</a>&nbsp;&nbsp;
							<a href="consign.asp?action=n">��һҳ</a>&nbsp;&nbsp;
							<a href="consign.asp?action=l">βҳ</a> &gt;</td>
							<form method="POST" action="consign.asp">
							<td width="159">							
		<p>��ת�� 
		<input type="text" name="page1" size="4" style="border: 1px solid #000000"> ҳ&nbsp; 
	<input type="submit" value="�ύ" name="B1"></p></td>
</form>
						</tr>
					</table></td>
									  </tr>
										<%
										rs.close
										end if
										%>
									</table>									</td>
								</tr>
						  </table>
					      <p align="left">˵�����������Ҫί������Ϊ����Ƹ����������<strong>ί����Ƹ����ǼǱ�</strong>����Ҫ����ã��Ը�����ʽ���͵����ǵ����䣺ggang6@tom.com�У������㼰ʱ���������ԣ�˵�����Ѿ���ί���鷢������ָ�������䣬������������������Ϊ�㷢�������Ƹ��Ϣ����ѯQQ��451079368 ��ѯ�绰��13981528686��</p>
						    <p align="center"><a href="upfiles\other/wtdj.doc" target="_blank"><font color=#ff0000>������鿴/����<strong>ί����Ƹ����ǼǱ�</strong>[�Ҽ���Ŀ�����Ϊ���ɱ��浽��ĵ�����]</font></a>  </p>
						    <p align="left">&nbsp;</p>
						</div>						</td>
					</tr>
				</table>
			</div>
			</td>
		</tr>
	</table>
</div>
<!--#include file="base.asp"-->
<%
set rs1=nothing
set rs=nothing
set conn=nothing
%>
</body>

</html>