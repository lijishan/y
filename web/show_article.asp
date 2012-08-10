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
        首页 &gt; 文章详情
    </div>
    <div class=grid_12>
    <div class="grid_9 article_detail alpha">
        <div class="article_title"><h1><%=unHtml(rs("title"))%></h1></div>
        <div class="article_time">发表于：<%=rs("addtime")%>&nbsp; 被阅：<%=rs("click")+1%>次</div>
        <div class="content">
            <% =ubbcode(unHtml(rs("content"))) %>
            <%
            if rs("comefrom")<>"" then
            %>
                <p align="center"><font color="#FF0000">申明</font>：<font color="#000000">此文章源于<%=rs("comefrom")%>，若有侵权，请与我们联系。</font>
            <%
            end if
            %>
		</div>
    </div>
    <div class="grid_3 omega alpha search_box">
        <form method="POST" action="search_article.asp" TARGET="_blank">
            <select size="1" name="class">
            <option value="0" selected>请选择文章类别</option>
            <option value="1">新闻动态</option>
            <option value="2">求职技巧</option>
            </select>
            <select size="1" name="how">
			<option selected value="1">按文章标题</option>
            <option value="2">按文章内容</option>
            </select>
            <input onFocus="this.value=''" type="text" name="what" size="20" style="border-style: solid; border-width: 1px" value="关键字">
            <input border="0" src="images/s2.gif" name="I1" width="53" height="20" type="image">
            </form>
    </div>
    </div>