<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../css.css"  type="text/css">
<title>��վ�����޸�</title>
<base target="_self">
<style>
<!--
.tableBorder
{
	border: 1px #6595D6 solid; 
	background-color: #FFFFFF;
}
TD{
	font-family:����; font-size: 12px; line-height: 15px;
}
td.txlRow
{
	background-color:#DEE5FA;
}

-->
</style>
</head>

<body bgcolor="#CAD7F7" style="text-align: center">
						<table border="0" width="605" cellspacing="0" cellpadding="0" height="86">
							<tr>
								<td height="24" background="images/admin_bg_1.gif" width="1134" style="border-left: 1px solid #000000; border-right: 1px solid #000000; border-top: 1px solid #000000; border-bottom-width: 1px" align="center">
								<font color="#FFFFFF"><b>�û����Ź���</b></font></td>
							</tr>
<form method="POST" name="form1" action="admin_sendmessages_db.asp">
		</form>
									<tr>
            <td height="23" width="603" bgcolor="#F0F0F0" style="border-left: 1px solid #000000; border-right: 1px solid #000000; border-top-width: 1px; border-bottom: 1px solid #000000">
			��</td>
          					</tr>
							<tr>
            <td height="39" width="603" bgcolor="#F0F0F0" style="border-left: 1px solid #000000; border-right: 1px solid #000000; border-top-width: 1px; border-bottom: 1px solid #000000">
			<form method="POST" action="admin_del_message.asp">
				<p>����ɾ���û�ָ�������ڶ���Ϣ��Ĭ��Ϊɾ���Ѷ���Ϣ����</p>
				<select size="1" name="delDate" style="font-family: Tahoma,Verdana,����; font-size: 12px; line-height: 15px">
				<option value="7" selected>һ������ǰ</option>
				<option value="30">һ����ǰ</option>
				<option value="60">������ǰ</option>
				<option value="180">����ǰ</option>
				<option value="all">������Ϣ</option>
				</select> &nbsp;<input type="checkbox" value="yes" name="isread" style="font-family: Tahoma,Verdana,����; font-size: 12px; line-height: 15px">����δ����Ϣ 
				<input type="submit" value="ɾ ��" name="Submit" style="font-family: Tahoma,Verdana,����; font-size: 12px; line-height: 15px"> 
			</form>								</td>
          					</tr>
						</table>
</body>

					
</html>