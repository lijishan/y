<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title>企业黄页、企业名片 -<%=webname%></title>
</head>

<body>
<!--#include file="top_index.asp"-->
<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="206">
		<tr>
			<td style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf; border-top: 1px solid #ffc6bf" width="760" valign="top">
			<div align="center">
				<table border="0" width="99%" cellspacing="0" cellpadding="0" id="table2" height="205">
					<tr>
						<td width="206" valign="top" align="center">
						<table border="0" width="85%" cellspacing="0" cellpadding="0" id="table3">
							<tr>
								<td height="36" style="border-top:1px solid #D4D4D4; border-left:1px solid #D4D4D4; border-right:1px solid #D4D4D4; border-bottom-width: 1px">
								<img border="0" src="images/industry1.gif" width="192" height="41"></td>
							</tr>
							<tr>
								<td height="36" style="border-bottom:1px solid #D4D4D4; border-left:1px solid #D4D4D4; border-right:1px solid #D4D4D4; " valign="top">
										<div align="center">
											<table border="0" width="96%" cellspacing="0" cellpadding="0" id="table16" height="25">
<%
sql="select companyclass from companylist order by id desc"
rs.open sql,conn,1,1
if rs.eof or rs.bof then
           response.write "暂无行业分类！"
           rs.close
           else
set rs1=server.createobject("adodb.recordset")
sql="select count(*) as num from  en_user where name<>'' and lock=false"
rs1.open sql,conn,1,1
%>
<tr>
													<td width="14" height="18">
													<p align="center">
													<img border="0" src="images/link1.gif" width="6" height="11"></td>
													<td height="20">
													<a href="industry.asp?lb=所有类别">
													<font color=#FF0000>所有类别</font></a>(<%=rs1("num")%>)</td>
												</tr>

<%
rs1.close           
for i1=1 to  rs.recordcount
sql="select count(*) as num from en_user where name<>'' and lock=false and trade='"&rs("companyclass")&"'"
rs1.open sql,conn,1,1
      
%>
												<tr>
													<td width="14" height="18">
													<p align="center">
													<img border="0" src="images/link1.gif" width="6" height="11"></td>
													<td height="20">
													<a href="industry.asp?lb=<%=rs("companyclass")%>">
													<%=rs("companyclass")%></a>(<%=rs1("num")%>)</td>
												</tr>
<%
rs1.close
rs.movenext
if rs.eof then exit for
next
rs.close
set rs1=nothing
end if
%>			
											
											</table>
										</div>
										</td>
							</tr>
							</table><p><script type='text/javascript'>
var sogou_param = new Array();
sogou_param["pid"]  = 'ggang6';
sogou_param["ct"]  = 'context'
sogou_param["fmt"]  = 'v_160_504'
sogou_param["iw"]   = '160';
sogou_param["ih"]   = '504';
sogou_param["charset"]   = 'gb2312';
sogou_param["c_bo"] = 'FFFFFF';
sogou_param["c_bg"] = 'FFFFFF';
sogou_param["c_li"] = '0055E5';
sogou_param["c_te"] = '000000';
sogou_param["c_bt"] = '000000';
sogou_param["c_hl"] = 'FF0900';
sogou_param["sv"] = '0';
sogou_param["sl"] = '1';
sogou_param["hl"] = '0';
</script>
<script language='JavaScript' type='text/javascript' src='http://images.sohu.com/cs/jsfile/js/ct.js'></script>
</p>
						</td>
						<td valign="top">
						<div align="center">
							<table border="0" width="99%" cellspacing="0" cellpadding="0" id="table14" height="219">
								<tr>
									<td height="33" style="border:1px solid #C0C0C0; " width="540">
									
									
									<table border="0" width="537" id="table17" cellspacing="0" cellpadding="0">
<form method="POST" action="login.asp">
<tr>
											<td width="61">用户名：</td>
											<td width="82">
											
											<p>
											<input name="name" size="9"></td>
											<td width="39">密码：</td>
											<td width="70">
											<input type="password" name="pwd" size="5" style="float: left"></td>
											<td width="40">验证：</td>
											<td width="47">
											<input name="code" size="4" style="float: left; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
											<td width="48"><%call getcode()%></td>
											<td width="52">
											<input type="submit" value="登陆" name="B1"></td>
											<td width="98">
											<p align="center">
											<font color="#FF3300"><b>
											<a href="register.asp">
											<font color="#FF3300">企业免费登陆</font></a></b></font></td>
										</tr>
											<input type="hidden" name="user" value="2">
										</form>
									</table>
									</td>
								</tr>
								<tr>
									<td valign="top" align="center" height="5">
