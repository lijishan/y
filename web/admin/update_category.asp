<!--#include file="auth.asp"-->
<!--#include file="conn.asp"-->
<%
op = trim(request("op"))
if op<>"add" && op<>"mod" then
    response.write "<script language=JavaScript>" & chr(13) & "alert('无效请求');" & "history.back()" & "</script>"
    Response.End
end if

sql="select cid from category where cid='"&request("cid")&"' or cname='"&request("cname")&"'"
rs.open sql,conn,1,1
if rs.recordCount<>0 then
    rs.close
    set rs=nothing
    set conn=nothing
    response.write "<script language=JavaScript>" & chr(13) & "alert('此类别ID或名称已经存在！');" & "history.back()" & "</script>"
    Response.End
End if

rs.close
if (trim(request("op")) = "add") then
    sql="insert into category(cid,cname) values('"&request("cid")&"','"&request("cname")&"')"
    rs.open sql,conn,1,1
    set rs=nothing
    set conn=nothing
    response.write "<script language=JavaScript>" & chr(13) & "alert('项目添加成功！');"&"window.location.href = 'admin_category.asp'"&" </script>"
else
    sql="update category set cid='"&request("cid")&"' cname='"&request("cname")&"' where id='"&request("id")&"'"
    rs.open sql,conn,1,1
    set rs=nothing
    set conn=nothing
    response.write "<script language=JavaScript>" & chr(13) & "alert('项目更新成功！');"&"window.location.href = 'admin_category.asp'"&" </script>"
end if
%>
