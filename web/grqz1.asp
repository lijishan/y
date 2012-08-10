<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->

<html>

<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title>推荐职位 -<%=webname%></title>
<style type="text/css">
<!--
.STYLE12 {	color: #FFFFFF;
	font-size: 12pt;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<!--#include file="top_index.asp"-->
<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="106">
		<tr>
			<td style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf" width="760" valign="top">
			<div align="center">
				<table border="0" width="98%" cellspacing="0" cellpadding="0" id="table2" height="164">
					<tr>
						<td style="border: 1px solid #C0C0C0" valign="top">
						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="147">
								<tr>
									<td height="40" width="740" background="images/bg8.gif">
									<table border="0" width="740" cellspacing="0" cellpadding="0" id="table4" height="31">
										<tr>
											<td width="127" height="40">　</td>
											<form method="POST" action="grqz1.asp">
											<td width="587">
											<p align="center"><SELECT SIZE=1 NAME=gzdd STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION value="0" selected>请选择工作省份</OPTION>
<option value="0">不限</option>
<%
call listarea("")
%>
</SELECT> 
												<SELECT SIZE="1" NAME="job" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF">
<OPTION VALUE="0" selected>::请选择职位类别::</OPTION>
<option value="0">不限</option>
<%
call listjob("")
%>
</SELECT>  
<SELECT ID=create_date NAME=date size="1"> 
<option selected value="不限">请选择发布时间</option>
<OPTION VALUE="不限">不限</OPTION> <OPTION VALUE="1">一天内</OPTION> 
<OPTION VALUE="2">二天内</OPTION> <OPTION VALUE="3">三天内</OPTION> <OPTION VALUE="7">一星期内</OPTION> 
<OPTION VALUE="14">二星期内</OPTION> <OPTION VALUE="30">一个月内</OPTION> <OPTION VALUE="91">三个月内</OPTION> 
<OPTION VALUE="183">六个月内</OPTION> <OPTION VALUE="365">一年内</OPTION> </SELECT>
			<% if Request.Cookies("id")<>"" or Request.Cookies("ac")<>"" or Request.Cookies("user")<>"" then %>								<input type="submit" value="筛选" name="B2">
											<%else
response.write "<font color=#FF0000>登录后才可搜索</font>"
end if %></td>
</form>
										</tr>
										<tr>
										  <td colspan="2"><!--#include file="ad_top_other.asp"--></td>
										</tr>
									</table>
									</td>
								</tr>
								<tr>
									<td valign="top" align="center">
									<%
sql="select id,enid,jtzw,hka,city,addtime,sexs,edus from job where enid in (select id from en_user where vip=true and lock=false and name<>'')"
if request("gzdd")<>"0" and request("gzdd")<>"" then sql=sql+" and hka='"&request("gzdd")&"'"
if request("job")<>"0" and request("job")<>"" then sql=sql+" and job='"&request("job")&"'"
if request("date")<>"不限" and request("date")<>"" then sql=sql+" and datediff('d',addtime,Now())<"&request("date")
sql=sql+" order by addtime desc"
rs.open sql,conn,1,1
if rs.recordcount=0 then
rs.close
response.write "暂时没有相关职位！" 
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
rs.absolutepage=session("page")
%>
									<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table5" height="92">
									<tr>
										<td width="166" height="30" align="center" background="imagen/web_01_05.gif" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; ">
										<b>招 聘 职 位</b></td>
										<td width="189" height="30" align="center" background="imagen/web_01_05.gif" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; ">
										<b>招 聘 公 司</b></td>
										<td width="96" height="30" align="center" background="imagen/web_01_05.gif" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; ">
										<b>城&nbsp; 市</b></td>
										<td width="60" height="30" align="center" background="imagen/web_01_05.gif" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; ">
															<b>性别要求</b></td>
										<td width="60" height="30" align="center" background="imagen/web_01_05.gif" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; ">
															<b>学历要求</b></td>
										<td width="100" height="30" align="center" background="imagen/web_01_05.gif" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; ">
										<b>日&nbsp; 期</b></td>
									</tr>
<%
set rs2=server.createobject("adodb.recordset")
for ii=1 to 20
sql2="select id,name from en_user where id="&rs("enid")
rs2.open sql2,conn,1,1
%>	
								<tr>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="166" height="30" align="center" background="images/bg9.gif"><a target =_blank  href="job.asp?id=<%=rs("id")%>">
															<%=rs("jtzw")%></a></td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="189" height="30" align="center" background="images/bg9.gif"><a  target =_blank href="company.asp?id=<%=rs2("id")%>">
															<%=rs2("name")%></a></td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="96" height="30" align="center" background="images/bg9.gif">
										<p align="center"><%=rs("hka")%>·<%=rs("city")%></td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="60" height="30" align="center" background="images/bg9.gif">
															[<%=rs("sexs")%>]</td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="60" height="30" align="center" background="images/bg9.gif">
															[<%=rs("edus")%>]</td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="100" height="30" align="center" background="images/bg9.gif">
										<%
								if (date()-rs("addtime"))<=10 then 
								a=instr(rs("addtime"),chr(32))-1
								response.write "<font color =#FF0000>" 
								response.write Mid(rs("addtime"),1,a) 
								response.write " New</font>"
								end if 
								if (date()-rs("addtime"))>10 then 
								 a=instr(rs("addtime"),chr(32))-1
								response.write Mid(rs("addtime"),1,a)								 
								end if 
								%>
								</td>
									</tr>
<%
rs.movenext
if rs.eof then exit for
rs2.close
next
%>
								<tr>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="734" height="42" align="center" colspan="6"><table border="0" width="504" cellspacing="0" cellpadding="0" height="31">
						<tr>
							<td width="120">
							<p align="center">当前页码:<font color="#FF0000"><%=session("page")%></font>/<%=rs.pagecount%></td>
							<td width="225">
							<p align="center">&lt; <a href="grqz1.asp?action=f&gzdd=<%=request("gzdd")%>&job=<%=request("job")%>&date=<%=request("date")%>">首页</a>&nbsp;&nbsp;
							<a href="grqz1.asp?action=p&gzdd=<%=request("gzdd")%>&job=<%=request("job")%>&date=<%=request("date")%>">上一页</a>&nbsp;&nbsp;
							<a href="grqz1.asp?action=n&gzdd=<%=request("gzdd")%>&job=<%=request("job")%>&date=<%=request("date")%>">下一页</a>&nbsp;&nbsp;
							<a href="grqz1.asp?action=l&gzdd=<%=request("gzdd")%>&job=<%=request("job")%>&date=<%=request("date")%>">尾页</a> &gt;</td>
							<form method="POST" action="grqz1.asp?gzdd=<%=request("gzdd")%>&job=<%=request("job")%>&date=<%=request("date")%>">
							<td width="159">							
		<p>跳转到 
		<input type="text" name="page1" size="4" style="border: 1px solid #000000"> 页&nbsp; 
	<input type="submit" value="提交" name="B1"></p>
</td>
</form>
						</tr>
					</table>
</td>
									</tr>
									</table>
									<%
										rs.close
										end if
										%>

									</td>
							  </tr>
						  </table>
						  </div>
					  </td>
				  </tr>
			  </table>
					<p>企业用户升级成VIP用户，其招聘职位便能出现在『推荐职位』中，咨询QQ：451079368 咨询电话：13981528686。</p>
			</div>
		  </td>
		</tr>
	</table>
</div>
<%
set rs2=nothing
set rs=nothing
set conn=nothing
%>

<!--#include file="base.asp"-->
</body>

</html>