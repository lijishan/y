<%
if request("what")="请输入职位关键字" then
what=""
else
what=request("what")
end if
if request("cs")="请输入城市关键字" then
cs=""
else
cs=request("cs")
end if
if request("zy")="应聘者专业关键字" then
zy=""
else
zy=request("zy")
end if
if request("sex")="0" then  sex="" end if 
if request("sex")="1" then  sex="男" end if 
if request("sex")="2" then  sex="女" end if 

if request("class")="1" then
response.redirect "psearchj_vip.asp?gzdd="+request("gzdd")+"&cs="+cs+"&job="+request("job")+"&what="+what+"&date="+request("date")
else
response.redirect "psearchp_vip.asp?gzdd="+request("gzdd")+"&cs="+cs+"&zy="+zy+"&sex="+sex+"&job="+request("job")+"&what="+what+"&date="+request("date")
end if
%>