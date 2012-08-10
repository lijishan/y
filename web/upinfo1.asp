<!--#include file="conn_reg.asp"-->
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"1" then
response.write "<script language=JavaScript>" & chr(13) & "alert('登录超时!!请重新登录后填写本页内容！');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
if len(request("code"))>0 then
if len(request("code"))<>15 and len(request("code"))<>18 then
response.write "<script language=JavaScript>" & chr(13) & "alert('身份证号码格式不对！');" & "history.back()" & "</script>" 
Response.End
end if
end if 
if isdate(request("bdate"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('出生日期格式不正确！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("sex"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('请选择性别！');" & "history.back()" & "</script>" 
Response.End
end if
if isnumeric(request("shenggao"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('身高格式不正确！');" & "history.back()" & "</script>" 
Response.End
end if
if isnumeric(request("tizhong"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('体重格式不正确！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("minzu"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('民族情况不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if request("hka")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('户口所在地不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if request("hkb")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('目前所在地不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if request("edu")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('教育程度不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if request("zye")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('专业类别不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("zhuanyen1"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('专业名称不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("school"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('毕业学校不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if isdate(request("bydate"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('毕业日期格式不正确！');" & "history.back()" & "</script>" 
Response.End
end if
if request("zzmm")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('政治面貌不能为空不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if request("zcheng")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('职称不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("jyjl"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('受教育/培训简历不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if len(request("jyjl"))>400 then
response.write "<script language=JavaScript>" & chr(13) & "alert('受教育/培训简历不能超过400字！');" & "history.back()" & "</script>" 
Response.End
end if
sql="update in_user set code='"&request("code")&"',bdate='"&request("bdate")&"',sex='"&request("sex")&"',guoji='"&request("guoji")&"',shenggao='"&request("shenggao")&"',tizhong='"&request("tizhong")&"',minzu='"&request("minzu")&"',marry='"&request("marry")&"',hka='"&request("hka")&"',hkb='"&request("hkb")&"',edu='"&request("edu")&"',zye='"&request("zye")&"',zhuanyen1='"&request("zhuanyen1")&"',zyes='"&request("zyes")&"',zhuanyen2='"&request("zhuanyen2")&"',school='"&request("school")&"',bydate='"&request("bydate")&"',zzmm='"&request("zzmm")&"',zcheng='"&request("zcheng")&"',jyjl='"&request("jyjl")&"' where id="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
response.redirect "in_control2.asp"%>
