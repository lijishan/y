<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="unhtml.asp"-->
<!--#include file="ubb.asp"-->
<html>
<%
if not(isnumeric(request("id"))) then
response.redirect "nodata.html"
rs.close
end if
sql="select * from article where id="&clng(request("id"))
rs.open sql,conn,1,1
if rs.eof or rs.bof then
    response.redirect "nodata.html"
    rs.close
end if
'set rs1=server.createobject("adodb.recordset")
sql1="update article set click=click+1 where id="&clng(request("id"))
'rs1.open sql1,conn,1,1
conn.execute sql1

%>
    <div class="grid_12 my_position">
        ��ҳ &gt; ��������
    </div>
    <div class=grid_12>
    <div class="grid_9 article_detail alpha">
        <div class="article_title"><h1><%=unHtml(rs("title"))%></h1></div>
        <div class="article_time">�����ڣ�<%=rs("addtime")%>&nbsp; ���ģ�<%=rs("click")+1%>��</div>
        <div class="content">
            <% =ubbcode(unHtml(rs("content"))) %>
            <%
            if rs("comefrom")<>"" then
            %>
                <p align="center"><font color="#FF0000">����</font>��<font color="#000000">������Դ��<%=rs("comefrom")%>��������Ȩ������������ϵ��</font>
            <%
            end if
            %>
		</div>
    </div>
    <div class="grid_3 omega alpha search_box">
        <form method="POST" action="search_article.asp" TARGET="_blank">
            <select size="1" name="class">
            <option value="0" selected>��ѡ���������</option>
            <option value="1">���Ŷ�̬</option>
            <option value="2">��ְ����</option>
            </select>
            <select size="1" name="how">
			<option selected value="1">�����±���</option>
            <option value="2">����������</option>
            </select>
            <input onFocus="this.value=''" type="text" name="what" size="20" style="border-style: solid; border-width: 1px" value="�ؼ���">
            <input border="0" src="images/s2.gif" name="I1" width="53" height="20" type="image">
            </form>
    </div>
    </div>