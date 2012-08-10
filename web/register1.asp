<!--#include file="info.asp"-->
<html>

<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=webname%> - 用户注册</title>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
-->
</style>
</head>

<body>
<!--#include file="top_index.asp"-->
<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="421">
		<tr>
			<td style="border-left: 1px solid #0086DF; border-right: 1px solid #0086DF" width="760" valign="top" bgcolor="#FEFBF4">
			<div align="center">
				<table border="0" width="705" cellspacing="0" cellpadding="0" id="table2" height="377">
					<tr>
						<td height="86" width="214">
						<img border="0" src="images/regtop.gif"></td>
						<td height="86" width="237">　</td>
						<td height="86" width="128">
						<img border="0" src="images/regtop1.gif"></td>
						<td height="86" width="58">　</td>
					</tr>
					<tr>
						<td width="705" colspan="4" valign="top">
						<script language=javascript>
  function test()
  {
      if (document.form1.name.value==""){
	      alert("请输入用户名！")
		  document.form1.name.focus();
		  return false
		    }
	  if (document.form1.pwd.value==""){
	      alert("请输入密码！");
		  document.form1.pwd.focus();
		  return false
		  } 
		  if (document.form1.pwd.value!=document.form1.pwd1.value){
	      alert("两次密码输入不一致！");
		  document.form1.pwd.focus();
		  return false
		  } 
if (document.form1.question.value==""){
	      alert("请输入密码问题！")
		  document.form1.question.focus();
		  return false
		    }
if (document.form1.answer.value==""){
	      alert("请输入密码答案！")
		  document.form1.answer.focus();
		  return false
		    }
if (document.form1.email.value==""){
	      alert("请输入邮件！")
		  document.form1.email.focus();
		  return false
		    }
          if (document.form1.user.value=="0"){
	      alert("请选择会员类别！");
		  document.form1.user.focus();
		  return false
		  }
		  if (document.form1.code.value==""){
	      alert("请输入验证码！")
		  document.form1.code.focus();
		  return false
		    }

		  return true
  }
  function reset_form()
  {
   document.form1.name.value="";
   document.form1.pwd.value="";
   document.form1.userr.value="";
   document.form1.name.focus;
  }
</script>

						<form name="form1" method="POST" action="regdata.asp" onSubmit="return test()">
							<div align="center">
								<table border="0" width="599" cellspacing="0" cellpadding="0" id="table3" height="330">
									<tr>
										<td width="292" height="30" colspan="3">
										<b>√填写基本信息：</b></td>
										<td width="307" height="30">　</td>
									</tr>
									<tr>
										<td width="70" height="30">用 户 名：</td>
										<td width="222" height="30" colspan="2">
										<input type="text" name="name" size="25" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
										<td width="307" height="30">
										6-20个字符,只能输入(a-z),(A-Z),(0-9)</td>
									</tr>
									<tr>
										<td width="70" height="30">密&nbsp;&nbsp;&nbsp; 
										码：</td>
										<td width="222" height="30" colspan="2">
										<input type="password" name="pwd" size="25" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
										<td width="307" height="30">　</td>
									</tr>
									<tr>
										<td width="70" height="30">密码确认：</td>
										<td width="222" height="30" colspan="2">
										<input type="password" name="pwd1" size="25" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
										<td width="307" height="30">　</td>
									</tr>
									<tr>
										<td width="70" height="30">密码问题：</td>
										<td width="222" height="30" colspan="2">
										<input type="text" name="question" size="25" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
										<td width="307" height="30">忘记密码的提示问题</td>
									</tr>
									<tr>
										<td width="70" height="30">密码答案：</td>
										<td width="222" height="30" colspan="2">
										<input type="text" name="answer" size="25" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
										<td width="307" height="30">
										忘记密码的提示问题答案，用于取回论坛密码</td>
									</tr>
									<tr>
										<td width="70" height="15">电子邮件：</td>
										<td width="222" height="15" colspan="2">
										<input type="text" name="email" size="25" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
										<td width="307" height="15">　</td>
									</tr>
									<tr>
									  <td width="70" height="15">联系电话：</td>
									  <td height="15" colspan="2"><input type="text" name="tphone" size="25" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
								      <td width="307" height="15">&nbsp;</td>
								  </tr>
									<tr>
										<td width="70" height="15">用户类别：</td>
										<td width="222" height="15" colspan="2">
											<select size="1" name="user">
											<option selected value="0">--请选择会员类别--											</option>
											<option value="1">个人用户</option>
											<option value="2">企业用户</option>
											</select></td> <% =user %>
										<td width="307" height="15">　</td>
									</tr>
									<tr>
									 <% if (request("user")="1") then %>
									  <td height="15">真实姓名：</td>
								      <td width="222" height="15" colspan="2"><input type="text" name="Tname" size="25" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
								      <td width="307" height="15"><span class="STYLE1">以后不能更改</span></td>
									  <%end if %> 
									  <% if (request("user")="2") then  %>
									  <td height="15">招聘方名称：</td>
								      <td width="222" height="15" colspan="2"><input type="text" name="Tname" size="25" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
								      <td width="307" height="15"><span class="STYLE1">以后不能更改</span></td>
									<%end if %> 
								  </tr>
									<tr>
										<td width="70" height="30">验 证 吗：</td>
										<td width="51" height="30">
										<input type="text" name="code" size="4" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
										<td width="171" height="30"><%call getcode()%></td>
										<td width="307" height="30">
										点击验证码图片可刷新验证码</td>
									</tr>
									<tr>
										<td width="70" height="30">　</td>
										<td width="222" height="30" colspan="2">
										<input type="submit" value="提交" name="B1"></td>
										<td width="307" height="30">　</td>
									</tr>
								</table>
							</div>
						</form>
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