<%
if request("what")="������ְλ�ؼ���" then
what=""
else
what=request("what")
end if
if request("cs")="��������йؼ���" then
cs=""
else
cs=request("cs")
end if
if request("zy")="ӦƸ��רҵ�ؼ���" then
zy=""
else
zy=request("zy")
end if
if request("sex")="0" then  sex="" end if 
if request("sex")="1" then  sex="��" end if 
if request("sex")="2" then  sex="Ů" end if 

if request("class")="1" then
response.redirect "psearchj_vip.asp?gzdd="+request("gzdd")+"&cs="+cs+"&job="+request("job")+"&what="+what+"&date="+request("date")
else
response.redirect "psearchp_vip.asp?gzdd="+request("gzdd")+"&cs="+cs+"&zy="+zy+"&sex="+sex+"&job="+request("job")+"&what="+what+"&date="+request("date")
end if
%>