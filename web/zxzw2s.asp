<!--#include file="conn_zp.asp"-->
<style type="text/css">
<!--
.STYLE1 {
	font-size: 12px;
	font-weight: bold;
}
.STYLE3 {font-size: 12px}
-->
</style>
<%
sql="select top 6 job.id,job.enid,job.jtzw,job.addtime from job,en_user where job.enid=en_user.id and en_user.lock=false order by job.id desc"
rs.open sql,conn_zp,1,1%>


                                <table width="341" height="49" border="0" align="center" cellpadding="0" cellspacing="0" id="table12">
                                  <tr>
                                    <td height="15" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="111" align="center"><p class="STYLE3"><span class="STYLE1">今日招聘 </span></td>
                                    <td height="15" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="167" align="center"><p class="STYLE1 STYLE3">公&nbsp; 司</td>
                                    <td width="63" height="15" align="center" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; "><div align="right" class="STYLE3"><a href="http://www.job528.net/grqz2.asp" target="_blank" class="STYLE3"><font color=#ff0000>更多</font></a></div></td>
                                  </tr>
                                  <%
set rs2=server.createobject("adodb.recordset")
for ii=1 to 6
sql2="select id,name from en_user where id="&rs("enid")
rs2.open sql2,conn_zp,1,1
%>
                                  <tr>
                                    <td width="111" height="15" align="center" background="images/bgcolor_image.gif" bgcolor="#FFFFFF" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " ><span class="STYLE3"><a target =_blank  href="http://www.job528.net/job.asp?id=<%=rs("id")%>"> 
									<%if len(rs("jtzw"))>9 then
									 response.write "<font color=#ff0000>"&LeftStrzp(rs("jtzw"),14)&""
    response.write "...</font>" %>
	                                <% else %>
									
								    <stront><font color=#ff0000><%=rs("jtzw")%></font></stront>
                                    </a>
                                    <% end if %>
                                    </span></td>
                                    <td height="15" colspan="2" align="center" background="images/bgcolor_image.gif" bgcolor="#FFFFFF" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " ><span class="STYLE3"><a  target =_blank href="http://www.job528.net/company.asp?id=<%=rs2("id")%>"> 
									<%if len(rs2("name"))>14 then
									 response.write "『"&LeftStrzp(rs2("name"),18)&""
    response.write "...』" %>
	                                <% else %>
									
									『<%=rs2("name")%>』 </a>
                                    <% end if  %>
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