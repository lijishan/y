<table border="0" width="100%" cellspacing="0" cellpadding="0" height="442" id="table4">
										<tr>
											<td height="35" align="center">
											<p align="center">
											<a href="control.asp">
											<img src="images/menu1.gif" alt="��Ա����" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
											<td height="35" align="center">
											<a href="in_control1.asp">
											<img src="images/menu2.gif" alt="������������" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
											<td height="35" align="center">
											<a href="in_uppic.asp">
											<img src="images/menu8.gif" alt="�ϴ�ͼƬ" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
											<td height="35" align="center">
											<a target="_blank" href="person.asp?id=<%=Request.Cookies("id")%>">
											<img src="images/menu7.gif" alt="�鿴�ҵļ���" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
											<td height="35" align="center">
											<a href="message.asp">
											<img src="images/menu3.gif" alt="�鿴����" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
											<td height="35" align="center">
											<a href="indepot.asp">
											<img src="images/menu11.gif" alt="ְλ��" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
											<td height="35" align="center">
											<a href="search_job_vip.asp">
											<img src="images/menu6.gif" alt="��������" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
											<td height="8" align="center">
											<a href="ch_pwd.asp">
											<img src="images/menu4.gif" alt="�޸�����" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
										  <td height="9" align="center"><a href="gotop_gr.asp"><img src="images/menu20.gif" alt="����λ����������ǰ��ʾ" width="169" height="31" border="0" /></a></td>
  </tr>
										<tr>
										  <td height="9" align="center"><a href="close_gr.asp"><img src="images/menu17.gif" alt="��/�ؼ���" width="169" height="31" border="0" /></a></td>
  </tr>
										<tr>
										  <td height="30" align="center"><a href="kill.asp"><img src="images/menu23.gif" alt="����ɾ�����˻�" width="169" height="31" border="0" /></a></td>
  </tr>
										<tr>
											<td height="35" align="center">
											<a href="exit.asp">
											<img src="images/menu5.gif" alt="�˳�" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
											<td height="17" align="center"><div align="left" ><font color=#FF0099>�������Ҫ����ҳ�Ƽ����ϴ�ͼƬ���������Ƭ����֤�飬��Ʒ��Ƭ�ȣ�������ϵ����QQ-451079368 �绰-13981528686��<br>
                                                  <strong>ͼƬ������ã�15Ԫ/ͼ.��<br>
                                             ��ҳ��Ƭ�Ƽ����ã�1Ԫ/�졣</strong></font><br>
                                                  <font color="#FF0000" ><strong>VIP������50Ԫ[������Ч]</strong></font><br><a href="yfcb_gr.html" target="_blank">���VIP�û�����ͨ�û������</a></div>
											  <br></td>
										</tr>
										<tr>
										  <td height="25" align="center" bgcolor="#000000"><div align="center"><img src="images/jtou.gif" width="16" height="16" /><strong><a href="person.asp?id=757" target="_blank"><font color="ffff00">֤��Ч����ʾ</font></a></strong></div></td>
  </tr>
										<tr>
										  <td height="25" align="center" bgcolor="#FFFFFF"><a href="tjjw.html" target="_blank"><strong>�Ƽ��۸�</strong></a><img src="images/new.gif" width="33" height="16" /></td>
  </tr>
										<tr>
										  <td height="25" align="center" bgcolor="#FFFFFF"><strong><font size="4"><a href="pay.html" target="_blank"><font color="#ff0000">���ʽ</font></a></strong></td>
  </tr>
</table>
<br>
<% if Request.Cookies("newinfo")="new" then
 response.write "<embed src=newpm.swf loop=false hidden=true autostart=true width=0 height=0 name=foobar mastersound=mastersound></embed>"
 end if %>
   