<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->

<html>
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"2" then
response.write "<script language=JavaScript>" & chr(13) & "alert('您还未登陆或登录超时，请重新登录后操作！！');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
%>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=webname%> - 会员中心 - 企业资料设置</title>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
.STYLE2 {color: #0066FF}
-->
</style>
</head>

<body>
<!--#include file="top_index.asp"-->
<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="421">
		<tr>
			<td style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf;border-top: 1px solid #ffc6bf" width="760" valign="top" bgcolor="#FEFBF4">
			<div align="center">
				<table border="0" width="705" cellspacing="0" cellpadding="0" id="table2" height="379">
					<tr>
						<td height="86" width="214">
						<img border="0" src="images/control.gif" width="282" height="90"></td>
						<td height="86" width="237">　</td>
						<td height="86" width="128">
						<img border="0" src="images/controltop1.gif" width="128" height="90"></td>
						<td height="86" width="58">　</td>
					</tr>
					<tr>
					  <td width="705" colspan="4" valign="top">
						<%
sql="select email,name,trade,cxz,fund,yuangong,area,faren,fdate,jianj,address,zip,pname,pnames,phone,fax,renshi,sex,rstel,rz,web from en_user where id="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
if rs.eof or rs.bof then
response.redirect "nodata.html"
rs.close
end if
%>

						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="272">
								<tr>
									<td height="27" colspan="2">
									<p align="left">
									&nbsp;会员中心 → 企业资料设置</td>
								</tr>
								<tr>
									<td width="25%" valign="top">
									<!--#include file="en_menu.asp"-->
									</td>
								  <td width="75%" valign="top" align="center" style="border: 1px solid #000000">
									<form method="POST" action="upinfo_en.asp">
										<table border="0" width="93%" cellspacing="0" cellpadding="0" id="table5">
											<tr>
												<td height="40" colspan="3">
												<p align="center"><b>企业资料设置</b></td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">贵公司名称：</td>
											  <td height="40"><INPUT TYPE="text" NAME="name" SIZE="40" readonly MAXLENGTH=40 VALUE="<%=rs("name")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"></td>
											  <td height="40"><span class="STYLE2">*修改请联系管理员</span></td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">贵公司所属行业：</td>
												<td height="40" width="58%"> 
<SELECT SIZE=1 NAME=trade STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE="0" <%if rs("trade") ="" then Response.Write "selected"%>>请在以下列表中选择</OPTION>
<%
call listcompany(rs("trade"))
%>
</SELECT> <font color="#FF0000">*</font></td>
												<td height="40" width="17%">　</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">贵公司企业性质：</td>
												<td height="40" width="58%"> 
<SELECT SIZE=1 NAME=cxz STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE="0" <%if rs("cxz") ="" then Response.Write "selected"%>>请在以下列表中选择</OPTION>
<OPTION VALUE=行政机关 <%if rs("cxz") ="行政机关" then Response.Write "selected"%>>行政机关</OPTION> 
<OPTION VALUE=社会团体 <%if rs("cxz") ="社会团体" then Response.Write "selected"%>>社会团体</OPTION> 
<OPTION VALUE=事业单位 <%if rs("cxz") ="事业单位" then Response.Write "selected"%>>事业单位</OPTION> 
<OPTION VALUE=国有企业 <%if rs("cxz") ="国有企业" then Response.Write "selected"%>>国有企业</OPTION> 
<OPTION VALUE=三资企业 <%if rs("cxz") ="三资企业" then Response.Write "selected"%>>三资企业</OPTION>
<OPTION VALUE=股份企业 <%if rs("cxz") ="股份企业" then Response.Write "selected"%>>股份企业</OPTION>  
<OPTION VALUE=集体企业 <%if rs("cxz") ="集体企业" then Response.Write "selected"%>>集体企业</OPTION> 
<OPTION VALUE=乡镇企业 <%if rs("cxz") ="乡镇企业" then Response.Write "selected"%>>乡镇企业</OPTION> 
<OPTION VALUE=私营企业 <%if rs("cxz") ="私营企业" then Response.Write "selected"%>>私营企业</OPTION>
<OPTION VALUE=公益组织 <%if rs("cxz") ="公益组织" then Response.Write "selected"%>>公益组织</OPTION> 
<OPTION VALUE=其它性质 <%if rs("cxz") ="其它性质" then Response.Write "selected"%>>其它性质</OPTION> 
</SELECT> <font color="#FF0000">*</font></td>
												<td height="40" width="17%">　</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">贵公司注册资金：</td>
												<td height="40" width="58%"> 
<INPUT TYPE="text" NAME="fund" SIZE="6" MAXLENGTH=6 VALUE="<%=rs("fund")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
												万人民币</td>
												<td height="40" width="17%">　</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">贵公司员工人数：</td>
												<td height="40" width="58%"> 
<INPUT TYPE="text" NAME="yuangong" SIZE="10" MAXLENGTH=10 VALUE="<%=rs("yuangong")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"></td>
												<td height="40" width="17%">　</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">贵公司所在地区：</td>
												<td height="40" width="58%">
<SELECT SIZE=1 NAME=area STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION value="0" <%if rs("area") ="" then Response.Write "selected"%>>请在以下列表中选择</OPTION>
<%
call listarea(rs("area"))
%>
</SELECT> <font color="#FF0000">*</font></td>
												<td height="40" width="17%">　</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">贵公司法人代表：</td>
												<td height="40" width="58%"> 
<INPUT TYPE="text" NAME="faren" SIZE="10" MAXLENGTH=20 VALUE="<%=rs("faren")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"></td>
												<td height="40" width="17%">　</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">贵公司成立日期：</td>
												<td width="58%" height="40" bgcolor="#E7E7E7"> 
<INPUT TYPE="text" NAME="fdate" SIZE="10"  MAXLENGTH=10 VALUE="<%=rs("fdate")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
(例如：1982-11-12) <font color="#FF0000">*</font></td>
												<td height="40" width="17%">　</td>
											</tr>
											<tr>
												<td height="40" colspan="3" bgcolor="#FFFBF7">
												<p align="center">贵公司简介及业务简介 
											  <font color="#FF0000">*</font>300字以内</td>
											</tr>
											<tr>
												<td height="40" colspan="3" bgcolor="#E7E7E7">
												<p align="center"> 
											  <TEXTAREA ROWS="10" NAME="jianj" COLS="53" STYLE="border:1px solid #000000; background-color: #FFfFFF; color: #000060; padding-left:4; padding-right:4; padding-top:1; padding-bottom:1"><%=rs("jianj")%></TEXTAREA></td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">通讯地址：</td>
												<td width="58%" height="40" bgcolor="#FFFBF7"> 
<INPUT TYPE="text" NAME="address" SIZE="30" MAXLENGTH=40 VALUE="<%=rs("address")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"></td>
												<td height="40" width="17%">　</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">邮政编码：</td>
												<td width="58%" height="40" bgcolor="#FFFBF7"> 
											  <INPUT TYPE="text" NAME="zip" SIZE="13" MAXLENGTH=6 VALUE="<%=rs("zip")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"></td>
												<td height="40" width="17%">　</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">联系人：</td>
												<td width="58%" height="40" bgcolor="#E7E7E7"> <INPUT TYPE="text" NAME="pname" SIZE="20" MAXLENGTH=20 VALUE="<%=rs("pname")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF">
											  <font color="#FF0000">*</font></td>
												<td height="40" width="17%">　</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">联系人职位：</td>
												<td height="40" width="58%"> <INPUT TYPE="text" NAME="pnames" SIZE="20" MAXLENGTH=40 VALUE="<%=rs("pnames")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"></td>
												<td height="40" width="17%">　</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">联系电话：</td>
											  <td height="40" colspan="2"> 
											   <% if Request.Cookies("vip")="true" or rs("rz")=true then %>
	 <INPUT TYPE="text" NAME="phone" SIZE="15"  MAXLENGTH=40 VALUE="<%=rs("phone")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF">
	 	 <%else%>
<INPUT TYPE="text" NAME="phone" SIZE="15" readonly MAXLENGTH=40 VALUE="<%=rs("phone")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF">
<%end if %>
											  
											  

<font color="#FF0000">*普通用户禁止修改,修改提供证件[<a href="nomo.html" target="_blank">查看原因</a>]</font></td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">传真电话：</td>
											  <td width="58%" height="40" bgcolor="#FFFBF7"> <INPUT TYPE="text" NAME="fax" SIZE="20" MAXLENGTH=40 VALUE="<%=rs("fax")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"></td>
												<td height="40" width="17%">　</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">电子信箱：</td>
												<td height="40" width="58%"> <INPUT TYPE="text" NAME="email" SIZE="20" MAXLENGTH=40 VALUE="<%=rs("email")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF">
												<font color="#FF0000">*</font></td>
												<td height="40" width="17%">　</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">人事经理姓名：</td>
												<td height="40" width="58%"> <INPUT TYPE="text" NAME="renshi" SIZE="20" MAXLENGTH=40 VALUE="<%=rs("renshi")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF">&nbsp;
<INPUT TYPE=radio VALUE=先生 NAME=sex <%if rs("sex") ="先生" then Response.Write "checked"%>>先生
<INPUT TYPE=radio VALUE=小姐 NAME=sex <%if rs("sex") ="小姐" then Response.Write "checked"%>>小姐</td>
												<td height="40" width="17%">　</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">人事经理电话：</td>
												<td height="40" width="58%"> 
<INPUT TYPE="text" NAME="rstel" SIZE="20" MAXLENGTH=40 VALUE="<%=rs("rstel")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"></td>
												<td height="40" width="17%">　</td>
											</tr>
											<tr>
												<td height="40" width="25%" align="center">贵公司网址：</td>
											  <td height="40" width="58%"> 
<INPUT TYPE="text" NAME="web" SIZE="20" MAXLENGTH=50 VALUE="<%=rs("web")%>" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF">
<a href="boke/" target="_blank"><font color=#ff0000>点这免费申请公司博客</font></a> </td>
												<td height="40" width="17%">　											    </td>
											</tr>
											<tr>
												<td height="40" colspan="3">
												<p align="center">
												<input type="submit" value="完成" name="B1"></td>
											</tr>
										</table>
									</form>
                                    <p><font color=#ff0000>提示：资料不准确或不完整，求职者按条件搜索可能搜索不到您的信息！</font></p></span>　</td>
								</tr>
							</table>
						</div>
						<%'表格%></td>
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