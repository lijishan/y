<%@ Language="VBScript" %>

<%

Option Explicit

Response.Buffer = True

Dim bCookies ' T/F indicating Cookies enabled.

bCookies = Request.QueryString("Cookies")

Select Case LCase(bCookies)

   Case "true", "false"

      ' We got a valid response.

      bCookies = CBool(bCookies)

   Case Else

        Response.Cookies("Cookie_test") = "true"

        Response.Redirect "Cookie_detect.asp"

End Select

%>

<html>

<head>

<title>���������Ƿ����������ʱ�վ���й���</title>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 14px;
	font-weight: bold;
}
-->
</style>
</head>
<% if bCookies ="True" then
 response.write "<br><br><br><br><br><div align='center'><strong><font color=#009966><image src=imagen/succ.gif /><br><br><br>��ϲ�㣡������������������ܵõ���վ�����ķ��񣡣�</font></strong></div>"
else
response.write "<div align='center'><strong><font color=#ff0000><br><image src=imagen/err.gif /><br>��Ǹ����վ��Ҫʹ��SESSION�����������������ǰ��֧�ִ˹��ܣ����������������ʱ�վ����<br>�����úú�����ע��[����ԭ��˽����ΪĬ��ֵ]��<br><br></font></strong></div>�����÷���������IE6Ϊ��������IE ��ѡ�񡰹��ߡ��еġ�Internet ѡ�O�������������ѡ����˽������������е�����Ĭ�ϡ���ť��������ͼ֮һ��������������ͬ������𣩣�����ȷ������<br><div align='center'><image src=imagen/err1.jpg /> <image src=imagen/err2.jpg />  <image src=imagen/err3.jpg /></div>"
end if %>
<p align="center"><script src='http://s49.cnzz.com/stat.php?id=422392&web_id=422392&show=pic' language='JavaScript' charset='gb2312'></script></p>
</body>

</html>

