<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"2" then
response.write "<script language=JavaScript>" & chr(13) & "alert('您还未登陆或登录超时，请重新登录后操作！！');" & "history.back()" & "</script>" 
Response.End
end if
str=request("jtzw")
if request("job")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('请选择职位类型！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("jtzw"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('具体职位不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if Request.Cookies("vip")="true" then 
 if len(request("jtzw"))>20 then
     response.write "<script language=JavaScript>" & chr(13) & "alert('具体职位VIP用户不能超过20字！');" & "history.back()" & "</script>" 
  Response.End
 end if
 else 
  if len(request("jtzw"))>6 then
   response.write "<script language=JavaScript>" & chr(13) & "alert('具体职位普通用户不能超过6字，VIP用户不能超过20字！');" & "history.back()" & "</script>"
   end if      
end if
if request("hka")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('请选择工作地区！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("city"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('所在城市不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("zptext"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('岗位职责描述不能为空！');" & "history.back()" & "</script>" 
Response.End
end if
if Request.Cookies("vip")="true" then 
if len(request("zptext"))>500 then
response.write "<script language=JavaScript>" & chr(13) & "alert('岗位职责描述普通用户不能超过100字，VIP用户不能超过500字！');" & "history.back()" & "</script>" 
Response.End
end if
else
if len(request("zptext"))>100 then
response.write "<script language=JavaScript>" & chr(13) & "alert('岗位职责描述普通用户不能超过100字，VIP用户不能超过500字！');" & "history.back()" & "</script>" 
Response.End
end if
end if 

sql="select id from job where enid="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
if Request.Cookies("vip")="false" then
if rs.recordcount>=en_max1 then
rs.close
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('抱歉，普通用户免费招聘职位发布空间为【"&en_max1&"个】，若您需要更多的职位发布空间，请升级成VIP用户，一次性付费200元，终身拥有"&en_vip_max1&"个职位空间（以后不用续费），付费方式请见返回后页面左下方的“付款方式”！');" & "history.back()" & "</script>" 
Response.End
end if
else
if rs.recordcount>=en_vip_max1 then
rs.close
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('抱歉，您的【"&en_vip_max1&   "个】职位发布空间已满！你可自行删除失效的职位空间；也可另外购买新空间，200元/20个（终身享有，以后不用续费），付费方式请见返回后页面左下方的“付款方式”。');" & "history.back()" & "</script>" 
Response.End
end if
end if
rs.close
sql="select id from job"
rs.open sql,conn,1,1
if rs.recordcount>3000 then 
response.write "<script language=JavaScript>" & chr(13) & "alert('抱歉，使用到期，请联系我们：电话-13981528686 ，QQ-451079368！');" & "history.back()" & "</script>" 
Response.End
end if
rs.close
sql="insert into job(enid,job,jtzw,hka,city,zpnum,nianlings,zyes,hkas,edus,hkbs,languages,pthuas,sexs,jobtypes,marrys,computers,shisus,moneys,youxiaos,zptext) values("&Request.Cookies("id")&",'"&request("job")&"','"&request("jtzw")&"','"&request("hka")&"','"&request("city")&"','"&request("zpnum")&"','"&request("nianlings")&"','"&request("zyes")&"','"&request("hkas")&"','"&request("edus")&"','"&request("hkbs")&"','"&request("languages")&"','"&request("pthuas")&"','"&request("sexs")&"','"&request("jobtypes")&"','"&request("marrys")&"','"&request("computers")&"','"&request("shisus")&"','"&request("moneys")&"','"&request("youxiaos")&"','"&request("zptext")&"')"
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
Response.Cookies("newjob")="ok"
Response.Cookies("newjob").expires=(now+1/6) '保存4小时
response.write "<script language=JavaScript>" & chr(13) & "alert('发布成功,即将返回！');"&"window.location.href = 'enjob.asp'"&" </script>"


%>