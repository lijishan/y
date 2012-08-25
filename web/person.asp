<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="unhtml.asp"-->
<html>
<%
if not(isnumeric(request("id"))) then
response.redirect "nodata.html"
rs.close
end if
sql="select ac,ltime,id,name,code,bdate,sex,guoji,shenggao,tizhong,minzu,marry,hka,hkb,edu,zye,zhuanyen1,zyes,zhuanyen2,school,bydate,zzmm,zcheng,jyjl,rctype,language,lanlevel,languages,lanlevels,pthua,computer,kgzjl,gznum,kothertc,kmubiao,email,jobtype,job,job1,job2,job3,job4,job5,gzdd,gzcs,gzcs1,yuex,grzz,address,posts,phone,shouji,oicq,web,pic,clicks,lock,picdays,picdate,vip,rdate,morepic,rz,gr_view from in_user where id="&clng(request("id"))
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
if rs("gr_view")="Y" then
tname=rs("name")
rs.close
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('"&tname&"  的个人简历已被"&tname&"设置为隐藏，系统暂时不显示！');"&"JavaScript:window.close();"&" </script>"
response.end
end if
sql1="update in_user set clicks="&rs("clicks")+1&" where id="&rs("id")
set rs1=server.createobject("adodb.recordset")
rs1.open sql1,conn,1,1
set rs1=nothing
%>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=rs("name")&"个人简历"%> =<%=webname%></title>
<style type="text/css">
<!--
.STYLE1 {color: #006633}
.STYLE4 {color: #999999}
.STYLE6 {color: #0066CC}
.STYLE8 {color: #FF0000}
.STYLE9 {color: #0066FF}
-->
</style>
<!--#include file="top_index.asp"-->
</head>

<body>

<table border="0" width="76%" cellspacing="0" cellpadding="0" id="table3" height="50">
  <tr>
    <td><br><p align="center"><font size="5"color=#ff0000><strong><%=rs("name")%>个人简历</strong> </font><br><%if rs("rz")=true  then  
							  response.write "<a href=rz.html target='blank'><font color=#ff0000>★认证会员★</font></a>"
							  else
							  response.write "<a href=rz.html target='blank'><font color=#0033FF>★非认证会员★</font></a>"
							  end if %>
				<%if rs("vip")=true  then  
							  response.write "<a href=rz.html target='blank'><font color=#ff0000>★VIP认证会员★</font></a>"
							  end if %>			<br>发布：<%
	a=instr(rs("rdate"),chr(32))-1
	response.write Mid(rs("rdate"),1,a) %>&nbsp;(被阅<font color="#FF3900"><%=rs("clicks")+1%></font>次)</td>
  </tr>
</table>
<table border="1" width="651" cellspacing="0" cellpadding="0" bordercolor="#ffc6bf" id="table2" style="border-collapse: collapse">
  <tr>
    <td height="30" background="imagen/web_01_05.gif" width="649" colspan="5"><p align="left">&nbsp; <b>个人基本信息</b></td>
  </tr>
  <tr>
    <td height="30" width="105" align="center" bgcolor="#FEFBF4"><p align="center">姓&nbsp;&nbsp;&nbsp; 名：</td>
    <td height="30" width="217"> 　<%=rs("name")%></td>
    <td height="30" width="106" align="center" bgcolor="#FEFBF4"> 性&nbsp;&nbsp;&nbsp; 别：</td>
    <td height="30" width="95"> 　<%=rs("sex")%></td>
    <td height="150" width="118" rowspan="5"><p align="center"> <img border="0" src="
						<%if rs("pic")<>"" and  not(isnull(rs("picdate")))then 
						       if  date()-rs("picdate")<rs("picdays")then
						          response.write rs("pic")						         				  
						    else
							 response.write "images/nopic1.gif"
					     	end if 						
						 else	
						
						if rs("sex")="男" then 
					     	response.write "images/nopic_man.jpg"
							else 
							response.write "images/nopic_woman.jpg"
							end if 
						end if
						
						%>" width="120" height="150"></td>
  </tr>
  <tr>
    <td height="30" width="105" align="center" bgcolor="#FEFBF4"> 出生日期：</td>
    <td height="30" width="217"> 　<%=rs("bdate")%></td>
    <td height="30" width="106" align="center" bgcolor="#FEFBF4"> 民&nbsp;&nbsp;&nbsp; 族：</td>
    <td height="30" width="95"> 　
        <%if isnull(rs("minzu")) then 
						  response.write"汉族"
						  else
						response.write rs("minzu")
						end if 
						%></td>
  </tr>
  <tr>
    <td height="30" width="105" align="center" bgcolor="#FEFBF4"> 户&nbsp;&nbsp;&nbsp; 籍：</td>
    <td height="30" width="217"> 　
        <%if isnull(rs("hka")) then 
						  response.write"中国-"+rs("hkb")
						  else
						response.write rs("guoji")+"&nbsp;"+rs("hka")
						end if 
						%></td>
    <td height="30" width="106" align="center" bgcolor="#FEFBF4"> 身&nbsp;&nbsp;&nbsp; 高：</td>
    <td height="30" width="95"> 　<%=rs("shenggao")%>cm</td>
  </tr>
  <tr>
    <td height="30" width="105" align="center" bgcolor="#FEFBF4"> 婚姻状况：</td>
    <td height="30" width="217"> 　
        <%if isnull(rs("marry")) then 
						  response.write"未婚"
						  else
						response.write rs("marry")
						end if 
						%>
    </td>
    <td height="30" width="106" align="center" bgcolor="#FEFBF4"> 体&nbsp;&nbsp;&nbsp; 重：</td>
    <td height="30" width="95"> 　<%=rs("tizhong")%>kg</td>
  </tr>
  <tr>
    <td height="30" width="105" align="center" bgcolor="#FEFBF4"> 政治面貌：</td>
    <td height="30" width="217"> 　
        <%if isnull(rs("zzmm")) then 
						  response.write"群众"
						  else
						response.write rs("zzmm")
						end if 
						%></td>
    <td height="30" width="106" align="center" bgcolor="#FEFBF4"> 学　　历：</td>
    <td height="30" width="95"> 　<%=rs("edu")%></td>
  </tr>
  <tr>
    <td height="30" width="105" align="center" bgcolor="#FEFBF4"> 毕业时间：</td>
    <td height="30" width="217"> 　
        <%if isnull(rs("bydate")) then 
						  response.write"今年"
						  else
						response.write rs("bydate")
						end if 
						%>
    </td>
    <td height="30" width="106" align="center" bgcolor="#FEFBF4"> 毕业院校：</td>
    <td height="30" width="205" colspan="2"> 　<%=rs("school")%></td>
  </tr>
  <tr>
    <td height="30" width="105" align="center" bgcolor="#FEFBF4"> 身 份 证：</td>
    <td height="30" width="217">
	<%	if isnull(rs("code")) or rs("code")="" then  						
						response.write "&nbsp;&nbsp;暂时未填写身份证号码"
						else
						response.write "&nbsp;&nbsp;"&left(rs("code"),3)&"*********"&right(rs("code"),6)
						end if %></td>
										</td>
    <td height="30" width="106" align="center" bgcolor="#FEFBF4"> 专　　业：</td>
    <td height="30" width="205" colspan="2"> 　<%=rs("zye")+"&nbsp;"+rs("zhuanyen1")%></td>
  </tr>
  <tr>
    <td height="30" width="105" align="center" bgcolor="#FEFBF4"> 现有职称：</td>
    <td height="30" width="217"> 　
        <%if isnull(rs("zcheng")) then 
						  response.write"暂无"
						  else
						response.write rs("zcheng")
						end if 
						%></td>
    <td height="30" width="106" align="center" bgcolor="#FEFBF4"> 第二专业：</td>
    <td height="30" width="205" colspan="2"> 　
        <%if isnull(rs("zhuanyen2"))  or rs("zhuanyen2")="" then 
						  response.write "无"
						  else
						response.write rs("zyes")+"->"+rs("zhuanyen2")
						end if 
						%>
      　 
    </td>
  </tr>
  <tr>
    <td height="30" width="105" align="center" bgcolor="#FEFBF4"> 现住地点：</td>
    <td height="30" width="217"> 　<%=rs("hkb")%></td>
    <td height="30" width="106" align="center" bgcolor="#FEFBF4">推荐指数：</td>
    <td height="30" width="205" colspan="2"> 　
        <%if rs("pic")<>"" and rs("picdate")<>"" then
						  response.write "<font color=#ff0000>★★★★★</font>"	
						  else 
						   if rs("pic")<>"" then
						   response.write "<font color=#ff0000'>★★★★</font>"
						   else 						    
						   if rs("job1")<>"" then
						   response.write "<font color=#ff0000'>★★★</font>"		
						    else
						    response.write "<font color=#ff0000'>★★</font>"	
						  end if 
						  end if 
						  end if 				   			  
			
						  
						  %>
      <span class="STYLE4">(最高5星)</span></td>
  </tr>
</table>
<table border="1" width="651" cellspacing="0" cellpadding="0" bordercolor="#ffc6bf" id="table4" style="border-collapse: collapse">
  <tr>
    <td height="30" background="imagen/web_01_05.gif" width="649" colspan="4"><p align="left">&nbsp; <strong class="bbbb">求职意向</strong></td>
  </tr>
  <tr>
    <td height="30" width="100" align="center" bgcolor="#FEFBF4"><p align="center">应聘职位类型：</td>
    <td height="30" width="205"> 　
        <%if isnull(rs("job")) then 
						  response.write rs("zhuanyen1") +"类"
						  else
						response.write rs("job")
						end if 
						%></td>
    <td height="30" width="100" align="center" bgcolor="#FEFBF4"> 求职类型：</td>
    <td height="30" width="205"> 　
      <%if isnull(rs("jobtype")) or rs("jobtype")="两者兼可" then
						response.write "全职或者兼职"
						else
						response.write rs("jobtype")
						end if
						%></td>
  </tr>
  <tr>
    <td height="30" width="100" align="center" bgcolor="#FEFBF4"> 月薪要求：</td>
    <td height="30" width="205"> 　
        <%
						if rs("yuex")<>"" then
						response.write rs("yuex")+"元(RMB)"
						else
						response.write "面议"
						end if
						%></td>
    <td height="30" width="100" align="center" bgcolor="#FEFBF4"> 具体职位一：</td>
    <td height="30" width="205"> 　
        <%if isnull(rs("job1")) then 
						  response.write rs("zhuanyen1")
						  else
						response.write rs("job1")
						end if 
						%></td>
  </tr>
  <tr>
    <td height="30" width="100" align="center" bgcolor="#FEFBF4"> 具体职位二：</td>
    <td height="30" width="205"> 　
        <%if isnull(rs("job2")) or rs("job2")="" then 
						  response.write "无"
						  else
						response.write rs("job2")
						end if 
						%>
    </td>
    <td height="30" width="100" align="center" bgcolor="#FEFBF4"> 具体职位三：</td>
    <td height="30" width="205"> 　
        <%if isnull(rs("job3")) or rs("job3")="" then 
						  response.write "无"
						  else
						response.write rs("job3")
						end if 
						%></td>
  </tr>
  <tr>
    <td height="30" width="100" align="center" bgcolor="#FEFBF4"> 具体职位四：</td>
    <td height="30" width="205"> 　
        <%if isnull(rs("job4")) or rs("job4")="" then 
						  response.write "无"
						  else
						response.write rs("job4")
						end if 
						%></td>
    <td height="30" width="100" align="center" bgcolor="#FEFBF4"> 具体职位五：</td>
    <td height="30" width="205"> 　
        <%if isnull(rs("job5"))  or rs("job5")="" then 
						  response.write "无"
						  else
						response.write rs("job5")
						end if 
						%></td>
  </tr>
  <tr>
    <td height="30" width="100" align="center" bgcolor="#FEFBF4"> 希望工作地区：</td>
    <td height="30" width="205"> 　
        
						<%=rs("gzdd")%>&nbsp;<%=rs("gzcs")%>
	</td>
    <td height="30" width="100" align="center" bgcolor="#FEFBF4"> 其他工作地区：</td>
    <td height="30" width="205"> 　
        <%if isnull(rs("gzcs1"))  or rs("gzcs1")="" then 
						  response.write "无"
						  else
						response.write rs("gzcs1")
						end if 
						%></td>
  </tr>
</table>
<table border="1" width="651" cellspacing="0" cellpadding="0" bordercolor="#ffc6bf" id="table5" style="border-collapse: collapse">
  <tr>
    <td height="30" background="imagen/web_01_05.gif" width="649" colspan="4"><p align="left">&nbsp; <font color="#ffffff"><b> <font color="#000000">相关工作经历及特长</font></b></font></td>
  </tr>
  <tr>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"><p align="center">人才类型：</td>
    <td height="30" width="205"> 　
        <%if isnull(rs("rctype")) then 
						  response.write "普通求职"
						  else
						response.write rs("rctype")
						end if 
						%>
      　 
    </td>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> 相关工作时间：</td>
    <td height="30" width="205"> 　
        <%if isnull(rs("gznum")) then 
						  response.write "无"
						  else
						response.write rs("gznum")+"年"
						end if 
						%></td>
  </tr>
  <tr>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> 外语语种：</td>
    <td height="30" width="205"> 　
        <%if isnull(rs("language")) then 
						  response.write "英语"
						  else
						response.write rs("language")
						end if 
						%>
      　　 
    </td>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> 外语水平：</td>
    <td height="30" width="205"> 　
        <%if isnull(rs("lanlevel")) then 
						  response.write "一般"
						  else
						response.write rs("lanlevel")
						end if 
						%>
      　　 
    </td>
  </tr>
  <tr>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> 其它外语语种：</td>
    <td height="30" width="205"> 　
        <%if isnull(rs("languages")) then 
						  response.write "无"
						  else
						response.write rs("languages")
						end if 
						%>
      　 
    </td>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> 其它外语水平：</td>
    <td height="30" width="205"> 　
        <%if isnull(rs("lanlevels")) then 
						  response.write "无"
						  else
						response.write rs("lanlevels")
						end if 
						%></td>
  </tr>
  <tr>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> 普通话水平：</td>
    <td height="30" width="205"> 　
        <%if isnull(rs("pthua")) then 
						  response.write "一般"
						  else
						response.write rs("pthua")
						end if 
						%></td>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> 计算机能力：</td>
    <td height="30" width="205"> 　
        <%if isnull(rs("computer")) then 
						  response.write "一般"
						  else
						response.write rs("computer")
						end if 
						%></td>
  </tr>
</table>
<table border="1" width="651" cellspacing="0" cellpadding="0" bordercolor="#ffc6bf" id="table6" style="border-collapse: collapse" height="147">
  <tr>
    <td height="30" background="imagen/web_01_05.gif"><p align="left">&nbsp; <strong>教育/培训经历</strong></td>
  </tr>
  <tr>
    <td height="118"><div align="center">
      <table border="0" width="600" cellspacing="0" cellpadding="0" id="table12">
        <tr>
          <td><%if isnull(rs("jyjl")) then 
						  response.write"教育/培训经历 正在资料填写过程中... ..."
						  else
						response.write unhtml(rs("jyjl"))
						end if 
						%></td>
        </tr>
      </table>
    </div></td>
  </tr>
</table>
<table border="1" width="651" cellspacing="0" cellpadding="0" bordercolor="#ffc6bf" id="table7" style="border-collapse: collapse">
  <tr>
    <td height="30" background="imagen/web_01_05.gif"><p align="left">&nbsp; <strong>工作经验</strong></td>
  </tr>
  <tr>
    <td height="118"><div align="center">
      <table border="0" width="600" cellspacing="0" cellpadding="0" id="table13" height="23">
        <tr>
          <td><%if isnull(rs("kgzjl")) then 
						  response.write"工作经验这项正在资料填写过程中... ..."
						  else
						response.write unhtml(rs("kgzjl"))
						end if 
						%></td>
        </tr>
      </table>
    </div></td>
  </tr>
</table>
<table border="1" width="651" cellspacing="0" cellpadding="0" bordercolor="#ffc6bf" id="table8" style="border-collapse: collapse">
  <tr>
    <td height="30" background="imagen/web_01_05.gif"><p align="left"><strong>&nbsp; 工作技能</strong></td>
  </tr>
  <tr>
    <td height="118"><div align="center">
      <table border="0" width="600" cellspacing="0" cellpadding="0" id="table14" height="23">
        <tr>
          <td><%if isnull(rs("kothertc")) then 
						  response.write"工作技能此项正在资料填写过程中... ..."
						  else
						response.write unhtml(rs("kothertc"))
						end if 
						%></td>
        </tr>
      </table>
    </div></td>
  </tr>
</table>
<table border="1" width="651" cellspacing="0" cellpadding="0" bordercolor="#ffc6bf" id="table9" style="border-collapse: collapse">
  <tr>
    <td height="30" background="imagen/web_01_05.gif"><p align="left">&nbsp; <b>职业目标</b></td>
  </tr>
  <tr>
    <td height="118"><div align="center">
      <table border="0" width="600" cellspacing="0" cellpadding="0" id="table15" height="23">
        <tr>
          <td><%=unhtml(rs("kmubiao"))%></td>
        </tr>
      </table>
    </div></td>
  </tr>
</table>
<table border="1" width="651" cellspacing="0" cellpadding="0" bordercolor="#ffc6bf" id="table10" style="border-collapse: collapse">
  <tr>
    <td height="30" background="imagen/web_01_05.gif"><p align="left">&nbsp; <strong>自我介绍</strong></td>
  </tr>
  <tr>
    <td height="59"><div align="center">
      <table border="0" width="600" cellspacing="0" cellpadding="0" id="table16" height="23">
        <tr>
          <td><%if isnull(rs("grzz")) then 
						  response.write"自我介绍正在资料填写过程中... ..."
						  else
						response.write unhtml(rs("grzz"))
						end if 
						%></td>
        </tr>
      </table>
    </div></td>
  </tr>
  <tr>
    <td height="29" background="imagen/web_01_05.gif">&nbsp;<strong>个人风彩展示（作品、证书图片展示）</strong></td>
  </tr>
  <tr>
    <td height="155" >
	
	<% if rs("morepic")<>"" and  not(isnull(rs("picdate")))then 
						       if  date()-rs("picdate")<rs("picdays")then
						          response.write rs("morepic")	
						 else	
						response.write "<div align='center'><img src='images/nozz.gif' /></div>"
							end if
							else	
						response.write "<div align='center'> 暂时没有图片资料... ...</div>"
					
						end if 
						%>
	</td>
  </tr>
</table>
<table border="1" width="651" cellspacing="0" cellpadding="0" bordercolor="#ffc6bf" id="table11" style="border-collapse: collapse" height="145">
  <tr>
    <td height="30" background="imagen/web_01_05.gif" colspan="4"><p align="left">&nbsp; <b><font color="#000000">联系方式</font></b></td>
  </tr>
  <%								
					if Request.Cookies("user")<>"2" and Request.Cookies("ac")<>rs("ac")  then
					%>
  <tr>
    <td height="100%" align="center" colspan="4">
<br><div align="right">请<a href="index_bak.asp">登陆</a>后查看&nbsp;&nbsp;&nbsp;&nbsp;</div>
</td>
  </tr>
  <%if rs ("vip")=true then%>
<tr>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"><p align="center">通讯地址：</td>
    <td height="30" width="277"> 　<%if isnull(rs("address")) or rs("address")="" then 
						  response.write"中国"+rs("hkb")
						  else
						response.write rs("address")
						end if 
						%></td>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> 邮政编码：</td>
    <td height="30" width="150"> 　<%=rs("posts")%></td>
  </tr>
  <tr>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> 联系电话：</td>
    <td height="30" width="277">　<%if isnull(rs("phone")) then 
						  response.write"请使用站内短信与我联系，谢谢！"
						  else
						response.write rs("phone")
						end if 
						%>　</td>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> 移动电话：</td>
    <td height="30" width="150"> 　<%=rs("shouji")%></td>
  </tr>
  <tr>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> 电子信箱：</td>
    <td height="30" width="277">&nbsp;&nbsp;<a href="mailto:<%=rs("email")%>"><%=rs("email")%></a></td>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> 个人网站：</td>
    <td height="30" width="150">&nbsp;&nbsp;
        <%if rs("web")<>"" then response.write "<a target='_blank' href='"&rs("web")&"'>"&rs("web")&"</a>"%></td>
  </tr>
  <tr>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> OICQ：</td>
    <td width="277" height="0"> 　<%=rs("oicq")%></td>
    <td width="100" height="0" align="center" bgcolor="#FEFBF4"> 用户类型：</td>
    <td width="150" height="0"> 　<span style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0"> 
         <%if rs("vip")=true then response.write"VIP 用户"%>
    	 <%if rs("vip")=false then response.write"普通用户"%>
    </span></td>
  </tr>
  <tr>
    <td height="15" colspan="4" align="center" bgcolor="#FEFBF4"><span class="STYLE6"><span class="STYLE8">企业用户可先使用“<span class="STYLE9">发送招聘信息</span>”（即站内短信）与求职者确定下一部的联系方式。↓</span></span></td>
  </tr>
  <% end if %>
  <%
					else
					%>
  <tr>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"><p align="center">通讯地址：</td>
    <td height="30" width="277"> 　<%if isnull(rs("address")) or rs("address")="" then 
						  response.write"中国"+rs("hkb")
						  else
						response.write rs("address")
						end if 
						%></td>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> 邮政编码：</td>
    <td height="30" width="150"> 　<%=rs("posts")%></td>
  </tr>
  <tr>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> 联系电话：</td>
    <td height="30" width="277">　<%if isnull(rs("phone")) then 
						  response.write"请使用站内短信与我联系，谢谢！"
						  else
						response.write rs("phone")
						end if 
						%>　</td>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> 移动电话：</td>
    <td height="30" width="150"> 　<%=rs("shouji")%></td>
  </tr>
  <tr>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> 电子信箱：</td>
    <td height="30" width="277">&nbsp;&nbsp;<a href="mailto:<%=rs("email")%>"><%=rs("email")%></a></td>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> 个人网站：</td>
    <td height="30" width="150">&nbsp;&nbsp;
        <%if rs("web")<>"" then response.write "<a target='_blank' href='"&rs("web")&"'>"&rs("web")&"</a>"%></td>
  </tr>
  <tr>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> OICQ：</td>
    <td width="277" height="0"> 　<%=rs("oicq")%></td>
    <td width="100" height="0" align="center" bgcolor="#FEFBF4"> 用户类型：</td>
    <td width="150" height="0"> 　<span style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0"> 
         <%if rs("vip")=true then response.write"VIP 用户"%>
    	 <%if rs("vip")=false then response.write"普通用户"%>
    </span></td>
  </tr>
  <tr>
    <td height="15" colspan="4" align="center" bgcolor="#FEFBF4"><span class="STYLE6"><span class="STYLE8">企业用户可先使用“<span class="STYLE9">发送招聘信息</span>”（即站内短信）与求职者确定下一部的联系方式。↓</span></span></td>
  </tr>
  
  <%
					end if
					%>
</table>
<table width="650" border="1" cellspacing="0" bordercolor="#ffc6bf">
  <tr>
    <td><div align="center">
      <%
				if Request.Cookies("user")="2" or Request.Cookies("ac")=rs("ac") then
				%>
      <table border="0" width="87%" cellspacing="0" cellpadding="0" id="table17" height="55">
        <tr>
          <td align="center"><a href="add_endepot.asp?inid=<%=rs("id")%>"> <img border="0" src="images/person_m1.gif" width="124" height="22"></a></td>
          <td align="center"><a href="JavaScript:openScript('sendmessage.asp?tid=<%=rs("id")%>&ttype=1',450,300)"><img border="0" src="images/person_m2.gif" width="124" height="22"></a> </td>
          <td align="center"><A HREF="JavaScript:window.print();"><img border="0" src="images/person_m3.gif" width="124" height="22"></A></td>
          <td align="center"><A HREF="JavaScript:window.close();"><img border="0" src="images/person_m4.gif" width="124" height="22"></A></td>
        </tr>
      </table>
      <%
				end if
				%>
    </div></td>
  </tr>
</table>
<div align="center"><span class="STYLE8"><strong>更多职位/人才搜索(请在下面搜索框中输入关键字，如：计算机专业、会计、日语人才、管理、数控操作、师范、司机、面试等)：</strong></span><br>
<iframe id="baiduframe" marginwidth="0" marginheight="0" scrolling="no"
  framespacing="0" vspace="0" hspace="0" frameborder="0" width="750" height="90" 
  src="http://unstat.baidu.com/bdun.bsc?tn=ggang6_pg&cv=1&cid=1009000&csid=243&bgcr=ffffff&ftcr=000000&urlcr=0000ff&tbsz=500&sropls=1,2,3,4,5,6&kwgp=0">
</iframe></div>

          热门搜索关键字：<a href="http://www.baidu.com/s?wd=博客&bar=&cl=3&tn=ggang6_pg" target="_blank">博客</a> <a href="http://www.baidu.com/s?wd=mp3&bar=&cl=3&tn=ggang6_pg" target="_blank">mp3</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&ct=&lm=&z=&rn=&word=游戏" target="_blank">游戏</a> <a href="http://www.baidu.com/s?wd=电影&bar=&cl=3&tn=ggang6_pg" target="_blank">电影</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&ct=&lm=&z=&rn=&word=跑跑卡丁车" target="_blank">跑跑卡丁车</a> <a href="http://www.baidu.com/s?wd=迅雷&bar=&cl=3&tn=ggang6_pg" target="_blank">迅雷</a> <a href="http://www.baidu.com/s?wd=劲舞团&bar=&cl=3&tn=ggang6_pg" target="_blank">劲舞团</a> <a href="http://www.bhttp://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=武林外传" target="_blank">武林外传</a> <a href="http://www.baidu.com/s?wd=蔡依林&bar=&cl=3&tn=ggang6_pg" target="_blank">蔡依林</a> <a href="http://www.baidu.com/s?wd=周杰伦&bar=&cl=3&tn=ggang6_pg" target="_blank">周杰伦</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=故宫" target="_blank">故宫</a> <a href="http://www.baidu.com/s?wd=刘亦菲&bar=&cl=3&tn=ggang6_pg" target="_blank">刘亦菲</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=人体艺术写真" target="_blank">人体艺术写真</a> <a href="http://www.baidu.com/s?wd=图片&bar=&cl=3&tn=ggang6_pg" target="_blank">图片</a>
          <table width="760" border="0" align="center" cellspacing="0">
            <tr>
              <td width="750" height="25" bordercolor="#FFFFFF" background="imagen/web_01_05.gif"><div align="center"> <img src="images/jtou.gif">
                      <script language="JavaScript" src="PostAd.js" type="text/javascript"></script>
              </div></td>
            </tr>
          </table>
</div>
<%
rs.close
set rs=nothing
set conn=nothing
%>
<!--#include file="base2.asp"-->
</body>

</html>