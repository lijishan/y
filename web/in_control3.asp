<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->

<html>
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"1" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��¼��ʱ���������µ�¼��д��ҳ��ǰ��ҳ��д�����ѱ��棩��');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
%>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=webname%> - ��Ա���� - ������������</title>
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
			<td style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf; border-top: 1px solid #ffc6bf" width="760" valign="top" bgcolor="#FEFBF4">
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
						<%
sql="select email,jobtype,job,job1,job2,job3,job4,job5,gzdd,gzcs,gzcs1,yuex,grzz,address,posts,phone,shouji,oicq,web from in_user where id="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
%>
						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="272">
								<tr>
									<td height="27" colspan="2">
									<p align="left">
									&nbsp;<a href="control.asp">��Ա����</a> �� ������������ 
									�� <a href="in_control1.asp">��һ��</a> ��
									<a href="in_control2.asp">�ڶ���</a> �� ������</td>
								</tr>
								<tr>
									<td width="25%" valign="top">
									<!--#include file="in_menu.asp"-->
									</td>
								  <td width="75%" valign="top" align="center" style="border: 1px solid #000000">
									<form method="POST" action="upinfo3.asp">
										<table border="0" width="95%" cellspacing="0" cellpadding="0" id="table5">
											<tr>
												<td height="40" colspan="3">
												<p align="center"><b>
												�������裺������������ϵ��ʽ����</b></td>
											</tr>
											<tr>
												<td height="40" width="25%">
												<p align="right">��ְ���ͣ�</td>
												<td width="64%" height="40" bgcolor="#FFFBF7"> 
<INPUT NAME=jobtype TYPE=radio VALUE=ȫְ checked <%if rs("jobtype") ="ȫְ" then Response.Write "checked"%>>
ȫְ
<INPUT TYPE=radio VALUE=��ְ NAME=jobtype <%if rs("jobtype") ="��ְ" then Response.Write "checked"%>>��ְ
<INPUT TYPE=radio VALUE=���߼�� NAME=jobtype <%if rs("jobtype") ="���߼��" then Response.Write "checked"%>>���߼��&nbsp; 
<font color="#FF0000">*</font></td>
												<td height="40" width="11%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="right">
												<p align="right">ӦƸְλ���ͣ�</td>
												<td width="64%" height="40" bgcolor="#E7E7E7">
<SELECT SIZE="1" NAME="job" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF">
<OPTION VALUE="0" selected <%if rs("job") ="" then Response.Write "selected"%>>::��ѡ��ְλ���::</OPTION>
<%
call listjob(rs("job"))
%>
</SELECT><font color="#FF0000">*</font></td>
												<td height="40" width="11%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="right">
												<p align="right">ӦƸ����ְλһ��</td>
											  <td width="64%" height="40" bgcolor="#E7E7E7"> 
<input name="job1" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("job1")%>" size="25" maxlength="15">
<font color="#FF0000">*</font></td>
												<td height="40" width="11%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="right">
												<p align="right">ӦƸ����ְλ����</td>
												<td height="40" width="64%">
												<input name="job2" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("job2")%>" size="25" maxlength="15"></td>
												<td height="40" width="11%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="right">ӦƸ����ְλ����</td>
												<td height="40" width="64%">
												<input name="job3" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("job3")%>" size="25" maxlength="15"></td>
												<td height="40" width="11%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="right">ӦƸ����ְλ�ģ�</td>
												<td height="40" width="64%">
												<input type="text" name="job4" size="25" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("job4")%>"></td>
												<td height="40" width="11%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="right">ӦƸ����ְλ�壺</td>
												<td height="40" width="64%">
												<input type="text" name="job5" size="25" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("job5")%>"></td>
												<td height="40" width="11%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%">
												<p align="right">ϣ������ʡ�ݣ�</td>
												<td width="64%" height="40" bgcolor="#E7E7E7"> 
<FONT COLOR="#FF0000"> <B> 
<SELECT NAME=gzdd>
<OPTION value="0" <%if rs("gzdd") ="" then Response.Write "selected"%>>���������б���ѡ��</OPTION>
<%
call listarea(rs("gzdd"))
%>
</SELECT></B>*</FONT></td>
												<td height="40" width="11%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%">
												<p align="right">��ϣ���������У�</td>
											  <td width="64%" height="40" bgcolor="#E7E7E7"> 
