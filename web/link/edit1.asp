<!--#include file="Safety.asp"-->
<!--#include file="char.inc"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta name="keywords" content="Job 528��Ƹ��ְ��=���������ְ�������Ƹ����ҵ��Ƹ���˲��г���������ҵ��Ϣ-�ܲ�528����˲���Ƹ��">
<meta name="description" content="Job 528��Ƹ��ְ��=���������ְ�������Ƹ����ҵ��Ƹ���˲��г���������ҵ��Ϣ-�ܲ�528����˲���Ƹ��">
<link href="style.css" rel="stylesheet" type="text/css">
<style type="text/css">
td{font-size:12px;}
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
</script>
<title>Job 528��Ƹ��ְ��=���������ְ�������Ƹ����ҵ��Ƹ���˲��г���������ҵ��Ϣ-�ܲ�528����˲���Ƹ��</title></head>


<body topmargin="10">

<script language="javascript" src="/top.js"></script>

<%
	filePath = "word.xml"
	Set objXML = Server.CreateObject("Microsoft.XMLDOM")
   'Set objXML = server.CreateObject("Msxml2.DOMDocument")
        objXML.async = False
        loadResult = objXML.Load(server.MapPath(filePath))
        If Not loadResult Then
             Response.Write ("����XML�ļ�����!")
               Response.End
         End If		

      id =  Request("ID")
	  	  
	  
      Set objNodes = objXML.selectSingleNode("xml/guestbook/item[id ='" & id & "']")



      if Not IsNull(objNodes) then
	  
	  linkname=objNodes.childNodes(2).text  
	  linkurl=objNodes.childNodes(3).text
	  
	  
       linkname2 = trim(Request("linkname"))
	   linkurl2=trim(request("linkurl"))
	   
       if linkname2 <> "" and linkurl2 <> "" then
	   
		objNodes.childNodes(2).text  = linkname2
		
		objNodes.childNodes(3).text  = linkurl2
		
		objXML.save(server.MapPath(filePath))
				
		Set objXML=nothing
		
		Response.Write "<script>window.alert('���������޸ĳɹ���');window.location='admin.asp';</script>"
		
		response.end
		
       end if
	   
      end if
	  
	  
%>


 <table width='729' border='0' align='center' cellpadding='0' cellspacing='0'>
<tr><td height='20' colspan='2' valign='middle' style='font-size:12px;color:#000000;background:#72BEFE;BORDER-RIGHT:#aaaaaa 1px solid;padding-top:3px;'>����ǰλ�ã���ҳ >> ��������</td></tr>
</table>

<table width='729' border='0' align='center' cellpadding='0' cellspacing='0'>
<tr><td height='10' colspan='2'></td></tr>
</table>

  
  
	  
<TABLE width=728 border=0 align="center" cellPadding=0 cellSpacing=0 style="BORDER: #dddddd 1px solid;">
  <!--DWLayoutTable-->
  <TBODY>
    <TR style="BACKGROUND-COLOR: #f2fdee"> 
      <TD width=172 height=36>&nbsp;</TD>
      <TD width=331>&nbsp;</TD>
      <TD width=223>&nbsp;</TD>
    </TR>
    <TR style="BACKGROUND-COLOR: #f2fdee">
      <TD height=160>&nbsp;</TD>
      <TD valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" style="border:#dddddd 1px solid;">
          
		  <form name="form1" action="edit1.asp" method="post" onSubmit="return checkform1()">
		  <input type="hidden" name="id" value=<%=id%>>
            <tr> 
              <td height="27" colspan="2" align="center" valign="middle" bgcolor="#f6f6f6">�޸���������</td>
            </tr>
            <tr> 
              <td width="83" height="30" align="center" valign="middle">�������ƣ�</td>
              <td width="249" valign="middle"><input name="linkname" type="text" id="linkname" value="<%=linkname%>"></td>
            </tr>
            <tr> 
              <td height="31" align="center" valign="middle">���ӵ�ַ��</td>
              <td valign="middle"><input name="linkurl" type="text" id="linkurl" value="<%=linkurl%>">
                ����:http</td>
            </tr>
            <tr> 
              <td height="35">&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr align="center" valign="top"> 
              <td height="35" colspan="2"> <input type="submit" name="Submit" value="ȷ���޸�"></td>
            </tr>
          </form>
        </table>
		
		
		</TD>
      <TD>&nbsp;</TD>
    </TR>
    <TR style="BACKGROUND-COLOR: #f2fdee">
      <TD height=54>&nbsp;</TD>
      <TD>&nbsp;</TD>
      <TD>&nbsp;</TD>
    </TR>
  </TBODY>
</TABLE>

<script language="javascript" src="/bottom.js"></script>

</BODY></HTML>
