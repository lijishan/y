<style type="text/css">
<!--
.STYLE6 {
	font-size: 18px;
	font-weight: bold;
	color: #FF0000;
}
-->
</style>
<div align="center"><span class="STYLE6">�ܲ�528����˲���Ƹ�����˲�/ְλ����Ϣ</span><br>
  <br>
</div>
<table width="543" border="0" align="center" cellspacing="0" bordercolor="#FF6699">
  <tr>
    <td width="236"><table width="260" height="80" border="1" align="center" cellspacing="0" bordercolor="#FF9999">
      <tr>
        <td width="253"><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��������ְλ��
          <%
								sql="select top 100 id from job where datediff('d',addtime,Now())=0 "
								rs.open sql,conn,1,1
								%>
                <font color="#ff0000"> <%=rs.recordcount%></font> ��
          <%rs.close%>
                <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����ע����ˣ�
          <% sql="select top 100 id from in_user where datediff('d',rdate,Now())=0"
	
								rs.open sql,conn,1,1
								%>
          <font color="#ff0000"><%=rs.recordcount%></font> λ
          <%
rs.close %>
          <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����ע����ҵ��
          <%
								sql="select top 100 id from en_user where datediff('d',rdate,Now())=0"
								rs.open sql,conn,1,1
								%>
          <font color="#ff0000"><%=rs.recordcount%></font> ��
          <%rs.close %>
          <br />
        </div></td>
      </tr>
    </table></td>
    <td width="303"><table width="260" height="77" border="1" align="center" cellspacing="0" bordercolor="#FF9A9C">
      <tr>
        <td width="260" height="75"><div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��������ְλ��
            <%
								sql="select id from job where datediff('d',addtime,Now())=1 "
								rs.open sql,conn,1,1
								%>
                <font color="#ff0000"> <%=rs.recordcount%></font> ��
          <%rs.close%>
                <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����ע����ˣ�
          <% sql="select top 100 id from in_user where datediff('d',rdate,Now())=1"
	
								rs.open sql,conn,1,1
								%>
          <font color="#ff0000"><%=rs.recordcount%></font> λ
          <%
rs.close %>
          <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����ע����ҵ��
          <%
								sql="select top 100 id from en_user where datediff('d',rdate,Now())=1"
								rs.open sql,conn,1,1
								%>
          <font color="#ff0000"><%=rs.recordcount%></font> ��
          <%rs.close %>
          &nbsp;&nbsp;&nbsp;
          </div></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="61" colspan="2"><div align="center">ȫվְλ������
        <%			sql="select top 1 id from job order by id desc"
								rs.open sql,conn,1,1
								%>
        <font color="#ff0000"><%=rs("id")%></font> ��
        <%rs.close %>
        <br />
ȫվ�˲�������
<%
								sql="select top 1 id from in_user order by id desc"
								rs.open sql,conn,1,1
								%>
<font color="#ff0000"><%=rs("id")%></font> λ
<% rs.close %>
 <br><script src="zxrs/online.asp"></script></div></td>
  </tr>
</table>

