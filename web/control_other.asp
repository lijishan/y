
<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="421">
		<tr>
			<td style="border-left: 1px solid #0086DF; border-right: 1px solid #0086DF" width="760" valign="top" bgcolor="#FEFBF4">
			<div align="center">
				<table border="0" width="705" cellspacing="0" cellpadding="0" id="table2" height="379">
					<tr>
						<td height="86" width="214">
						<img border="0" src="../images/control.gif" width="282" height="90"></td>
						<td height="86" width="237">��</td>
						<td height="86" width="128">
						<img border="0" src="../images/controltop1.gif" width="128" height="90"></td>
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
									<td height="27" colspan="2">
									<p align="left">
									&nbsp;��Ա���� �� ��ҳ</td>
								</tr>
								<tr>
									<td width="26%" valign="top"><!--#include file="in_menu_other.asp"--></td>
									<td width="74%" valign="top" align="center" background="../images/men.gif" bgcolor="#FEFBF4">
									<div align="center">
										<table border="0" width="90%" cellspacing="0" cellpadding="0" id="table5" height="242">
											<tr>
												<td valign="top">
												<table border="0" width="470" cellspacing="0" cellpadding="0" id="table6" height="369">
													<tr>
														<td height="30" colspan="3">
												<font color="#000000"><b>&nbsp;&nbsp;&nbsp;
												</b></font><b>
												<font color="#0A5DF6">�װ��ĸ����û���<%=Request.Cookies("ac")%>�����ã���ӭ����ܲ�528����˲���Ƹ�������ǽ�Ϊ���ṩ�����еķ���</font></b></td>
													</tr>
													<tr>
														<td height="10" colspan="3" bgcolor="#000000">��<font color=#ffff00>
													  <MARQUEE onmousemove=this.stop() onmouseout=this.start() scrollAmount=2>
													  [����Ϣ������վ��л������ѵ�֧����񰮣���ҳ��Ƭ��ʾ��ÿ�����1Ԫ�����������ޣ�������٣���QQ��451079368���绰��13981528686 
													  </MARQUEE></font></td>
													</tr>
													<tr>
														<td height="30" colspan="3">
														<p align="left"><b>
														����������վ�ڻ�����Ϣ��</b></td>
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
													  <td height="12" align="left"><div align="right" ><font color=#ff0000>���ѷ���ʼʱ�䣺</font></div></td>
											          <td height="12" align="left">&nbsp;</td>
											          <td height="12" align="left">
													  <%
														rs.close
														sql="select picdays,picdate,rz from in_user where id="&Request.Cookies("id")
														rs.open sql,conn,1,1							
														 if not(isnull(rs("picdate"))) then 
														 response.write rs("picdate")
														 else 
														response.write "����û�����봫�ѷ��񣡣�"
														end if %>														 </td>
												  </tr>
													<tr>
													  <td height="12" align="left"><div align="right"><font color=#ff0000>���ѷ�����������</font></div></td>
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
												      <td height="12" align="left"><% if  rs("rz")=true then
													  response.write "<font color=#0033CC>�����֤��Ա���</font>"
													  else
													  response.write "<font color=#0033CC>������֤��Ա���</font>"
													  end if 
													  %>
[��Ա��֤����ѵģ�<a href="../rz.html" target="_blank">����</a>] </td>
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
							</table>
						</div>
						<%
						else
						%>

						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="272">
								<tr>
									<td height="27" colspan="2">
									<p align="left">
									&nbsp;��Ա���� �� ��ҳ�û�</td>
								</tr>
								<tr>
									<td width="26%" valign="top">
									<!--#include file="en_menu_other.asp"-->
									</td>
									<td width="74%" valign="top" align="center" background="../images/men.gif" bgcolor="#FEFBF4">
									<div align="center">
										<table border="0" width="90%" cellspacing="0" cellpadding="0" id="table5" height="242">
											<tr>
												<td valign="top">
												<table border="0" width="470" cellspacing="0" cellpadding="0" id="table6" height="417">
													<tr>
														<td height="30" colspan="3">
												<font color="#000000"><b>&nbsp;&nbsp;&nbsp;
												</b></font><b>
												<font color="#0A5DF6">�װ�����ҵ�û���<%=Request.Cookies("ac")%>�����ã���ӭ����ܲ�528����˲���Ƹ�������ǽ�Ϊ���ṩ�����еķ���</font></b></td>
													</tr>
													<tr>
														<td height="10" colspan="3" bgcolor="#000000">��<font color=#ffff00>
													  <MARQUEE onmousemove=this.stop() onmouseout=this.start() scrollAmount=2>
													  [����Ϣ������վ��л������ѵ�֧����񰮣���ҳ�Ƽ���Ƹְλ��ÿ��ְλÿ��ֻ��Ҫ200Ԫ������1500Ԫ�����������ޣ�������٣���QQ��451079368���绰��13981528686 
													  </MARQUEE></font></td>
													</tr>
													<tr>
														<td height="30" colspan="3">
														<p align="left"><b>
														����������վ�ڻ�����Ϣ��</b></td>
													</tr>
													<tr>
														<td height="30" width="156" align="left">
														<p align="right">�û����</td>
														<td height="30" width="18" align="left">
														��</td>
														<td height="30" width="296"><font color="#FF0000"><%
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
														<td height="30" width="156" align="left">
														<p align="right">
														����վ����Ϣ��</td>
											<%
											sql="select id from message where ttype='"&Request.Cookies("user")&"' and tid="&Request.Cookies("id")
											rs.open sql,conn,1,1
										%>
														<td height="30" width="18" align="left">
														��</td>
														<td height="30" width="296"><%=rs.recordcount%>��</td>
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
														<td height="30" width="156" align="left">
														<p align="right">�����˲ſ�棺</td>
														<%
														rs.close
														sql="select id from endepot where enid="&Request.Cookies("id")
														rs.open sql,conn,1,1
														%>
														<td height="30" width="18" align="left">
														��</td>
														<td height="30" width="296"><%=rs.recordcount%>��</td>
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
                                                      <td height="12" align="left"><div align="right"><font color=#ff0000>����</font><font color=#ff00000>����ʼʱ�䣺</font></div></td>
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
                                                      <td height="12" align="left"><div align="right"><font color=#ff0000>����</font><font color=#ff00000>������������</font></div></td>
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
													  <td height="12">
													  <% if  date()-rs("picdate")>rs("picdays")then
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
[��Ա��֤����ѵģ�<a href="../rz.html" target="_blank">����</a>] </td>
												  </tr>
													
													<tr>
														<td height="57" align="left" colspan="3">��<p>
														<b>
														��ʾ��ֻ�����б�����Ϣ��д����������ϲſ��ܱ���ְ��������</b>                                                        
														  <p></td>
													</tr>
												</table>
												</td>
											</tr>
										</table>
									</div>
									</td>
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