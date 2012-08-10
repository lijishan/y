<!--#include file="conn.asp"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../css.css"  type="text/css">
<style type="text/css">
td{font-size:12px;}
.STYLE4 {color: #006666}
.STYLE5 {color: #CC0099}
.STYLE6 {
	color: #FF0000;
	font-weight: bold;
}
.STYLE7 {color: #0099FF}
.STYLE8 {color: #009AFF}
.STYLE9 {font-size: 12px}
</style>

<script>
function checkform1(){

if(form1.linkname.value=="")
{

alert("链接名称不能为空!");
form1.linkname.focus();
return false;
}
if(form1.linkurl.value=="")
{

alert("链接路径不能为空!");
form1.linkurl.focus();
return false;
}

}


function checkform2()
{
if(form2.linkname.value=="")
{

alert("链接名称不能为空!");
form2.linkname.focus();
return false;
}
if(form2.linkurl.value=="")
{

alert("链接路径不能为空!");
form2.linkurl.focus();
return false;
}

if(form2.imgpath.value=="")
{

alert("图片路径不能为空!");
form2.imgpath.focus();
return false;
}



}
</script>

<title>友情链接</title></head>

<body topmargin="10">

<!--#include file="top_index.asp"-->
<table width='760' border='0' align='center' cellpadding='0' cellspacing='0'>
<tr><td width="748" height='18' colspan='2' bgcolor="#000000"><span class="STYLE9"><strong><font color=#ff0000>本站免费提供:</font></strong></span> <a href="http://www.ggkjcn.com/boke" target="_blank"><font color=#ffff00>免费个人主页/博客空间</font></a> <a href="http://www.ggkjcn.com/gbook" target="_blank"><font color=#ffff00>免费留言本</font></a> <a href="http://www.ggkjcn.com/dh" target="_blank"><font color=#ffff00>免费网址导航</font></a> <a href="http://www.ggkjcn.com/lw8" target="_blank"><font color=#ffff00>免费论论文</font></a> <a href="http://www.ggkjcn.com/index/mfzy_sy.asp" target="_blank"><font color=#ffff00>免费建站资源</font></a> <a href="http://www.ggkjcn.com/ls" target="_blank"><font color=#ffff00>手机铃声图片下载</font></a></td>
</tr>
<tr>
  <td height='18' colspan='2'><span style="border-bottom:#009090 2px solid;">热门搜索关键字：<a href="http://www.baidu.com/s?wd=博客&bar=&cl=3&tn=ggang6_pg" target="_blank">免费博客</a> <a href="http://www.baidu.com/s?wd=mp3&bar=&cl=3&tn=ggang6_pg" target="_blank">mp3</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=游戏" target="_blank">游戏</a> <a href="http://www.baidu.com/s?wd=电影&bar=&cl=3&tn=ggang6_pg" target="_blank">电影</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=跑跑卡丁车" target="_blank">跑跑卡丁车</a> <a href="http://www.baidu.com/s?wd=迅雷&bar=&cl=3&tn=ggang6_pg" target="_blank">迅雷</a> <a href="http://www.baidu.com/s?wd=劲舞团&bar=&cl=3&tn=ggang6_pg" target="_blank">劲舞团</a> <a href="http://www.bhttp://www.baidu.com/baidu?tn=ggang6_pg&word=武林外传" target="_blank">武林外传</a> <a href="http://www.baidu.com/s?wd=蔡依林&bar=&cl=3&tn=ggang6_pg" target="_blank">蔡依林</a> <a href="http://www.baidu.com/s?wd=周杰伦&bar=&cl=3&tn=ggang6_pg" target="_blank">周杰伦</a> <a href="http://www.baidu.com/baidu?tn=ggang6_pg&word=故宫" target="_blank">故宫</a> <a href="http://www.baidu.com/s?wd=刘亦菲&bar=&cl=3&tn=ggang6_pg" target="_blank">刘亦菲</a> <a href="http://www.baidu.com/baidu?tn=ggang6_pg&word=人体艺术写真" target="_blank">人体艺术写真</a> <a href="http://www.baidu.com/s?wd=图片&bar=&cl=3&tn=ggang6_pg" target="_blank">图片</a></span></td>
</tr>
</table>


<TABLE width=728 border=0 align="center" cellPadding=0 cellSpacing=0 style="border:#dddddd 1px solid;">
  <!--DWLayoutTable-->
  <TBODY>
    <TR> 
      <TD width="22" height="18">&nbsp;</TD>
      <TD width="13">&nbsp;</TD>
      <TD width="320">&nbsp;</TD>
      <TD width="15">&nbsp;</TD>
      <TD width="320">&nbsp;</TD>
      <TD width="19">&nbsp;</TD>
      <TD width="17">&nbsp;</TD>
    </TR>
    <TR> 
      <TD height="22"></TD>
      <TD></TD>
      <TD colspan="3" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <!--DWLayoutTable-->
          <tr> 
            <td width="655" height="22" valign="middle" style="border-bottom:#009090 2px solid;">
              <p>·文字链接区</p>
            <p><script language="JavaScript1.1" src=http://www.yansulian.com/vdonglink.asp?user=ggang6&classid=6&style=1></script></p></td>
          </tr>
        </table></TD>
      <TD></TD>
      <TD></TD>
    </TR>
    <TR> 
      <TD height="10"></TD>
      <TD></TD>
      <TD></TD>
      <TD></TD>
      <TD></TD>
      <TD></TD>
      <TD></TD>
    </TR>
    <TR> 
      <TD height="28"></TD>
      <TD></TD>
      <TD colspan="3" valign="top"><table border="0" cellpadding="0" cellspacing="0">
          <!--DWLayoutTable-->
          <%
	i=1
	StarNodes=0

	strSourceFile = Server.MapPath("Word.xml")
   Set objXML = Server.CreateObject("Microsoft.XMLDOM")
	objXML.load(strSourceFile)
	Set objRootsite = objXML.documentElement.selectSingleNode("guestbook")

	'每页显示*条留言
	
	AllNodesNum = objRootsite.childNodes.length - 1
		

	
	response.write "<tr>"
	
	
	while StarNodes =< AllNodesNum

		id=objRootsite.childNodes.item(StarNodes).childNodes.item(0).text	
		liketype=objRootsite.childNodes.item(StarNodes).childNodes.item(1).text
		linkname=objRootsite.childNodes.item(StarNodes).childNodes.item(2).text		
		linkurl=objRootsite.childNodes.item(StarNodes).childNodes.item(3).text
		imgpath=objRootsite.childNodes.item(StarNodes).childNodes.item(4).text
		addtime=objRootsite.childNodes.item(StarNodes).childNodes.item(5).text
		ischeck=objRootsite.childNodes.item(StarNodes).childNodes.item(6).text
		
		if liketype="1" and ischeck="1" then
		
		
	response.write "<td height='25' width='105' align='center' valign='middle' bgcolor='#ffffff' style='padding:5px;'><a href='http://"&replace(linkurl,"http://","")&"' target='_blank' class='a4'>"&linkname&"</a></td>"	  
		  

	%>
          <% 

if i mod 7=0 then response.write "</tr><tr>" 

i=i+1

end if


StarNodes = StarNodes + 1
wend 

set objXML = nothing 
	
%>
        </table></TD>
      <TD></TD>
      <TD></TD>
    </TR>
    <TR> 
      <TD height="27"></TD>
      <TD></TD>
      <TD>&nbsp;</TD>
      <TD>&nbsp;</TD>
      <TD>&nbsp;</TD>
      <TD></TD>
      <TD></TD>
    </TR>
    <TR> 
      <TD height="22"></TD>
      <TD></TD>
      <TD colspan="3" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <!--DWLayoutTable-->
          <tr> 
            <td width="655" height="22" valign="middle" style="border-bottom:#009090 2px solid;">·图片链接区</td>
          </tr>
        </table></TD>
      <TD></TD>
      <TD></TD>
    </TR>
    <TR> 
      <TD height="10"></TD>
      <TD></TD>
      <TD></TD>
      <TD></TD>
      <TD></TD>
      <TD></TD>
      <TD></TD>
    </TR>
    <TR> 
      <TD height="50"></TD>
      <TD></TD>
      <TD colspan="3" valign="top"><table border="0" cellpadding="0" cellspacing="0">
          <!--DWLayoutTable-->
          <%
	j=1
	StarNodes=0

	strSourceFile = Server.MapPath("Word.xml")
   Set objXML = Server.CreateObject("Microsoft.XMLDOM")
	objXML.load(strSourceFile)
	Set objRootsite = objXML.documentElement.selectSingleNode("guestbook")

	
	
	'获取子节点数据（因为是从节点数从0开始的所最大子节点数要减1）
	AllNodesNum = objRootsite.childNodes.length - 1
	

	
	response.write "<tr>"
	
	
while StarNodes =< AllNodesNum

		id=objRootsite.childNodes.item(StarNodes).childNodes.item(0).text	
		liketype=objRootsite.childNodes.item(StarNodes).childNodes.item(1).text
		linkname=objRootsite.childNodes.item(StarNodes).childNodes.item(2).text		
		linkurl=objRootsite.childNodes.item(StarNodes).childNodes.item(3).text
		imgpath=objRootsite.childNodes.item(StarNodes).childNodes.item(4).text
		addtime=objRootsite.childNodes.item(StarNodes).childNodes.item(5).text
		ischeck=objRootsite.childNodes.item(StarNodes).childNodes.item(6).text

		if liketype="2" and ischeck="1" then
		
		
	response.write "<td height='28' align='center' valign='middle' bgcolor='#ffffff' style='padding:5px;'><a href='http://"&replace(linkurl,"http://","")&"' target='_blank' title='"&linkname&"'><img src='http://"&replace(imgpath,"http://","")&"' border=0 height=31 width=88></a></td>"	  
		  

	%>
          <% 

if j mod 7=0 then response.write "</tr><tr>" 

j=j+1

end if


StarNodes = StarNodes + 1
wend 

set objXML = nothing 
	
%>
        </table></TD>
      <TD></TD>
      <TD></TD>
    </TR>
    <TR> 
      <TD height="27"></TD>
      <TD></TD>
      <TD>&nbsp;</TD>
      <TD>&nbsp;</TD>
      <TD>&nbsp;</TD>
      <TD></TD>
      <TD></TD>
    </TR>
    <TR> 
      <TD height="22"></TD>
      <TD></TD>
      <TD colspan="3" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <!--DWLayoutTable-->
          <tr> 
            <td width="655" height="22" valign="middle" style="border-bottom:#009090 2px solid;">·等待审核的文字链接（<span class="STYLE7">审核通过前，只显示你站的链接文字</span>）</td>
          </tr>
        </table></TD>
      <TD></TD>
      <TD></TD>
    </TR>
    <TR> 
      <TD height="10"></TD>
      <TD></TD>
      <TD></TD>
      <TD></TD>
      <TD></TD>
      <TD></TD>
      <TD></TD>
    </TR>
    <TR> 
      <TD height="28"></TD>
      <TD></TD>
      <TD colspan="3" valign="top"><table border="0" cellpadding="0" cellspacing="0">
          <!--DWLayoutTable-->
          <%
	i=1
	StarNodes=0

	strSourceFile = Server.MapPath("Word.xml")
   Set objXML = Server.CreateObject("Microsoft.XMLDOM")
	objXML.load(strSourceFile)
	Set objRootsite = objXML.documentElement.selectSingleNode("guestbook")

	
	
	'获取子节点数据（因为是从节点数从0开始的所最大子节点数要减1）
	AllNodesNum = objRootsite.childNodes.length - 1
	

	response.write "<tr>"
	
	
	while StarNodes =< AllNodesNum

		id=objRootsite.childNodes.item(StarNodes).childNodes.item(0).text	
		liketype=objRootsite.childNodes.item(StarNodes).childNodes.item(1).text
		linkname=objRootsite.childNodes.item(StarNodes).childNodes.item(2).text		
		linkurl=objRootsite.childNodes.item(StarNodes).childNodes.item(3).text
		imgpath=objRootsite.childNodes.item(StarNodes).childNodes.item(4).text
		addtime=objRootsite.childNodes.item(StarNodes).childNodes.item(5).text
		ischeck=objRootsite.childNodes.item(StarNodes).childNodes.item(6).text


		if liketype="1" and ischeck="0" then
		
	response.write "<td height='28' align='center' valign='middle' bgcolor='#ffffff' style='padding:5px;'>"&linkname&"</td>"	
	'response.write "<td height='28' align='center' valign='middle' bgcolor='#ffffff' style='padding:5px;'><a href='http://"&replace(linkurl,"http://","")&"' target='_blank' class='a4'>"&linkname&"</a></td>"	  
		  

	%>
          <% 

if i mod 8=0 then response.write "</tr><tr>" 

i=i+1

end if


StarNodes = StarNodes + 1
wend 

set objXML = nothing 
	
%>
        </table></TD>
      <TD></TD>
      <TD></TD>
    </TR>
    <TR> 
      <TD height="27"></TD>
      <TD></TD>
      <TD>&nbsp;</TD>
      <TD>&nbsp;</TD>
      <TD>&nbsp;</TD>
      <TD></TD>
      <TD></TD>
    </TR>
    <TR> 
      <TD height="22"></TD>
      <TD></TD>
      <TD colspan="3" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <!--DWLayoutTable-->
          <tr> 
            <td width="655" height="22" valign="middle" style="border-bottom:#009090 2px solid;">·等待审核的图片链接（<span class="STYLE8"><span class="STYLE7">审核通过前，</span>只显示你站的LOGO</span>）</td>
          </tr>
        </table></TD>
      <TD></TD>
      <TD></TD>
    </TR>
    <TR> 
      <TD height="10"></TD>
      <TD></TD>
      <TD></TD>
      <TD></TD>
      <TD></TD>
      <TD></TD>
      <TD></TD>
    </TR>
    <TR> 
      <TD height="50"></TD>
      <TD></TD>
      <TD colspan="3" valign="top"><table border="0" cellpadding="0" cellspacing="0">
          <!--DWLayoutTable-->
          <%
	j=1
	StarNodes=0

	strSourceFile = Server.MapPath("Word.xml")
   Set objXML = Server.CreateObject("Microsoft.XMLDOM")
	objXML.load(strSourceFile)
	Set objRootsite = objXML.documentElement.selectSingleNode("guestbook")

	
	'获取子节点数据（因为是从节点数从0开始的所最大子节点数要减1）
	AllNodesNum = objRootsite.childNodes.length - 1
		
	
	
	response.write "<tr>"
	
	
	while StarNodes =< AllNodesNum

		id=objRootsite.childNodes.item(StarNodes).childNodes.item(0).text	
		liketype=objRootsite.childNodes.item(StarNodes).childNodes.item(1).text
		linkname=objRootsite.childNodes.item(StarNodes).childNodes.item(2).text		
		linkurl=objRootsite.childNodes.item(StarNodes).childNodes.item(3).text
		imgpath=objRootsite.childNodes.item(StarNodes).childNodes.item(4).text
		addtime=objRootsite.childNodes.item(StarNodes).childNodes.item(5).text
		ischeck=objRootsite.childNodes.item(StarNodes).childNodes.item(6).text

		if liketype="2" and ischeck="0" then
		
	response.write "<td height='28' align='center' valign='middle' bgcolor='#ffffff' style='padding:5px;'><img src='http://"&replace(imgpath,"http://","")&"' border=0 height=31 width=88></td>"	
	'response.write "<td height='28' align='center' valign='middle' bgcolor='#ffffff' style='padding:5px;'><a href='http://"&replace(linkurl,"http://","")&"' target='_blank' title='"&linkname&"'><img src='http://"&replace(imgpath,"http://","")&"' border=0 height=31 width=88></a></td>"	  
		  

	%>
          <% 

if j mod 7=0 then response.write "</tr><tr>" 

j=j+1

end if


StarNodes = StarNodes + 1
wend 

set objXML = nothing 
	
%>
        </table></TD>
      <TD></TD>
      <TD></TD>
    </TR>
    <TR> 
      <TD height="48"></TD>
      <TD></TD>
      <TD>&nbsp;</TD>
      <TD>&nbsp;</TD>
      <TD>&nbsp;</TD>
      <TD></TD>
      <TD></TD>
    </TR>
    <TR> 
      <TD height="160"></TD>
      <TD></TD>
      <TD valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" style="border:#dddddd 1px solid;">
          <form name="form1" action="addtextlink.asp" method="post" onSubmit="return checkform1()">
            <tr> 
              <td height="27" colspan="2" align="center" valign="middle" bgcolor="#f6f6f6">文字链接申请</td>
            </tr>
            <tr> 
              <td width="83" height="30" align="center" valign="middle">链接名称：</td>
              <td width="249" valign="middle"><input name="linkname" type="text" id="linkname" maxlength="8"> 
              7字内</td>
            </tr>
            <tr> 
              <td height="31" align="center" valign="middle">链接地址：</td>
              <td valign="middle"><input name="linkurl" type="text" id="linkurl" maxlength="60"></td>
            </tr>
            <tr> 
              <td height="32">&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr align="center" valign="top"> 
              <td height="35" colspan="2"> <input type="submit" name="Submit" value="提交审核">
              <br><br>提交后24小时内必须做好本站链接！！</td>
            </tr>
          </form>
        </table></TD>
      <TD>&nbsp;</TD>
      <TD valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" style="border:#dddddd 1px solid;">
          <form name="form2" action="addimglink.asp" method="post" onSubmit="return checkform2()">
            <tr> 
              <td height="27" colspan="2" align="center" valign="middle" bgcolor="#f6f6f6">图片链接申请(88*31)</td>
            </tr>
            <tr> 
              <td width="87" height="29" align="center" valign="middle">链接名称：</td>
              <td width="238" valign="middle"><input name="linkname" type="text" id="linkname" maxlength="15">
              10字内</td>
            </tr>
            <tr> 
              <td height="28" align="center" valign="middle">链接地址：</td>
              <td valign="middle"><input name="linkurl" type="text" id="linkurl" maxlength="60"></td>
            </tr>
            <tr> 
              <td height="28" align="center" valign="middle">图片路径：</td>
              <td valign="middle"><input name="imgpath" type="text" id="imgpath" maxlength="60"></td>
            </tr>
            <tr align="center" valign="middle"> 
              <td height="55" colspan="2"><input type="submit" name="Submit2" value="提交审核">
              <br><br>提交后24小时内必须做好本站链接！！</td>
            </tr>
          </form>
        </table></TD>
      <TD>&nbsp;</TD>
      <TD></TD>
    </TR>
    <TR> 
      <TD height="42"></TD>
      <TD></TD>
      <TD>&nbsp;</TD>
      <TD>&nbsp;</TD>
      <TD>&nbsp;</TD>
      <TD></TD>
      <TD></TD>
    </TR>
    <TR> 
      <TD height="78">&nbsp;</TD>
      <TD colspan="5" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <!--DWLayoutTable-->
          <tr> 
            <td width="691" height="78" valign="middle"><p><span class="STYLE4">友情链接须知：<span class="STYLE5">提交您的链接请求后，尽快做好我站的链接</span>，我们将在<span class="STYLE6">24小时</span>内审核、做好贵站的链接。<br>
链接形式： <br>
文字链接－杰博528免费招聘网 链接地址：http://www.job528.net<br>
图片链接－杰博528免费招聘网 链接地址：http://www.job528.net <br>
链接图片(88*31)：</span><img src="http://www.job528.net/images/logo.gif" width="88" height="31"><br> 
            </p>            </td>
          </tr>
        </table></TD>
      <TD>&nbsp;</TD>
    </TR>
    <TR> 
      <TD height="25">&nbsp;</TD>
      <TD>&nbsp;</TD>
      <TD colspan="3"><div align="center"><span class="STYLE4"><strong>本站首页只做文字链接，要求PR&gt;=4，日IP&gt;3000。</strong></span><br><br>
        <script language="JavaScript" src="http://www.ggkjcn.com/bbs/inc/PostAd.js" type="text/javascript"></script>
      </div></TD>
      <TD>&nbsp;</TD>
      <TD></TD>
    </TR>
  </TBODY>
</TABLE><br>
<!--#include file="base.asp"-->

</BODY></HTML>
