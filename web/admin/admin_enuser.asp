<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="../unhtml.asp"-->
<!--#include file="../ubb.asp"-->
<script language="javascript">
function openScript(url, width, height){
	var Win = window.open(url,"openScript",'width=' + width + ',height=' + height + ',resizable=1,scrollbars=yes,menubar=no,status=yes' );
}
</script>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../css.css"  type="text/css">
<title>��ҵ�û�����</title>
<base target="_self">
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
-->
</style>
</head>

<body bgcolor="#CAD7F7" vlink="#000000">

<table border="0" width="100%" cellspacing="0" cellpadding="4" bgcolor="#FFFFFF" style="border:1px solid #000000; " height="229">
	<tr>
		<td background="images/admin_bg_1.gif" height="25" width="709" colspan="5">
		<p align="center"><font size="2" color="#FFFFFF"><b>��ҵ�û�����</b></font></td>
	</tr>
	<tr>
		<td bgcolor="#F1F3F5" height="26" align="center" width="430">
					<form method="POST" action="admin_search_enuser.asp">
						<p align="left">��ҵ�û�������<select size="1" name="how">
						<option value="1" selected>���ʺŹؼ���</option>
						<option value="2">����ҵ��Źؼ���</option>
						</select>
						<input type="text" name="what" size="15" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
						<input type="submit" value="����" name="B3"></p>
					</form>
		</td>
		<td bgcolor="#F1F3F5" height="26" align="center" width="67" valign="top">
					<b>������ʾ��</b></td>
		<td bgcolor="#F1F3F5" height="26" align="center" width="60" valign="top">
					<a href="admin_enuser.asp?class=1">�߼��û�</a></td>
		<td bgcolor="#F1F3F5" height="26" align="center" width="60" valign="top">
					<a href="admin_enuser.asp?class=2">�������û�</a></td>
		<td bgcolor="#F1F3F5" height="26" align="center" width="60" valign="top">
					<a href="admin_enuser.asp">ȫ����ʾ</a></td>
	</tr>
	<tr>
		<td bgcolor="#F1F3F5" height="100%" align="center" width="709" colspan="5">
					<%
if request("class")="1" then
sql="select id,ac,name,rdate,lock,vip from en_user where vip=true order by id desc"
else
if request("class")="2" then
sql="select id,ac,name,rdate,lock,vip from en_user where lock=true order by id desc"
else
sql="select id,ac,name,rdate,lock,vip from en_user order by id desc"
end if
end if
rs.open sql,conn,1,1
if rs.recordcount=0 then
           response.write "��ʱû��ע���û���"
           else
rs.pagesize=20
if request("action")="n" then
session("page")=session("page")+1
else
if request("action")="p" then
session("page")=session("page")-1
else
if request("action")="f" then
session("page")=1
else
if request("action")="l" then
session("page")=rs.pagecount
else
if isnumeric(request("page1"))=true then
session("page")=clng(request("page1"))
else
session("page")=1
end if
end if
end if
end if
end if
if session("page")>rs.pagecount then session("page")=rs.pagecount
if session("page")<1 then session("page")=1
%>

					<table border="0" width="650" cellspacing="0" cellpadding="0" height="25">
						<tr>
							<td width="104">
							����û�<font color="#FF0000"><%=rs.recordcount%></font>��</td>
							<td width="112">
							<p align="center">��ǰҳ��:<font color="#FF0000"><%=session("page")%></font>/<%=rs.pagecount%></td>
							<td width="248">
							<p align="center">&lt; <a href="admin_enuser.asp?action=f&class=<%=request("class")%>">
							��ҳ</a>&nbsp;&nbsp;
							<a href="admin_enuser.asp?action=p&class=<%=request("class")%>">��һҳ</a>&nbsp;&nbsp;
							<a href="admin_enuser.asp?action=n&class=<%=request("class")%>">��һҳ</a>&nbsp;&nbsp;
							<a href="admin_enuser.asp?action=l&class=<%=request("class")%>">βҳ</a> &gt;</td>
							<td width="186">
							<form method="POST" action="admin_enuser.asp?class=<%=request("class")%>">
		<p align="center">��ת�� 
		<input type="text" name="page1" size="5" style="border: 1px solid #000000"> 
		ҳ&nbsp; 
	<input type="submit" value="�ύ" name="B1"></p>
