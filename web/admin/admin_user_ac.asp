<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<%
if request("ttype")="1" then
sql="select name,ac,question,lock,ltime,ip,email,vip,rz from in_user where id="&clng(request("id"))
ttype="1"
else
sql="select name,ac,question,lock,ltime,ip,email,vip,rz from en_user where id="&clng(request("id"))
ttype="2"
end if
rs.open sql,conn,1,1
if rs.recordcount=0 then
rs.close
set rs=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('�Ƿ������ύ��');" & "window.close()" & "</script>" 
Response.End
end if
%>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../css.css"  type="text/css">
<title>�û��ʻ�����</title>
<style type="text/css">
<!--
.STYLE1 {
	color: #FF0000;
	font-weight: bold;
}
.STYLE2 {color: #FF0000}
-->
</style>
</head>

<body>
<div align="center">
	<table border="0" width="400" cellspacing="0" cellpadding="0" height="300" id="table1">
		<tr>
			<td valign="top">
			<form method="POST" action="updata_user_ac.asp">
				<table border="0" width="400" cellspacing="0" cellpadding="0" id="table2" height="373">
					<tr>
						<td height="30" background="images/jobbg1.gif" style="border: 1px solid #C0C0C0" width="400" colspan="2">
						<p align="center"><font color="#0A5DF6"><b>�û��ʻ�����</b></font></td>
					</tr>
					<tr>
						<td height="20" width="400" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2">
						<p align="center"><b>��&nbsp;&nbsp;&nbsp; �ţ�</b></td>
						<td height="20" width="311" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2">&nbsp;<%=rs("ac")%>(<%=rs("name")%>)</td>
					</tr>
					<tr>
						<td width="400" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2" height="32">
						<p align="center"><b>��&nbsp;&nbsp;&nbsp; �룺</b></td>
						<td width="311" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2" height="32">
						&nbsp;<input type="text" name="pwd" size="20" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
						<font color="#FF0000">�������ģ�������д</font></td>
					</tr>
					<tr>
						<td width="400" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2" height="20">
						<p align="center"><b>�������⣺</b></td>
						<td width="311" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" height="20" bgcolor="#EEFFF2">
						&nbsp;<input type="text" name="question" size="20" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("question")%>"></td>
					</tr>
					<tr>
						<td width="400" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2" height="32">
						<p align="center"><b>����𰸣�</b></td>
						<td width="311" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" height="32" bgcolor="#EEFFF2">
						&nbsp;<input type="text" name="answer" size="20" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
						<font color="#FF0000">�������ģ�������д</font></td>
					</tr>
					<tr>
						<td width="400" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2" height="17">
						  <p align="center">========</td>
					  <td width="311" height="17" bgcolor="#EEFFF2" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0">
						&nbsp;&nbsp;=============================</td>
					</tr>
					<tr>
					  <td style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2" height="22"><div align="center"><b>��֤�û���</b> </div></td>
				      <td width="311" height="22" bgcolor="#EEFFF2" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0">��
                        <input type="radio" value="true" name="rz" <%if rs("rz")=true then response.write"checked"%>>
&nbsp;&nbsp; 
						��
                      <input type="radio" name="rz" value="false" <%if rs("rz")=false then response.write"checked"%>></td>
				  </tr>
					<tr>
						<td width="400" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2" height="22">
						<p align="center"><b>VIP�û���</b></td>
						<td width="311" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" height="22" bgcolor="#EEFFF2">
						&nbsp; ��
						<input type="radio" value="true" name="vip" <%if rs("vip")=true then response.write"checked"%>>
						&nbsp;&nbsp; 
						��
						<input type="radio" name="vip" value="false" <%if rs("vip")=false then response.write"checked"%>></td>
					</tr>
					<tr>
						<td width="400" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2" height="22">
						<p align="center"><b>�Ƿ�������</b></td>
						<td width="311" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" height="22" bgcolor="#EEFFF2">
						&nbsp;&nbsp; ��<input type="radio" value="true" name="lock" <%if rs("lock")=true then response.write"checked"%>>&nbsp;&nbsp; 
						��<input type="radio" name="lock" value="false" <%if rs("lock")=false then response.write"checked"%>></td>
					</tr>
					<tr>
						<td width="400" height="94" bgcolor="#EEFFF2" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0">
						<p align="center"><b>�������ݣ�</b></td>
						<td width="311" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" height="94" bgcolor="#EEFFF2">
						�����ʼ���ַ��<%=rs("email")%><p>����½ʱ�䣺<%=rs("ltime")%><p>����½&nbsp; IP��<%=rs("ip")%></td>
					</tr>
					<tr>
					  <td height="17" colspan="2" bgcolor="#EEFFF2" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0"><span class="STYLE2">��ʾ�����úú�</span><span class="STYLE1">��Ҫ�û��˳�</span><span class="STYLE2">���㡰�˳���Ա���ġ�[���ǹر���ҳ]��</span><span class="STYLE1">�����µ�¼�������ò���Ч��</span></td>
				  </tr>
					<tr>
						<td height="30" width="400" colspan="2" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#EEFFF2">
						<p align="center">
						<input type="submit" value="�޸�" name="B1"></td>
					</tr>
				</table>
			<input type="hidden" name="ttype" value="<%=ttype%>">
			<input type="hidden" name="id" value="<%=request("id")%>">

			</form>
			</td>
		</tr>
	</table>
</div>

</body>

</html>
<%
rs.close
set rs=nothing
set conn=nothing
%>