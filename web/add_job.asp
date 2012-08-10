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
<title><%=webname%> - 会员中心 - 发布招聘信息</title>
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
						

						<div align="center">
							<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="272">
								<tr>
									<td height="27" colspan="2">
									<p align="left">
									&nbsp;会员中心 → 发布招聘信息</td>
								</tr>
								<tr>
									<td width="25%" valign="top">
									<!--#include file="en_menu.asp"-->
									</td>
									<td width="75%" valign="top" align="center" style="border: 1px solid #000000">
									<form method="POST" action="add_job_db.asp">
										<table border="0" width="490" cellspacing="0" cellpadding="0" id="table5">
											<tr>
												<td height="40" colspan="4">
												<p align="center"><b>发布招聘信息</b>                                                
												<p align="center"></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">职位类型：</td>
												<td height="40" width="397" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" colspan="3"> 
												<SELECT SIZE="1" NAME="job" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF">
<OPTION VALUE="0">::请选译职位类别::</OPTION>
<%
call listjob("")
%>
</SELECT> <font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">具体职位：</td>
											  <td height="40" width="397" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" colspan="3"> 
	 <% if Request.Cookies("vip")="true" then %>
	 <INPUT MAXLENGTH=20 SIZE=15 NAME=jtzw STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF">
	 	 <%else%>
<INPUT MAXLENGTH=6 SIZE=15 NAME=jtzw STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF">
<%end if %>
<font color="#FF0000">* 
普通用户6字内,VIP用户20字内</font><br>[注意：职位名称只能输入汉字,不能含有空格和中英文标点号等。]
</td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">工作地区：</td>
												<td height="40" width="397" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" colspan="3"> 
<SELECT SIZE=1 NAME=hka STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION value="0">请在以下列表中选择</OPTION>
<%
call listarea("")
%>
</SELECT> <font color="#FF0000">*</font>&nbsp; 所在城市<INPUT MAXLENGTH=8 SIZE=9 NAME=city STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF">
<font color="#FF0000">*</font></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">招聘人数：</td>
												<td height="40" width="131" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<INPUT NAME=zpnum STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF" value="1"  SIZE=4 MAXLENGTH=10> 
人</td>
												<td height="40" width="82" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE" align="center"> 
年龄要求：</td>
												<td height="40" width="172" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<INPUT MAXLENGTH=30 SIZE=7 NAME=nianlings STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
岁 可写为 25-30 </td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">专业要求：</td>
												<td height="40" width="131" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<SELECT NAME=zyes STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF" size="1"> 
<OPTION VALUE=不限>不限</OPTION>
<%
call listzhy("")
%>
</SELECT></td>
												<td height="40" width="82" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE" align="center"> 
户籍要求：</td>
												<td height="40" width="172" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<B> 
<SELECT SIZE=1 NAME=hkas STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION  VALUE=不限>不限
<%
call listarea("")
%>
</SELECT></B></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">学历要求：</td>
												<td height="40" width="131" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
<SELECT SIZE=1 
                  NAME=edus STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=不限>不限 <OPTION VALUE=初中>初中 <OPTION VALUE=高中>高中 <OPTION VALUE=中技>中技 
<OPTION VALUE=中专>中专 <OPTION VALUE=大专>大专 <OPTION VALUE=本科>本科 <OPTION VALUE=硕士>硕士 
<OPTION VALUE=博士>博士 </SELECT></td>
												<td height="40" width="82" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE" align="center">
目前住地：</td>
												<td height="40" width="172" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
<B> 
<SELECT SIZE=1 NAME=hkbs STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION  VALUE=不限>不限</OPTION>
<%
call listarea("")
%>
</SELECT></B></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">外语要求：</td>
												<td height="40" width="131" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<SELECT 
                  SIZE=1 NAME=languages STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=不限 selected>不限 <OPTION VALUE=英语>英语 <OPTION VALUE=日语>日语 <OPTION VALUE=法语>法语 
