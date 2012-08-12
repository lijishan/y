<style type="text/css">
    <!--
    .tb_header {border-bottom-width:1px;border-style:dotted;font-weight: bold;padding-left:20px}
    .tb_column {text-align:left;height:25px;padding-left:20px}
    -->
</style>

<table width="100%" align="center" cellpadding="20">

    <tr>
        <td colspan="5" align="center" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; "><%
            sql="select top 5 job.id,job.enid,job.jtzw,job.hka,job.city,job.addtime,job.sexs,job.edus,vip,en_user.vip from job,en_user where job.enid=en_user.id and en_user.lock=false and en_user.vip=true order by job.addtime desc"
            rs.open sql,conn,1,1
            if rs.recordcount=0 then
            rs.close
            response.write "暂时没有推荐职业！"
            else
            %>
            <table border="0" width="100%" cellspacing="0" cellpadding="0" id="table12" height="53">
                <tr>
                    <td width="40%" height="25" class='tb_header'>推荐招聘职位</td>
                    <td width="34%" height="25" class='tb_header'>招聘公司</td>
                    <td width="20%" height="25" class='tb_header'>工作地点</td>
                </tr>
                <%
                set rs2=server.createobject("adodb.recordset")
                for ii=1 to 5
                sql2="select * from en_user where id="&rs("enid")
                rs2.open sql2,conn,1,1
                %>
                <tr>
                    <td class='tb_column'><a target =_blank  href="job.asp?id=<%=rs("id")%>">
                        <%=rs("jtzw")%></td>
                    <td class='tb_column'><a  target =_blank href="company.asp?id=<%=rs2("id")%>">『<%=rs2("name")%>』</a>
                    </td>
                    <td class='tb_column'><%=rs("hka")%>·<%=rs("city")%></td>
                    <!--<td  class='tb_column'><%=rs("sexs")%>                                    </td>
                    <td  class='tb_column'><%=rs("edus")%></td>-->
                </tr>
                <%
                rs.movenext
                if rs.eof then exit for
                rs2.close
                next
                rs.close
                %>
            </table>
            <%
            end if
            %></td>
    </tr>
</table>
