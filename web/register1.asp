<!--#include file="info.asp"-->
<html>

<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=webname%> - �û�ע��</title>
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
						<td height="86" width="237">��</td>
						<td height="86" width="128">
						<img border="0" src="images/regtop1.gif"></td>
						<td height="86" width="58">��</td>
					</tr>
					<tr>
						<td width="705" colspan="4" valign="top">
						<script language=javascript>
  function test()
  {
      if (document.form1.name.value==""){
	      alert("�������û�����")
		  document.form1.name.focus();
		  return false
		    }
	  if (document.form1.pwd.value==""){
	      alert("���������룡");
		  document.form1.pwd.focus();
		  return false
		  } 
		  if (document.form1.pwd.value!=document.form1.pwd1.value){
	      alert("�����������벻һ�£�");
		  document.form1.pwd.focus();
		  return false
		  } 
if (document.form1.question.value==""){
	      alert("�������������⣡")
		  document.form1.question.focus();
		  return false
		    }
if (document.form1.answer.value==""){
	      alert("����������𰸣�")
		  document.form1.answer.focus();
		  return false
		    }
if (document.form1.email.value==""){
	      alert("�������ʼ���")
		  document.form1.email.focus();
		  return false
		    }
          if (document.form1.user.value=="0"){
	      alert("��ѡ���Ա���");
		  document.form1.user.focus();
		  return false
		  }
		  if (document.form1.code.value==""){
	      alert("��������֤�룡")
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
										<b>����д������Ϣ��</b></td>
										<td width="307" height="30">��</td>
									</tr>
									<tr>
										<td width="70" height="30">�� �� ����</td>
										<td width="222" height="30" colspan="2">
										<input type="text" name="name" size="25" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
										<td width="307" height="30">
										6-20���ַ�,ֻ������(a-z),(A-Z),(0-9)</td>
									</tr>
									<tr>
										<td width="70" height="30">��&nbsp;&nbsp;&nbsp; 
										�룺</td>
										<td width="222" height="30" colspan="2">
										<input type="password" name="pwd" size="25" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
										<td width="307" height="30">��</td>
									</tr>
									<tr>
										<td width="70" height="30">����ȷ�ϣ�</td>
										<td width="222" height="30" colspan="2">
										<input type="password" name="pwd1" size="25" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
										<td width="307" height="30">��</td>
									</tr>
									<tr>
										<td width="70" height="30">�������⣺</td>
										<td width="222" height="30" colspan="2">
										<input type="text" name="question" size="25" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
										<td width="307" height="30">�����������ʾ����</td>
									</tr>
									<tr>
										<td width="70" height="30">����𰸣�</td>
										<td width="222" height="30" colspan="2">
										<input type="text" name="answer" size="25" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
										<td width="307" height="30">
										�����������ʾ����𰸣�����ȡ����̳����</td>
									</tr>
									<tr>
										<td width="70" height="15">�����ʼ���</td>
										<td width="222" height="15" colspan="2">
										<input type="text" name="email" size="25" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
										<td width="307" height="15">��</td>
									</tr>
									<tr>
									  <td width="70" height="15">��ϵ�绰��</td>
									  <td height="15" colspan="2"><input type="text" name="tphone" size="25" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
								      <td width="307" height="15">&nbsp;</td>
								  </tr>
									<tr>
										<td width="70" height="15">�û����</td>
										<td width="222" height="15" colspan="2">
											<select size="1" name="user">
											<option selected value="0">--��ѡ���Ա���--											</option>
											<option value="1">�����û�</option>
											<option value="2">��ҵ�û�</option>
											</select></td> <% =user %>
										<td width="307" height="15">��</td>
									</tr>
									<tr>
									 <% if (request("user")="1") then %>
									  <td height="15">��ʵ������</td>
								      <td width="222" height="15" colspan="2"><input type="text" name="Tname" size="25" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
								      <td width="307" height="15"><span class="STYLE1">�Ժ��ܸ���</span></td>
									  <%end if %> 
									  <% if (request("user")="2") then  %>
									  <td height="15">��Ƹ�����ƣ�</td>
								      <td width="222" height="15" colspan="2"><input type="text" name="Tname" size="25" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
								      <td width="307" height="15"><span class="STYLE1">�Ժ��ܸ���</span></td>
									<%end if %> 
								  </tr>
									<tr>
										<td width="70" height="30">�� ֤ ��</td>
										<td width="51" height="30">
										<input type="text" name="code" size="4" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
										<td width="171" height="30"><%call getcode()%></td>
										<td width="307" height="30">
										�����֤��ͼƬ��ˢ����֤��</td>
									</tr>
									<tr>
										<td width="70" height="30">��</td>
										<td width="222" height="30" colspan="2">
										<input type="submit" value="�ύ" name="B1"></td>
										<td width="307" height="30">��</td>
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