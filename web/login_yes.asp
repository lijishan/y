								<div align="center">
									<table border="0" width="193" cellspacing="0" cellpadding="0" id="table7" height="128">
										<tr>
											<td height="61" width="193" colspan="3">&nbsp;&nbsp;&nbsp; ��ӭ<%
											if Request.Cookies("user")="1" then response.write"�����û�"
											if Request.Cookies("user")="2" then response.write"��ҵ�û�"
											
											%><font color="#FF0000"><%=Request.Cookies("ac")%></font>���롾�ܲ�528����˲���Ƹ����,��������������Ĳ�����</td>
										</tr>
										<tr>
											<td height="40" width="25" align="right">
											<img border="0" src="images/menu.gif" width="10" height="10"></td>
											<td height="40" width="6" align="right">��</td>
											<td height="40" width="162">
											<a href="control.asp"><b><font color=#ff0000>�����Ա����</font></b></a></td>
										</tr>
										<tr>
											<td height="40" width="25" align="right">
											<img border="0" src="images/menu.gif" width="10" height="10"></td>
											<td height="40" width="6" align="right">��</td>
											<td height="40" width="162">
											<b>
											<%
											sql="select id from message where ttype='"&Request.Cookies("user")&"' and tid="&Request.Cookies("id")&" and new=true"
											
											
											rs.open sql,conn,1,1
											%>
											<a href="message.asp">��Ϣ����</a></b> (<font color="#FF0000"><%=rs.recordcount%></font>������Ϣ)</td>
										<%
										if rs.recordcount<>0 then 
										response.write "<embed src=newpm.swf loop=false hidden=true autostart=true width=0 height=0 name=foobar mastersound=mastersound></embed>"
										Response.Cookies("newinfo")="new"
										else
										Response.Cookies("newinfo")=""
										end if 
										rs.close
										%>
										</tr>
										<tr>
											<td height="40" width="25" align="right">
											<img border="0" src="images/menu.gif" width="10" height="10"></td>
											<td height="40" width="6" align="right">��</td>
											<td height="40" width="162">
											<b>
											<a href="exit.asp">�˳���½</a></b></td>
										</tr>
									</table>
								</div>
						