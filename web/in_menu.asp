<table border="0" width="100%" cellspacing="0" cellpadding="0" height="442" id="table4">
										<tr>
											<td height="35" align="center">
											<p align="center">
											<a href="control.asp">
											<img src="images/menu1.gif" alt="会员中心" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
											<td height="35" align="center">
											<a href="in_control1.asp">
											<img src="images/menu2.gif" alt="个人资料设置" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
											<td height="35" align="center">
											<a href="in_uppic.asp">
											<img src="images/menu8.gif" alt="上传图片" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
											<td height="35" align="center">
											<a target="_blank" href="person.asp?id=<%=Request.Cookies("id")%>">
											<img src="images/menu7.gif" alt="查看我的简历" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
											<td height="35" align="center">
											<a href="message.asp">
											<img src="images/menu3.gif" alt="查看短信" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
											<td height="35" align="center">
											<a href="indepot.asp">
											<img src="images/menu11.gif" alt="职位库" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
											<td height="35" align="center">
											<a href="search_job_vip.asp">
											<img src="images/menu6.gif" alt="超级搜索" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
											<td height="8" align="center">
											<a href="ch_pwd.asp">
											<img src="images/menu4.gif" alt="修改密码" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
										  <td height="9" align="center"><a href="gotop_gr.asp"><img src="images/menu20.gif" alt="简历位置提升到最前显示" width="169" height="31" border="0" /></a></td>
  </tr>
										<tr>
										  <td height="9" align="center"><a href="close_gr.asp"><img src="images/menu17.gif" alt="开/关简历" width="169" height="31" border="0" /></a></td>
  </tr>
										<tr>
										  <td height="30" align="center"><a href="kill.asp"><img src="images/menu23.gif" alt="彻底删除本账户" width="169" height="31" border="0" /></a></td>
  </tr>
										<tr>
											<td height="35" align="center">
											<a href="exit.asp">
											<img src="images/menu5.gif" alt="退出" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
											<td height="17" align="center"><div align="left" ><font color=#FF0099>如果您需要在首页推荐或上传图片（如个人照片、获奖证书，作品照片等），请联系我们QQ-451079368 电话-13981528686。<br>
                                                  <strong>图片服务费用：15元/图.月<br>
                                             首页照片推荐费用：1元/天。</strong></font><br>
                                                  <font color="#FF0000" ><strong>VIP升级：50元[终身有效]</strong></font><br><a href="yfcb_gr.html" target="_blank">★★VIP用户与普通用户差别★★</a></div>
											  <br></td>
										</tr>
										<tr>
										  <td height="25" align="center" bgcolor="#000000"><div align="center"><img src="images/jtou.gif" width="16" height="16" /><strong><a href="person.asp?id=757" target="_blank"><font color="ffff00">证照效果演示</font></a></strong></div></td>
  </tr>
										<tr>
										  <td height="25" align="center" bgcolor="#FFFFFF"><a href="tjjw.html" target="_blank"><strong>推荐价格</strong></a><img src="images/new.gif" width="33" height="16" /></td>
  </tr>
										<tr>
										  <td height="25" align="center" bgcolor="#FFFFFF"><strong><font size="4"><a href="pay.html" target="_blank"><font color="#ff0000">付款方式</font></a></strong></td>
  </tr>
</table>
<br>
<% if Request.Cookies("newinfo")="new" then
 response.write "<embed src=newpm.swf loop=false hidden=true autostart=true width=0 height=0 name=foobar mastersound=mastersound></embed>"
 end if %>
   