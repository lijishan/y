<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="md5.asp"-->
<%
if session("login")<>"yes" then
	call codeistrue("")
	psw=md5(request("adminpsw"))
	sql="select * from gogo_admin where gogo_name='"&request("adminname")&"'"
	rs.Open sql,conn,1,1
	if rs.eof then
		response.write "<script language=JavaScript>" & chr(13) & "alert('��δ��½���ʺ��������,���ص�½��"&sql&"');" & "history.back()" & "</script>" 
		rs.close
		response.end
	else
		if psw<>rs("gogo_pwd") then
			response.write "<script language=JavaScript>" & chr(13) & "alert('�ʺ�/�������,���ص�½��');" & "history.back()" & "</script>" 
			rs.close
			response.end
		end if
		session("login")="yes"
		session("FJfkda32KL")="fda232LKfd"
		Response.Cookies("login_pic")="ok"
		Response.Cookies("login_pic").expires=(now+1/24) '����1Сʱ
		Response.Cookies("login")="yes"
		Response.Cookies("login").expires=(now+1/24) '����1Сʱ
	end if
end if
set rs=nothing
set conn=nothing
%>
<html>
<head>
<meta HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<title>��������</title>
</head>
<frameset framespacing="0" border="0" frameborder="0" cols="214,*">
	<frame name="contents" target="main" src="admin1.asp" scrolling="auto" noresize>
	<frame name="main" src="admin_index.asp" scrolling="auto" noresize target="_self">
	<noframes>
	<body>

	<p>����ҳʹ���˿�ܣ��������������֧�ֿ�ܡ�</p>

	</body>
	</noframes>
</frameset>
</html>
