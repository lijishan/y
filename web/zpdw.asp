<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->

<html>

<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title>最新加入招聘企业单位 - <%=webname%></title>
<style type="text/css">
<!--
.STYLE1 {
	color: #0099FF;
	font-weight: bold;
	font-size: 12pt;
}
.STYLE5 {color: #FF0000; font-weight: bold; font-size: 10pt; }
-->
</style>
</head>

<body>
<!--#include file="top_index.asp"-->

<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="106">
		<tr>
			<td style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf" width="760" valign="top">
			<div align="center">
				<table width="760" border="0" align="center">
                  <tr>
                    <td><div align="center" ><strong><font color=#ff0000 size=4> 企业单位列表</font></strong></div></td>
                  </tr>
                  <tr>
                    <td><div align="center">说明：为了方便广大用户的查询和提高新加入招聘用户的点击查看率，本站把按<span class="STYLE5">加入时间顺序</span>由近及远罗列如下，供大家参考！！</div></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                </table>
				<table border="0" width="98%" cellspacing="0" cellpadding="0" id="table2" height="164">
					<tr>
						<td style="border: 1px solid #C0C0C0" valign="top">
						<%set rs=server.CreateObject("adodb.recordset")
rs.open "select name,rdate,area,id from en_user  order by id desc",conn,1,1
if err.number<>0 then
response.write "数据库中无数据"
end if

'------------------------------------------分页开始
if rs.recordcount=0 then 
response.write "没有数据"
else
rs.PageSize =50 '每页记录条数
iCount=rs.RecordCount '记录总数
iPageSize=rs.PageSize
maxpage=rs.PageCount 
page=request("page")

if Not IsNumeric(page) or page="" then
page=1
else
page=cint(page)
end if

if page<1 then
page=1
elseif page>maxpage then
page=maxpage
end if

rs.AbsolutePage=Page

if page=maxpage then
x=iCount-(maxpage-1)*iPageSize
else
x=iPageSize
end if

					For i=1 To x	%>	  
								
								 &nbsp;<font color=#ff0000>〓</font><strong>【<%  response.write (page-1)*50+i  %>
								 】</strong>&nbsp;&nbsp;<a target =_blank href="company.asp?id=<%=rs("id")%>"><%=rs("name")%></a>  〖公司所在地：	<%=rs("area")%>	〗																																						<%a=instr(rs("rdate"),chr(32))-1 
								    response.write Mid(rs("rdate"),1,a)
							 									response.write "<hr width=100% color=777777 size=1>"
rs.movenext
next
call PageControl(iCount,maxpage,page,"border=0 align=center","<p align=center>")
end if
rs.close
set rs=nothing

Sub PageControl(iCount,pagecount,page,table_style,font_style)
'生成链接
Dim query, a, x, temp
action = "http://" & Request.ServerVariables("HTTP_HOST") & Request.ServerVariables("SCRIPT_NAME")

query = Split(Request.ServerVariables("QUERY_STRING"), "&")
For Each x In query
a = Split(x, "=")
If StrComp(a(0), "page", vbTextCompare) <> 0 Then
temp = temp & a(0) & "=" & a(1) & "&"
End If
Next

Response.Write("<table width=100% border=0 cellpadding=0 cellspacing=0 bgcolor=#f1f1f1>" & vbCrLf ) 
Response.Write("<form method=get onsubmit=""document.location = '" & action & "?" & temp & "Page='+ this.page.value;return false;""><TR bgcolor=#f1f1f1>" & vbCrLf )
Response.Write("<TD align=center height=35>" & vbCrLf )
Response.Write(font_style & vbCrLf ) 

if page<=1 then
Response.Write ("首 页 " & vbCrLf) 
Response.Write (" " & vbCrLf)
else 
Response.Write("<A HREF=" & action & "?" & temp & "Page=1>首 页</A> " & vbCrLf)
Response.Write("<A HREF=" & action & "?" & temp & "Page=" & (Page-1) & "></A> " & vbCrLf)
end if

if page>=pagecount then
Response.Write (" " & vbCrLf)
Response.Write ("尾 页 " & vbCrLf) 
else
Response.Write("<A HREF=" & action & "?" & temp & "Page=" & (Page-1) & ">上一页</A> " & vbCrLf)
Response.Write("<A HREF=" & action & "?" & temp & "Page=" & (Page+1) & ">下一页</A> " & vbCrLf)
Response.Write("<A HREF=" & action & "?" & temp & "Page=" & pagecount & ">尾 页</A> " & vbCrLf) 
end if

Response.Write(" 页次：" & page & "/" & pageCount & "页" & vbCrLf)
Response.Write(" 共有" & iCount & "个公司记录信息" & vbCrLf)
Response.Write(" 转到" & "<INPUT CLASS=wenbenkuang TYEP=TEXT NAME=page SIZE=2 Maxlength=5 VALUE=" & page & ">" & "页" & vbCrLf & "<INPUT CLASS=go-wenbenkuang type=submit value=GO>")
Response.Write("</TD>" & vbCrLf ) 
Response.Write("</TR></form>" & vbCrLf ) 
Response.Write("</table>" & vbCrLf ) 
End Sub
%>
					
					  </td>
				  </tr>
			  </table>
			  </div>
		  </td>
		</tr>
	</table>
</div>
<%
set rs2=nothing
set rs=nothing
set conn=nothing
%>

<!--#include file="base.asp"-->
</body>

</html>