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
response.write "<script language=JavaScript>" & chr(13) & "alert('���û��ѱ�����Ա������');"&"window.location.href = 'index.asp'"&" </script>"
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
											  <p align="center">��ʱû����Ƹ��Ϣ</td>
											</tr>
<%
else
for i1=1 to rs1.recordcount
%>											
											
											<tr>
												<td width="12" height="27" bgcolor="#FFFFFF">
												<p align="center">
											  ��</td>
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
											  <td height="3" colspan="3" bgcolor="#FFFFFF"><div align="center">��ҵ��λ֤��չʾ<br>
										      ���������ͼ��</div></td>
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
												response.write " target='_blank'>����֤��չʾ</a><img src='/images/ls3.gif'/>&nbsp;</p>"
											   else 
											   response.write "<p align='right'>����֤��չʾ&nbsp;</p>"
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
							  <td height="20" background="images/jobbg1.gif" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom-width: 1px" colspan="2">&nbsp;�� <b>��ҵ����</b></td> 
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
							  response.write "<a href=rz.html target='_blank'><font color=#ff0000>����֤��Ա��</font></a>"
							  else
							  response.write "<a href=rz.html target='_blank'><font color=#0033FF>�����֤��Ա��</font></a>"
							  end if %>
				<%if rs("vip")=true  then  
							  response.write "<a href=rz.html target='blank'><font color=#ff0000>��VIP��֤��Ա��</font></a>"
							  end if %>			  
							  <br>(����<font color="#FF3900"><%=rs("clicks")+1%></font>��) <hr width=90%><br></td>
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
								<td height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom-width: 1px" bgcolor="#D5EAF4" width="535" colspan="2">&nbsp;�� 
								<font color="#000000">������Ϣ</font></td>
							</tr>
							<tr>
								<td height="25" width="535" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;��ҵ���ʣ�<%=rs("cxz")%></td>
								<td height="25" width="265" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;��������<%=rs("area")%></td>
							</tr>
							<tr>
								<td height="25" width="535" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;������ҵ��<%=rs("trade")%></td>
								<td height="25" width="265" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;Ա��������<%=rs("yuangong")%></td>
							</tr>
							<tr>
								<td height="25" width="535" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;ע���ʽ�<%=rs("fund")%>��Ԫ</td>
								<td height="25" width="265" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;���˴���<%=rs("faren")%></td>
							</tr>
							<tr>
								<td height="25" width="535" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;�������ڣ�<%=rs("fdate")%></td>
								<td height="25" width="265" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">��</td>
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
        <td width="743" bgcolor="#FFCC99"><div align="center"> <img src="images/jtou.gif"> <A href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=��нְλ�Ƽ�" target="_blank">��нְλ�Ƽ�</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <A href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=��ȱ�����˲�" target="_blank">��ȱ�����˲�</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <A href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=�غ���þ�ҵ��רҵ" target="_blank">�غ���þ�ҵ��רҵ</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <A href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=��н��ߵ�ʮ������" target="_blank">��н��ߵ�ʮ������</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <A href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=����һ������ж���" target="_blank">����һ������ж���</A></div></td>
      </tr>
    </table>
    <table width="749" border="1" align="center" cellspacing="0" bordercolor="#ffc6bf">
      <tr>
        <td height="25" colspan="2" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom-width: 1px" bgcolor="#D5EAF4">&nbsp;�� <font color="#000000">��ϵ��ʽ</font></td> 
      </tr>
      <%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")="" then
%>
      <tr>
        <td height="16" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4" colspan="2"><p align="center"> <br>
        <div align="right">��<a href="index.asp">��½</a>��鿴&nbsp;&nbsp;&nbsp;&nbsp;</div>
                  </td>
      </tr>
	  <%if rs ("vip")=true then%>
