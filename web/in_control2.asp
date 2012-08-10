<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->

<html>
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"1" then
response.write "<script language=JavaScript>" & chr(13) & "alert('登录超时！！请重新登录填写本页（前页填写内容已保存）！');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
%>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=webname%> - 会员中心 - 基本资料设置</title>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
-->
</style>
</head>

<body>
<!--#include file="top_index.asp"-->
<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="421">
		<tr>
			<td style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf; border-top: 1px solid #ffc6bf" width="760" valign="top" bgcolor="#FEFBF4">
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
sql="select rctype,language,lanlevel,languages,lanlevels,pthua,computer,kgzjl,gznum,kothertc,kmubiao from in_user where id="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
%>
						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="272">
								<tr>
									<td height="27" colspan="2">
									<p align="left">
									&nbsp;<a href="control.asp">会员中心</a> → 基本资料设置 → <a href="in_control1.asp">第一步</a> → 
									第二步</td>
								</tr>
								<tr>
									<td width="25%" valign="top">
									<!--#include file="in_menu.asp"-->									</td>
								  <td width="75%" valign="top" align="center" style="border: 1px solid #000000">
									<form method="POST" action="upinfo2.asp">
										<table border="0" width="516" cellspacing="0" cellpadding="0" id="table5">
											<tr>
												<td height="40" colspan="3">
												<p align="center"><b>
												地二步：特长与工作经历设置</b></td>
											</tr>
											<tr>
												<td height="40" width="104" align="right">
												人才类型：</td>
												<td width="115" height="40" bgcolor="#FFFBF7"> 
<SELECT NAME=rctype STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION VALUE="0" <%if rs("rctype") ="" then Response.Write "selected"%>>请您选择</OPTION>
<OPTION VALUE=普通求职 selected <%if rs("rctype") ="普通求职" then Response.Write "selected"%>>普通求职</OPTION>
<OPTION VALUE=应届毕业生 <%if rs("rctype") ="应届毕业生" then Response.Write "selected"%>>应届毕业生</OPTION> 
<OPTION VALUE=留学生 <%if rs("rctype") ="留学生" then Response.Write "selected"%>>留学生</OPTION> 
</SELECT></td>
												<td height="40" width="297">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="104" align="right">
												外语语种：</td>
												<td width="115" height="40" bgcolor="#FFFBF7"> 
<SELECT SIZE=1 NAME=language STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION VALUE=无 <%if rs("language") ="无" then Response.Write "selected"%>>无</OPTION>
<OPTION VALUE=英语 selected <%if rs("language") ="英语" then Response.Write "selected"%>>英语</OPTION> 
<OPTION VALUE=日语 <%if rs("language") ="日语" then Response.Write "selected"%>>日语</OPTION> 
<OPTION VALUE=法语 <%if rs("language") ="法语" then Response.Write "selected"%>>法语</OPTION> 
<OPTION VALUE=德语 <%if rs("language") ="德语" then Response.Write "selected"%>>德语</OPTION> 
<OPTION VALUE=俄语 <%if rs("language") ="俄语" then Response.Write "selected"%>>俄语</OPTION> 
<OPTION VALUE=朝鲜语 <%if rs("language") ="朝鲜语" then Response.Write "selected"%>>朝鲜语</OPTION> 
<OPTION VALUE=西班牙语 <%if rs("language") ="西班牙语" then Response.Write "selected"%>>西班牙语</OPTION> 
<OPTION VALUE=阿拉伯语 <%if rs("language") ="阿拉伯语" then Response.Write "selected"%>>阿拉伯语</OPTION> 
<OPTION VALUE=其它 <%if rs("language") ="其它" then Response.Write "selected"%>>其它</OPTION> 
</SELECT></td>
												<td height="40" width="297">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="104" align="right">
												外语水平：</td>
												<td width="115" height="40" bgcolor="#FFFBF7"> 
