<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<html>
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"1" then
response.write "<script language=JavaScript>" & chr(13) & "alert('����δ��½��');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
%>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=webname%> - ��Ա���� - ְλ��������</title>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 18pt;
	font-weight: bold;
}
.STYLE2 {
	font-size: 12pt;
	color: #FF0000;
}
.STYLE4 {color: #006699}
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
						

						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="272">
								<tr>
									<td height="27" colspan="2">
									<p align="left">
									&nbsp;��Ա���� �� ְλ��������</td>
								</tr>
								<tr>
									<td width="25%" valign="top">
									<!--#include file="in_menu.asp"-->
									</td>
									<td width="75%" valign="top" align="center" style="border: 1px solid #000000">
									<br>
									  <p ><font color =#ff0000 size=4><strong>�� �� ְ λ �� �� �� ��</strong></font></p>
									  <table width="96%" height="210" border="0" align="center" cellpadding="0" cellspacing="0" id="table11">
							<form method="POST" action="search_vip.asp" TARGET="_blank">
								<tr>
										<td height="30">
										<p align="left"> 
<SELECT SIZE=1 NAME=gzdd STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION value="0">��ѡ����ʡ��</OPTION>
<%
call listarea("")
%>
</SELECT>
								  ӦƸ��ϣ���������ڵأ���ѡΪ���޵ص�</td>
							  </tr>
								<tr>
								  <td height="30"><input name="cs" type="text" style="padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" onFocus="this.value=''" value="��������йؼ���" size="16" maxlength="15">
������У��磺�ɶ��������Ұ������ɶ�����������Ϣ����ѡΪ���ޡ�</td>
							  </tr>
									<tr>
										<td height="30">
										<p align="left"> 
												<SELECT SIZE="1" NAME="job" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF">
<OPTION VALUE="0">::��ѡ��ְλ���::</OPTION>
<%
call listjob("")
%>
</SELECT>
									   ӦƸ��ϣ������ְλ����ѡΪ�������</td>
									</tr>
									<tr>
									  <td height="30">  
<input onFocus="this.value=''" type="text" name="what" size="20" style="padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="������ְλ�ؼ���"> 
ӦƸ��ϣ��ְλ�Ĺؼ��֣���ѡΪ����ְλ</td>
									</tr>
									<tr>
									  <td height="30">  
<SELECT ID=create_date NAME=date size="1"> 
<option selected value="����">��ѡ�񷢲�ʱ��</option>
<OPTION VALUE="����">����</OPTION> <OPTION VALUE="1">һ����</OPTION> 
<OPTION VALUE="2">������</OPTION> <OPTION VALUE="3">������</OPTION> <OPTION VALUE="7">һ������</OPTION> 
<OPTION VALUE="14">��������</OPTION> <OPTION VALUE="30">һ������</OPTION> <OPTION VALUE="91">��������</OPTION> 
<OPTION VALUE="183">��������</OPTION> <OPTION VALUE="365">һ����</OPTION> </SELECT> 
��Ƹ����Ϣ����ʱ�䣬��ѡΪ����ʱ��</td>
									</tr>
									<tr>
									  <td height="30">
										<input name="class" type="radio" value="1" checked>
										ְλ ���ڽ��е���������ְλ������&nbsp;&nbsp;&nbsp;</td>
									</tr>
									<tr>
										<td height="30">
										<p align="center">
										<input border="0" src="images/s2.gif" name="I1" width="53" height="20" type="image">&nbsp;&nbsp;&nbsp;&nbsp;										</td>
									</tr>
								</form>
								</table>
									<p align="left"><span class="STYLE4">��������˵����<br>
									    <br>
									    &nbsp;&nbsp;&nbsp;&nbsp;1������������Ŀ��Ϊ��ѡ��Ŀ��<br>
&nbsp;&nbsp;&nbsp;&nbsp;2��������ʹ����ģ�����Ҽ�������������С��͡�ְλ�ؼ��֡�����֧��ģ�����ҡ��磺�ڡ�������С������롰���������ҵ����ơ��������������������Ͼ��������������Ȱ����С������ֵ�������Ϣ���ڡ�ְλ�ؼ��֡��У����룺����ơ������ơ���ơ�����ע���ơ�����Ӧ�û�ơ��Ȱ����С���ơ����ݾ��ܲ��ҵ���<br>
&nbsp;&nbsp;&nbsp;&nbsp;3��������Ϊ��Աר�й��ܣ�����ǿ��ǰ̨����ͨ������ </span></p>
									<p align="left">&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2">��ʾ���������������ְλ����ɼ������ְλ�Ⲣ����Ƹ����վ�ڶ��Ż����ṩ����ϵ��ʽ��ϵ����ȷ����һ������ϵ��                                    
							        </span>
								    <p> </td>
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
<%
set conn=nothing
%>
<!--#include file="base.asp"-->
</body>

</html>