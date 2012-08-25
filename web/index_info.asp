<!--#include file="conn.asp"-->
<%
'
redim array_news(0)
sql="select top "&article_num&" id,title,addtime,class from article where class="&class_id&" order by id desc"
'sql="select top "&article_num&" id,title,addtime,class from article where 1=1 order by id desc"
rs.open sql,conn,1,1
'rs = conn.execute(sql)
if rs.eof or rs.bof then
	rs.close
else
    array_news = rs.GetRows(article_num)
	rs.close
end if

%>