<SELECT SIZE=1 NAME=lanlevel STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION VALUE=无    <%if rs("lanlevel") ="无" then Response.Write "selected"%>>无</OPTION>
<OPTION VALUE=四级  <%if rs("lanlevel") ="四级" then Response.Write "selected"%>>四级</OPTION> 
<OPTION VALUE=八级  <%if rs("lanlevel") ="八级" then Response.Write "selected"%>>八级</OPTION>
<OPTION VALUE=六级  <%if rs("lanlevel") ="六级" then Response.Write "selected"%>>六级</OPTION> 
<OPTION VALUE=熟练  <%if rs("lanlevel") ="熟练" then Response.Write "selected"%>>熟练</OPTION>
<OPTION VALUE=精通  <%if rs("lanlevel") ="精通" then Response.Write "selected"%>>精通</OPTION> 
<OPTION VALUE=良好  <%if rs("lanlevel") ="良好" then Response.Write "selected"%>>良好</OPTION> 
<OPTION VALUE=一般 selected  <%if rs("lanlevel") ="一般" then Response.Write "selected"%>>一般</OPTION> 
</SELECT></td>
												<td height="40" width="297">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="104" align="right">
												其他外语语种：</td>
												<td width="115" height="40" bgcolor="#FFFBF7"> 
<SELECT SIZE=1 NAME=languages STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION VALUE=无 selected <%if rs("languages") ="无" then Response.Write "selected"%>>无</OPTION>
<OPTION VALUE=英语 <%if rs("languages") ="英语" then Response.Write "selected"%>>英语</OPTION>
<OPTION VALUE=日语 <%if rs("languages") ="日语" then Response.Write "selected"%>>日语</OPTION> 
<OPTION VALUE=法语 <%if rs("languages") ="法语" then Response.Write "selected"%>>法语</OPTION> 
<OPTION VALUE=德语 <%if rs("languages") ="德语" then Response.Write "selected"%>>德语</OPTION> 
<OPTION VALUE=俄语 <%if rs("languages") ="俄语" then Response.Write "selected"%>>俄语</OPTION> 
<OPTION VALUE=朝鲜语 <%if rs("languages") ="朝鲜语" then Response.Write "selected"%>>朝鲜语</OPTION>
<OPTION VALUE=西班牙语 <%if rs("languages") ="西班牙语" then Response.Write "selected"%>>西班牙语</OPTION> 
<OPTION VALUE=阿拉伯语 <%if rs("languages") ="阿拉伯语" then Response.Write "selected"%>>阿拉伯语 </OPTION>
<OPTION VALUE=其它 <%if rs("languages") ="其它" then Response.Write "selected"%>>其它</OPTION> 
</SELECT></td>
												<td height="40" width="297">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="104" align="right">
												其他外语水平：</td>
												<td width="115" height="40" bgcolor="#FFFBF7"> 
<SELECT SIZE=1 NAME=lanlevels STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION VALUE=无 selected <%if rs("lanlevels") ="无" then Response.Write "selected"%>>无</OPTION>
<OPTION VALUE=熟练  <%if rs("lanlevels") ="熟练" then Response.Write "selected"%>>熟练</OPTION> 
<OPTION VALUE=精通  <%if rs("lanlevels") ="精通" then Response.Write "selected"%>>精通</OPTION> 
<OPTION VALUE=良好  <%if rs("lanlevels") ="良好" then Response.Write "selected"%>>良好</OPTION> 
<OPTION VALUE=一般  <%if rs("lanlevels") ="一般" then Response.Write "selected"%>>一般</OPTION> 
</SELECT></td>
												<td height="40" width="297">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="104" align="right">
												普通话程度：</td>
												<td width="115" height="40" bgcolor="#FFFBF7"> 
<SELECT SIZE=1 NAME=pthua STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION VALUE="0" <%if rs("pthua") ="" then Response.Write "selected"%>>请选择</OPTION>
<OPTION VALUE=标准 <%if rs("pthua") ="标准" then Response.Write "selected"%>>标准</OPTION>
<OPTION VALUE=优秀 <%if rs("pthua") ="优秀" then Response.Write "selected"%>>优秀</OPTION> 
<OPTION VALUE=良好 <%if rs("pthua") ="良好" then Response.Write "selected"%>>良好</OPTION>
<OPTION VALUE=一般 selected <%if rs("pthua") ="一般" then Response.Write "selected"%>>一般</OPTION> 
<OPTION VALUE=较差 <%if rs("pthua") ="较差" then Response.Write "selected"%>>较差 </OPTION> 
</SELECT></td>
												<td height="40" width="297">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="104" align="right">
												计算机能力：</td>
												<td width="115" height="40" bgcolor="#FFFBF7"> 