<INPUT MAXLENGTH=10 SIZE=25 NAME=gzcs VALUE="<%=rs("gzcs")%>" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF">
<font color="#FF0000">*</font></td>
												<td height="40" width="11%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%">
												<p align="right">����ϣ���������У�</td>
											  <td height="40" width="64%"> 
												<INPUT 
                  MAXLENGTH=15 SIZE=25 NAME=gzcs1 VALUE="<%=rs("gzcs1")%>" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF">
&nbsp; 
												(�磺XXʡXX��)</td>
												<td height="40" width="11%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%">
												<p align="right">��нҪ��</td>
												<td height="40" width="64%"> 
												<INPUT MAXLENGTH=6                
                  SIZE=7 NAME=yuex VALUE="<%=rs("yuex")%>" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
RMB -�����ʾ����!</td>
												<td height="40" width="11%">��</td>
											</tr>
											<tr>
												<td width="100%" height="40" colspan="3" bgcolor="#FFFBF7">
												<p align="center">��ϸ�����Դ�(�����ܽ�)<BR>
												   ����ҵ����ֵ��˽������������и�����ᣬ�������Ӹ��ԡ�����̬�ȼ�δ�����Ĺ滮�ȷ���<BR> 
����������<font color="#FF0000">*300����</font></td>
											</tr>
											<tr>
												<td width="100%" height="40" colspan="3" bgcolor="#E7E7E7">
												<p align="center"> 
<TEXTAREA ROWS="11" NAME="grzz" COLS="65" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"><%=rs("grzz")%></TEXTAREA></td>
											</tr>
											<tr>
												<td height="40" width="100%" colspan="3">
												<p align="center"><b>�� ϸ �� ϵ �� Ϣ</b></td>
											</tr>
											<tr>
												<td height="40" width="25%" align="right">
												<p align="right">ͨѶ��ַ��</td>
												<td width="64%" height="40" bgcolor="#FFFBF7"> 
<INPUT MAXLENGTH=50 
                  SIZE=44 NAME=address VALUE="<%=rs("address")%>" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"></td>
												<td height="40" width="11%">&nbsp;</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="right">�������룺</td>
												<td width="64%" height="40" bgcolor="#FFFBF7"> 
<INPUT MAXLENGTH=6                     
                  SIZE=25 NAME=posts VALUE="<%=rs("posts")%>" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"></td>
												<td height="40" width="11%">&nbsp;</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="right">��ϵ�绰��</td>
												<td height="40" width="64%"> 
<INPUT MAXLENGTH=20                     
                  SIZE=25 NAME=phone VALUE="<%=rs("phone")%>" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"></td>
												<td height="40" width="11%"> 
<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="25%" align="right">�ֻ���</td>
												<td height="40" width="64%"> 
<INPUT MAXLENGTH=20                     
                  SIZE=25 NAME=shouji VALUE="<%=rs("shouji")%>" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"></td>
												<td height="40" width="11%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="right">QQ���룺</td>
												<td height="40" width="64%"> 
												<INPUT MAXLENGTH=15 
                  SIZE=25 NAME=oicq VALUE="<%=rs("oicq")%>" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"></td>
												<td height="40" width="11%">��</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="right">�������䣺</td>
												<td height="40" width="64%"> 
<INPUT MAXLENGTH=30                      
                  SIZE=25 NAME=email VALUE="<%=rs("email")%>" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"></td>
												<td height="40" width="11%"> 
<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="25%" align="right">������ҳ��</td>
												<td height="40" width="64%"> 
<INPUT MAXLENGTH=30                      
                  SIZE=25 NAME=web VALUE="<%=rs("web")%>" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"></td>
												<td height="40" width="11%">��</td>
											</tr>
											<tr>
												<td height="40" width="100%" colspan="3">
												<p align="center">
												<input type="button" value="��һҳ"  onclick='history.back()' name="B1">
												&nbsp;&nbsp;&nbsp;
												<input type="submit" value="��  ��" name="B2"></td>
											</tr>
									  </table>
									</form>
                                    <span class="STYLE1">��ʾ������㡰��ɡ�����˵�����¼��ʱ�������µ�¼��д��ҳ���ݣ�ǰ2ҳ�ѱ��棩��</span>��</td>
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
<%
rs.close
set rs=nothing
set conn=nothing
%>

<!--#include file="base.asp"-->
</body>

</html>