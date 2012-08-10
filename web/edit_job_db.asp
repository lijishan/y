<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"2" then
response.write "<script language=JavaScript>" & chr(13) & "alert('您不具备此权限！');" & "history.back()" & "</script>" 
Response.End
end if
str=request("jtzw")
if ChkInvaildWord(str) then 
response.write "<script language=JavaScript>" & chr(13) & "alert('『具体职位』中有非法字符！提示：『具体职位』只能由【汉字、字母】组成  (空格、中英文标点、特殊字符等均不允许)；  如果你确实需要使用特定符号，请联系我们：QQ-451079368；电话-13981528686。');" & "history.back()" & "</script>"
Response.End
end if
if request("job")="0" then
response.write "<script language=JavaScript>" & chr(13) & "alert('请选择职位类型！');" & "history.back()" & "</script>" 
Response.End
end if
if trim(request("jtzw"))="" then
response.write "<script language=JavaScript>" & chr(13) & "alert('具体位置不能为空！');" & "history.back()" & "</script>" 
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
sql="update job set job='"&request("job")&"',jtzw='"&request("jtzw")&"',hka='"&request("hka")&"',city='"&request("city")&"',zpnum='"&request("zpnum")&"',nianlings='"&request("nianlings")&"',zyes='"&request("zyes")&"',hkas='"&request("hkas")&"',edus='"&request("edus")&"',hkbs='"&request("hkbs")&"',languages='"&request("languages")&"',pthuas='"&request("pthuas")&"',sexs='"&request("sexs")&"',jobtypes='"&request("jobtypes")&"',marrys='"&request("marrys")&"',computers='"&request("computers")&"',shisus='"&request("shisus")&"',moneys='"&request("moneys")&"',youxiaos='"&request("youxiaos")&"',zptext='"&request("zptext")&"' where id="&clng(request("id"))&" and enid="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('修改成功,即将返回！');"&"window.location.href = 'enjob.asp'"&" </script>"
Function ChkInvaildWord(Words) 
Const InvaildWords="【|】|〖|〗|@|『|』|《|》|「|」|〈|〉|〕|〔|（|）|［|］|｛|｝|§|№|☆|★|○|●|◎|◇|◆|□|〓|■|▇|█|▁|▃|▅|◣|◢| |　|/|？|:|;|<|>|‖|△|▲|※|→|←|↑|↓|＃|＆|＠|＼|\|／|＾|＿|￣|—|$|%|^|&|*|+|=|~|！|!|·|￥|…|，|。|,|、|.|`|⊙|≌|∽|√|∵|∴|∈|∩|∪|∏|∑|∨|∧|±|×|÷|∫|∮|∝|∞|∷|≯|≮|≥|≤|≠|≈|Ⅰ|Ⅱ|Ⅲ|Ⅳ|Ⅴ|Ⅵ|Ⅶ|Ⅷ|Ⅸ|Ⅹ|Ⅺ|Ⅻ|⒈|⒉|⒊|⒋|⒌|⒍|⒎|⒏|⒐|⒑|①|②|③|④|⑤|⑥|⑦|⑧|⑨|⑩|⑾|⑿|⒀|⒁|⒂|⒃|⒄|⒅|⒆|⒇|℃|¤|￠|‰|％|々|～|〃|︵|︶|︷|︸|︹|︺|︻|︼|︽|︾|︿|﹀|﹁|﹂|﹃|﹄|﹉|﹊|﹋|﹌|﹍|﹎|﹏|," 
ChkInvaildWord=True
InvaildWord=Split(InvaildWords,"|") 
inWords=LCase(Trim(Words)) 
For i=LBound(InvaildWord) To UBound(InvaildWord) 
If Instr(inWords,InvaildWord(i))>0 Then 
ChkInvaildWord=True 
Exit Function 
End If 
Next 
ChkInvaildWord=False 
End Function 
%>