<SELECT SIZE=1 NAME=computer STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION VALUE=无 selected <%if rs("computer") ="无" then Response.Write "selected"%>> 无</OPTION>
<OPTION VALUE=一般 <%if rs("computer") ="一般" then Response.Write "selected"%>>一般</OPTION>
<OPTION VALUE=精通 <%if rs("computer") ="精通" then Response.Write "selected"%>>精通</OPTION>
<OPTION VALUE=优秀 <%if rs("computer") ="优秀" then Response.Write "selected"%>>优秀</OPTION>
<OPTION VALUE=良好 <%if rs("computer") ="良好" then Response.Write "selected"%>>良好</OPTION>
<OPTION VALUE=较差 <%if rs("computer") ="较差" then Response.Write "selected"%>>较差</OPTION>
</SELECT></td>
												<td height="40" width="297">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" colspan="3">
												<p align="center">个人详细工作经历<BR> 
												（如是应届毕业生,可填写实习、兼职等情况。）<font color="#FF0000">*400字内</font></td>
											</tr>
											<tr>
												<td height="26" colspan="3" bgcolor="#FFFBF7">
												<p align="center">请按照：　　　时间　　　　　 
　公司名称　 　　　　　职位　　　　 　　离职原因 填写 </td>
											</tr>
											<tr>
												<td height="54" colspan="3" bgcolor="#E7E7E7">
												<p align="center"> 
<TEXTAREA ROWS="9" NAME="kgzjl" COLS="65" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"><%=rs("kgzjl")%></TEXTAREA></td>
											</tr>
											<tr>
												<td height="40" width="104">
												<p align="right">相关工作时间：</td>
												<td width="115" height="40" bgcolor="#FFFBF7">
<INPUT 
                  MAXLENGTH=2 SIZE=4 NAME=gznum VALUE="1" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF">
											  年<font color="#FF0000">*</font></td>
												<td height="40" width="297">
												　</td>
											</tr>
											<tr>
												<td width="516" height="40" colspan="3" bgcolor="#FFFBF7">
											  <p align="center">工作能力及其他专长<BR> 
											  请详细地填写，这有助于用人单位充分了解你。<FONT COLOR="#FF0000">*200字内</FONT></td>
											</tr>
											<tr>
												<td width="516" height="40" colspan="3" bgcolor="#E7E7E7">
												<p align="center"> 
<TEXTAREA ROWS="9" NAME="kothertc" COLS="65" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"><%=rs("kothertc")%></TEXTAREA></td>
											</tr>
											<tr>
												<td width="516" height="40" colspan="3" bgcolor="#FFFBF7">
												<P ALIGN="center">您的职业目标<BR> 
												  如：寻求某某类型的公司，某某岗位等………… 
											  <FONT COLOR="#FF0000"><font color="#FF0000">*100字内</font></td>
											</tr>
											<tr>
												<td width="516" height="40" colspan="3" bgcolor="#E7E7E7">
												  <p align="center">
												    <textarea rows="9" name="kmubiao" cols="65" style="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"><%=rs("kmubiao")%></textarea>
											  </td>
											</tr>
											<tr>
												<td height="40" colspan="3">
												<p align="center">
												<input type="button" value="上一页"  onclick='history.back()' name="B1">
												&nbsp;&nbsp;&nbsp;
												<input type="submit" value="下一页" name="B2"></td>
											</tr>
										</table>
									</form>
                                    <span class="STYLE1">提示：如果点“下一页”出错，说明你登录超时，请重新登录埴写本页内容（前页已保存）。</span>　</td>
								</tr>
							</table>
						</div>
						<%'表格%>

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