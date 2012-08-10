<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<html>
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"1" then
response.write "<script language=JavaScript>" & chr(13) & "alert('登录超时请重新登录填写本页内容！');"&"window.location.href = 'index.asp'"&" </script>"
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
.STYLE2 {color: #0066FF}
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
sql="select name,code,bdate,sex,guoji,shenggao,tizhong,minzu,marry,hka,hkb,edu,zye,zhuanyen1,zyes,zhuanyen2,school,bydate,zzmm,zcheng,jyjl from in_user where id="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
%>

						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="951">
								<tr>
									<td height="27" colspan="2">
									<p align="left">
									&nbsp;<a href="control.asp">会员中心</a> → 基本资料设置 → 第一步</td>
								</tr>
								<tr>
									<td width="25%" valign="top">
									<!--#include file="in_menu.asp"-->
									</td>
									<td width="75%" valign="top" align="center" style="border: 1px solid #000000">
									<form method="POST" action="upinfo1.asp">
										<table border="0" width="100%" cellspacing="0" cellpadding="0" height="40" id="table5">
											<tr>
												<td height="40" colspan="3">
												<p align="center"><b>
												第一步：个人基本资料设置</b></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">
												您的真实姓名：</td>
											  <td width="35%" height="40" bgcolor="#FFFBF7"><input type="text" name="name" size="23" readonly style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("name")%>"></td>
												<td height="40" width="44%">
												  <span class="STYLE2">*此项禁止修改，如果需要，请联系管理员</span></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">
												身份证号码：</td>
												<td width="35%" height="40" bgcolor="#FFFBF7">
											  <input name="code" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("code")%>" size="23" maxlength="20"></td>
												<td height="40" width="44%"> 请放心，此项仅“<strong><font color="#993300">认证企业用户</font></strong>”可见；不填请留空 </td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">
												出生日期：</td>
												<td width="35%" height="40" bgcolor="#FFFBF7">
											  <input type="text" name="bdate" size="23" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("bdate")%>"></td>
												<td height="40" width="44%">
												<font color="#FF0000">*&nbsp; 
												（格式为1984-01-09）</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">
												性别：</td>
												<td height="40" width="35%">
												<INPUT TYPE="radio"<%if rs("sex") ="男" then Response.Write "checked"%> VALUE="男" NAME="sex"> 
男 <INPUT TYPE="radio" <%if rs("sex") ="女" then Response.Write "checked"%> NAME="sex" VALUE="女"> 
女 </td>
												<td height="40" width="44%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">
												国籍：</td>
												<td width="35%" height="40" bgcolor="#FFFBF7">
												<SELECT NAME=guoji STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION VALUE=中国 selected <%if rs("guoji") ="中国" then Response.Write "selected"%>>中国</OPTION> 
<OPTION VALUE=韩国 <%if rs("guoji") ="韩国" then Response.Write "selected"%>>韩国</OPTION>
<OPTION VALUE=日本 <%if rs("guoji") ="日本" then Response.Write "selected"%>>日本</OPTION> 
<OPTION VALUE=法国 <%if rs("guoji") ="法国" then Response.Write "selected"%>>法国</OPTION> 
<OPTION VALUE=意大利 <%if rs("guoji") ="意大利" then Response.Write "selected"%>>意大利</OPTION> 
<OPTION VALUE=朝鲜 <%if rs("guoji") ="朝鲜" then Response.Write "selected"%>>朝鲜</OPTION> 
<OPTION VALUE=美国 <%if rs("guoji") ="美国" then Response.Write "selected"%>>美国</OPTION> 
<OPTION VALUE=英国 <%if rs("guoji") ="英国" then Response.Write "selected"%>>英国</OPTION>
 <OPTION VALUE=泰国 <%if rs("guoji") ="泰国" then Response.Write "selected"%>>泰国 </OPTION>
                                                </SELECT></td>
												<td height="40" width="44%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">身高：</td>
												<td height="40" width="35%">
												<input name="shenggao" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("shenggao")%>" size="23" maxlength="4"></td>
												<td height="40" width="44%">
												<font color="#FF0000">*&nbsp; 
												（单位cm）</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">体重：</td>
												<td height="40" width="35%">
												<input name="tizhong" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("tizhong")%>" size="23" maxlength="4"></td>
												<td height="40" width="44%">
												<font color="#FF0000">*&nbsp; 
												（单位kg）</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">民族：</td>
											  <td width="35%" height="40" bgcolor="#EFEBEF"><input name="minzu" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("minzu")%>" size="23" maxlength="10"></td>
												<td height="40" width="44%">
												<font color="#FF0000">*&nbsp; 
												（如：汉）</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">婚姻状况：</td>
												<td width="35%" height="40" bgcolor="#FFFBF7"> 
<SELECT SIZE=1 NAME=marry STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION VALUE=未婚 <%if rs("marry") ="未婚" then Response.Write "selected"%>>未婚 <OPTION VALUE=已婚 <%if rs("marry") ="已婚" then Response.Write "selected"%>>已婚 
<OPTION VALUE=离异 <%if rs("marry") ="离异" then Response.Write "selected"%>>离异</OPTION> 
</SELECT></td>
												<td height="40" width="44%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">户口所在地：</td>
												<td width="35%" height="40" bgcolor="#EFEBEF">
<SELECT SIZE=1 NAME=hka STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION value="0" <%if rs("hka") ="" then Response.Write "selected"%>>请在以下列表中选择</OPTION>
<%
call listarea(rs("hka"))
%>
</SELECT></td>
												<td height="40" width="44%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">目前所在地：</td>
												<td height="40" width="35%">
<SELECT SIZE=1 NAME=hkb STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION value="0" <%if rs("hkb") ="" then Response.Write "selected"%>>请在以下列表中选择</OPTION>
<%
call listarea(rs("hkb"))
%>
</SELECT></td>
												<td height="40" width="44%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">您的最高教育程度：</td>
												<td height="40" width="35%">
<SELECT SIZE=1 NAME=edu STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1"> 
<OPTION VALUE="0" <%if rs("edu") ="" then Response.Write "selected"%>>请在以下列表中选择</OPTION>
<OPTION VALUE=小学 <%if rs("edu") ="小学" then Response.Write "selected"%>>小学</OPTION>
<OPTION VALUE=初中 <%if rs("edu") ="初中" then Response.Write "selected"%>>初中</OPTION>
<OPTION VALUE=高中 <%if rs("edu") ="高中" then Response.Write "selected"%>>高中</OPTION>
<OPTION VALUE=中技 <%if rs("edu") ="中技" then Response.Write "selected"%>>中技</OPTION> 
<OPTION VALUE=中专 <%if rs("edu") ="中专" then Response.Write "selected"%>>中专</OPTION>
<OPTION VALUE=大专 <%if rs("edu") ="大专" then Response.Write "selected"%>>大专</OPTION> 
<OPTION VALUE=本科 <%if rs("edu") ="本科" then Response.Write "selected"%>>本科</OPTION>
<OPTION VALUE=硕士 <%if rs("edu") ="硕士" then Response.Write "selected"%>>硕士</OPTION> 
<OPTION VALUE=博士 <%if rs("edu") ="博士" then Response.Write "selected"%>>博士</OPTION> 
</SELECT></td>
												<td height="40" width="44%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">所学专业类别：</td>
												<td height="40" width="35%"> 
<SELECT NAME=zye STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1" size="1"> 
<OPTION VALUE="0" <%if rs("zye") ="" then Response.Write "selected"%>>请选择您所学的专业</OPTION>
<%
call listzhy(rs("zye"))
%>
</SELECT></td>
												<td height="40" width="44%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">专业名称：</td>
												<td height="40" width="35%">
												<input name="zhuanyen1" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("zhuanyen1")%>" size="23" maxlength="20"></td>
												<td height="40" width="44%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">第二专业类别：</td>
												<td height="40" width="35%"> 
<SELECT NAME=zyes STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1" size="1"> 
<OPTION value="无">请选择您所学的专业</OPTION>
<%
call listzhy(rs("zyes"))
%>
</SELECT></td>
												<td height="40" width="44%">　</td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">
												第二专业名称：</td>
												<td height="40" width="35%">
												<input name="zhuanyen2" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("zhuanyen2")%>" size="23" maxlength="20"></td>
												<td height="40" width="44%">　</td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">毕业院校：</td>
												<td height="40" width="35%">
												<input name="school" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("school")%>" size="23" maxlength="20"></td>
												<td height="40" width="44%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">毕业日期：</td>
												<td width="35%" height="40" bgcolor="#EFEBEF">
											  <input name="bydate" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="<%=rs("bydate")%>" size="23" maxlength="20"></td>
												<td height="40" width="44%">
												<font color="#FF0000">*&nbsp; 
												（格式为1984-01-09）</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">政治面貌：</td>
												<td width="35%" height="40" bgcolor="#FFFBF7"> 
<SELECT SIZE=1 NAME=zzmm STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1"> 
<OPTION VALUE="0" <%if rs("zzmm") ="" then Response.Write "selected"%>>请在以下列表中选择</OPTION>
<OPTION VALUE=党员 <%if rs("zzmm") ="党员" then Response.Write "selected"%>>党员</OPTION> 
<OPTION VALUE=团员 <%if rs("zzmm") ="团员" then Response.Write "selected"%>>团员</OPTION>
<OPTION VALUE=群众 selected <%if rs("zzmm") ="群众" then Response.Write "selected"%>>群众</OPTION> 
<OPTION VALUE=民主党派 <%if rs("zzmm") ="民主党派" then Response.Write "selected"%>>民主党派</OPTION> 
<OPTION VALUE=其它 <%if rs("zzmm") ="其它" then Response.Write "selected"%>>其它</OPTION> 
</SELECT></td>
												<td height="40" width="44%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="21%" align="right">现有职称：</td>
												<td width="35%" height="40" bgcolor="#FFFBF7">
<SELECT SIZE=1 NAME=zcheng STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1"> 
<OPTION VALUE="0" <%if rs("zcheng") ="" then Response.Write "selected"%>>请在以下列表中选择</OPTION>
<OPTION VALUE=高级 <%if rs("zcheng") ="高级" then Response.Write "selected"%>>高级</OPTION> 
<OPTION VALUE=中级 <%if rs("zcheng") ="中级" then Response.Write "selected"%>>中级</OPTION>
<OPTION VALUE=初级 <%if rs("zcheng") ="初级" then Response.Write "selected"%>>初级</OPTION> 
<OPTION VALUE=暂无 selected <%if rs("zcheng") ="暂无" then Response.Write "selected"%>>暂无</OPTION>
<OPTION VALUE=其它 <%if rs("zcheng") ="其它" then Response.Write "selected"%>>其它</OPTION> 
</SELECT></td>
												<td height="40" width="44%">
												<font color="#FF0000">*</font></td>
											</tr>
											<tr>
											  <td width="100%" height="40" colspan="3" align="center" bgcolor="#FFFBF7">
												受教育／培训经历：<font color="#FF0000">*400字以内</font><br>
												请按照：X年X月X至X年X月 学校／培训机构名称 专业／科目名称&nbsp; 
											  获得何种证书 填写。</td>
										  </tr>
											<tr>
												<td width="100%" height="40" colspan="3" align="right" bgcolor="#EFEBEF">
												<p align="center">
											  <textarea rows="8" name="jyjl" cols="65" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"><%=rs("jyjl")%></textarea></td>
											</tr>
											<tr>
												<td width="100%" height="40" colspan="3" align="right" bgcolor="#FFFBF7">
												<p align="center">
											  <input type="submit" value="下一页" name="B1"></td>
											</tr>
										</table>
									</form>
									<p><span class="STYLE1">提示：如果点“下一页”出错，说明你登录超时，请重新登录埴写本页内容。</span>　</td>
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