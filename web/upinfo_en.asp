<!--#include file="conn_reg.asp"-->
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"2" then
response.write "<script language=JavaScript>" & chr(13) & "alert('登录超时!! 请重新登录后填写本页内容！');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if

if len(request("name"))>20then
response.write "<script language=JavaScript>" & chr(13) & "alert('公司名不能超过20个字！');" & "history.back()" & "</script>" 
Response.End
end if
if request("trade")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('请选择公司所属行业！');" & "history.back()" & "</script>" 
Response.End
end if
if request("cxz")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('请选择公司性质！');" & "history.back()" & "</script>" 
Response.End
end if
if request("area")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('请选择公司所在地区！');" & "history.back()" & "</script>" 
Response.End
end if
if isdate(request("fdate"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('成立日期格式不正确！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("jianj"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('公司简介不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if len(request("jianj"))>300 then
response.write "<script language=JavaScript>" & chr(13) & "alert('公司简介不能超过300字！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("pname"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('联系人不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("phone"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('联系电话不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if request("email")="@" or instr(request("email"),"@")=0 then
response.write "<script language=JavaScript>" & chr(13) & "alert('邮箱地址不正确！');" & "history.back()" & "</script>" 
Response.End
end if

sql="update en_user set trade='"&request("trade")&"',cxz='"&request("cxz")&"',fund='"&request("fund")&"',yuangong='"&request("yuangong")&"',area='"&request("area")&"',faren='"&request("faren")&"',fdate='"&request("fdate")&"',jianj='"&request("jianj")&"',address='"&request("address")&"',zip='"&request("zip")&"',pname='"&request("pname")&"',pnames='"&request("pnames")&"',phone='"&request("phone")&"',fax='"&request("fax")&"',email='"&request("email")&"',renshi='"&request("renshi")&"',sex='"&request("sex")&"',rstel='"&request("rstel")&"',web='"&request("web")&"' where id="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
response.redirect "control.asp"%>
