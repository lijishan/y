<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<html>
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"1" then
response.write "<script language=JavaScript>" & chr(13) & "alert('您还未登陆！');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
%>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=webname%> - 会员中心 - 职位超级搜索</title>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 18pt;
	font-weight: bold;
}
.STYLE2 {
	font-size: 12pt;
	color: #FF0000;
}
.STYLE4 {color: #006699}
-->
</style>
</head>

<body>
<!--#include file="top_index.asp"-->
<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="421">
		<tr>
			<td style="border-left: 1px solid #0086DF; border-right: 1px solid #0086DF" width="760" valign="top" bgcolor="#FEFBF4">
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
						

						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="272">
								<tr>
									<td height="27" colspan="2">
									<p align="left">
									&nbsp;会员中心 → 职位超级搜索</td>
								</tr>
								<tr>
									<td width="25%" valign="top">
									<!--#include file="in_menu.asp"-->
									</td>
									<td width="75%" valign="top" align="center" style="border: 1px solid #000000">
									<br>
									  <p ><font color =#ff0000 size=4><strong>个 人 职 位 超 级 搜 索</strong></font></p>
									  <table width="96%" height="210" border="0" align="center" cellpadding="0" cellspacing="0" id="table11">
							<form method="POST" action="search_vip.asp" TARGET="_blank">
								<tr>
										<td height="30">
										<p align="left"> 
<SELECT SIZE=1 NAME=gzdd STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION value="0">请选择工作省份</OPTION>
<%
call listarea("")
%>
</SELECT>
								  应聘者希望工作所在地，不选为不限地点</td>
							  </tr>
								<tr>
								  <td height="30"><input name="cs" type="text" style="padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" onFocus="this.value=''" value="请输入城市关键字" size="16" maxlength="15">
具体城市，如：成都，将查找包含“成都”的所有信息，不选为不限。</td>
							  </tr>
									<tr>
										<td height="30">
										<p align="left"> 
												<SELECT SIZE="1" NAME="job" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF">
<OPTION VALUE="0">::请选择职位类别::</OPTION>
<%
call listjob("")
%>
</SELECT>
									   应聘者希望工作职位，不选为不限类别</td>
									</tr>
									<tr>
									  <td height="30">  
<input onFocus="this.value=''" type="text" name="what" size="20" style="padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="请输入职位关键字"> 
应聘者希望职位的关键字，不选为不限职位</td>
									</tr>
									<tr>
									  <td height="30">  
<SELECT ID=create_date NAME=date size="1"> 
<option selected value="不限">请选择发布时间</option>
<OPTION VALUE="不限">不限</OPTION> <OPTION VALUE="1">一天内</OPTION> 
<OPTION VALUE="2">二天内</OPTION> <OPTION VALUE="3">三天内</OPTION> <OPTION VALUE="7">一星期内</OPTION> 
<OPTION VALUE="14">二星期内</OPTION> <OPTION VALUE="30">一个月内</OPTION> <OPTION VALUE="91">三个月内</OPTION> 
<OPTION VALUE="183">六个月内</OPTION> <OPTION VALUE="365">一年内</OPTION> </SELECT> 
招聘方信息发布时间，不选为不限时间</td>
									</tr>
									<tr>
									  <td height="30">
										<input name="class" type="radio" value="1" checked>
										职位 现在进行的是你理想职位的搜索&nbsp;&nbsp;&nbsp;</td>
									</tr>
									<tr>
										<td height="30">
										<p align="center">
										<input border="0" src="images/s2.gif" name="I1" width="53" height="20" type="image">&nbsp;&nbsp;&nbsp;&nbsp;										</td>
									</tr>
								</form>
								</table>
									<p align="left"><span class="STYLE4">搜索方法说明：<br>
									    <br>
									    &nbsp;&nbsp;&nbsp;&nbsp;1、所有搜索项目均为可选项目。<br>
&nbsp;&nbsp;&nbsp;&nbsp;2、本搜索使用了模糊查找技术，【具体城市】和【职位关键字】均是支持模糊查找。如：在【具体城市】中输入“京”，可找到类似“京”、“北京”、“南京”，“东京”等包含有“京”字的所有信息；在【职位关键字】中，输入：“会计”，类似“会计”、“注册会计”、“应用会计”等包含有“会计”内容均能查找到。<br>
&nbsp;&nbsp;&nbsp;&nbsp;3、本功能为会员专有功能，功能强于前台的普通搜索。 </span></p>
									<p align="left">&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2">提示：搜索到你理想的职位，你可加入你的职位库并给招聘方发站内短信或按其提供的联系方式联系，以确定进一步的联系！                                    
							        </span>
								    <p> </td>
								</tr>
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
set conn=nothing
%>
<!--#include file="base.asp"-->
</body>

</html>