<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<html>
<script language="javascript">
function openScript(url, width, height){
	var Win = window.open(url,"openScript",'width=' + width + ',height=' + height + ',resizable=1,scrollbars=yes,menubar=no,status=yes' );
}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../css.css"  type="text/css">
<title>网站信息项目管理</title>
<base target="_self">
</head>

<body bgcolor="#CAD7F7" vlink="#000000">

	<table bgcolor="#FFFFFF" style="border:1px solid #000000; ">
	<tr>
	<td colspan="3" background="images/admin_bg_1.gif" height="24" width="749">
		<p align="center"><font size="2" color="#FFFFFF"><b>文章类别管理</b></font></p></td>
	</tr>
	<tr>
	<td align='center'>
	<table style="border:1px solid #000000; width:300px;" border="1">
	<tr>
	<td colspan="3"></td>
	</tr>
        <form method="POST" action="update_category.asp?op=add">
            <tr>
                <td>ID</td>
                <td colspan=2><input type="text" name="cid" size="4"></td>
            </tr>
            <tr>
                <td>名称</td>
                <td colspan=2><input type="text" name="cname" size="14"></td>
            </tr>
            <tr>
                <td colspan="3" align="right"><input type="submit" value="添加" name="B1"></td>
            </tr>
        </form>
<%
	sql="select * from category order by cid asc"
	rs.open sql,conn,1,1
	for i=1 to rs.recordCount
%>
	<tr>
        <td>[<%=rs("cid")%>]</td>
        <td><%=rs("cname")%></td>
        <td><a href="JavaScript:openScript('update_category.asp?id=<%=rs("id")%>&op=mod',300,90)">修改</a></td>
	</tr>
<%
        rs.movenext
        if rs.eof then exit for
    Next
    set rs=nothing
    set conn=nothing
%>
    </table>
	</td>
	</tr>
</table>
</body>
</html>
<%
%>