<OPTION VALUE=德语>德语 <OPTION VALUE=俄语>俄语 <OPTION VALUE=朝鲜语>朝鲜语 <OPTION VALUE=西班牙语>西班牙语 
<OPTION VALUE=阿拉伯语>阿拉伯语 <OPTION VALUE=其它>其它</OPTION> 
</SELECT></td>
												<td height="40" width="82" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE" align="center"> 
普通话程度：</td>
												<td height="40" width="172" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<SELECT 
                  SIZE=1 NAME=pthuas STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=标准>标准 <OPTION VALUE=精通>精通 <OPTION VALUE=优秀>优秀 <OPTION VALUE=良好>良好 
<OPTION VALUE=一般>一般 <OPTION VALUE=较差>较差 </OPTION> </SELECT></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">性别要求：</td>
												<td height="40" width="131" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<SELECT 
                  SIZE=1 NAME=sexs STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=不限>不限 <OPTION VALUE=男>男 <OPTION VALUE=女>女 </OPTION> </SELECT></td>
												<td height="40" width="82" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE" align="center"> 
工作性质：</td>
												<td height="40" width="172" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<SELECT SIZE=1 NAME=jobtypes STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=全职 selected>全职 <OPTION VALUE=兼职>兼职 <OPTION VALUE=两者兼可>两者兼可 
</SELECT></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">婚姻状况：</td>
												<td height="40" width="131" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<SELECT SIZE=1 NAME=marrys STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=不限>不限 <OPTION VALUE=未婚>未婚 <OPTION VALUE=已婚>已婚 <OPTION VALUE=离异>离异 
</SELECT></td>
												<td height="40" width="82" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE" align="center"> 
计算机能力：</td>
												<td height="40" width="172" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
<SELECT SIZE=1 NAME=computers STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=不限>不限 <OPTION VALUE=一般> 一般 <OPTION VALUE=精通>精通 <OPTION VALUE=优秀>优秀 
<OPTION VALUE=良好>良好 <OPTION VALUE=较差>较差 </SELECT></td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">提供食宿：</td>
												<td height="40" width="131" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
												<SELECT SIZE=1 NAME=shisus STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=不提供 selected>不提供 <OPTION VALUE=提供> 提供 <OPTION VALUE=只提供吃>只提供吃 <OPTION VALUE=只提供住>只提供住 
</SELECT></td>
												<td height="40" width="82" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE" align="center"> 
												薪金水平：</td>
												<td height="40" width="172" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 
												<input type="text" name="moneys" size="9" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">(不填表示面议)</td>
											</tr>
											<tr>
												<td height="40" width="74" align="center" style="border-left: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE">有效期限：</td>
												<td height="40" width="131" style="border: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">  
<SELECT SIZE=1 NAME=youxiaos STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE=长期有效>长期有效 <OPTION VALUE=一星期>一星期 <OPTION VALUE=半个月>半个月 <OPTION VALUE=一个月>一个月 
<OPTION VALUE=三个月>三个月 <OPTION VALUE=半年 selected>半年 <OPTION VALUE=一年>一年 <OPTION VALUE=两年>两年 
<OPTION VALUE=三年>三年 <OPTION VALUE=三年以上>三年以上 
</SELECT></td>
												<td height="40" width="82" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" bgcolor="#DFF3DE"> 　</td>
												<td height="40" width="172" style="border-right: 1px solid #C0C0C0; border-top: 1px solid #C0C0C0; border-bottom: 1px solid #C0C0C0; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"> 　</td>
											</tr>
											<tr>
												<td height="40" width="490" align="center" colspan="4" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0" bgcolor="#DFF3DE">岗位职责描述及其它要求 
												<font color="#FF0000">* 普通用户100字内，VIP用户500字内 </font></td>
											</tr>
											<tr>
												<td height="40" width="490" align="center" colspan="4" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0"> 
												<TEXTAREA ROWS="8" NAME="zptext" COLS="64" STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"></TEXTAREA></td>
											</tr>
											<tr>
												<td height="40" width="490" align="center" colspan="4">
												  <p>
												    <input type="submit" value="提交" name="B1">
												  </p>
											  <p><span class="STYLE1">提示：如果点“提交”出错，说明你登录超时，请重新登录埴写本页内容。</span> </p></td>
											</tr>
									  </table>
									</form>
									</td>
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