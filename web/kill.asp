<!--#include file="info.asp"-->
<html>
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('����δ��½���¼��ʱ�������µ�¼���������');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
%>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=webname%> - ��Ա���� - �û��ʻ�ע��</title>
<style type="text/css">
<!--
.STYLE1 {font-weight: bold}
.STYLE2 {
	font-size: 12pt;
	font-weight: bold;
}
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
						<%'���%>

						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="272">
								<tr>
									<td height="27" colspan="2">
									<p align="left">
									&nbsp;��Ա���� �� �û�ע��</td>
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
	      alert("�����������룡");
		  document.form1.pwd1.focus();
		  return false
		  } 
		  if (document.form1.pwd1.value!=document.form1.pwd2.value){
	      alert("�����������벻һ�£�");
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

									<form name="form1" method="POST" action="kill_db.asp" onSubmit="return test()">
										<table border="0" width="93%" cellspacing="0" cellpadding="0" id="table5">
											<tr>
												<td height="40" colspan="3">
												<p align="center">��</p>
												<p align="center"><b>�û��ʻ�ע��</b></p>
												<p align="center">��</td>
											</tr>
											<tr>
												<td height="40" width="100%" align="right" colspan="3">
												<p align="left">&nbsp;&nbsp;&nbsp;
												  
												ע�������ڱ�վ���������ݽ���ɾ�������<span class="STYLE2"><font color="#FF0000">�����ǲ��ɻָ���</font></span>�������ʹ�á�</td>
											</tr>
											<tr>
												<td height="40" width="33%" align="right">
												���뻧���룺</td>
												<td height="40" width="35%">
												<input type="password" name="pwd" size="22" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
												<td height="40" width="32%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="33%" align="right">
												������֤�룺</td>
												<td height="40" width="35%">
												<input name="code" size="4" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">&nbsp;<%call getcode()%></td>
												<td height="40" width="32%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="33%">��</td>
												<td height="40" width="35%">
												<p align="center">
												<input type="submit" value="ȷ��ע��" name="b1"></td>
												<td height="40" width="32%">��</td>
											</tr>
											</table>
									</form>
��</td>
								</tr>
							</table>
						</div>
						<%'���%>

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