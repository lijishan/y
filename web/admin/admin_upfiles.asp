<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="../unhtml.asp"-->
<!--#include file="../ubb.asp"-->

<%
session("what")=request("what")
session("about")=request("about")
%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../css.css"  type="text/css">
<title>��վ��Ѷ����</title>
<base target="_self">
</head>

<body bgcolor="#CAD7F7" vlink="#000000">

<table border="0" width="100%" cellspacing="0" cellpadding="4" bgcolor="#FFFFFF" style="border:1px solid #000000; " height="238">
	<tr>
		<td background="images/admin_bg_1.gif" height="25">
		<p align="center"><font size="2" color="#FFFFFF"><b>�ϴ��ļ�����</b></font></td>
	</tr>
	<tr>
		<td bgcolor="#FFFFFF" height="26" align="center">
<%
if session("what")="" and session("about")="" then
%>					
<form method="POST" action="admin_upfiles.asp">
	<p align="center"><b>�ϴ����ļ�</b>&nbsp;&nbsp;&nbsp; ����[<input type="radio" value="1" checked name="what">ͼƬ 
	<input type="radio" name="what" value="0">����]&nbsp;&nbsp;&nbsp; �ļ�˵��<input type="text" name="about" size="27" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="submit" value="��һ��" name="B3">&nbsp;&nbsp;&nbsp; <input type="reset" value="����" name="B4"></p>
</form>
<%
else
%>
<script language=javascript>
  function test()
  {
      if (document.form1.strFile1.value==""){
	      alert("��ѡ���ļ���")
		  document.form1.strFile1.focus();
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
<form name="form1" method="POST" enctype="multipart/form-data" action="upload.asp" onSubmit="return test()">
��ѡ���ļ�&nbsp;
<input type="file" name="strFile1" size="20" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> &nbsp;&nbsp; <input type="submit" value="�ύ" name="B1">
</form>
<%
end if
%>					
</td>
	</tr>
	<tr>
		<td bgcolor="#F1F3F5" height="100%" align="center">
					<%
sql="select * from files order by id desc"
rs.open sql,conn,1,1
if rs.recordcount=0 then
           response.write "�����ļ���"
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
							�����ļ�<font color="#FF0000"><%=rs.recordcount%></font>��</td>
							<td width="112">
							<p align="center">��ǰҳ��:<font color="#FF0000"><%=session("page")%></font>/<%=rs.pagecount%></td>
							<td width="248">
							<p align="center">&lt; <a href="admin_upfiles.asp?action=f">
							��ҳ</a>&nbsp;&nbsp;
							<a href="admin_upfiles.asp?action=p">��һҳ</a>&nbsp;&nbsp;
							<a href="admin_upfiles.asp?action=n">��һҳ</a>&nbsp;&nbsp;
							<a href="admin_upfiles.asp?action=l">βҳ</a> &gt;</td>
							<td width="186">
							<form method="POST" action="admin_upfiles.asp">
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
		<td height="100%" valign="top">
		
		<table border="0" width="709" cellspacing="0" cellpadding="0" height="24">
			<tr>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="32" bgcolor="#E5E5E5" height="25" align="center">
				<p align="center"><b>���</b></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="266" height="25" align="center">
				<p align="center"><b>��Ե�ǰҳ��·��</b></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="158" bgcolor="#E5E5E5" height="25" align="center">
				<p align="center"><b>˵��</b></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="155" bgcolor="#FFFFFF" height="25" align="center">
				<p align="center"><b>�ϴ�ʱ��</b></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="50" align="center" height="25" colspan="2" bgcolor="#E5E5E5">
				<b>����</b></td>
			</tr>
<%
rs.absolutepage=session("page")
for ii=1 to rs.pagesize
%>	
			
			<tr>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="32" bgcolor="#E5E5E5" height="25">
				<p align="center"><%=rs("id")%></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="266" height="25">
				��<a target="_blank" href="<%=rs("address")%>"><%=rs("address")%></a></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="158" bgcolor="#E5E5E5" height="25">
				<p align="center"><%=rs("about")%></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="155" bgcolor="#FFFFFF" height="25">
				<p align="center"><%=rs("addtime")%></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="25" align="center" height="25" bgcolor="#E5E5E5">
				<a target="_blank" href="<%=rs("address")%>">�鿴</a></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="25" align="center" height="25" bgcolor="#E5E5E5">
								<a onClick="{if(confirm('���棺�˲�����ɾ���ļ�(ID=<%=rs("id")%>)��������')){return true;}return false;}" href="del_file.asp?file=<%=rs("address")%>"><span style="text-decoration: none"><font color="#000000">ɾ��</font></span></a></td>
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
		<td height="100%" align="center">
					<table border="0" width="650" cellspacing="0" cellpadding="0" height="25">
						<tr>
							<td width="104">
							�����ļ�<font color="#FF0000"><%=rs.recordcount%></font>��</td>
							<td width="112">
							<p align="center">��ǰҳ��:<font color="#FF0000"><%=session("page")%></font>/<%=rs.pagecount%></td>
							<td width="248">
							<p align="center">&lt; <a href="admin_upfiles.asp?action=f">
							��ҳ</a>&nbsp;&nbsp;
							<a href="admin_upfiles.asp?action=p">��һҳ</a>&nbsp;&nbsp;
							<a href="admin_upfiles.asp?action=n">��һҳ</a>&nbsp;&nbsp;
							<a href="admin_upfiles.asp?action=l">βҳ</a> &gt;</td>
							<td width="186">
							<form method="POST" action="admin_upfiles.asp">
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