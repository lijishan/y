<table border="0" width="100%" cellspacing="0" cellpadding="0" height="537" id="table4">
										<tr>
											<td height="35" align="center">
											<p align="center">
											<a href="control.asp">
											<img src="images/menu1.gif" alt="��Ա����" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
											<td height="35" align="center">
											<a href="en_control1.asp">
											<img src="images/menu10.gif" alt="��ҵ��������" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
										  <td height="35" align="center"><a href="en_uppic.asp"><img src="images/menu18.gif" width="169" height="31" border="0" /></a></td>
  </tr>
										<tr>
											<td height="30" align="center">
											<a target="_blank" href="company.asp?id=<%=Request.Cookies("id")%>">											</a><a href="add_job.asp"><img src="images/menu13.gif" alt="������Ƹְλ" width="169" height="31" border="0" /></a></td>
										</tr>
										<tr>
										  <td height="30" align="center"><a href="enjob.asp"><img src="images/menu14.gif" alt="ά��ְλ��Ϣ" width="169" height="31" border="0" /></a></td>
  </tr>
										<tr>
											<td height="35" align="center"><a href="gotop_dw.asp"><img src="images/menu22.gif" alt="��Ƹְλ��Ϣ�ᵽ��ǰ��ʾ" width="169" height="31" border="0" /></a></td>
										</tr>
										<tr>
											<td height="35" align="center"><a href="search_person_vip.asp"><img src="images/menu16.gif" alt="�˲ų�������" width="169" height="31" border="0" /></a></td>
										</tr>
										<tr>
											<td height="35" align="center"><a target="_blank" href="company.asp?id=<%=Request.Cookies("id")%>"><img src="images/menu15.gif" alt="�鿴��ҵ��Ϣ" width="169" height="31" border="0" /></a></td>
										</tr>
										<tr>
											<td height="35" align="center">
											<a href="endepot.asp">
											<img src="images/menu12.gif" alt="�˲ſ�" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
											<td height="35" align="center"><a href="message.asp"><img src="images/menu3.gif" alt="�鿴����" width="169" height="31" border="0" /></a></td>
										</tr>
										<tr>
											<td height="17" align="center">
											<a href="ch_pwd.asp">
											<img src="images/menu4.gif" alt="�޸�����" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
										  <td height="18" align="center"><a href="kill.asp"><img src="images/menu23.gif" alt="����ɾ�����˻�" width="169" height="31" border="0" /></a></td>
  </tr>
										<tr>
											<td height="35" align="center">
											<a href="exit.asp">
											<img src="images/menu5.gif" alt="�˳�" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
											<td height="17" align="center"><div align="left"><font color=#FF0099>�������Ҫ��ҳ�Ƽ����ϴ���ҵ֤�գ�����ϵ���ǣ�QQ-451079368 �绰-13981528686��<br>
									        <strong>ͼƬ������ã�50Ԫ/ͼ.�� <br>
									        ��ҳ�Ƽ����ã�200Ԫ/��.�</strong></font><br>
											      <font color="#FF0000" ><strong>VIP������200Ԫ[������Ч]</strong></font>										      <br>
											      <a href="yfcb_dw.html" target="_blank">���VIP�û�����ͨ�û������</a></div>
											  <br></td>
										</tr>
										<tr>
										  <td height="25" align="center" bgcolor="#000000"><div align="center"><img src="images/jtou.gif" width="16" height="16" /><strong><a href="company.asp?id=528" target="_blank"><font color="#ffff00">֤��Ч����ʾ</font></a></strong></div></td>
  </tr>
										<tr>
										  <td height="25" align="center" bgcolor="#FFFFFF"><a href="tjjw.html" target="_blank"><strong>�Ƽ��۸�</strong></a><img src="images/new.gif" width="33" height="16" /></td>
  </tr>
										<tr>
										  <td height="25" align="center" bgcolor="#FFFFFF"><strong><font size="4"><a href="pay.html" target="_blank"><font color=#ff0000>���ʽ</font></a></strong></td>
  </tr>
</table>
<br>
<% if Request.Cookies("newinfo")="new" then
 response.write "<embed src=newpm.swf loop=false hidden=true autostart=true width=0 height=0 name=foobar mastersound=mastersound></embed>"
 end if %>