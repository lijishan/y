<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<html>
<%
sql="select * from service where id=1"
rs.open sql,conn,1,1
%>

<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=webname%> - �û�ע��</title>
<style type="text/css">
<!--
.STYLE1 {
	color: #FF0000;
	font-weight: bold;
}
.STYLE2 {
	font-size: 14pt;
	color: #006633;
}
.STYLE4 {color: #FF0000}
.STYLE5 {color: #000000}
-->
</style>
<script language="JavaScript">
<!--
function Juge(theForm)
{
  if(theForm.agree.checked==false)
 {
  alert("��ֻ��ͬ�����ǵķ�������,���ܽ�����һ���Ļ�Աע�ᣡ���ͬ������빴ѡ���Ķ�ȷ�ϡ���");
  theForm.agree.focus();
  return(false);
  }
 }
-->
</script>
</head>

<body>
<!--#include file="top_index.asp"-->
<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="518">
		<tr>
			<td style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf; border-top: 1px solid #ffc6bf" width="760" valign="top" bgcolor="#FEFBF4">
			<div align="center">
				<table border="0" width="705" cellspacing="0" cellpadding="0" id="table2" height="543">
					<tr>
						<td height="86">
						  <div align="center"><img border="0" src="images/regtop.gif">��</div>��</td>
					</tr>
					<tr>
						<td width="705">
						<p align="center">��<span class="STYLE2">��<strong><font color=#ff0000>Job528(�ܲ�528)��Ƹ��</font></strong>���û�����Э����</span></td>
					</tr>
					<tr>
						<td width="705" height="150">
						<p align="center">
						<textarea rows="20" name="S1" cols="95"><%=rs("service")%></textarea></td>
					</tr>
					
					<tr>
					  <td height="12"><div align="center"><a href="lsgw.html" target="_blank"><br>
					  </a></div></td>
				  </tr>
					<tr>
						<td width="705" height="73">
						<p align="center">
						  
						  <form name="regsiter" action="register_sy.asp" method="post" onSubmit="return Juge(this)">
 <p align="center"> <INPUT type=checkbox value=Yes name=agree><FONT 
                  size=2></FONT><span class="STYLE4"><B>���������Ķ�����ͬ�����������û�����Э��</B></span><br><br>
					        <div align="center">
  <INPUT name=Submit type=submit id="Submit" style="FONT-SIZE: 14px; FONT-FAMILY: ����; HEIGHT: 30px"  value="ͬ �� ������ע�ᣩ ">
  &nbsp; &nbsp; 
					          <INPUT style="FONT-SIZE: 14px; FONT-FAMILY: ����; HEIGHT: 30px" type=button value="��ͬ�� ���˳��� " name=Reset onClick="window.location='javascript:history.back()';">
				                              </div>
					        <p align="center" class="STYLE5">��ֻ��ͬ����������빴ѡ���Ķ�ȷ�ϡ��������ܼ���ע�ᡣ                            </form>
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
<!--#include file="base.asp"-->
</body>

</html>