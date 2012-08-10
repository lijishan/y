<!--#include file="info.asp"-->
<!--#include file="conn_reg.asp"-->
<!--#include file="md5.asp"-->

<%
str=request("zpname")
if request("name")="" or request("pwd")="" or (request("user")<>"1" and request("user")<>"2") or request("question")="" or request("answer")=""or request("email")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('请确认所有信息已经填写！');" & "history.back()" & "</script>" 
Response.End
end if
if request("email")="@" or instr(request("email"),"@")=0 then
response.write "<script language=JavaScript>" & chr(13) & "alert('邮箱地址不正确！');" & "history.back()" & "</script>" 
Response.End
end if
if request("zpname")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('招聘单位名称或个人姓名还没填写！');" & "history.back()" & "</script>" 
Response.End
end if
if request("phone")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('您的联系电话还没填写！');" & "history.back()" & "</script>" 
Response.End
end if
if request("pwd")<>request("pwd1") then
response.write "<script language=JavaScript>" & chr(13) & "alert('两次密码输入不正确！');" & "history.back()" & "</script>" 
Response.End
end if
if instr(request("name"),"'")<>0 then
response.write "<script language=JavaScript>" & chr(13) & "alert('非法数据提交！');" & "history.back()" & "</script>" 
Response.End
end if

if len(request("zpname"))>20then
response.write "<script language=JavaScript>" & chr(13) & "alert('公司名/姓名不能超过20个字！');" & "history.back()" & "</script>" 
Response.End
end if
call codeistrue("register_sy.asp")
name=request("name")
email=request("email")
pwd=request("pwd")
question=request("question")
answer=request("answer")
zpname=request("zpname")
phone=request("phone")

content="杰博528免费招聘网欢迎您！"&"请尽快发布招聘/求职信息!"

if request("user")="1" then
byyx=request("byyx")
zy=request("zy")
sex=request("sex")
bdate=request("bdate")
shenggao=request("shenggao")
tizhong=request("tizhong")
gzdd=request("gzdd")
gzcs=request("gzcs")
edu=request("edu")
zye=request("zye")
kmubiao=request("kmubiao")
jyjl=request("jyjl")
kothertc=request("kothertc")
kgzjl=request("kgzjl")
grzz=request("grzz")

if trim(request("sex"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('请选择性别！');" & "history.back()" & "</script>" 
Response.End
end if
if isdate(request("bdate"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('出生日期格式不正确！');" & "history.back()" & "</script>" 
Response.End
end if
if isnumeric(request("shenggao"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('没填写身高或你的数据不正确！');" & "history.back()" & "</script>" 
Response.End
end if
if isnumeric(request("tizhong"))=false then
response.write "<script language=JavaScript>" & chr(13) & "alert('没填写体重或你的数据不正确！');" & "history.back()" & "</script>" 
Response.End
end if
if request("hkb")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('请选择希望工作地区！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("gzcs"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('希望工作城市没有填！');" & "history.back()" & "</script>" 
Response.End
end if
if request("edu")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('请选择最高教育程度！');" & "history.back()" & "</script>" 
Response.End
end if
if request("zye")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('请选择专业类别！');" & "history.back()" & "</script>" 
Response.End
end if
if request("byyx")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('请填写你的毕业院校！');" & "history.back()" & "</script>" 
Response.End
end if
if request("zy")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('请填写你的所学专业！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("jyjl"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('受教育／培训经历 不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if len(request("jyjl"))>400 then
response.write "<script language=JavaScript>" & chr(13) & "alert('受教育／培训经历 不能超过400字！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("kothertc"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('工作能力及其他专长 不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if len(request("kothertc"))>200 then
response.write "<script language=JavaScript>" & chr(13) & "alert('工作能力及其他专长 不能超过200字！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("kgzjl"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('个人详细工作经历 不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if len(request("kgzjl"))>400 then
response.write "<script language=JavaScript>" & chr(13) & "alert('个人详细工作经历 不能超过400字！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("grzz"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('自我简介/总结 不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if len(request("grzz"))>300 then
response.write "<script language=JavaScript>" & chr(13) & "alert('自我简介/总结 不能超过300字！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("kmubiao"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('职业目标不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if len(request("kmubiao"))>100 then
response.write "<script language=JavaScript>" & chr(13) & "alert('职业目标不能超过100字！');" & "history.back()" & "</script>" 
Response.End
end if
sql="select id from in_user where ac='"&name&"'"
rs.open sql,conn,1,1
if rs.recordcount<>0 then
response.write "<script language=JavaScript>" & chr(13) & "alert('此用户名已经被注册！');" & "history.back()" & "</script>" 
Response.End
else
rs.close
sql="insert into in_user(ac,pwd,question,answer,email,name,phone,school,zhuanyen1,sex,bdate,shenggao,tizhong,gzcs,gzdd,hkb,edu,zye,kmubiao,jyjl,kothertc,kgzjl,grzz) values('"&name&"','"&md5(pwd)&"','"&question&"','"&md5(answer)&"','"&email&"','"&zpname&"','"&phone&"','"&byyx&"','"&zy&"','"&sex&"','"&bdate&"','"&shenggao&"','"&tizhong&"','"&gzcs&"','"&gzdd&"','"&gzdd&"','"&edu&"','"&zye&"','"&kmubiao&"','"&jyjl&"','"&kothertc&"','"&kgzjl&"','"&grzz&"')"
rs.open sql,conn,1,1
sql="select id from in_user where ac='"&name&"'"
rs.open sql,conn,1,1
id=rs("id")
rs.close
sql="insert into message(ttype,tid,ftype,content,title) values('1',"&id&",'0','"&content&"','恭喜您成功注册！')"
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('注册个人用户成功！请以注册身份重新登录完成您的资料、职位等项目内容的录入！★预祝您求职成功！★');"&"window.location.href = 'reglogin_gr.asp'"&" </script>"
end if
end if

%>