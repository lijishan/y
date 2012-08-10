<style type="text/css">
<!--
.STYLE6 {
	font-size: 18px;
	font-weight: bold;
	color: #FF0000;
}
-->
</style>
<div align="center"><span class="STYLE6">杰博528免费人才招聘网，人才/职位库信息</span><br>
  <br>
</div>
<table width="543" border="0" align="center" cellspacing="0" bordercolor="#FF6699">
  <tr>
    <td width="236"><table width="260" height="80" border="1" align="center" cellspacing="0" bordercolor="#FF9999">
      <tr>
        <td width="253"><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;今日新增职位：
          <%
								sql="select top 100 id from job where datediff('d',addtime,Now())=0 "
								rs.open sql,conn,1,1
								%>
                <font color="#ff0000"> <%=rs.recordcount%></font> 个
          <%rs.close%>
                <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;今日注册个人：
          <% sql="select top 100 id from in_user where datediff('d',rdate,Now())=0"
	
								rs.open sql,conn,1,1
								%>
          <font color="#ff0000"><%=rs.recordcount%></font> 位
          <%
rs.close %>
          <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;今日注册企业：
          <%
								sql="select top 100 id from en_user where datediff('d',rdate,Now())=0"
								rs.open sql,conn,1,1
								%>
          <font color="#ff0000"><%=rs.recordcount%></font> 个
          <%rs.close %>
          <br />
        </div></td>
      </tr>
    </table></td>
    <td width="303"><table width="260" height="77" border="1" align="center" cellspacing="0" bordercolor="#FF9A9C">
      <tr>
        <td width="260" height="75"><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;昨日新增职位：
            <%
								sql="select id from job where datediff('d',addtime,Now())=1 "
								rs.open sql,conn,1,1
								%>
                <font color="#ff0000"> <%=rs.recordcount%></font> 个
          <%rs.close%>
                <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;昨日注册个人：
          <% sql="select top 100 id from in_user where datediff('d',rdate,Now())=1"
	
								rs.open sql,conn,1,1
								%>
          <font color="#ff0000"><%=rs.recordcount%></font> 位
          <%
rs.close %>
          <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;昨日注册企业：
          <%
								sql="select top 100 id from en_user where datediff('d',rdate,Now())=1"
								rs.open sql,conn,1,1
								%>
          <font color="#ff0000"><%=rs.recordcount%></font> 个
          <%rs.close %>
          &nbsp;&nbsp;&nbsp;
          </div></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="61" colspan="2"><div align="center">全站职位总量：
        <%			sql="select top 1 id from job order by id desc"
								rs.open sql,conn,1,1
								%>
        <font color="#ff0000"><%=rs("id")%></font> 个
        <%rs.close %>
        <br />
全站人才总量：
<%
								sql="select top 1 id from in_user order by id desc"
								rs.open sql,conn,1,1
								%>
<font color="#ff0000"><%=rs("id")%></font> 位
<% rs.close %>
 <br><script src="zxrs/online.asp"></script></div></td>
  </tr>
</table>

