<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="../unhtml.asp"-->
<!--#include file="../ubb.asp"-->
<%
if request("what")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('请填写关键字！');" & "history.back()" & "</script>"
response.end
end if
%>
<script language="javascript">
function openScript(url, width, height){
	var Win = window.open(url,"openScript",'width=' + width + ',height=' + height + ',resizable=1,scrollbars=yes,menubar=no,status=yes' );
}
</script>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../css.css"  type="text/css">
<title>企业用户搜索</title>
<base target="_self">
</head>

<body bgcolor="#CAD7F7" vlink="#000000">

<table border="0" width="719" cellspacing="0" cellpadding="4" bgcolor="#FFFFFF" style="border:1px solid #000000; " height="192">
	<tr>
		<td background="images/admin_bg_1.gif" height="25" width="709" colspan="5">
		<p align="center"><font size="2" color="#FFFFFF"><b>企业用户搜索</b></font></td>
	</tr>
	<tr>
		<td bgcolor="#F1F3F5" height="100%" align="center" width="430">
					<form method="POST" action="admin_search_enuser.asp">
						<p align="left">企业用户搜索：<select size="1" name="how">
						<option value="1" selected>按帐号关键子</option>
						<option value="2">按企业编号关键子</option>
						</select>
						<input type="text" name="what" size="15" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
						<input type="submit" value="搜索" name="B3"></p>
					</form>
		</td>
		<td bgcolor="#F1F3F5" height="100%" align="center" width="67" valign="top">
					<b>分类显示：</b></td>
		<td bgcolor="#F1F3F5" height="100%" align="center" width="60" valign="top">
					<a href="admin_search_enuser.asp?class=1&how=<%=request("how")%>&what=<%=request("what")%>">高级用户</a></td>
		<td bgcolor="#F1F3F5" height="100%" align="center" width="60" valign="top">
					<a href="admin_search_enuser.asp?class=2&how=<%=request("how")%>&what=<%=request("what")%>">被锁定用户</a></td>
		<td bgcolor="#F1F3F5" height="100%" align="center" width="60" valign="top">
					<a href="admin_search_enuser.asp?how=<%=request("how")%>&what=<%=request("what")%>">全部显示</a></td>
	</tr>
	<tr>
		<td bgcolor="#F1F3F5" height="100%" align="center" width="709" colspan="5">
					<p align="left">
					<%
if request("how")="1" then
if request("class")="1" then
sql="select id,ac,name,rdate,vip,lock from en_user where ac like '%"&request("what")&"%' and vip=true order by id desc"
else
if request("class")="2" then
sql="select id,ac,name,rdate,vip,lock from en_user where ac like '%"&request("what")&"%' and lock=true order by id desc"
else
sql="select id,ac,name,rdate,vip,lock from en_user where ac like '%"&request("what")&"%' order by id desc"
end if
end if
else
if request("class")="1" then
sql="select id,ac,name,rdate,vip,lock from en_user where name like '%"&request("what")&"%' and vip=true order by id desc"
else
if request("class")="2" then
sql="select id,ac,name,rdate,vip,lock from en_user where name like '%"&request("what")&"%' and lock=true order by id desc"
else
sql="select id,ac,name,rdate,vip,lock from en_user where id like '%"&request("what")&"%' order by id desc"
end if
end if
end if
rs.open sql,conn,1,1
if rs.recordcount=0 then
           response.write "没有找到相关用户！"
           else
%>

					搜索<font color="#FF0000"><%
					if request("how")="1" then response.write "帐号"
					if request("how")<>"1"  then response.write "企业编号"
					%></font>关键字"<font color="#FF0000"><%=request("what")%></font>",共找到<font color="#FF0000"><%=rs.recordcount%></font>条记录。</td>
	</tr>
	<tr>
		<td height="100%" valign="top" width="709" colspan="5">
		
<table border="0" width="709" cellspacing="0" cellpadding="0" height="24">
			<tr>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="41" height="25" bgcolor="#E5E5E5">
				<p align="center"><b>编号</b></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="54" height="25" bgcolor="#FFFFFF">
				<p align="center"><b>帐号</b></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="131" height="25" bgcolor="#E5E5E5">
				<p align="center"><b>公司名</b></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="24" height="25">
				<p align="center"><b>VIP</b></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="26" height="25" bgcolor="#E5E5E5">
				<p align="center"><b>锁定</b></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="121" height="25" bgcolor="#FFFFFF">
				<p align="center"><b>注册时间</b></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="214" align="center" height="25" colspan="5" bgcolor="#E5E5E5">
				<b>操&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 作</b></td>
			</tr>
<%
for ii=1 to rs.recordcount
%>	
			<tr>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="41" bgcolor="#E5E5E5" height="25" align="center">
				<p align="center"><%=rs("id")%></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="54" height="25" align="center">
				<%=rs("ac")%></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="131" height="25" bgcolor="#E5E5E5" align="center">
				<%
				if rs("name")<>"" then
				%>
				<a target="_blank" href="../company.asp?id=<%=rs("id")%>"><%=rs("name")%></a></td>
				<%
				else
				response.write "×"
                end if
				%>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="24" height="25" align="center">
				<%
				if rs("vip")=true then
				response.write "<font color='#FF0000'>VIP</font>"
				else
				response.write "&nbsp;"
				end if
				%></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="26" height="25" bgcolor="#E5E5E5" align="center">
				<p align="center"><%
				if rs("lock")=true then
				response.write "<font color='#FF0000'>锁定</font>"
				else
				response.write "&nbsp; "
				end if
				%></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="121" height="25" align="center">
				<p align="center"><%=rs("rdate")%></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="30" align="center" height="25" bgcolor="#E5E5E5">
				<a target="_blank" href="../company.asp?id=<%=rs("id")%>">
				查看</a></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="54" align="center" height="25" bgcolor="#E5E5E5">
				<a href="JavaScript:openScript('admin_sendmessage.asp?tid=<%=rs("id")%>&ttype=2',450,300)">发送信息</a></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="59" align="center" height="25" bgcolor="#E5E5E5">
				<a href="JavaScript:openScript('admin_user_ac.asp?id=<%=rs("id")%>&ttype=2',450,335)">帐户设置</a></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="52" align="center" height="25" bgcolor="#E5E5E5">
				<a target="_blank" href="gocontrol.asp?id=<%=rs("id")%>&ac=<%=rs("ac")%>&ttype=2">详细修改</a></td>
				<td style="border-bottom: 1px dotted #000000; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" width="30" align="center" height="25" bgcolor="#E5E5E5">
				<a onClick="{if(confirm('警告：此操作将删除用户〈<%=rs("ac")%>〉在本站的所有数据！继续吗？')){return true;}return false;}" href="admin_del_user.asp?id=<%=rs("id")%>&ttype=2"><span style="text-decoration: none">删除</a></td>
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
		<td height="20" align="center" width="709" colspan="5">
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