<tr>
        <td width="421" height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;�� ϵ �ˣ�<%=rs("pname")%></td> 
        <td width="307" height="25" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;��ϵ��  
          ְ λ��<%=rs("pnames")%></td> 
      </tr>
      <tr>
        <td height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;�������棺<%=rs("fax")%></td>
        <td height="25" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;��  
          ��&nbsp; �� �䣺<a href="mailto:<%=rs("email")%>"><%=rs("email")%></a></td> 
      </tr>
      <tr>
        <td height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;ͨѶ��ַ��<%=rs("address")%></td>
        <td height="25" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;���¾���������<%=rs("renshi")+rs("sex")%></td>
      </tr>
      <tr>
        <td height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;�������룺<%=rs("zip")%></td>
        <td height="25" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;���¾���绰��<%=rs("rstel")%></td>
      </tr>
      <tr>
        <td height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;��ϵ�绰��<%=rs("phone")%></td>
        <td height="25" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;��  
          ˾&nbsp; �� ַ��<a target=_blank  href="<%=rs("web")%>"><%=rs("web")%></a></td> 
      </tr>
<% end if %>
      <%
else
%>
      <tr>
        <td width="421" height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;�� ϵ �ˣ�<%=rs("pname")%></td> 
        <td width="307" height="25" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;��ϵ��  
          ְ λ��<%=rs("pnames")%></td> 
      </tr>
      <tr>
        <td height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;�������棺<%=rs("fax")%></td>
        <td height="25" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;��  
          ��&nbsp; �� �䣺<a href="mailto:<%=rs("email")%>"><%=rs("email")%></a></td> 
      </tr>
      <tr>
        <td height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;ͨѶ��ַ��<%=rs("address")%></td>
        <td height="25" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;���¾���������<%=rs("renshi")+rs("sex")%></td>
      </tr>
      <tr>
        <td height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;�������룺<%=rs("zip")%></td>
        <td height="25" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;���¾���绰��<%=rs("rstel")%></td>
      </tr>
      <tr>
        <td height="25" style="border-left: 1px solid #C0C0C0; border-right: 1px solid #D5EAF4; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;��ϵ�绰��<%=rs("phone")%></td>
        <td height="25" style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #D5EAF4">&nbsp;��  
          ˾&nbsp; �� ַ��<a target=_blank  href="<%=rs("web")%>"><%=rs("web")%></a></td> 
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
  ����ְλ����-&gt;����������ְλ���ͣ��磺��������ע����ʦ��ƽ����ơ�����רҵ��Ӧ������ȣ���</span></td>
      </tr>
      <tr>
        <td height="58"><iframe id="baiduframe" border="0" vspace="0" hspace="0" marginwidth="0" marginheight="0"
  framespacing="0" frameborder="0" scrolling="no" width="670" height="40"
  src="http://unstat.baidu.com/bdun.bsc?tn=ggang6_pg&cv=0&cid=1009000&csid=103&rkcs=4&bgcr=FFFFFF&ftcr=000000&rk=1&bd=1&tbsz=&tbst=&bdas=0"> </iframe>
          <br>
          ���������ؼ��֣�<a href="http://www.baidu.com/s?wd=����&bar=&cl=3&tn=ggang6_pg" target="_blank">����</a> <a href="http://www.baidu.com/s?wd=mp3&bar=&cl=3&tn=ggang6_pg" target="_blank">mp3</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&ct=&lm=&z=&rn=&word=��Ϸ" target="_blank">��Ϸ</a> <a href="http://www.baidu.com/s?wd=��Ӱ&bar=&cl=3&tn=ggang6_pg" target="_blank">��Ӱ</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&ct=&lm=&z=&rn=&word=���ܿ�����" target="_blank">���ܿ�����</a> <a href="http://www.baidu.com/s?wd=Ѹ��&bar=&cl=3&tn=ggang6_pg" target="_blank">Ѹ��</a> <a href="http://www.baidu.com/s?wd=������&bar=&cl=3&tn=ggang6_pg" target="_blank">������</a> <a href="http://www.bhttp://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=�����⴫" target="_blank">�����⴫</a> <a href="http://www.baidu.com/s?wd=������&bar=&cl=3&tn=ggang6_pg" target="_blank">������</a> <a href="http://www.baidu.com/s?wd=�ܽ���&bar=&cl=3&tn=ggang6_pg" target="_blank">�ܽ���</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=�ʹ�" target="_blank">�ʹ�</a> <a href="http://www.baidu.com/s?wd=�����&bar=&cl=3&tn=ggang6_pg" target="_blank">�����</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=��������д��" target="_blank">��������д��</a> <a href="http://www.baidu.com/s?wd=ͼƬ&bar=&cl=3&tn=ggang6_pg" target="_blank">ͼƬ</a></td>
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