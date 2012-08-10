<table border="0" width="100%" cellspacing="0" cellpadding="0" height="537" id="table4">
										<tr>
											<td height="35" align="center">
											<p align="center">
											<a href="control.asp">
											<img src="images/menu1.gif" alt="会员中心" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
											<td height="35" align="center">
											<a href="en_control1.asp">
											<img src="images/menu10.gif" alt="企业资料设置" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
										  <td height="35" align="center"><a href="en_uppic.asp"><img src="images/menu18.gif" width="169" height="31" border="0" /></a></td>
  </tr>
										<tr>
											<td height="30" align="center">
											<a target="_blank" href="company.asp?id=<%=Request.Cookies("id")%>">											</a><a href="add_job.asp"><img src="images/menu13.gif" alt="发布招聘职位" width="169" height="31" border="0" /></a></td>
										</tr>
										<tr>
										  <td height="30" align="center"><a href="enjob.asp"><img src="images/menu14.gif" alt="维护职位信息" width="169" height="31" border="0" /></a></td>
  </tr>
										<tr>
											<td height="35" align="center"><a href="gotop_dw.asp"><img src="images/menu22.gif" alt="招聘职位信息提到最前显示" width="169" height="31" border="0" /></a></td>
										</tr>
										<tr>
											<td height="35" align="center"><a href="search_person_vip.asp"><img src="images/menu16.gif" alt="人才超级搜索" width="169" height="31" border="0" /></a></td>
										</tr>
										<tr>
											<td height="35" align="center"><a target="_blank" href="company.asp?id=<%=Request.Cookies("id")%>"><img src="images/menu15.gif" alt="查看企业信息" width="169" height="31" border="0" /></a></td>
										</tr>
										<tr>
											<td height="35" align="center">
											<a href="endepot.asp">
											<img src="images/menu12.gif" alt="人才库" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
											<td height="35" align="center"><a href="message.asp"><img src="images/menu3.gif" alt="查看短信" width="169" height="31" border="0" /></a></td>
										</tr>
										<tr>
											<td height="17" align="center">
											<a href="ch_pwd.asp">
											<img src="images/menu4.gif" alt="修改密码" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
										  <td height="18" align="center"><a href="kill.asp"><img src="images/menu23.gif" alt="彻底删除本账户" width="169" height="31" border="0" /></a></td>
  </tr>
										<tr>
											<td height="35" align="center">
											<a href="exit.asp">
											<img src="images/menu5.gif" alt="退出" width="169" height="31" border="0"></a></td>
										</tr>
										<tr>
											<td height="17" align="center"><div align="left"><font color=#FF0099>如果您需要首页推荐、上传企业证照，请联系我们：QQ-451079368 电话-13981528686）<br>
									        <strong>图片服务费用：50元/图.月 <br>
									        首页推荐费用：200元/月.项。</strong></font><br>
											      <font color="#FF0000" ><strong>VIP升级：200元[终身有效]</strong></font>										      <br>
											      <a href="yfcb_dw.html" target="_blank">★★VIP用户与普通用户差别★★</a></div>
											  <br></td>
										</tr>
										<tr>
										  <td height="25" align="center" bgcolor="#000000"><div align="center"><img src="images/jtou.gif" width="16" height="16" /><strong><a href="company.asp?id=528" target="_blank"><font color="#ffff00">证照效果演示</font></a></strong></div></td>
  </tr>
										<tr>
										  <td height="25" align="center" bgcolor="#FFFFFF"><a href="tjjw.html" target="_blank"><strong>推荐价格</strong></a><img src="images/new.gif" width="33" height="16" /></td>
  </tr>
										<tr>
										  <td height="25" align="center" bgcolor="#FFFFFF"><strong><font size="4"><a href="pay.html" target="_blank"><font color=#ff0000>付款方式</font></a></strong></td>
  </tr>
</table>
<br>
<% if Request.Cookies("newinfo")="new" then
 response.write "<embed src=newpm.swf loop=false hidden=true autostart=true width=0 height=0 name=foobar mastersound=mastersound></embed>"
 end if %>