<!--#include file="conn_uppic.asp"-->
<html>
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"2" then
response.write "<script language=JavaScript>" & chr(13) & "alert('您还未登陆或登录超时，请重新登录后操作！！');" & "history.back()" & "</script>" 
Response.End
end if
%>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title>会员中心 - 基本资料设置 - 上传企业营业证照</title>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
-->
</style>
</head>

<body>
<!--#include file="top_index.asp"-->
<div align="center">
	<table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="421">
		<tr>
			<td style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf; border-top: 1px solid #ffc6bf" width="760" valign="top" bgcolor="#FEFBF4">
			<div align="center">
				<table border="0" width="705" cellspacing="0" cellpadding="0" id="table2" height="379">
					<tr>
						<td height="86" width="214">
						<img border="0" src="images/control.gif" width="282" height="90"></td>
						<td height="86" width="237">　</td>
						<td height="86" width="128">
						<img border="0" src="images/controltop1.gif" width="128" height="90"></td>
						<td height="86" width="58">　</td>
					</tr>
					<tr>
					  <td width="705" colspan="4" valign="top">
						<div align="center">
							<table border="0" width="98%" cellspacing="0" cellpadding="0" id="table3" height="272">
								<tr>
									<td height="27" colspan="2">
									<p align="left">
									&nbsp;会员中心 → 上传企业经常证照</td>
								</tr>
								<tr>
									<td width="25%" rowspan="2" valign="top">
									<!--#include file="en_menu.asp"-->									</td>
								  <td width="72%" valign="top" align="center" style="border: 1px solid #000000"><table width="87%" border="0" align="center" cellpadding="5">
  <tr align="center" valign="middle">
    <td> 
	<script language=vbscript>
function form1_Onsubmit()
if document.form1.file.value=""  then
	msgbox "文件路径错误，请重新填写！"
	form1_onsubmit=false
	exit function
else
    if Lcase(right(document.form1.file.value,3)) <>"jpg" and Lcase(right(document.form1.file.value,3))<>"gif" then 
     msgbox "图片类型错误，图片类型应为GIF或JPG格式！"
	 form1_onsubmit=false
	 exit function
	 else
	 document.form1.action="uppic/save_dw.asp?id="&document.form1.id.value
	 end if
 end if 
end function
</script>
      <form  name="form1" method="post"  action="uppic/save_dw.asp"  enctype="multipart/form-data" onSubmit="form1_Onsubmit()">
       
            <p><font color="#666699"><b>图片位置:
              <input type="file" name="file" value="" size="35">	
		</b></font></p>
        <p><font color="#666699"><b>
          <input type="hidden" name="id"  size="10" value=<%=request("id")%>>　
        </b></font><font color="#666699"><b>&nbsp;</b></font><font color="#666699"><b>&nbsp;&nbsp;&nbsp;
        <input type="submit" name="Submit" value="上传">
	
        <input type="reset" name="reset" value="重置"> 
        </b></font>
        <br>
        </p>
      </form>    </td>
  </tr>
</table>
<div align="center">
    <font color="#FF0000" size="1">企业证照图片只能是JPG或GIF格式，大小为30K内；<br>最佳效果：400（宽）*300（高），可联系我们免费处理图片。</font></div></td>
								</tr>
								<tr>
								  <td valign="top" align="center" style="border: 1px solid #000000">
                                    <p align="left">
                                      <% 
id=request("id")
sql="select num from imgdata where id="&id
rs.open sql,conn,1,1
if rs.recordcount<>0 then
response.write "<div align='center'><font color=#ff0000>你当前上传的证照图片预览(点击查看大图)：</font><br><a href=uppic/kkk1.asp?id="&rs("num")&" target='_blank'><img border='0' src=uppic/kkk.asp?id="
response.write rs("num")
response.write" width=300 height=250 /></a></div><br><a onClick=""{if(confirm('此操作将删除原照片，删除后即使上传同一图片仍需审核，继续吗？')){return true;}return false;}"" href=""uppic/delpic_dw.asp?id="
response.write rs("num")
response.write """ >〓删除此照片〓</a>"
else
response.write "<div align='center'><font color=#ff0000>你还没有上传企业经营证照！！</font></div>"
end if 
rs.close
%>
	                                  <br>
	</p>
                                    <p align="left">说明：<br>
                                      &nbsp;&nbsp;1、本站企业经营证照只允许是您单位营业执照等合法证件的图片文件（必须同注册时名称一致）。 </br>&nbsp;&nbsp;2、本站企业经营证照需要经过本站审核后，才能在你的企业资料/招聘信息中正常显示。                                      </br>&nbsp;&nbsp;3、当你更换图片时，本站需要审核，审核前你的经营证照不能正常显示，更换后请及时联系我们审核。 </br>&nbsp;&nbsp;4、本站VIP会员赠送1月免费显示时间，1月后按50元/月收取（自选服务），普通会员按60元/月收取（自选服务）。收费周期为3月，即你最少要显示3个月，并支付3月的服务费用。 </br>&nbsp;&nbsp;5、用户图片服务到期或上传1月后仍未申请显示使用，系统将自动删除上传的图片。 </br>&nbsp;&nbsp;6、用户上传图片如果出现问题或有特殊要求，请联系我们，我们免费帮助上传。</p></td>
							  </tr>
							</table>
						</div>
						<div align="center">
						  <%'表格%>
						</div></td>
					</tr>
					</table>
			</div>
			</td>
		</tr>
	</table>
</div>
<!--#include file="base.asp"-->
</body>

</html>