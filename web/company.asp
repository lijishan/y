<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="unhtml.asp"-->
<%
if not(isnumeric(request("id"))) then
response.redirect "nodata.html"
rs.close
end if 
sql="select id,email,ac,lock,clicks,name,trade,cxz,fund,yuangong,area,faren,fdate,jianj,address,zip,pname,pnames,phone,fax,renshi,sex,rstel,web,pic,picdate,picdays,morepic,rz,vip from en_user where id="&clng(request("id"))
rs.open sql,conn,1,1
if rs.eof or rs.bof then
           response.redirect "nodata.html"
           rs.close
end if 
if rs("lock")=true then
rs.close
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('此用户已被管理员锁定！');"&"window.location.href = 'index.asp'"&" </script>"
response.end
end if
sql1="update en_user set clicks="&rs("clicks")+1&" where id="&rs("id")
set rs1=server.createobject("adodb.recordset")
rs1.open sql1,conn,1,1
%>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=rs("name")%> -<%=webname%></title>
<style type="text/css">
<!--
.STYLE1 {color: #FF0099}
-->
</style>
<style type="text/css">
<!--
.STYLE2 {color: #FF0000}
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
			<td style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf; border-top: 1px solid #ffc6bf" width="760" valign="top"><div align="center">
<table border="0" width="749" cellspacing="0" cellpadding="0" id="table2" height="464">
					<tr>
						<td width="206" valign="top">
						<table border="1" width="97%" cellspacing="0" cellpadding="0" id="table3" height="100%" bordercolor="#C0C0C0" style="border-collapse: collapse" bgcolor="#EEFFF2">
							<tr>
								<td bordercolor="#C0C0C0" align="center" valign="top" height="469">
								<div align="center">
									<table border="0" width="100%" cellspacing="0" cellpadding="0" id="table4" height="98">
										<tr>
											<td height="25" background="imagen/web_01_05.gif" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; border-bottom: 1px solid #C0C0C0">
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
										<table border="0" width="200" cellspacing="0" cellpadding="0" id="table5" height="293">
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
												<td width="12" height="27" bgcolor="#FFFFFF">
												<p align="center">
											  　</td>
												<td width="23" height="27" bgcolor="#FFFFFF">
												<p align="center">
											  <img border="0" src="images/link1.gif" width="6" height="11" align="middle"></td>
												<td width="165" height="27" bgcolor="#FFFFFF">
												<p align="left">
												<a href="job.asp?id=<%=rs1("id")%>">
												<font color=#ff0000><%=rs1("jtzw")%></font></a>
												
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
                                              <td height="3" colspan="3" bgcolor="#FFFFFF"></td>
										  </tr>
											<tr>
											  <td height="3" colspan="3" bgcolor="#FFFFFF"><div align="center">企业单位证照展示<br>
										      （点击看大图）</div></td>
										  </tr>
											<tr>
                                              <td height="120" colspan="3" bgcolor="#FFFFFF"><div align="center">
                                                 
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
											    </div>
											  
											  </td>
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
						<td width="543" align="center" valign="top" style="padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px">
						<table border="0" width="535" cellspacing="0" cellpadding="0" id="table6" height="263">
							<tr>
								<td width="535" height="25" colspan="2" background="imagen/web_01_05.gif" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom-width: 1px"></td>
							</tr>
							<tr>
							  <td height="20" background="images/jobbg1.gif" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom-width: 1px" colspan="2">&nbsp;● <b>企业介绍</b></td> 
						  </tr>
							<tr>
							  <td height="7" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom-width: 1px" colspan="2"><div align="center"><script type='text/javascript'>
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
</div></td>
						  </tr>
							<tr>
								<td height="20" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom-width: 1px" width="535" colspan="2">
							  <p align="center"><font size="4" color=#ff0000><strong><%=rs("name")%></strong></font><br>
							  <%if rs("rz")=true  then  
							  response.write "<a href=rz.html target='_blank'><font color=#ff0000>★认证会员★</font></a>"
							  else
							  response.write "<a href=rz.html target='_blank'><font color=#0033FF>★非认证会员★</font></a>"
							  end if %>
				<%if rs("vip")=true  then  
							  response.write "<a href=rz.html target='blank'><font color=#ff0000>★VIP认证会员★</font></a>"
							  end if %>			  
							  <br>(被阅<font color="#FF3900"><%=rs("clicks")+1%></font>次) <hr width=90%><br></td>
							</tr>
							<tr>
								<td height="78" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom-width: 1px" width="535" colspan="2">
								<div align="center">
									<table border="0" width="98%" cellspacing="0" cellpadding="0" id="table7" height="64">
										<tr>
											<td><%=unhtml(rs("jianj"))%><br><br></td>
										</tr>
									</table>
								</div>								</td>
							</tr>
							<tr>
								<td height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom-width: 1px" bgcolor="#D5EAF4" width="535" colspan="2">&nbsp;· 
								<font color="#000000">基本信息</font></td>
							</tr>
							<tr>
								<td height="25" width="535" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;企业性质：<%=rs("cxz")%></td>
								<td height="25" width="265" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;所在区域：<%=rs("area")%></td>
							</tr>
							<tr>
								<td height="25" width="535" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;所属行业：<%=rs("trade")%></td>
								<td height="25" width="265" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;员工总数：<%=rs("yuangong")%></td>
							</tr>
							<tr>
								<td height="25" width="535" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;注册资金：<%=rs("fund")%>万元</td>
								<td height="25" width="265" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;法人代表：<%=rs("faren")%></td>
							</tr>
							<tr>
								<td height="25" width="535" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;成立日期：<%=rs("fdate")%></td>
								<td height="25" width="265" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">　</td>
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
<table width="760"  cellspacing="0"style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf">
  <tr>
    <td><table width="750" border="0" align="center" cellspacing="0">
      <tr>
        <td width="743" bgcolor="#FFCC99"><div align="center"> <img src="images/jtou.gif"> <A href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=高薪职位推荐" target="_blank">高薪职位推荐</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <A href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=紧缺技术人才" target="_blank">紧缺技术人才</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <A href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=沿海最好就业的专业" target="_blank">沿海最好就业的专业</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <A href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=年薪最高的十个工种" target="_blank">年薪最高的十个工种</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <A href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=白领一年的收有多少" target="_blank">白领一年的收有多少</A></div></td>
      </tr>
    </table>
    <table width="749" border="1" align="center" cellspacing="0" bordercolor="#ffc6bf">
      <tr>
        <td height="25" colspan="2" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom-width: 1px" bgcolor="#D5EAF4">&nbsp;· <font color="#000000">联系方式</font></td> 
      </tr>
      <%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")="" then
%>
      <tr>
        <td height="16" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4" colspan="2"><p align="center"> <br>
        <div align="right">请<a href="index.asp">登陆</a>后查看&nbsp;&nbsp;&nbsp;&nbsp;</div>
                  </td>
      </tr>
	  <%if rs ("vip")=true then%>
<tr>
        <td width="421" height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;联 系 人：<%=rs("pname")%></td> 
        <td width="307" height="25" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;联系人  
          职 位：<%=rs("pnames")%></td> 
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
<% end if %>
      <%
else
%>
      <tr>
        <td width="421" height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;联 系 人：<%=rs("pname")%></td> 
        <td width="307" height="25" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;联系人  
          职 位：<%=rs("pnames")%></td> 
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
        <td height="40" colspan="2" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0"><p align="center">
                   <br>
            <a href="JavaScript:openScript('sendmessage.asp?tid=<%=rs("id")%>&ttype=2',450,300)"><img border="0" src="images/company_m1.gif" width="124" height="22"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <A HREF="JavaScript:window.print();"><img border="0" src="images/company_m2.gif" width="124" height="22"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <A HREF="JavaScript:window.close();"><img border="0" src="images/company_m3.gif" width="124" height="22"></a></td> 
      </tr>
      <%
							end if
							%>
    </table>
    <table width="697" border="0" align="center" cellspacing="0">
      
      <tr>
        <td width="695"><span class="STYLE2"><br>
  更多职位搜索-&gt;请输入你想职位类型（如：销售助理、注册会计师、平面设计、建筑专业、应用物理等）：</span></td>
      </tr>
      <tr>
        <td height="58"><iframe id="baiduframe" border="0" vspace="0" hspace="0" marginwidth="0" marginheight="0"
  framespacing="0" frameborder="0" scrolling="no" width="670" height="40"
  src="http://unstat.baidu.com/bdun.bsc?tn=ggang6_pg&cv=0&cid=1009000&csid=103&rkcs=4&bgcr=FFFFFF&ftcr=000000&rk=1&bd=1&tbsz=&tbst=&bdas=0"> </iframe>
          <br>
          热门搜索关键字：<a href="http://www.baidu.com/s?wd=博客&bar=&cl=3&tn=ggang6_pg" target="_blank">博客</a> <a href="http://www.baidu.com/s?wd=mp3&bar=&cl=3&tn=ggang6_pg" target="_blank">mp3</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&ct=&lm=&z=&rn=&word=游戏" target="_blank">游戏</a> <a href="http://www.baidu.com/s?wd=电影&bar=&cl=3&tn=ggang6_pg" target="_blank">电影</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&ct=&lm=&z=&rn=&word=跑跑卡丁车" target="_blank">跑跑卡丁车</a> <a href="http://www.baidu.com/s?wd=迅雷&bar=&cl=3&tn=ggang6_pg" target="_blank">迅雷</a> <a href="http://www.baidu.com/s?wd=劲舞团&bar=&cl=3&tn=ggang6_pg" target="_blank">劲舞团</a> <a href="http://www.bhttp://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=武林外传" target="_blank">武林外传</a> <a href="http://www.baidu.com/s?wd=蔡依林&bar=&cl=3&tn=ggang6_pg" target="_blank">蔡依林</a> <a href="http://www.baidu.com/s?wd=周杰伦&bar=&cl=3&tn=ggang6_pg" target="_blank">周杰伦</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=故宫" target="_blank">故宫</a> <a href="http://www.baidu.com/s?wd=刘亦菲&bar=&cl=3&tn=ggang6_pg" target="_blank">刘亦菲</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=人体艺术写真" target="_blank">人体艺术写真</a> <a href="http://www.baidu.com/s?wd=图片&bar=&cl=3&tn=ggang6_pg" target="_blank">图片</a></td>
      </tr>
    </table></td>
  </tr>
</table>
<%
rs.close
set rs=nothing
set conn=nothing
%>
<!--#include file="base2.asp"-->
</body>
</html>