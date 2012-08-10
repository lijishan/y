<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<%
dim selflag
	if request("isread")="yes" then
	selflag=""
	else
	selflag=" and new=false"
	end if
	select case request("delDate")
	case "all"
	sql="delete from message where id>0 "&selflag
	case 7
	sql="delete from message where datediff('d',addtime,Now())>7 "&selflag
	case 30
	sql="delete from message where datediff('d',addtime,Now())>30 "&selflag
	case 60
	sql="delete from message where datediff('d',addtime,Now())>60 "&selflag
	case 180
	sql="delete from message where datediff('d',addtime,Now())>180 "&selflag
	end select
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('²Ù×÷Íê³É£¡');" & "history.back()" & "</script>" 
%>