</td>
								</tr>
								<tr>
								<td><%if s_ad_i=true then response.write ad_i%></td>
								</tr>
								<tr>
									<td height="41" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; border-bottom-width: 1px" width="540" background="images/bg19.gif">
									<table border="0" width="537" cellspacing="0" cellpadding="0" id="table15" height="30">
											
											<tr>
											<td valign="bottom" width="110">
											</td>
											<td width="427">
											<b><font size="5"><%
											if request("lb")="" then
											response.write "所有类别"
											else
											response.write request("lb")
											end if
											%></font></b></td>
										</tr>
									</table>
									</td>
								</tr>
								<tr>
									<td style="border-bottom:1px solid #C0C0C0; border-left:1px solid #C0C0C0; border-right:1px solid #C0C0C0; border-top-width: 1px" valign="top" align="center" height="140">
<%
if request("lb")="所有类别" or request("lb")="" then
sql="select id,name,address,phone,area,email from en_user where name<>'' and lock=false order by id desc"
else
sql="select id,name,address,phone,area,email from en_user where trade='"&request("lb")&"' and name<>'' and lock=false order by vip asc,id asc"
end if
rs.open sql,conn,1,1
if rs.eof and rs.bof then
response.write "本行业暂无企业登记。"
else
rs.pagesize=22
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
rs.absolutepage=session("page")
response.write "<table border='0' width='100%' cellspacing='10' cellpadding='5' id='table17' height='126'>"
response.write "<tr>"
for i=1 to rs.pagesize
if ((i mod 2)=0 and rs.eof) then exit for
response.write "<td height='106' bgcolor='#FFFFCC' width='300' valign='top' align='left'>"
response.write "<table border='0' width='100%' cellspacing='0' cellpadding='0' id='table18' height='96'>"
response.write "<tr>"
response.write "<td width='100%' height='23' colspan='2'><b><font size='3'><a target=_blank href='company.asp?id="&rs("id")&"'><font color='#ff0000'>"&rs("name")&"</font></a></font></b></td>"
response.write "</tr>"
response.write "<tr>"
response.write "<td width='17%' valign='top'>地址：</td>"
if rs("address")=""or isnull(rs("address"))then 
response.write "<td width='83%' valign='top'>"&rs("area")&"</td>"
else
response.write "<td width='83%' valign='top'>"&rs("address")&"</td>"
end if 
response.write "</tr>"
response.write "</tr>"
response.write "<td width='17%'>电话：</td>"
response.write "<td width='83%'>"&rs("phone")&"</td>"
response.write "<tr>"
response.write "<tr>"
response.write "<td width='17%'>电邮：</td>"
response.write "<td width='83%'>"&rs("email")&"</td>"
response.write "</tr>"
response.write "</table>"
response.write "</td>"
if ((i mod 2)=0 and not(rs.eof)) then response.write "</tr><tr>"
rs.movenext
if rs.eof then exit for
next
if (i mod 2)<>0 and session("page")=rs.pagecount then
for ii=1 to (2-(i mod 2))
response.write "<td height='106' bgcolor='#FFFFCC' width='300' align='center'><a href='register.asp'>企业免费登陆</a></td>"
next
end if
response.write "</tr>"
response.write "</table>" 
end if
%>
<table border="0" width="504" cellspacing="0" cellpadding="0" height="31">
						<tr>
							<td width="120">
							<p align="center">当前页码:<font color="#FF0000"><%=session("page")%></font>/<%=rs.pagecount%></td>
							<td width="225">
							<p align="center">&lt; <a href="industry.asp?lb=<%=request("lb")%>&action=f">首页</a>&nbsp;&nbsp;
							<a href="industry.asp?lb=<%=request("lb")%>&action=p">上一页</a>&nbsp;&nbsp;
							<a href="industry.asp?lb=<%=request("lb")%>&action=n">下一页</a>&nbsp;&nbsp;
							<a href="industry.asp?lb=<%=request("lb")%>&action=l">尾页</a> &gt;</td>
							<form method="POST" action="industry.asp?lb=<%=request("lb")%>">
							<td width="159">							
		<p>跳转到 
		<input type="text" name="page1" size="4" style="border: 1px solid #000000"> 页&nbsp; 
	<input type="submit" value="提交" name="B1"></p>
</td>
</form>
						</tr>
					</table>
	
									</td>								</tr>
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
rs.close
set rs=nothing
set conn=nothing
%>
<!--#include file="base.asp"-->
</body>

</html>