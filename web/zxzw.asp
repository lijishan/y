<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="unhtml.asp"-->
<!--#include file="ubb.asp"--><style type="text/css">
<!--
.STYLE1 {
	font-size: 12px;
	font-weight: bold;
}
.STYLE2 {font-size: 12px}
-->
</style>
<%
sql="select top 3 job.id,job.enid,job.jtzw,job.addtime from job,en_user where job.enid=en_user.id and en_user.lock=false order by job.id desc"
rs.open sql,conn,1,1%>


                                <table width="700" height="49" border="0" align="center" cellpadding="0" cellspacing="0" id="table12">
                                  <tr>
                                    <td height="15" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="207" align="center"><p class="STYLE1 STYLE2">招聘职位</td>
                                    <td height="15" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="349" align="center"><p class="STYLE1 STYLE2">公&nbsp; 司</td>
                                    <td height="15" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="97" align="center"><span class="STYLE1 STYLE2">日&nbsp; 期</span></td>
                                    <td bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="47" align="center"><div align="right"><span class="STYLE2"><a href="http://www.job528.net/grqz2.asp" target="_blank">更多</a></span></div></td>
                                  </tr>
                                  <%
set rs2=server.createobject("adodb.recordset")
for ii=1 to index3
sql2="select id,name from en_user where id="&rs("enid")
rs2.open sql2,conn,1,1
%>
                                  <tr>
                                    <td width="207" height="15" align="center" background="images/bgcolor_image.gif" bgcolor="#FFFFFF" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " ><a target =_blank  href="http://www.job528.net/job.asp?id=<%=rs("id")%>">  <span class="STYLE2 STYLE2"><%if len(rs("jtzw"))>16 then
									 response.write "<font color=#ff0000>"&LeftStrzp(rs("jtzw"),28)&""
    response.write "...</font>" %>
	                                <% else %>
									
									 <stront><font color=#ff0000><%=rs("jtzw")%></font></stront>
                                    </a>
                                    <% end if %></a></td>
                                    <td width="349" height="15" align="center" background="images/bgcolor_image.gif" bgcolor="#FFFFFF" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " ><a  target =_blank href="http://www.job528.net/company.asp?id=<%=rs2("id")%>"> <span class="STYLE2 STYLE2">『<%=rs2("name")%>』 </span></a>                                       </td>
                                    <td height="15" colspan="2" align="center" background="images/bgcolor_image.gif" bgcolor="#FFFFFF" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " ><span class="STYLE2">
                                    <%
										
								a=instr(rs("addtime"),chr(32))-1
								response.write "<font color =#FF0000>" 
								response.write  "<span class='STYLE2'> "
								response.write Mid(rs("addtime"),1,a)  
								response.write "</span>"
															
								%>                                    
                                    </span></td>
                                  </tr>
                                  <%
rs.movenext
if rs.eof then exit for
rs2.close
next
rs.close
%>
                                </table>
                  </td> 
          <%
    Function LeftStrzp(text,length)  
    Dim t
    t=""
    Dim mt
    Dim l
    l=0
    Dim c
    For i= 1 To Len(text)
    mt=mid(text,i,1)
    c=Asc(mt)
    If c<0 Then c=c+65536
    If c > 255 Then
    l=l+2
    Else 
    l=l+1
    End If
    If l<=CLng(length) Then
    t=t&mt
    else
    exit for
    End If
    Next
    LeftStrzp=t
    End Function
%>                                  