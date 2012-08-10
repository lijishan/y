<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="unhtml.asp"-->
<html>
<%
if session("id")="" or session("ac")="" or session("user")<>"1" then
response.write "<script language=JavaScript>" & chr(13) & "alert('登录超时请重新登录填写本页内容！');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
%>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=webname%> - 会员中心 - 基本资料设置</title>
<style type="text/css">
<!--
.STYLE2 {color: #0066FF}
.STYLE3 {font-weight: bold}
.STYLE4 {color: #FF0000; font-size: 18pt; }
.STYLE5 {color: #0033FF}
.STYLE6 {color: #990033}
.STYLE7 {
	color: #FF0000;
	font-weight: bold;
}
.STYLE8 {color: #990000}
.STYLE9 {color: #FF0000}
-->
</style>
</head>

<body>

<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="421">
		<tr>
			<td style="border-left: 1px solid #0086DF; border-right: 1px solid #0086DF" width="760" valign="top" bgcolor="#FEFBF4">
			<div align="center">
				<table border="0" width="705" cellspacing="0" cellpadding="0" id="table2" height="379">
					<tr>
						<td height="86" width="214">
						<img border="0" src="images/control.gif" width="282" height="90"></td>
						<td height="86" width="237">　</td>
						<td height="86" width="128">
						<img border="0" src="images/controltop1.gif" width="128" height="90"></td>
						<td height="86" width="58">　</td>
					</tr>
					<tr>
					  <td width="705" colspan="4" valign="top">
						<%
sql="select ac, name,code,bdate,sex,guoji,shenggao,tizhong,minzu,marry,hka,hkb,edu,zye,zhuanyen1,zyes,zhuanyen2,school,bydate,zzmm,zcheng,jyjl,pic ,picdate,picdays,morepic from in_user where id="&clng(session("id"))
rs.open sql,conn,1,1
%>

						当 前 用 户：<font color=#FF000000><%=rs("ac")%>: <%=rs("name")%></font>
						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="250">
													<tr>
									<td width="1%" valign="top">&nbsp;</td>
									<td width="99%" valign="top" align="center" style="border: 1px solid #000000">
									<form method="POST" action="upinfo1a.asp">
										<table border="0" width="100%" cellspacing="0" cellpadding="0" height="210" id="table5">
																					<tr>
                                              <td height="10" colspan="3" align="right" bgcolor="#FFFBF7"><p align="center" class="STYLE3">
                                                  <p align="center" class="STYLE4"><strong>特殊服务设置                                                  </strong>
                                                  <p align="center"></td>
										  </tr>
											<tr>
                                              <td width="17%" height="40" align="right" bgcolor="#FFFBF7"><span class="STYLE5">个人图片申请日期：</span></td>
											  <td width="41%" height="40" bgcolor="#FFFBF7"><input type="text" name="picdate" size="40" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("picdate")%>"></td>
											  <td width="42%" height="40" bgcolor="#FFFBF7"><font color="#FF0000">*&nbsp; 
											    （格式为1984-01-09）</font></td>
										  </tr>
											<tr>
                                              <td height="20" align="right" bgcolor="#FFFBF7"><span class="STYLE5">图片申请有效期：</span></td>
											  <td height="20" align="right" bgcolor="#FFFBF7"><input type="text" name="picdays" size="40" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("picdays")%>"></td>
											  <td height="20" align="right" bgcolor="#FFFBF7"><div align="left">单位：天，不能为空，不用请填<span class="STYLE9">0</span></div></td>
										  </tr>
											<tr>
                                              <td height="20" align="right" bgcolor="#FFFBF7"><span class="STYLE2">图片地址：</span></td>
											  <td height="0" align="right" bgcolor="#FFFBF7"><input type="text" name="pic" size="40" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("pic")%>"></td>
											  <td height="0" align="right" bgcolor="#FFFBF7"><div align="left">使用相对地址，如<span class="STYLE8">zptp/abc.jpg</span></div></td>
										  </tr>
											<tr>
											  <td height="20" align="right" bgcolor="#FFFBF7">个人风采展示图片：</td>
										      <td height="10" align="right" bgcolor="#FFFBF7"><textarea name="morepic" cols="40" rows="6" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"><%=unhtml(rs("morepic"))%></textarea></td>
										      <td height="20" align="right" bgcolor="#FFFBF7"><div align="left">使用HTML语句,无请留空（非空格）。<span class="STYLE7">第2次修改，一定要再次剪贴所有内容后，再粘贴回代码框，否则语句无效！！</span>如<span class="STYLE6">&lt;a href=&quot;/images/abc.jpg&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;/images/abc.jpg&quot; width=&quot;120&quot; height=&quot;100&quot; border=&quot;0&quot; /&gt;&lt;/a&gt;</span></div></td>
										  </tr>
																																	
																						<tr>
												<td height="40" colspan="3" align="right" bgcolor="#FFFBF7">
												<p align="center">
											  <input type="submit" value="设置" name="B1"></td>
											</tr>
										</table>
									</form>
									<p></td>
								</tr>
							</table>
						</div>
						<%'表格%></td>
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

</body>

</html>