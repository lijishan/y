<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="md5.asp"-->

<%
if instr(request("name"),"'")<>0 then
response.write "<script language=JavaScript>" & chr(13) & "alert('�Ƿ������ύ��');" & "history.back()" & "</script>" 
Response.End
end if
call codeistrue("search_pwd1.asp")
name=request("name")
if request("user")="1" then
sql="select answer from in_user where ac='"&name&"'"
rs.open sql,conn,1,1
if rs("answer")<>md5(request("answer")) then
response.write "<script language=JavaScript>" & chr(13) & "alert('����𰸴���');" & "history.back()" & "</script>" 
rs.close
Response.End
end if
else
if request("user")="2" then
sql="select answer from en_user where ac='"&name&"'"
rs.open sql,conn,1,1
if rs("answer")<>md5(request("answer")) then
response.write "<script language=JavaScript>" & chr(13) & "alert('����𰸴���');" & "history.back()" & "</script>" 
rs.close
Response.End
end if
end if
end if
%>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=webname%> - �һ�����</title>
</head>

<body>
<!--#include file="top_index.asp"-->
<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="421">
		<tr>
			<td style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf; border-top: 1px solid #ffc6bf" width="760" valign="top" bgcolor="#FEFBF4">
			<div align="center">
				<table border="0" width="705" cellspacing="0" cellpadding="0" id="table2" height="377">
					<tr>
						<td height="86" width="214">
						<img border="0" src="images/spwd.gif" width="282" height="90"></td>
						<td height="86" width="237">��</td>
						<td height="86" width="128">
						<img border="0" src="images/spwd1.gif" width="128" height="90"></td>
						<td height="86" width="58">��</td>
					</tr>
					<tr>
						<td width="705" colspan="4">
						<script language=javascript>
  function test()
  {
     
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
		  return true
		  if (document.form1.code.value==""){
	      alert("��������֤�룡");
		  document.form1.code.focus();
		  return false
		  } 

  }
  function reset_form()
  {
   document.form1.name.value="";
   document.form1.pwd.value="";
     }
</script>

						<form name="form1" method="POST" action="search_pwd4.asp" onSubmit="return test()">
							<div align="center">
								<table border="0" width="300" cellspacing="0" cellpadding="0" id="table3" height="118">
									<tr>
										<td height="25" width="300" colspan="3">
										<b>�̵�������</b></td>
									</tr>
									<tr>
										<td height="25" width="99" align="center">
										�����������룺</td>
										<td height="25" width="201" colspan="2">
										<input type="password" name="pwd" size="25" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
									</tr>
									<tr>
										<td height="25" width="99" align="center">
										���ٴ����룺</td>
										<td height="25" width="201" colspan="2">
											<input type="password" name="pwd1" size="25" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
									</tr>
									<tr>
										<td height="26" width="99" align="center">
										��������֤�룺</td>
										<td height="26" width="44" align="center">
										<input name="code" size="4" style="float: left; border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
										<td height="26" width="157" align="center">
										<p align="left"><%call getcode()%></td>
									</tr>
									<tr>
										<td height="60" width="300" align="center" colspan="3">
										<input type="hidden" name="name" value="<%=name%>">
                                        <input type="hidden" name="user" value="<%=request("user")%>">
										<input type="hidden" name="answer" value="<%=request("answer")%>">
										
										<input type="button" value="��һ��" onclick='history.back()' name="B2">&nbsp;
										<input type="submit" value="��һ��" name="B1"></td>
									</tr>
								</table>
							</div>
						</form>
						<p>
						
						</td>
					</tr>
					</table>
			</div>
			</td>
		</tr>
	</table>
	<%
	rs.close
	set rs=nothing
	set conn=nothing
	%>
</div>
<!--#include file="base.asp"-->
</body>

</html>