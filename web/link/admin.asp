<!--#include file="safety.asp"-->
<!--#include file="conn.asp"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
td{font-size:12px;}
A.a4 {
	FONT-WEIGHT: normal; FONT-SIZE: 12px; COLOR: #000000; FONT-STYLE: normal; TEXT-DECORATION: none
}
A.a4:visited {
	FONT-WEIGHT: normal; FONT-SIZE: 12px; FONT-STYLE: normal; TEXT-DECORATION: none
}
A.a4:active {
	FONT-WEIGHT: normal; FONT-SIZE: 12px; COLOR: red; FONT-STYLE: normal; TEXT-DECORATION: none
}
A.a4:hover {
	FONT-WEIGHT: normal; FONT-SIZE: 12px; COLOR: #ff3300; FONT-STYLE: normal; TEXT-DECORATION: underline
}

.STYLE1 {
	color: #FF0000;
	font-weight: bold;
}
</style>

<script>
function checkform1(){

if(form1.linkname.value=="")
{

alert("�������Ʋ���Ϊ��!");
form1.linkname.focus();
return false;
}
if(form1.linkurl.value=="")
{

alert("����·������Ϊ��!");
form1.linkurl.focus();
return false;
}

}


function checkform2()
{
if(form2.linkname.value=="")
{

alert("�������Ʋ���Ϊ��!");
form2.linkname.focus();
return false;
}
if(form2.linkurl.value=="")
{

alert("����·������Ϊ��!");
form2.linkurl.focus();
return false;
}

if(form2.imgpath.value=="")
{

alert("ͼƬ·������Ϊ��!");
form2.imgpath.focus();
return false;
}



}
</script>

<title>������������ Job 528��Ƹ��ְ��=���������ְ�������Ƹ����ҵ��Ƹ���˲��г���������ҵ��Ϣ-�ܲ�528����˲���Ƹ��</title></head>


<body topmargin="10">


 <table width='729' border='0' align='center' cellpadding='0' cellspacing='0'>
<tr><td height='20' colspan='2' valign='middle' style='font-size:12px;color:#000000;background:#72BEFE;BORDER-RIGHT:#aaaaaa 1px solid;padding-top:3px;'>����ǰλ�ã�<a href="http://www.job528.net">��ҳ</a> >> ��������</td>
</tr>
</table>

<table width='729' border='0' align='center' cellpadding='0' cellspacing='0'>
<tr><td height='10' colspan='2'></td></tr>
</table>

  
  
  
  
  
<TABLE width=728 border=0 align="center" cellPadding=0 cellSpacing=0>
  <!--DWLayoutTable-->
  <TBODY>
    <TR> 
      <TD width="578" height="22">&nbsp;</TD>
      <TD width=150 align=right valign="middle"><a href="javascript:if(confirm('ȷ��Ҫ�˳���?')) window.location='logout.asp';"><font color="blue">�˳��������Ӻ�̨����</font></a>&nbsp;</TD>
    </TR>
  </TBODY>
</TABLE>

<TABLE align="center" cellSpacing=0 cellPadding=0 width=728 border=0 style="border:#dddddd 1px solid;">
  <!--DWLayoutTable-->
  <TBODY>
    <TR> 
      <TD width="23" height="21">&nbsp;</TD>
      <TD width="331">&nbsp;</TD>
      <TD width="23">&nbsp;</TD>
      <TD width="324">&nbsp;</TD>
      <TD width="25">&nbsp;</TD>
    </TR>
   

    <TR> 
      <TD height="44">&nbsp;</TD>
      <TD colspan="3" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#dddddd">
          <!--DWLayoutTable-->
          <tr> 
            <td width="363" height="23" align="center" valign="middle" bgcolor="#f6f6f6">��������</td>
            <td width="183" align="center" valign="middle" bgcolor="#f6f6f6">���ʱ��</td>
            <td width="132" align="center" valign="middle" bgcolor="#f6f6f6">�������</td>
          </tr>
		  
		
		
    
	<%

	StarNodes=0
	strSourceFile = Server.MapPath("Word.xml")
   Set objXML = Server.CreateObject("Microsoft.XMLDOM")
	objXML.load(strSourceFile)
	Set objRootsite = objXML.documentElement.selectSingleNode("guestbook")

	'��ȡ�ӽڵ����ݣ���Ϊ�Ǵӽڵ�����0��ʼ��������ӽڵ���Ҫ��1��
	AllNodesNum = objRootsite.childNodes.length - 1
		
	

	while StarNodes =< AllNodesNum

		id=objRootsite.childNodes.item(StarNodes).childNodes.item(0).text	
		liketype=objRootsite.childNodes.item(StarNodes).childNodes.item(1).text
		linkname=objRootsite.childNodes.item(StarNodes).childNodes.item(2).text		
		linkurl=objRootsite.childNodes.item(StarNodes).childNodes.item(3).text
		imgpath=objRootsite.childNodes.item(StarNodes).childNodes.item(4).text
		addtime=objRootsite.childNodes.item(StarNodes).childNodes.item(5).text
		ischeck=objRootsite.childNodes.item(StarNodes).childNodes.item(6).text
		if liketype="1" then
	%>
	  
		  
		  
		  
          <tr> 
            <td height="21" align="center" valign="middle" bgcolor="#ffffff"><a href="http://<%=replace(linkurl,"http://","")%>" target="_blank" class="a4"><%=linkname%></a></td>
            <td align="center" valign="middle" bgcolor="#ffffff"><%=addtime%></td>
            <td align="center" valign="middle" bgcolor="#ffffff"><%
			if ischeck="0" then
			response.write "<a href='ischeck.asp?ischeck=1&id="&id&"'>ͨ��</a>"
			else
			response.write "<a href='ischeck.asp?ischeck=0&id="&id&"'>��ͨ��</a>"
			end if
			%> | <a href="edit1.asp?id=<%=id%>">�޸�</a> | <a href="javascript:if(confirm('ȷ��Ҫɾ��')) window.location='del.asp?id=<%=id%>'">ɾ��</a></td>
          </tr>
		  
		  
		
