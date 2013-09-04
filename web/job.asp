<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="unhtml.asp"-->
<%
if not(isnumeric(request("id"))) then
response.redirect "nodata.html"
rs.close
end if
set rs2=server.createobject("adodb.recordset")
sql2="select * from job where id="&clng(request("id"))
rs2.open sql2,conn,1,1
if rs2.eof or rs2.bof then
           response.redirect "nodata.html"
           rs2.close
end if 
sql="select id,email,lock,name,address,zip,pname,pnames,phone,fax,renshi,sex,rstel,web,pic,picdate,picdays,morepic,rz,vip from en_user where id="&clng(rs2("enid"))
rs.open sql,conn,1,1
if rs("lock")=true then
rs2.close
set rs2=nothing
rs.close
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('此用户已被管理员锁定！');"&"window.location.href = 'index.asp'"&" </script>"
response.end
end if
sql1="update job set clicks="&rs2("clicks")+1&" where id="&rs2("id")
set rs1=server.createobject("adodb.recordset")
rs1.open sql1,conn,1,1
set rs1=nothing
set rs1=server.createobject("adodb.recordset")
%>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>职位信息-<%=webname%></title>
<style type="text/css">
<!--
.STYLE1 {color: #FF0099}
-->
</style>
<style type="text/css">
<!--
.STYLE2 {color: #FF3366}
-->
</style>
<!--#include file="top_index.asp"-->
<style type="text/css">
<!--
.STYLE1 {color: #999999}
.STYLE2 {color: #FF0000}
.STYLE3 {color: #006666}
-->
</style>
</head>
<body>

<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="472">
		<tr>
			<td style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf; border-top: 1px solid #ffc6bf" width="760" valign="top">
			<div align="center">
				<table border="0" width="748" cellspacing="0" cellpadding="0" id="table2" height="464">
					<tr>
						<td width="205" valign="top">
						<table border="1" width="97%" cellspacing="0" cellpadding="0" id="table3" height="100%" bordercolor="#C0C0C0" style="border-collapse: collapse" bgcolor="#EEFFF2">
							<tr>
								<td bordercolor="#C0C0C0" align="center" valign="top" height="100%">
								<div align="center">
									<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table4" height="98">
										<tr>
											<td height="25" background="imagen/web_01_05.gif" bgcolor="#FF9999" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #C0C0C0">
										  <p align="center"></td>
										</tr>
										<tr>
										  <td height="23" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #C0C0C0"><a href="company.asp?id=<%=rs("id")%>"><img border="0" src="images/company.gif" width="200" height="40"></a></td>
									  </tr>
										<tr>
											<td width="100%" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #C0C0C0">
											<img border="0" src="images/job.gif" width="200" height="40"></td>
										</tr>
								  </table>
									<div align="center">
										<table border="0" width="200" cellspacing="0" cellpadding="0" id="table5" height="315">
<%
sql1="select * from job where enid="&clng(rs("id"))
rs1.open sql1,conn,1,1
if rs1.eof or rs1.bof then
%>		
											
											<tr>
												<td height="25" colspan="3" bgcolor="#FFFFFF">
											  <p align="center">暂时没有招聘信息</td>
											</tr>
<%
else
for i1=1 to rs1.recordcount
%>											
											
											<tr>
												<td width="12" height="26" bgcolor="#FFFFFF">
												<p align="center">
											  　</td>
												<td width="23" height="26" bgcolor="#FFFFFF">
												<p align="center">
											  <img border="0" src="images/link1.gif" width="6" height="11" align="middle"></td>
												<td width="165" height="26" bgcolor="#FFFFFF">
												<p align="left">
												<a href="job.asp?id=<%=rs1("id")%>">
												<font color=#ff0000><%=rs1("jtzw")%></font> </a>
											  <%
rs1.movenext
if rs1.eof then exit for
next
rs1.close
set rs1=nothing
end if
%>	</td>
											</tr>
											<tr>
											  <td height="6" colspan="3" bgcolor="#FFFFFF"></td>
										  </tr>
											
											<tr>
											  <td height="3" colspan="3" bgcolor="#FFFFFF"><div align="center">企业单位证照展示<br>
										      （点击看大图）</div></td>
										  </tr>
											<tr>
											  <td height="60" colspan="3" bgcolor="#FFFFFF"><div align="center">
											    <a href="<%if rs("pic")<>"" and  not(isnull(rs("picdate")))then 
						       if  date()-rs("picdate")<rs("picdays")then
						          response.write rs("pic")						         				  
						    else
					     	response.write "images/nopic1.gif"
					     	end if 						
						 else	
						response.write "images/nozz.jpg"
						end if
						
						%>" target="_blank"><img border="0" src="
						<%if rs("pic")<>"" and  not(isnull(rs("picdate")))then 
						       if  date()-rs("picdate")<rs("picdays")then
						          response.write rs("pic")						         				  
						    else
					     	response.write "images/nozz.gif"
					     	end if 						
						 else	
						response.write "images/nozz.jpg"
						end if
						
						%>" width="180" height="120"></a>											 
												  
                                               <%if rs("morepic")<>"" and date()-rs("picdate")<rs("picdays") then
											   response.write "<br><p align='right'><img src='/images/zz.gif'/><a href="
											    response.write rs("morepic")
												response.write " target='_blank'>更多证照展示</a><img src='/images/ls3.gif'/>&nbsp;</p>"
											   else 
											   response.write "<p align='right'>更多证照展示&nbsp;</p>"
											   end if 
											   %>
											  </div></td>
										  </tr>
											<tr>
											  <td colspan="3" bgcolor="#FFFFFF">&nbsp;</td>
										  </tr>
									  </table>
									</div>
								</div>
								</td>
							</tr>
						</table>
						</td>
						<td align="center" valign="top" style="padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
						<table border="0" width="535" cellspacing="0" cellpadding="0" id="table6" height="356">
							<tr>
							  <td width="535" height="25" colspan="2" background="imagen/web_01_05.gif" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom-width: 1px"><div align="center"><a href="http://www.ggkjcn.com/index" target="_blank"></a></div></td>
							</tr>
							<tr>
							  <td height="20" background="images/jobbg1.gif" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom-width: 1px" colspan="2">&nbsp;● <b>招聘信息</b></td> 
						  </tr>
							<tr>
							  <td height="7" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom-width: 1px" colspan="2"><div align="center">
        <script language="JavaScript" src="PostAd2.js" type="text/javascript"></script>
      </div></td>
						  </tr>
							<tr>
								<td height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom-width: 1px" width="535" colspan="2">
								<p align="center"><font size="4" color=#ff0000><strong>招聘 <%=rs2("jtzw")%></strong></font><br>
								<%if rs("rz")=true  then  
							  response.write "<a href=rz.html target='blank'><font color=#ff0000>★认证会员★</font></a>"
							  else
							  response.write "<a href=rz.html target='blank'><font color=#0033FF>★非认证会员★</font></a>"
							  end if %>
				<%if rs("vip")=true  then  
							  response.write "<a href=rz.html target='blank'><font color=#ff0000>★VIP认证会员★</font></a>"
							  end if %>			<br>  
								发布时间：<%
								a=instr(rs2("addtime"),chr(32))-1
								response.write Mid(rs2("addtime"),1,a)
								%> 
								已阅：<font color=#ff0000><%=rs2("clicks")%></font>次 <div align="center"><script type='text/javascript'>
var __sogou_ad = new Array();
__sogou_ad["pid"]  = 'ggang6';
__sogou_ad["fmt"]  = 'h_468_90'
__sogou_ad["iw"]   = '468';
__sogou_ad["ih"]   = '90';
__sogou_ad["charset"]   = 'gb2312';
__sogou_ad["c_bo"] = 'FFFFFF';
__sogou_ad["c_bg"] = 'FFFFFF';
__sogou_ad["c_li"] = 'FF0000';
__sogou_ad["c_te"] = '003779';
__sogou_ad["c_bt"] = '000000';
__sogou_ad["sv"] = '0';
</script>
<script language='JavaScript' type='text/javascript' src='http://images.sohu.com/cs/jsfile/js/cpc.js'></script>
</div><hr width=90%></td>
							</tr>
							<tr>
								<td height="66" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom-width: 1px" width="535" colspan="2">
								<div align="center">
									<table border="0" width="98%" cellspacing="0" cellpadding="0" id="table8" height="64">
										<tr>
											<td><%=unhtml(rs2("zptext"))%></td>
										</tr>
									</table>
								</div>								</td>
							</tr>
							<tr>
								<td height="23" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom-width: 1px" bgcolor="#D5EAF4" width="535" colspan="2">&nbsp;· 
								<font color="#000000">具体信息</font></td>
							</tr>
							<tr>
								<td height="25" width="535" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;招聘单位：<a href="company.asp?id=<%=rs("id")%>"><%=rs("name")%></a></td>
								<td height="25" width="535" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;有效期限：<%=rs2("youxiaos")%></td>
							</tr>
							<tr>
								<td height="25" width="535" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;招聘人数：<%=rs2("zpnum")%></td>
								<td height="25" width="535" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;招聘类型：<%=rs2("job")%></td>
							</tr>
							<tr>
								<td height="25" width="535" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;专业要求：<%=rs2("zyes")%></td>
								<td height="25" width="535" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;学历要求：<%=rs2("edus")%></td>
							</tr>
							<tr>
								<td height="25" width="535" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;工作地点：<%=rs2("hka")&"&nbsp;"&rs2("city")%></td>
								<td height="25" width="535" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;性别要求：<%=rs2("sexs")%></td>
							</tr>
							<tr>
								<td height="25" width="535" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;外语要求：<%=rs2("languages")%></td>
								<td height="25" width="535" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;计算机能力：<%=rs2("computers")%></td>
							</tr>
							<tr>
								<td height="25" width="535" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;户籍要求：<%=rs2("hkas")%></td>
								<td height="25" width="535" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;年龄要求： 
								<%
								if rs2("nianlings")="" then
								response.write "不限"
								else
								response.write rs2("nianlings")
								end if
								%>								</td>
							</tr>
							<tr>
								<td height="25" width="535" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;婚姻要求：<%=rs2("marrys")%></td>
								<td height="25" width="535" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;薪金水平： 
<%
if rs2("moneys")="" then
response.write "面议"
else
response.write rs2("moneys")
end if
%></td>
							</tr>
							<tr>
								<td height="25" width="535" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;国语程度：<%=rs2("pthuas")%></td>
								<td height="25" width="535" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;提供食宿：<%=rs2("shisus")%></td>
							</tr>
							
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")="" then
%>
<%
else
%>
							<%
							end if
							%>
						</table>
						</td>
					</tr>
				</table>
			</div>
			</td>
		</tr>
	</table>
</div>
<table width="760" align="center"  cellspacing="0"style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf">
  <tr>
    <td><table width="750" border="0" align="center" cellspacing="0">
      <tr>
        <td width="743" bgcolor="#FFCC99"><div align="center"> <img src="images/jtou.gif"> <A href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=年收入超过十万的企业" target="_blank">年收入超过十万的企业</A>&nbsp;&nbsp;&nbsp;&nbsp; 
            <A href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=钳工前景如何" target="_blank">钳工前景如何</A>&nbsp;&nbsp;&nbsp;&nbsp; 
            <A href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=技术工人和研究生收入比较" target="_blank">技术工人和研究生收入比较</A>&nbsp;&nbsp;&nbsp; 
            <A href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=中国收最高的十个工种" target="_blank">中国收最高的十个工种</A>&nbsp;&nbsp;&nbsp; 
            <A href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=月收入超过万元的行业" target="_blank">月收入超过万元的行业</A> </div></td>
      </tr>
    </table>
    <table width="749" border="1" align="center" cellspacing="0" bordercolor="#ffc6bf">
      <tr>
        <td height="25" colspan="2" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom-width: 1px" bgcolor="#D5EAF4">&nbsp;· <font color="#000000">联系方式</font></td> 
      </tr><%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")="" then
%>
      <tr>
        <td height="14" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4" colspan="2">
<br><div align="right">请<a href="index_bak.asp">登陆</a>后查看&nbsp;&nbsp;&nbsp;&nbsp;</div>
          </td>
      </tr> 
	  <%if rs ("vip")=true then%>
<tr>
        <td width="311" height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;联 系 人：<%=rs("pname")%></td> 
        <td width="428" height="25" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;联系人  
          职 位：<%=rs("pnames")%></td> 
      </tr>
      <tr>
        <td height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;联 系 人：<%=rs("pname")%></td> 
        <td height="25" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;联系人&nbsp;  
          电话：<%=rs("phone")%></td>
      </tr>
      <tr>
        <td height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;传　　真：<%=rs("fax")%></td>
        <td height="25" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;电  
          子&nbsp; 信 箱：<a href="mailto:<%=rs("email")%>"><%=rs("email")%></a></td> 
      </tr>
      <tr>
        <td height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;通讯地址：<%=rs("address")%></td>
        <td height="25" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;人事经理姓名：<%=rs("renshi")+rs("sex")%></td>
      </tr>
      <tr>
        <td height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;邮政编码：<%=rs("zip")%></td>
        <td height="25" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;人事经理电话：<%=rs("rstel")%></td>
      </tr>
      <tr>
        <td height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;联系电话：<%=rs("phone")%></td>
        <td height="25" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;公  
          司&nbsp; 网 址：<a target=_blank  href="<%=rs("web")%>"><%=rs("web")%></a></td> 
      </tr>
<%end if %>
	      <% else %>
      <tr>
        <td width="311" height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;联 系 人：<%=rs("pname")%></td> 
        <td width="428" height="25" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;联系人  
          职 位：<%=rs("pnames")%></td> 
      </tr>
      <tr>
        <td height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;联 系 人：<%=rs("pname")%></td> 
        <td height="25" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;联系人&nbsp;  
          电话：<%=rs("phone")%></td>
      </tr>
      <tr>
        <td height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;传　　真：<%=rs("fax")%></td>
        <td height="25" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;电  
          子&nbsp; 信 箱：<a href="mailto:<%=rs("email")%>"><%=rs("email")%></a></td> 
      </tr>
      <tr>
        <td height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;通讯地址：<%=rs("address")%></td>
        <td height="25" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;人事经理姓名：<%=rs("renshi")+rs("sex")%></td>
      </tr>
      <tr>
        <td height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;邮政编码：<%=rs("zip")%></td>
        <td height="25" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;人事经理电话：<%=rs("rstel")%></td>
      </tr>
      <tr>
        <td height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;联系电话：<%=rs("phone")%></td>
        <td height="25" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;公  
          司&nbsp; 网 址：<a target=_blank  href="<%=rs("web")%>"><%=rs("web")%></a></td> 
      </tr>
      <tr>
        <td height="40" colspan="2" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0"><div align="center">
         
        </div>
            <p align="center"> <a href="add_indepot.asp">
              <%if Request.Cookies("user")="1" then%>
              </a> <a href="add_indepot.asp?jobid=<%=rs2("id")%>"> <img border="0" src="images/company_m4.gif" width="124" height="22"></a>
              <%end if%>
          <a href="JavaScript:openScript('sendmessage.asp?tid=<%=rs("id")%>&ttype=2&title=<%="关于贵公司招聘"+rs2("jtzw")+"的咨询"%>',450,300)"><img border="0" src="images/company_m1.gif" width="124" height="22"></a> <A HREF="JavaScript:window.print();"><img border="0" src="images/company_m2.gif" width="124" height="22"></a> <A HREF="JavaScript:window.close();"><img border="0" src="images/company_m3.gif" width="124" height="22"></a></td>
      </tr> <%
							end if
							%>
      
    </table>
    <table width="682" border="0" align="center" cellspacing="0">
      <tr>
        <td><span class="STYLE2"><br>
  更多职位搜索-&gt;请输入你想职位类型（如：数学教育、销售助理、平面设计等）：</span></td>
      </tr>
      <tr>
        <td height="66">
         <iframe id="baiduframe" marginwidth="0" marginheight="0" scrolling="no"
  framespacing="0" vspace="0" hspace="0" frameborder="0" width="750" height="90" 
  src="http://unstat.baidu.com/bdun.bsc?tn=ggang6_pg&cv=1&cid=1009000&csid=243&bgcr=ffffff&ftcr=000000&urlcr=0000ff&tbsz=500&sropls=1,2,3,4,5,6&kwgp=0">
</iframe>



          热门搜索关键字：<a href="http://www.baidu.com/s?wd=博客&bar=&cl=3&tn=ggang6_pg" target="_blank">博客</a> <a href="http://www.baidu.com/s?wd=mp3&bar=&cl=3&tn=ggang6_pg" target="_blank">mp3</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&ct=&lm=&z=&rn=&word=游戏" target="_blank">游戏</a> <a href="http://www.baidu.com/s?wd=电影&bar=&cl=3&tn=ggang6_pg" target="_blank">电影</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&ct=&lm=&z=&rn=&word=跑跑卡丁车" target="_blank">跑跑卡丁车</a> <a href="http://www.baidu.com/s?wd=迅雷&bar=&cl=3&tn=ggang6_pg" target="_blank">迅雷</a> <a href="http://www.baidu.com/s?wd=劲舞团&bar=&cl=3&tn=ggang6_pg" target="_blank">劲舞团</a> <a href="http://www.bhttp://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=武林外传" target="_blank">武林外传</a> <a href="http://www.baidu.com/s?wd=蔡依林&bar=&cl=3&tn=ggang6_pg" target="_blank">蔡依林</a> <a href="http://www.baidu.com/s?wd=周杰伦&bar=&cl=3&tn=ggang6_pg" target="_blank">周杰伦</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=故宫" target="_blank">故宫</a> <a href="http://www.baidu.com/s?wd=刘亦菲&bar=&cl=3&tn=ggang6_pg" target="_blank">刘亦菲</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=人体艺术写真" target="_blank">人体艺术写真</a> <a href="http://www.baidu.com/s?wd=图片&bar=&cl=3&tn=ggang6_pg" target="_blank">图片</a></td>
      </tr>
    </table></td>
  </tr>
</table>
<%
rs2.close
set rs2=nothing
rs.close
set rs=nothing
set conn=nothing
%>
<!--#include file="base2.asp"-->
</body>

</html>