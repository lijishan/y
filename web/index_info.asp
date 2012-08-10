<%
'
sql="select top "&index1&" id,title,addtime,class from article where 1=1 order by id desc"
rs.open sql,conn,1,1
dim array_news
if rs.eof or rs.bof then
	rs.close
else
    array_news = rs.GetRows(index1)
	rs.close
end if

'
sql="select top "&index2&" id,title,addtime,class from article where class=1009 order by id desc"
rs.open sql,conn,1,1
dim array_recru
if rs.eof or rs.bof then
	rs.close
else
    array_recru = rs.GetRows(index2)
	rs.close
end if
%>