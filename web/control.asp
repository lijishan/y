<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<html>
<%
if Request.Cookies("ggval")<>"81528686528" then 
Response.Cookies("id")=""
Response.Cookies("ac")=""
Response.Cookies("user")="" 
end if 
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('����δ��½���¼��ʱ�������µ�¼���������');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if

if Request.Cookies("user")="1" then
sql="select job1 from in_user where id="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
if isnull(rs("job1")) then
response.write "<script language=JavaScript>" & chr(13) & "alert('��������д���µĻ�����Ϣ!��ӦƸ���Ϲ�3ҳ,����ϸ��дÿһ��������ܱ���Ƹ��������������');"&"window.location.href = 'in_control1.asp'"&" </script>"

end if
rs.close
end if 
%>
 <head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=webname%> - ��Ա����</title>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
.STYLE2 {font-size: 12px}
.STYLE4 {color: #FF0000; font-weight: bold; }
.STYLE5 {
	color: #006666;
	font-weight: bold;
}
.STYLE6 {
	font-size: 16pt;
	color: #CC33CC;
}
-->
</style>
</head>

<body>
<!--#include file="top_index.asp"-->
<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="421">
		<tr>
			<td style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf;border-top: 1px solid #ffc6bf" width="760" valign="top" bgcolor="#FEFBF4">
			<div align="center">
				<table border="0" width="705" cellspacing="0" cellpadding="0" id="table2" height="379">
					<tr>
						<td height="86" width="214">
						<img border="0" src="images/control.gif" width="282" height="90"></td>
						<td height="86" width="237">��</td>
						<td height="86" width="128">
						<img border="0" src="images/controltop1.gif" width="128" height="90"></td>
						<td height="86" width="58">��</td>
					</tr>
					<tr>
						<td width="705" colspan="4" valign="top">
						<%
						if Request.Cookies("user")="1" then
						%>

						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="272">
								<tr>
									<td height="27">
									<p align="left">
									&nbsp;��Ա���� �� ��ҳ</td>
								    <td height="27"><div align="center" class="STYLE5">��ʾ��Ϊ��������ϰ�ȫ���˳���Ա����һ��Ҫ�㡰<span class="STYLE6">�˳���Ա����</span>��</div></td>
								</tr>
								<tr>
									<td width="26%" rowspan="2" valign="top"><!--#include file="in_menu.asp"--></td>
									<td width="74%" valign="top" align="center" background="images/men.gif" bgcolor="#FEFBF4">
									<div align="center">
										<table border="0" width="90%" cellspacing="0" cellpadding="0" id="table5" height="242">
											<tr>
												<td valign="top">
												<table border="0" width="470" cellspacing="0" cellpadding="0" id="table6" height="365">
													<tr>
													  <td height="30" colspan="3">
												<font color="#000000"><b>&nbsp;&nbsp;&nbsp;
												</b></font><b>
												<font color="#0A5DF6">�װ��ĸ����û���<%=Request.Cookies("ac")%>�����ã���ӭ����ܲ�528����˲���Ƹ�������ǽ�Ϊ���ṩ�����еķ���</font></b></td>
													</tr>
													<tr>
														<td colspan="3">��<font color=#ff0000>
													  <MARQUEE onmousemove=this.stop() onmouseout=this.start() scrollAmount=2>													  [����Ϣ������վ��л������ѵ�֧����񰮣���ҳ��Ƭ��ʾ��ÿ�����1Ԫ�����������ޣ�������٣���QQ��451079368���绰��13981528686 
													  </MARQUEE></font></td>
													</tr>
													<tr>
														<td height="30" colspan="3">
														<p align="left"><b>
													  ����������վ�ڻ�����Ϣ�� </b>��<img src="images/jtou.gif" width="16" height="16"><a href="yfcb_gr.html" target="_blank">�˽���ͨ�û���VIP�û����</a>��</td>
													</tr>
													<tr>
														<td height="30" width="130" align="left">
														<p align="right">�û����</td>
														<td height="30" width="12" align="left">
														��</td>
													  <td height="30" width="328">
														<font color="#FF0000"><%
														if Request.Cookies("vip")="true" then
														response.write "VIP�߼�"
														else
														response.write "��ͨ����"
                                                        end if
														%></font>�����û�&nbsp; 
														ϵͳ��ţ�<%
														if Request.Cookies("user")="1" then
														response.write "IN"&Request.Cookies("id")
														else
														response.write "EN"&Request.Cookies("id")
														end if
														%></td>
													</tr>
													<tr>
														<td height="30" width="130" align="left">
														<p align="right">
														����վ����Ϣ��</td>
											<%
											sql="select id from message where ttype='"&Request.Cookies("user")&"' and tid="&Request.Cookies("id")
											rs.open sql,conn,1,1
										%>
														<td height="30" width="12" align="left">
														��</td>
														<td height="30" width="328"><%=rs.recordcount%>��</td>
													</tr>
													<tr>
														<td height="30" width="130" align="left">
														<p align="right">����ְλ��棺</td>
														<%
														rs.close
														sql="select id from indepot where inid="&Request.Cookies("id")
														rs.open sql,conn,1,1
														%>
														<td height="30" width="12" align="left">
														��</td>
														<td height="30" width="328"><%=rs.recordcount%>��</td>
													</tr>
													<tr>
														<td height="30" width="130" align="left">
														<p align="right">
														���ĸ��˼������ģ�</td>
														<%
														rs.close
														sql="select clicks from in_user where id="&Request.Cookies("id")
														rs.open sql,conn,1,1							
														%>
														<td height="30" width="12" align="left">
														��</td>
														<td height="30" width="328"><%=rs("clicks")%>��</td>
													</tr>
													<tr>
														<td height="15" width="130" align="left">
														<p align="right">
														��¼��������ҵ��</td>
														<%
														rs.close
														sql="select id from endepot where inid="&Request.Cookies("id")
														rs.open sql,conn,1,1							
														%>
														<td width="12" height="18" align="left">
														��</td>
														<td width="328" height="15"><%=rs.recordcount%>��</td>
													</tr>
													<tr>
													  <td height="12" align="left"><div align="right" ><font color=#ff0000>ͼƬ����ʼʱ�䣺</font></div></td>
											          <td height="12" align="left">&nbsp;</td>
											          <td height="12" align="left">
													  <%
														rs.close
														sql="select picdays,picdate,rz from in_user where id="&Request.Cookies("id")
														rs.open sql,conn,1,1							
														 if not(isnull(rs("picdate"))) then 
														 response.write rs("picdate")
														 else 
														response.write "����û�����븶�ѷ��񣡣�"
														end if %>														 </td>
												  </tr>
													<tr>
													  <td height="12" align="left"><div align="right"><font color=#ff0000>ͼƬ������������</font></div></td>
												      <td height="12" align="left">&nbsp;</td>
												      <td height="12" align="left">
														 <%
																	
														 if not(isnull(rs("picdays"))) then 
														 response.write rs("picdays") 
													     response.write"��"
														 else 
														response.write "����û������ͼƬ���񣡣�"
														end if %></td>
												  </tr>
													<tr>
													  <td height="6" align="left"><div align="right"><font color=#ff0000>���ṩ����������</font></div></td>
												      <td height="12" rowspan="2" align="left">&nbsp;</td>
												      <td height="12" align="left">
													  <% if  date()-rs("picdate")>rs("picdays")then
													  response.write "�����븶�ѷ����ѵ��ڣ���"
													  else
													  response.write date()-rs("picdate")&"��"													  end if 
													  %></td>
												  </tr>
													<tr>
													  <td height="6" align="left"><div align="right">�������״̬������</div></td>
												      <td height="6" align="left"><% if  rs("rz")=true then
													  response.write "<font color=#0033CC>�����֤��Ա���</font>"
													  else
													  response.write "<font color=#0033CC>������֤��Ա���</font>"
													  end if 
													  %> 
												      [��Ա��֤����ѵģ�<a href="rz.html" target="_blank">����</a>] </td>
												  </tr>
													<tr>
														<td height="57" align="left" colspan="3">��<b>��ʾ��ֻ�����б�����Ϣ��д��Ϻ��������ϲſ��ܱ����˵�λ������</b><br>
														  &nbsp;&nbsp;&nbsp;&nbsp;�����Ƽ��Ǽ���ע��δ��д����ϸ��Ϣ
														    <font color=#ff0000>2��</font>�� ��д��������Ϣ <font color=#ff0000>3��</font>���ϴ���ͼƬ <font color=#ff0000>4��</font>����ҳ�����а��Ƽ�
														    <font color=#ff0000>5��</font>��
												          <p></td>
													</tr>
												</table>												</td>
											</tr>
										</table>
									</div>									</td>
								</tr>
								<tr>
								  <td valign="top" align="center" bgcolor="#FEFBF4"><table width="460" height="160" border="1" align="center" cellspacing="0" bordercolor="#FFCCFF">
                                    <tr>
                                      <td colspan="2"><p align="center" ><font color=#0066FF>�ܲ�528�˲�������ҳ�ƽ��Ƽ�λ�۸��</font><span class="STYLE4">[��ѡ����]</span></p>                                        </td>
                                    </tr>
                                    <tr>
                                      <td width="245"><span class="STYLE2">�Ƽ�Aλ��200Ԫ/�Ƽ���.�� </span></td>
                                      <td width="205"><span class="STYLE2">�Ƽ�Bλ��350Ԫ/�Ƽ���.��</span></td>
                                    </tr>
                                    <tr>
                                      <td><p class="STYLE2">�Ƽ�Cλ��200Ԫ/�Ƽ���.�� </p>                                        </td>
                                      <td width="205"><span class="STYLE2">�Ƽ�Dλ��300Ԫ/�Ƽ���.��</span></td>
                                    </tr>
                                    <tr>
                                      <td><p class="STYLE2">�Ƽ�Eλ��200Ԫ/�Ƽ���.�� </p>                                        </td>
                                      <td width="205"><span class="STYLE2">�Ƽ�Fλ��300Ԫ/�Ƽ���.��</span></td>
                                    </tr>
                                    <tr>
                                      <td><p class="STYLE2">�Ƽ�Gλ��200Ԫ/�Ƽ���.�� </p>                                        </td>
                                      <td width="205"><span class="STYLE2">�Ƽ�Hλ��200Ԫ/�Ƽ���.��</span></td>
                                    </tr>
                                    <tr>
                                      <td><p><font color=#ff0000>�Ƽ�Hλ��1Ԫ/�Ƽ���.�죨������ҳ�Ƽ���</font></p>                                      </td>
                                      <td width="205"><span class="STYLE2">�Ƽ�Iλ��200Ԫ/�Ƽ���.�� </span></td>
                                    </tr>
                                    <tr>
                                      <td><span class="STYLE2">�Ƽ�Jλ��50Ԫ/�Ƽ���.�� </span></td>
                                      <td width="205"><span class="STYLE2">�ر��Ƽ�λ�ã����̶�</span></td>
                                    </tr>
                                    <tr>
                                      <td colspan="2"><div align="right"><a href="tjjw.html" target="_blank"><strong>�鿴��ϸ����</strong>...</a></div></td>
                                    </tr>
                                  </table>								    
								  <p class="STYLE2">&nbsp;</p>							      </td>
							  </tr>
							</table>
						</div>
						<%
						else
						%>

						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="272">
								<tr>
									<td height="27">
									<p align="left">
									&nbsp;��Ա���� �� ��ҳ�û�</td>
								    <td height="27"><div align="center"><span class="STYLE5">��ʾ��Ϊ��������ϰ�ȫ���˳���Ա����һ��Ҫ�㡰<span class="STYLE6">�˳���Ա����</span>��</span></div></td>
								</tr>
								<tr>
									<td width="26%" rowspan="2" valign="top">
									<!--#include file="en_menu.asp"-->									</td>
									<td width="74%" valign="top" align="center" background="images/men.gif" bgcolor="#FEFBF4">
									<div align="center">
										<table border="0" width="90%" cellspacing="0" cellpadding="0" id="table5" height="242">
											<tr>
												<td valign="top">
												<table border="0" width="470" cellspacing="0" cellpadding="0" id="table6" height="356">
													<tr>
														<td height="30" colspan="3">
												<font color="#000000"><b>&nbsp;&nbsp;&nbsp;
												</b></font><b>
												<font color="#0A5DF6">�װ�����ҵ�û���<%=Request.Cookies("ac")%>�����ã���ӭ����ܲ�528����˲���Ƹ�������ǽ�Ϊ���ṩ�����еķ���</font></b></td>
													</tr>
													
													<tr>
														<td height="30" colspan="3">
														<p align="left"><b>
													  ����������վ�ڻ�����Ϣ��</b>��<img src="images/jtou.gif" width="16" height="16"><a href="yfcb_dw.html" target="_blank">�˽���ͨ�û���VIP�û����</a>��</td>
													</tr>
													<tr>
														<td height="29" width="156" align="left">
														<p align="right">�û����</td>
														<td height="29" width="18" align="left">
														��</td>
														<td height="29" width="296"><font color="#FF0000"><%
														if Request.Cookies("vip")="true" then
														response.write "VIP�߼�"
														else
														response.write "��ͨ����"
                                                        end if
														%></font>��ҵ�û�&nbsp; 
														ϵͳ��ţ�<%
														if Request.Cookies("user")="1" then
														response.write "IN"&Request.Cookies("id")
														else
														response.write "EN"&Request.Cookies("id")
														end if
														%></td>
													</tr>
													<tr>
														<td height="29" width="156" align="left">
														<p align="right">
														����վ����Ϣ��</td>
											<%
											sql="select id from message where ttype='"&Request.Cookies("user")&"' and tid="&Request.Cookies("id")
											rs.open sql,conn,1,1
										%>
														<td height="29" width="18" align="left">
														��</td>
														<td height="29" width="296"><%=rs.recordcount%>��</td>
													</tr>
													<tr>
														<td height="30" width="156" align="left">
														<p align="right">������Ƹ��Ϣ��</td>
														<%
											rs.close
										
											sql="select id from job where enid="&Request.Cookies("id")
											rs.open sql,conn,1,1
										%>
														<td height="30" width="18" align="left">
														��</td>
														<td height="30" width="296"><%=rs.recordcount%>��</td>
													</tr>
													<tr>
														<td height="31" width="156" align="left">
														<p align="right">�����˲ſ�棺</td>
														<%
														rs.close
														sql="select id from endepot where enid="&Request.Cookies("id")
														rs.open sql,conn,1,1
														%>
														<td height="31" width="18" align="left">
														��</td>
														<td height="31" width="296"><%=rs.recordcount%>��</td>
													</tr>
													<tr>
														<td height="30" width="156" align="left">
														<p align="right">
														���Ĺ�˾���ϱ��ģ�</td>
														<%
														rs.close
														sql="select clicks from en_user where id="&Request.Cookies("id")
														rs.open sql,conn,1,1							
														%>
														<td height="30" width="18" align="left">
														��</td>
														<td height="30" width="296"><%=rs("clicks")%>��</td>
													</tr>
													<tr>
														<td height="15" width="156" align="left">
														<p align="right">
														��Ƹ��Ϣ����¼��</td>
														<%
														rs.close
														sql="select id from indepot where jobid in (select id from job where enid="&Request.Cookies("id")&")"
														rs.open sql,conn,1,1							
														%>
														<td width="18" height="0" align="left">
														��</td>
														<td width="296" height="0"><%=rs.recordcount%>��</td>
													</tr>
													<tr>
                                                      <td height="12" align="left"><div align="right"><font color=#ff00000>ͼƬ����ʼʱ�䣺</font></div></td>
													  <td height="12" align="left">&nbsp;</td>
													  <td height="12" align="left"><%
														rs.close
														sql="select picdays,picdate,rz from en_user where id="&Request.Cookies("id")
														rs.open sql,conn,1,1							
														 if not(isnull(rs("picdate"))) then 
														 response.write rs("picdate")
														 else 
														response.write "����û������ͼƬ���񣡣�"
														end if %>                                                      </td>
												  </tr>
													<tr>
                                                      <td height="12" align="left"><div align="right"><font color=#ff00000>ͼƬ������������</font></div></td>
													  <td height="12" align="left">&nbsp;</td>
													  <td height="12" align="left"><%
																	
														 if not(isnull(rs("picdays"))) then 
														 response.write rs("picdays") 
													     response.write"��"
														 else 
														response.write "����û�����븶�ѷ��񣡣�"
														end if %></td>
												  </tr>
													<tr>
                                                      <td height="6" align="left"><div align="right" ><font color=#ff00000>���ṩ����������</font></div></td>
													  <td height="12" rowspan="2" align="left">&nbsp;</td>
													  <td height="12" align="left"><% if  date()-rs("picdate")>rs("picdays")then
													  response.write "�����븶�ѷ����ѵ��ڣ���"
													  else
													  response.write date()-rs("picdate")&"��"													  end if 
													  %></td>
												  </tr>
													<tr>
													  <td height="6" align="left"><div align="right">�������״̬������</div></td>
												      <td height="12" align="left"><% if  rs("rz")=true then
													  response.write "<font color=#0033CC>�����֤��Ա���</font>"
													  else
													  response.write "<font color=#0033CC>������֤��Ա���</font>"
													  end if 
													  %>
[��Ա��֤����ѵģ�<a href="rz.html" target="_blank">����</a>] </td>
												  </tr>
													
													<tr>
														<td height="12" align="left" colspan="3">��<b>��ʾ��ֻ�����б�����Ϣ��д����������ϲſ��ܱ���ְ��������</b></td>
													</tr>
												</table>												</td>
											</tr>
										</table>
									</div>									</td>
								</tr>
								<tr>
								  <td valign="top" align="center" bgcolor="#FEFBF4"><table width="460" height="160" border="1" align="center" cellspacing="0" bordercolor="#FFCCFF">
                                    <tr>
                                      <td colspan="2"><p align="center" ><font color=#0066FF>�ܲ�528�˲�������ҳ�ƽ��Ƽ�λ�۸��</font><span class="STYLE4">[��ѡ����]</span></p></td>
                                    </tr>
                                    <tr>
                                      <td width="245"><span class="STYLE2">�Ƽ�Aλ��200Ԫ/�Ƽ���.�� </span></td>
                                      <td width="205"><span class="STYLE2">�Ƽ�Bλ��350Ԫ/�Ƽ���.��</span></td>
                                    </tr>
                                    <tr>
                                      <td><p class="STYLE2">�Ƽ�Cλ��200Ԫ/�Ƽ���.�� </p></td>
                                      <td width="205"><span class="STYLE2">�Ƽ�Dλ��300Ԫ/�Ƽ���.��</span></td>
                                    </tr>
                                    <tr>
                                      <td><p class="STYLE2">�Ƽ�Eλ��200Ԫ/�Ƽ���.�� </p></td>
                                      <td width="205"><span class="STYLE2">�Ƽ�Fλ��300Ԫ/�Ƽ���.��</span></td>
                                    </tr>
                                    <tr>
                                      <td><p class="STYLE2">�Ƽ�Gλ��200Ԫ/�Ƽ���.�� </p></td>
                                      <td width="205"><span class="STYLE2">�Ƽ�Hλ��200Ԫ/�Ƽ���.��</span></td>
                                    </tr>
                                    <tr>
                                      <td><p class="STYLE2">�Ƽ�Hλ��1Ԫ/�Ƽ���.�� </p></td>
                                      <td width="205"><span class="STYLE2">�Ƽ�Iλ��200Ԫ/�Ƽ���.�� </span></td>
                                    </tr>
                                    <tr>
                                      <td><span class="STYLE2">�Ƽ�Jλ��50Ԫ/�Ƽ���.�� </span></td>
                                      <td width="205"><span class="STYLE2">�ر��Ƽ�λ�ã����̶�</span></td>
                                    </tr>
                                    <tr>
                                      <td colspan="2"><div align="right"><a href="tjjw.html" target="_blank"><strong>�鿴��ϸ����</strong>...</a></div></td>
                                    </tr>
                                  </table></td>
							  </tr>
							</table>
						</div><%
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
<%
rs.close
set rs=nothing
set conn=nothing
%>
<!--#include file="base.asp"-->
</body>

</html>