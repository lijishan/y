<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../css.css"  type="text/css">
<title>��վ�������</title>
<base target="_self">
</head>

<body bgcolor="#CAD7F7" vlink="#000000">

<table border="0" width="398" cellspacing="0" cellpadding="4" bgcolor="#FFFFFF" style="border:1px solid #000000; " height="528">
	<tr>
		<td background="images/admin_bg_1.gif" height="24" colspan="2">
	  <p align="center"><font size="2" color="#FFFFFF"><b>�� վ �� �� �� ҳ</b></font></td>
	</tr>
	<tr>
		<td bgcolor="#F1F3F5" height="504" align="center" valign="top" width="278" style="border-left-width: 1px; border-right: 1px solid #000000; border-top-width: 1px; border-bottom-width: 1px">
					<div align="center">
						<table border="1" width="90%" cellspacing="0" cellpadding="0" style="border-collapse: collapse" bordercolor="#C0C0C0" id="table1">
							<tr>
								<td height="25" colspan="2" bgcolor="#C0C0C0">
								<p align="center"><b>��վ����ͳ��</b></td>
							</tr>
							<tr>
								<td width="48%" height="25" align="center">
								��������ְλ��</td>
								<%
								sql="select id from job where datediff('d',addtime,Now())=0 "
								rs.open sql,conn,1,1
								%>
								<td height="25" width="49%" align="center"><%=rs.recordcount%></td>
							</tr>
							<tr>
								<td width="48%" height="25" align="center">
								������ְ�˲ţ�</td>
								<%
								rs.close
								sql="select id from in_user where datediff('d',rdate,Now())=0"
								rs.open sql,conn,1,1
								%>
								<td height="25" width="49%" align="center"><%=rs.recordcount%></td>
							</tr>
							<tr>
								<td width="48%" height="25" align="center">
								����ע����ҵ��</td>
								<%
								rs.close
								sql="select id from en_user where datediff('d',rdate,Now())=0"
								rs.open sql,conn,1,1
								%>
								<td height="25" width="49%" align="center"><%=rs.recordcount%></td>
							</tr>
							<tr>
								<td width="48%" height="25" align="center">
								�����û�������</td>
								<%
								rs.close
								sql="select id from in_user"
								rs.open sql,conn,1,1
								%>
								<td height="25" width="49%" align="center"><%=rs.recordcount%></td>
							</tr>
							<tr>
								<td width="48%" height="25" align="center">
								��ҵ�û�������</td>
								<%
								rs.close
								sql="select id from en_user"
								rs.open sql,conn,1,1
								%>
								<td height="25" width="49%" align="center"><%=rs.recordcount%></td>
							</tr>
							<tr>
								<td width="48%" height="25" align="center">
								ȫվְλ������</td>
								<%
								rs.close
								sql="select id from job"
								rs.open sql,conn,1,1
								%>
								<td height="25" width="49%" align="center"><%=rs.recordcount%></td>
							</tr>
							<tr>
								<td width="48%" height="25" align="center">
								ְλ����������</td>
								<%
								rs.close
								sql="select id from indepot"
								rs.open sql,conn,1,1
								%>
								<td height="25" width="49%" align="center"><%=rs.recordcount%></td>
							</tr>
							<tr>
								<td width="48%" height="25" align="center">
								�˲ſ���������</td>
								<%
								rs.close
								sql="select id from endepot"
								rs.open sql,conn,1,1
								%>
								<td height="25" width="49%" align="center"><%=rs.recordcount%></td>
							</tr>
							<tr>
								<td width="48%" height="25" align="center">
								վ�ڶ���������</td>
								<%
								rs.close
								sql="select id from message"
								rs.open sql,conn,1,1
								%>
								<td height="25" width="49%" align="center"><%=rs.recordcount%></td>
							</tr>
							<tr>
								<td width="48%" height="25" align="center">
								վ������������</td>
								<%
								rs.close
								sql="select id from article"
								rs.open sql,conn,1,1
								%>
								<td height="25" width="49%" align="center"><%=rs.recordcount%></td>
							</tr>
							
						</table>
					</div>
		��<p align="left"><b>��ʾ��</b><p align="left">Ϊ��֤���ݵ������ԣ����鲻Ҫ�ֶ��������ݿ⡣<p align="left">
					<b>����֧�֣�</b>
		<p align="left">QQ��451079368
		<p align="left">�����ʼ���ggang6@tom.com
	  </td>
	  <td bgcolor="#F1F3F5" height="504" align="center" valign="top" width="102">&nbsp;</td>
	</tr>
</table>

</body>
</html>
<%
rs.close
set rs=nothing
set conn=nothing
%>