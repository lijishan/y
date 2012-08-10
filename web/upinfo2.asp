<!--#include file="conn_reg.asp"-->
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"1" then
response.write "<script language=JavaScript>" & chr(13) & "alert('登录超时!! 请重新登录后填写本页内容！');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
if request("rctype")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('请选择人才类型！');" & "history.back()" & "</script>" 
Response.End
end if
if request("pthua")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('请选择普通话水平！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("kgzjl"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('个人工作经历不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if len(request("kgzjl"))>400 then
response.write "<script language=JavaScript>" & chr(13) & "alert('个人工作经历不能超过400字！');" & "history.back()" & "</script>" 
Response.End
end if
if isnumeric(request("gznum"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('工作时间格式不正确！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("kothertc"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('工作能力不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if len(request("kothertc"))>200 then
response.write "<script language=JavaScript>" & chr(13) & "alert('工作能力不能超过200字！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("kmubiao"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('职业目标不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if len(request("kmubiao"))>100 then
response.write "<script language=JavaScript>" & chr(13) & "alert('职业目标不能超过100字！');" & "history.back()" & "</script>" 
Response.End
end if
sql="update in_user set rctype='"&request("rctype")&"',language='"&request("language")&"',lanlevel='"&request("lanlevel")&"',languages='"&request("languages")&"',lanlevels='"&request("lanlevels")&"',pthua='"&request("pthua")&"',computer='"&request("computer")&"',kgzjl='"&request("kgzjl")&"',gznum='"&request("gznum")&"',kothertc='"&request("kothertc")&"',kmubiao='"&request("kmubiao")&"' where id="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
response.redirect "in_control3.asp"%>
