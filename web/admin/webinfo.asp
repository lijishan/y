<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<%
sql="select * from info where id=1"
rs.open sql,conn,1,1
%>
<html>

<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../css.css"  type="text/css">
<title>������Ϣ����</title>
<style type="text/css">
<!--
.STYLE1 {font-size: 12px}
.STYLE2 {	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>

<body bgcolor="#CAD7F7">

<form method="POST" action="updata_info.asp">
		<div align="center">
		<table border="0" width="100%" cellspacing="0" cellpadding="4" bgcolor="#F1F3F5" style="border: 1px solid #000000" height="607">
			<tr>
				<td colspan="3" background="images/admin_bg_1.gif" height="25">
				<p align="center"><b><font size="2" color="#FFFFFF">��վ������Ϣ����</font></b></td>
			</tr>
			<tr>
				<td width="193" height="26" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0" align="right">
				  <span class="STYLE1">��վ���ƣ�</span></td>
				<td height="26" width="206" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">
				<input name="webname" type="text" value="<%=rs("webname")%>" size="25"></td>
				<td height="26" width="354" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">
				  <span class="STYLE1">�磺��Ƹ��</span></td>
			</tr>
			<tr>
				<td width="193" height="26" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0" align="right">
				  <span class="STYLE1">��վ��ַ��</span></td>
				<td height="26" width="206" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">
				<input name="webaddress" type="text" value="<%=rs("webaddress")%>" size="25"></td>
				<td height="26" width="354" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">
				  <span class="STYLE1">�磺http://www.xxx.cn</span></td>
			</tr>
			<tr>
				<td width="193" height="26" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0" align="right"><span class="STYLE1">
				logo��ַ��</span></td>
				<td height="26" width="206" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">
				<input name="logo" type="text" value="<%=rs("logo")%>" size="25"></td>
				<td height="26" width="354" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">
				��</td>
			</tr>
			<tr>
				<td width="193" height="26" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0" align="right">
				  <span class="STYLE1">վ�����䣺</span></td>
				<td height="26" width="206" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">
				<input name="adminemail" type="text" value="<%=rs("adminemail")%>" size="25"></td>
				<td height="26" width="354" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">
				  <span class="STYLE1">�磺XSF@163.com</span></td>
			</tr>
			<tr>
				<td width="193" height="26" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0" align="right"><span class="STYLE1">
				ͨ�ŵ�ַ��</span></td>
				<td height="26" width="206" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">
				<input name="address" type="text" value="<%=rs("address")%>" size="25"></td>
				<td height="26" width="354" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">
				��</td>
			</tr>
			<tr>
				<td width="193" height="26" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0" align="right"><span class="STYLE1">
				�������룺</span></td>
				<td height="26" width="206" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">
				<input name="post" type="text" value="<%=rs("post")%>" size="25"></td>
				<td height="26" width="354" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">
				��</td>
			</tr>
			<tr>
				<td width="193" height="26" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0" align="right"><span class="STYLE1">
				����绰��</span></td>
				<td height="26" width="206" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">
				<input name="tel" type="text" value="<%=rs("tel")%>" size="25"></td>
				<td height="26" width="354" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">
				��</td>
			</tr>
			<tr>
				<td width="193" height="26" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0" align="right"><span class="STYLE1">
				����QQ���룺</span></td>
				<td height="26" width="206" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">
				<input name="qq" type="text" value="<%=rs("qq")%>" size="25"></td>
				<td height="26" width="354" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">
				��</td>
			</tr>
			<tr>
				<td width="193" height="26" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0" align="right"><span class="STYLE1">
				��ҳ��ʾ������������</span></td>
				<td height="26" width="206" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">
				  <span class="STYLE1">
				<input type="text" name="index1" size="16" value="<%=rs("index1")%>"> 
				��</span></td>
				<td height="26" width="354" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">Ĭ��8</td>
			</tr>
			<tr>
				<td width="193" height="26" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0" align="right"><span class="STYLE1">
				��ҳ��ʾ�¼���ҵ����</span></td>
				<td height="26" width="206" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">
				  <span class="STYLE1">
				<input type="text" name="index2" size="16" value="<%=rs("index2")%>"> 
				��</span></td>
			    <td height="26" width="354" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">Ĭ��5</td>
			</tr>
			<tr>
				<td width="193" height="26" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0" align="right"><span class="STYLE1">
				��ҳ��ʾ�Ƽ�ְλ����</span></td>
				<td height="26" width="206" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">
				  <span class="STYLE1">
				<input type="text" name="index3" size="16" value="<%=rs("index3")%>"> 
				��</span></td>
			    <td height="26" width="354" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">Ĭ��10</td>
			</tr>
			<tr>
				<td width="193" height="7" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0" align="right"><span class="STYLE1">
				��ҳ��ʾ�����˲�����</span></td>
				<td width="206" height="0" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">
				  <span class="STYLE1">
				<input type="text" name="index4" size="16" value="<%=rs("index4")%>"> 
				��</span></td>
			    <td width="354" height="0" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">Ĭ��10</td>
			</tr>
			<tr>
			  <td height="4" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0" align="right"><span class="STYLE1">��ҳ��ʾ��ְ��������</span></td>
		      <td width="206" height="0" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0"><span class="STYLE1">
		        <input name="index5" type="text" id="index5" value="<%=rs("index5")%>" size="16">
			  ��</span></td>
		      <td width="354" height="0" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">Ĭ��22</td>
		  </tr>
			<tr>
			  <td height="4" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0" align="right"><span class="STYLE1">��ҳ��ʾί����Ƹ����</span></td>
		      <td width="206" height="0" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0"><span class="STYLE1">
		        <input name="index6" type="text" id="index6" value="<%=rs("index6")%>" size="16">
			  ��</span></td>
		      <td width="354" height="0" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0">Ĭ��5</td>
		  </tr>
			<tr>
			  <td height="15" align="right" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0"><div align="right">��ͨ����ְλ��������</div></td>
			  <td height="0" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0"><span class="STYLE1">
                <input name="in_max" type="text" id="in_max" value="<%=rs("in_max")%>" size="16">
			    ��</span></td>
			  <td height="22" width="354" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0"><span class="STYLE2">��ʽ��ſ�����</span></td>
		  </tr>
			<tr>
			  <td height="22" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0" align="right"><div align="right">VIP����ְλ��������</div></td>
		      <td width="206" height="22" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0"><span class="STYLE1">
		        <input name="in_vip_max" type="text" id="in_vip_max" value="<%=rs("in_vip_max")%>" size="16">
		      ��</span></td>
		      <td height="22" width="354" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0"><span class="STYLE2">��ʽ��ſ�����</span></td>
		  </tr>
			<tr>
			  <td height="22" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0" align="right"><div align="right">��ͨ��ҵְλ��������</div></td>
		      <td width="206" height="22" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0"><span class="STYLE1">
		        <input name="en_max1" type="text" id="en_max1" value="<%=rs("en_max1")%>" size="16">
		      ��</span></td>
		      <td height="22" width="354" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0"><span class="STYLE2">��ʽ��ſ�����</span></td>
		  </tr>
			<tr>
			  <td height="22" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0" align="right"><div align="right">VIP��ҵְλ��������</div></td>
		      <td width="206" height="22" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0"><span class="STYLE1">
		        <input name="en_vip_max1" type="text" id="en_vip_max1" value="<%=rs("en_vip_max1")%>" size="16">
		      ��</span></td>
		      <td height="22" width="354" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0"><span class="STYLE2">��ʽ��ſ�����</span></td>
		  </tr>
			<tr>
			  <td height="11" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0" align="right"><div align="right">��ͨ��ҵ�˲ſ�������</div></td>
		      <td width="206" height="11" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0"><span class="STYLE1">
		        <input name="en_max2" type="text" id="en_max2" value="<%=rs("en_max2")%>" size="16">
		      ��</span></td>
		      <td width="354" height="11" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0"><span class="STYLE2">��ʽ��ſ�����</span></td>
		  </tr>
			<tr>
			  <td height="26" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0" align="right"><div align="right">VIP��ҵ�˲ſ�������</div></td>
		      <td width="206" height="26" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0"><span class="STYLE1">
		        <input name="en_vip_max2" type="text" id="en_vip_max2" value="<%=rs("en_vip_max2")%>" size="16">
		      ��</span></td>
		      <td width="354" height="26" style="border-left-width: 1px; border-right-width: 1px; border-top: 1px dotted #C0C0C0; border-bottom: 1px dotted #C0C0C0"><span class="STYLE2">��ʽ��ſ�����</span></td>
		  </tr>
		  </table>
	</div>
	<p align="center"><input type="submit" value="��������" name="B1"></p>
</form>
<%
rs.close
set rs=nothing
set conn=nothing
%>

</body>

</html>