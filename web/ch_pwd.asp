<!--#include file="info.asp"-->
<html>
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('您还未登陆！');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
%>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=webname%> - 会员中心 - 密码修改</title>
</head>

<body>
<!--#include file="top_index.asp"-->
<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="421">
		<tr>
			<td style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf; border-top: 1px solid #ffc6bf" width="760" valign="top" bgcolor="#FEFBF4">
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
						<%'表格%>

						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="272">
								<tr>
									<td height="27" colspan="2">
									<p align="left">
									&nbsp;会员中心 → 密码修改</td>
								</tr>
								<tr>
									<td width="25%" valign="top">
									<%if Request.Cookies("user")="1" then%>
									<!--#include file="in_menu.asp"-->
									<%end if%>
									<%if Request.Cookies("user")="2" then%>
									<!--#include file="en_menu.asp"-->
									<%end if%>

									</td>
									<td width="75%" valign="top" align="center" style="border: 1px solid #000000">
									<script language=javascript>
  function test()
  {
     
	  if (document.form1.pwd1.value==""){
	      alert("请输入新密码！");
		  document.form1.pwd1.focus();
		  return false
		  } 
		  if (document.form1.pwd1.value!=document.form1.pwd2.value){
	      alert("两次密码输入不一致！");
		  document.form1.pwd1.focus();
		  return false
		  } 
		  return true
  }
  function reset_form()
  {
      document.form1.pwd1.value="";
     }
</script>

									<form name="form1" method="POST" action="ch_pwd_db.asp" onSubmit="return test()">
										<table border="0" width="93%" cellspacing="0" cellpadding="0" id="table5">
											<tr>
												<td height="40" colspan="3">
												<p align="center">　</p>
												<p align="center"><b>会员密码修改</b></p>
												<p align="center">　</td>
											</tr>
											<tr>
												<td height="40" width="33%" align="right">
												输入原密：</td>
												<td height="40" width="35%">
												<input type="password" name="ypwd" size="22" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
												<td height="40" width="32%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="33%" align="right">
												输入新密码：</td>
												<td height="40" width="35%">
												<input type="password" name="pwd1" size="22" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
												<td height="40" width="32%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="33%" align="right">
												确认新密码：</td>
												<td height="40" width="35%">
												<input type="password" name="pwd2" size="22" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
												<td height="40" width="32%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="33%">　</td>
												<td height="40" width="35%">
												<p align="center">
												<input type="submit" value="修改" name="b1"></td>
												<td height="40" width="32%">　</td>
											</tr>
											</table>
									</form>
　</td>
								</tr>
							</table>
						</div>
						<%'表格%>

						</td>
					</tr>
					</table>
			</div>
			</td>
		</tr>
	</table>
</div>
<!--#include file="base.asp"-->
</body>

</html>