<% 

end if

	StarNodes = StarNodes + 1
	wend 
	set objXML = nothing 
%>
  
		  
		  
		  
		  
        </table></TD>
      <TD>&nbsp;</TD>
    </TR>
    <TR> 
      <TD height="22">&nbsp;</TD>
      <TD>&nbsp;</TD>
      <TD>&nbsp;</TD>
      <TD>&nbsp;</TD>
      <TD>&nbsp;</TD>
    </TR>
    <TR>
      <TD height="72"></TD>
      <TD colspan="3" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#dddddd">
          <!--DWLayoutTable-->
          <tr> 
            <td width="242" height="25" align="center" valign="middle" bgcolor="#f6f6f6">��������</td>
            <td width="146" align="center" valign="middle" bgcolor="#f6f6f6">����ͼƬ</td>
            <td width="135" align="center" valign="middle" bgcolor="#f6f6f6">���ʱ��</td>
            <td width="150" align="center" valign="middle" bgcolor="#f6f6f6">�������</td>
          </tr>
	
		
    
	<%

	StarNodes=0

	strSourceFile = Server.MapPath("Word.xml")
   Set objXML = Server.CreateObject("Microsoft.XMLDOM")
	objXML.load(strSourceFile)
	Set objRootsite = objXML.documentElement.selectSingleNode("guestbook")

	'��ȡ�ӽڵ����ݣ���Ϊ�Ǵӽڵ�����0��ʼ��������ӽڵ���Ҫ��1��
	AllNodesNum = objRootsite.childNodes.length - 1
	
	
	while StarNodes =< AllNodesNum

		id=objRootsite.childNodes.item(StarNodes).childNodes.item(0).text	
		liketype=objRootsite.childNodes.item(StarNodes).childNodes.item(1).text
		linkname=objRootsite.childNodes.item(StarNodes).childNodes.item(2).text		
		linkurl=objRootsite.childNodes.item(StarNodes).childNodes.item(3).text
		imgpath=objRootsite.childNodes.item(StarNodes).childNodes.item(4).text
		addtime=objRootsite.childNodes.item(StarNodes).childNodes.item(5).text
		ischeck=objRootsite.childNodes.item(StarNodes).childNodes.item(6).text
		
		if liketype="2" then
	%>	  
		  
          <tr> 
            <td height="46" align="center" valign="middle" bgcolor="#FFFFFF"><a href="http://<%=replace(linkurl,"http://","")%>" target="_blank" class="a4"><%=linkname%></a></td>
            <td align="center" valign="middle" bgcolor="#FFFFFF"><img src="http://<%=replace(imgpath,"http://","")%>" width=88 height=31></td>
            <td align="center" valign="middle" bgcolor="#FFFFFF"><%=addtime%></td>
            <td align="center" valign="middle" bgcolor="#FFFFFF"><%
			if ischeck="0" then
			response.write "<a href='ischeck.asp?ischeck=1&id="&id&"'>ͨ��</a>"
			else
			response.write "<a href='ischeck.asp?ischeck=0&id="&id&"'>��ͨ��</a>"
			end if
			%> | <a href="edit2.asp?id=<%=id%>">�޸�</a> | <a href="javascript:if(confirm('ȷ��Ҫɾ����?')) window.location='del.asp?id=<%=id%>'">ɾ��</a></td>
          </tr>
		  
		  		
<% 

end if

	StarNodes = StarNodes + 1
	wend 
	set objXML = nothing 
%>
  
  
  
        </table></TD>
      <TD></TD>
    </TR>
    <TR>
      <TD height="20"></TD>
      <TD></TD>
      <TD></TD>
      <TD></TD>
      <TD></TD>
    </TR>
    <TR> 
      <TD height="64"></TD>
      <TD colspan="3" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <!--DWLayoutTable-->
          <tr> 
            <td width="678" height="64" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
          </tr>
        </table></TD>
      <TD></TD>
    </TR>
    <TR> 
      <TD height="13"></TD>
      <TD></TD>
      <TD></TD>
      <TD></TD>
      <TD></TD>
    </TR>
  </TBODY>
</TABLE>

</BODY></HTML>
