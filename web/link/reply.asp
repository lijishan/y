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

<script language="javascript">

function checkspace(astr)

{

bstr=""
cd=astr.length
for(i=0;i<cd;i++)
 { if(astr.charAt(" ")>=0)
    {bstr=bstr+" "}
 }

if(bstr==astr)
 {
return true;
}
else{return false;}

}


function checkform() {

if(checkspace(form1.msgre.value))

{
   alert ("������ظ�����!");
   form1.msgre.value="";
	form1.msgre.focus();
	return false;

}





}


</script>

<title>Job 528��Ƹ��ְ��=���������ְ�������Ƹ����ҵ��Ƹ���˲��г���������ҵ��Ϣ-�ܲ�528����˲���Ƹ��</title></head>


<body topmargin="10">




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

      id =  Request.QueryString("ID")
      Set objNodes = objXML.selectSingleNode("xml/guestbook/item[id ='" & id & "']")



      if Not IsNull(objNodes) then
	  reply=objNodes.childNodes(6).text
       msgre = htmlencode2(Request.form("msgre"))
       if msgre <> "" then
		objNodes.childNodes(6).text  = msgre
		objNodes.childNodes(7).text  = now()
		objXML.save(server.MapPath(filePath))		
		Set objXML=nothing
		Response.Write "<script>window.alert('�ɹ��ظ���');window.location='admin.asp';</script>"
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
      <TD width=74 height=18>&nbsp;</TD>
      <TD width=572>&nbsp;</TD>
      <TD width=80>&nbsp;</TD>
    </TR>
    <TR style="BACKGROUND-COLOR: #f2fdee">
      <TD height=181>&nbsp;</TD>
      <TD valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <!--DWLayoutTable-->
        <form name="form1" method="post" action="reply.asp?ID=<%=id%>" onSubmit="return checkform()">
            <tr> 
              <td width="80" height="133" align="right" valign="top">����Ա�ظ���</td>
              <td width="492" valign="top"> <textarea name="msgre" cols="50" rows="9" id="msgre"><%=reply%></textarea> 
                <font color=#ff0000>**</font></td>
            </tr>
            <tr> 
              <td height="34" colspan="2" align="center" valign="middle"> <input name="submit" type="submit" class="input" value="����Ա�ظ�">
                &nbsp; 
                <input type="reset" value=" �� �� " class="input">&nbsp; 
                <input type="button" value=" �� �� " class="input" onClick="javascript:window.history.go(-1);"></td>
            </tr>
          </form>
<% 
set objXML = nothing 
%>
        </table></TD>
      <TD>&nbsp;</TD>
    </TR>
    <TR style="BACKGROUND-COLOR: #f2fdee">
      <TD height=25>&nbsp;</TD>
      <TD>&nbsp;</TD>
      <TD>&nbsp;</TD>
    </TR>
  </TBODY>
</TABLE>


</BODY></HTML>
