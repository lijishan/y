<!--#include file="info.asp"-->
<!--#include file="conn_reg.asp"-->
<!--#include file="check.asp"-->
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
if request("gzdd")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('请选择希望工作地区！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("gzcs"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('工作城市没有填！');" & "history.back()" & "</script>" 
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
sql="insert into in_user(ac,pwd,question,answer,email,name,phone,school,zhuanyen1,sex,bdate,shenggao,tizhong,gzcs,gzdd,hkb,edu,zye,kmubiao) values('"&name&"','"&md5(pwd)&"','"&question&"','"&md5(answer)&"','"&email&"','"&zpname&"','"&phone&"','"&byyx&"','"&zy&"','"&sex&"','"&bdate&"','"&shenggao&"','"&tizhong&"','"&gzcs&"','"&gzdd&"','"&gzdd&"','"&edu&"','"&zye&"','"&kmubiao&"')"
response.write sql
Response.End

rs.open sql,conn,1,1
sql="select id from in_user where ac='"&name&"'"
rs.open sql,conn,1,1
id=rs("id")
rs.close
sql="insert into message(ttype,tid,ftype,content,title) values('1',"&id&",'0','"&content&"','恭喜您成功注册！')"
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
Response.Cookies("name")=zpname
Response.Cookies("vip")="false"
Response.Cookies("id")=id
Response.Cookies("ac")=name
Response.Cookies("rdate")=now()
Response.Cookies("ggval")="81528686528"
Response.Cookies("user")="1"
Response.Cookies("sjob")=""
Response.Cookies("newinfo")="new"
response.write "<script language=JavaScript>" & chr(13) & "alert('注册个人用户成功！！现进入会员中心...★预祝您求职成功！★');"&"window.location.href = 'control.asp'"&" </script>"

response.write "<script language=JavaScript>" & chr(13) & "alert('注册个人用户成功！请以注册身份重新登录完成您的资料、职位等项目内容的录入！★预祝您求职成功！★');"&"window.location.href = 'reglogin_gr.asp'"&" </script>"
end if
end if

if request("user")="2" then
trade=request("trade")
cxz=request("cxz")
area=request("area")
jianj=request("jianj")
if request("area")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('请选择单位所在地区！');" & "history.back()" & "</script>" 
Response.End
end if
if request("trade")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('请选择单位所属行业！');" & "history.back()" & "</script>" 
Response.End
end if
if request("cxz")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('请选择单位性质！');" & "history.back()" & "</script>" 
Response.End
end if
if request("jianj")="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('请填写单位简介！');" & "history.back()" & "</script>" 
Response.End
end if
if len(request("jianj"))>300 then
response.write "<script language=JavaScript>" & chr(13) & "alert('单位简介不能超过300字！');" & "history.back()" & "</script>" 
Response.End
end if

sql="select id from en_user where ac='"&name&"' or name='"&zpname&"' or phone='"&phone&"'"
rs.open sql,conn,1,1
if rs.recordcount<>0 then
response.write "<script language=JavaScript>" & chr(13) & "alert('此用户名已经被注册或同一招聘单位重复注册！');" & "history.back()" & "</script>" 
Response.End
else
rs.close
sql="insert into en_user(ac,pwd,question,answer,email,phone,name,jianj,area,trade,cxz) values('"&name&"','"&md5(pwd)&"','"&question&"','"&md5(answer)&"','"&email&"','"&phone&"','"&zpname&"','"&jianj&"','"&area&"','"&trade&"','"&cxz&"')"
rs.open sql,conn,1,1
sql="select id from en_user where ac='"&name&"'"
rs.open sql,conn,1,1
id=rs("id")
rs.close
sql="insert into message(ttype,tid,ftype,content,title) values('2',"&id&",'0','"&content&"','恭喜您成功注册！')"
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
Response.Cookies("name")=zpname
Response.Cookies("vip")="false"
Response.Cookies("id")=id
Response.Cookies("ac")=name
Response.Cookies("rdate")=now()
Response.Cookies("ggval")="81528686528"
Response.Cookies("user")="2"
Response.Cookies("newjob")=""
Response.Cookies("newinfo")="new"
response.write "<script language=JavaScript>" & chr(13) & "alert('注册企业用户成功！！现进入会员中心...★预祝您招聘成功！★');"&"window.location.href = 'add_job.asp'"&" </script>"
end if
end if
set rs=nothing
set conn=nothing


%>