</form>
</td>
						</tr>
					</table>
	  </td>
	</tr>
	<tr>
		<td height="100%" valign="top" width="709" colspan="5">
		
		  <p>&nbsp;</p>
		  <table border="0" width="821" cellspacing="0" cellpadding="0" height="24">
			<tr>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="46" height="25" bgcolor="#E5E5E5">
			  <p align="center"><b>���</b></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="52" height="25" bgcolor="#FFFFFF">
			  <p align="center"><b>�ʺ�</b></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="87" height="25" bgcolor="#E5E5E5">
			  <p align="center"><b>��˾��</b></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="42" height="25">
			  <p align="center"><b>VIP</b></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="39" height="25" bgcolor="#E5E5E5">
			  <p align="center"><b>����</b></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="83" height="25" bgcolor="#FFFFFF">
			  <p align="center"><b>ע��ʱ��</b></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" align="center" height="25" colspan="6" bgcolor="#E5E5E5">
				<b>��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ��</b></td>
			</tr>
<%
rs.absolutepage=session("page")
for ii=1 to rs.pagesize
%>	
			<tr>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="46" bgcolor="#E5E5E5" height="25" align="center">
			  <p align="center"><%=rs("id")%></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="52" height="25" align="center">
				<%=rs("ac")%></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="87" height="25" bgcolor="#E5E5E5" align="center">
				<%
				if rs("name")<>"" then
				%>
			  <a target="_blank" href="../company.asp?id=<%=rs("id")%>"><%=rs("name")%></a></td>
				<%
				else
				response.write "��"
                end if
				%>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="42" height="25" align="center">
				<%if rs("vip")=true then response.write"<font color='#FF0000'>��</font>"%>
    	 <%if rs("vip")=false then response.write"��"%></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="39" height="25" bgcolor="#E5E5E5" align="center">
			  <p align="center"><%
				if rs("lock")=true then
				response.write "<font color='#FF0000'>����</font>"
				else
				response.write "��"
				end if
				%></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="83" height="25" align="center">
			  <p align="center"><%=rs("rdate")%></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="35" align="center" height="25" bgcolor="#E5E5E5">
				<a target="_blank" href="../company.asp?id=<%=rs("id")%>">
				�鿴</a></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="78" align="center" bgcolor="#E5E5E5"><a href="../en_control1a.asp?id=<%=rs("id")%>&ac=<%=rs("ac")%>&ttype=2">ͼƬ����</a></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="58" align="center" height="25" bgcolor="#E5E5E5">
				<a href="JavaScript:openScript('admin_sendmessage.asp?tid=<%=rs("id")%>&ttype=2',450,300)">������Ϣ</a></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="64" align="center" height="25" bgcolor="#E5E5E5">
				<a href="JavaScript:openScript('admin_user_ac.asp?id=<%=rs("id")%>&ttype=2',450,370)">�ʻ�����</a></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="75" align="center" height="25" bgcolor="#E5E5E5">
				<a target="_blank" href="gocontrol.asp?id=<%=rs("id")%>&ac=<%=rs("ac")%>&ttype=2&vip=<%=rs("vip")%>">��ϸ�޸�</a></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="58" align="center" height="25" bgcolor="#E5E5E5">
				<a onClick="{if(confirm('���棺�˲�����ɾ���û���<%=rs("ac")%>���ڱ�վ���������ݣ�������')){return true;}return false;}" href="admin_del_user.asp?id=<%=rs("id")%>&ttype=2"><span style="text-decoration: none">ɾ��</a></td>
			</tr>
		<%
rs.movenext
if rs.eof then exit for
next
%>
		</table>

	  </td>
	</tr>
	<tr>
		<td height="100%" align="center" width="709" colspan="5">
					<table border="0" width="650" cellspacing="0" cellpadding="0" height="25">
						<tr>
							<td width="104">
							�����û�<font color="#FF0000"><%=rs.recordcount%></font>��</td>
							<td width="112">
							<p align="center">��ǰҳ��:<font color="#FF0000"><%=session("page")%></font>/<%=rs.pagecount%></td>
							<td width="248">
							<p align="center">&lt; <a href="admin_enuser.asp?action=f&class=<%=request("class")%>">
							��ҳ</a>&nbsp;&nbsp;
							<a href="admin_enuser.asp?action=p&class=<%=request("class")%>">��һҳ</a>&nbsp;&nbsp;
							<a href="admin_enuser.asp?action=n&class=<%=request("class")%>">��һҳ</a>&nbsp;&nbsp;
							<a href="admin_enuser.asp?action=l&class=<%=request("class")%>">βҳ</a> &gt;</td>
							<td width="186">
							<form method="POST" action="admin_enuser.asp?class=<%=request("class")%>">
		<p align="center">��ת�� 
		<input type="text" name="page1" size="5" style="border: 1px solid #000000"> 
		ҳ&nbsp; 
	<input type="submit" value="�ύ" name="B2"></p>
</form>
</td>
						</tr>
					</table>

		</td>
	</tr>
</table>
<%

rs.close
			set rs=nothing
			set conn=nothing
end if
%>

</body>

</html>