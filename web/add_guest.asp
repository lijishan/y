<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="unhtml.asp"-->

<html>

<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title>ǩд���� - <%=webname%></title>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
-->
</style>
</head>

<body>
<!--#include file="top_index.asp"-->
<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="106">
		<tr>
			<td style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf" width="760" valign="top">
			<div align="center">
				<table border="0" width="98%" cellspacing="0" cellpadding="0" id="table2" height="164">
					<tr>
						<td style="border: 1px solid #C0C0C0" valign="top">
						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="147">
								<tr>
									<td height="40" width="740" background="images/bg18.gif">
									<table border="0" width="740" cellspacing="0" cellpadding="0" id="table4" height="31">
										<tr>
											<td width="127">��</td>
											
										</tr>
									</table>
									</td>
								</tr>
								<tr>
									<td valign="top" align="center">
									<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table5" height="92">
														<tr>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="734" height="42" align="center" valign="top">
										<div align="center">
<form method="POST" action="add_guest_db.asp" name="form1">
						<table border="0" width="655" cellspacing="0" cellpadding="0" height="359">
							<tr>
								<td height="22" background="imagen/web_01_05.gif" colspan="3" style="border-left: 1px solid #000000; border-right: 1px solid #000000; border-top: 1px solid #000000; border-bottom-width: 1px" align="center">
								��</td>
							</tr>
							<tr>
							  <td height="12" colspan="3" align="center" bgcolor="#F7F3F7" style="border-left: 1px solid #000000; border-right: 1px solid #000000; border-top: 1px solid #000000; border-bottom-width: 1px">�����<font color=#ff0000>*</font>������д��</td>
							  </tr>
							<tr>
							  <td height="12" colspan="3" align="center" bgcolor="#F7F3F7" style="border-left: 1px solid #000000; border-right: 1px solid #000000; border-top: 1px solid #000000; border-bottom-width: 1px"><div align="left">�㵱ǰ��IP��ַ��<%Response.Write( "<font color=#ff0000><strong>"&request.servervariables("remote_addr")) &"</strong></font>"%> 
							  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���������ߣ���վ������IP����</div></td>
							  </tr>
							<tr>
								<td width="105" height="33" align="center" bgcolor="#F0F0F0" style="border-left: 1px solid #000000; border-right-width: 1px; border-top-width: 1px; border-bottom-width: 1px"><a name="send"></a>
								�������⣺</td>
                                <td height="33" colspan="2" align="left" bgcolor="#F0F0F0" style="border-left-width: 1px; border-right: 1px solid #000000; border-top-width: 1px; border-bottom-width: 1px">
			<input name="title" id="title" size="20" maxlength="8" style="float: left">
			<font color=#ff0000>* ��10�����ڣ� </font></td>
          </tr>
          <tr bgcolor="#F7F7F7">
            <td height="63" align="center" bgcolor="#F0F0F0" style="border-left: 1px solid #000000; border-right-width: 1px; border-top-width: 1px">
			<p align="center">�������ݣ�</td>
            <td width="438" align="left" bgcolor="#F0F0F0" style="border-right:1px solid #000000; border-left-width: 1px; border-top-width: 1px">
			<textarea name="content" cols="60" rows="10" id="content"></textarea></td>
            <td width="112" align="left" bgcolor="#F0F0F0" style="border-right:1px solid #000000; border-left-width: 1px; border-top-width: 1px"><font color=#ff0000>* ��֧��HTML��ʽ<br>��150�����ڣ� </font></td>
          </tr>
          <tr bgcolor="#F7F7F7">
            <td height="30" bgcolor="#F0F0F0" width="105" style="border-left: 1px solid #000000; border-right-width: 1px; border-top-width: 1px; border-bottom-width: 1px" align="center">
			��֤�룺</td>
            <td height="30" colspan="2" bgcolor="#F0F0F0" style="border-right: 1px solid #000000; border-top-width: 1px; border-bottom-width: 1px">
			<input name="code" type="text" size="4" maxlength="4"><%call getcode()%>
			<font color=#ff0000>*</font>�뽫���ͼƬ�����������</td>
          </tr>
          <tr bgcolor="#F7F7F7">
            <td height="30" bgcolor="#F0F0F0" width="105" style="border-left: 1px solid #000000; border-right-width: 1px; border-top-width: 1px; border-bottom-width: 1px" align="center">
			����������</td>
            <td height="30" colspan="2" bgcolor="#F0F0F0" style="border-right: 1px solid #000000; border-top-width: 1px; border-bottom-width: 1px">
			<input name="username" type="text" size="31" maxlength="10"> 
			<font color=#ff0000>*</font></td>
          </tr>
          <tr bgcolor="#F7F7F7">
            <td height="30" bgcolor="#F0F0F0" width="105" style="border-left: 1px solid #000000; border-right-width: 1px; border-top-width: 1px; border-bottom-width: 1px" align="center">
			<p align="center">�������䣺</td>
            <td height="30" colspan="2" bgcolor="#F0F0F0" style="border-right: 1px solid #000000; border-top-width: 1px; border-bottom-width: 1px">
			<input name="email" type="text" size="31" maxlength="45">
			&nbsp;&nbsp; 
			(��:xxx@sina.com)</td>
          </tr>
							<tr>
            <td height="30" bgcolor="#F0F0F0" width="105" style="border-left: 1px solid #000000; border-right-width: 1px; border-top-width: 1px; border-bottom-width: 1px" align="center">
			<p align="center">����Q Q��</td>
            <td height="30" colspan="2" bgcolor="#F0F0F0" style="border-right: 1px solid #000000; border-top-width: 1px; border-bottom-width: 1px">
			<input name="qq" type="text" size="31" maxlength="15"></td>
          					</tr>
							<tr>
            <td height="30" bgcolor="#F0F0F0" width="105" style="border-left: 1px solid #000000; border-right-width: 1px; border-top-width: 1px; border-bottom-width: 1px" align="center">
			<p align="center">�����ҳ��</td>
            <td height="30" colspan="2" bgcolor="#F0F0F0" style="border-right: 1px solid #000000; border-top-width: 1px; border-bottom-width: 1px">
			<input name="homepage" type="text" size="31" maxlength="45">
			&nbsp;&nbsp; (��:http://www.ggkjcn.com)</td>
          					</tr>
							<tr>
            <td height="30" bgcolor="#F0F0F0" width="105" style="border-left: 1px solid #000000; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #000000" align="center">
			<p align="center">����Ա�</td>
            <td height="30" colspan="2" bgcolor="#F0F0F0" style="border-right: 1px solid #000000; border-top-width: 1px; border-bottom: 1px solid #000000">
			<input type="radio" name="sex" value="true" checked>����&nbsp;&nbsp;&nbsp;&nbsp; 
			<input type="radio" name="sex" value="false">Ůʿ</td>
          					</tr>
							<tr>
            <td height="37" colspan="3">
			<p align="center"><input type="submit" value="�ύ" name="B1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" value="����" name="B2"></td>
          					</tr>
						</table>
					</form>
											
</td>
									</tr>
									</table>									

									</td>
									</tr>
								</table>
								</div>
							</td>
						</tr>
					</table>
					</div>
				</td>
		</tr>
	</table>
</div>
<%set rs=nothing
set conn=nothing
%>
<!--#include file="base.asp"-->
</body>

</html>