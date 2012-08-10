<!--#include file="info.asp"-->
<html>

<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=webname%> - 用户注册</title>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
.STYLE2 {	color: #0066FF;
	font-weight: bold;
}
.STYLE5 {color: #FF0000; font-weight: bold; }
.STYLE13 {color: #FFFF00; font-weight: bold; }
.STYLE15 {
	font-size: 16pt;
	color: #FF0000;
}
.STYLE16 {
	color: #FF00FF;
	font-weight: bold;
}
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
				<table border="0" width="705" cellspacing="0" cellpadding="0" id="table2" height="377">
					<tr>
						<td height="86" width="214">
						<img border="0" src="images/regtop.gif"></td>
						<td height="86" width="237">　</td>
						<td height="86" width="128">
						<img border="0" src="images/regtop1.gif"></td>
						<td height="86" width="58">　</td>
					</tr>
					<tr>
						<td width="705" colspan="4" valign="top">
						<script language=javascript>
  function test()
  {
      if (document.form1.name.value==""){
	      alert("请输入用户名！")
		  document.form1.name.focus();
		  return false
		    }
	  if (document.form1.pwd.value==""){
	      alert("请输入密码！");
		  document.form1.pwd.focus();
		  return false
		  } 
		  if (document.form1.pwd.value!=document.form1.pwd1.value){
	      alert("两次密码输入不一致！");
		  document.form1.pwd.focus();
		  return false
		  } 
if (document.form1.question.value==""){
	      alert("请输入密码问题！")
		  document.form1.question.focus();
		  return false
		    }
if (document.form1.answer.value==""){
	      alert("请输入密码答案！")
		  document.form1.answer.focus();
		  return false
		    }
if (document.form1.email.value==""){
	      alert("请输入邮件！")
		  document.form1.email.focus();
		  return false
		    }
          if (document.form1.user.value=="0"){
	      alert("请选择会员类别！");
		  document.form1.user.focus();
		  return false
		  }
		  if (document.form1.code.value==""){
	      alert("请输入验证码！")
		  document.form1.code.focus();
		  return false
		    }

		  return true
  }
  function reset_form()
  {
   document.form1.name.value="";
   document.form1.pwd.value="";
   document.form1.userr.value="";
   document.form1.name.focus;
  }
</script>

						<form name="form1" method="POST" action="regdata.asp" onSubmit="return test()">
						  <div align="center">
								<table border="0" width="599" cellspacing="0" cellpadding="0" id="table3" height="529">
									<tr>
										<td height="30" colspan="3">
										<b>√填写基本信息：</b></td>
										<td width="291" height="0">　<span class="STYLE2">所有项目必须正确填写！</span></td>
									</tr>
									<tr>
									  <td height="30" colspan="4"><img src="imagen/ddd.gif" width="16" height="16"><a href="cookie.asp" target="_blank"><strong>点这里检测你的浏览器<span class="STYLE15">是否支持</span>本站提供的服务？</strong></a></td>
							      </tr>
									<tr>
										<td width="88" height="30">用 户 名：</td>
										<td height="30" colspan="2">
									  <input name="name" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="15"></td>
										<td width="291" height="30">
										登录使用，15个字符内,只能输入(a-z),(A-Z),(0-9)</td>
									</tr>
									<tr>
										<td width="88" height="30">密&nbsp;&nbsp;&nbsp; 
										码：</td>
										<td height="30" colspan="2">
									  <input name="pwd" type="password" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="15"></td>
										<td width="291" height="30">　</td>
									</tr>
									<tr>
										<td width="88" height="30">密码确认：</td>
										<td height="30" colspan="2">
									  <input name="pwd1" type="password" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="15"></td>
										<td width="291" height="30">　</td>
									</tr>
									<tr>
										<td width="88" height="30">密码问题：</td>
									  <td height="30" colspan="2">
									  <input name="question" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="25"></td>
										<td width="291" height="30">忘记密码的提示问题</td>
									</tr>
									<tr>
										<td width="88" height="30">密码答案：</td>
										<td height="30" colspan="2">
									  <input name="answer" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="25"></td>
										<td width="291" height="30">
										忘记密码的提示问题答案，用于取回密码</td>
									</tr>
									<tr>
										<td width="88" height="30">电子邮件：</td>
										<td height="15" colspan="2">
									  <input name="email" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="50"></td>
										<td width="291" height="15"><font color=#ff0000>应聘者与你联系时使用，一定要正确</font></td>
									</tr>
									<tr>
									  <td width="88" height="26">联系电话：</td>
									  <td height="26" colspan="2"><input name="phone" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="13"></td>
								      <td width="291" height="26"><font color=#ff0000>应聘者与你联系时使用，注册后不能随意修改</font></td>
								  </tr>
									<tr>
										<td width="88" height="30">用户类别：</td>
										<td height="15" colspan="2">
											<select size="1" name="user">
											<option value="2">企业用户</option>
											</select></td> <% =user %>
										<td width="291" height="15">　</td>
									</tr>
									<tr>
									 <td height="30">招聘单位名称：</td>
								      <td height="0" colspan="2"><input name="zpname" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="30" maxlength="20"></td>
								      <td width="291" height="0"><span class="STYLE5">20字内，注册后不能更改！</span>只能用中文汉字</td>
									</tr>
									<tr>
									  <td height="30">单位所在地区：</td>
								      <td height="22" colspan="2"><SELECT SIZE=1 NAME=area STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION value="0" selected >请在以下列表中选择</OPTION>
<OPTION VALUE=北京市>北京市</OPTION><OPTION VALUE=上海市>上海市</OPTION><OPTION VALUE=天津市>天津市</OPTION><OPTION VALUE=重庆市>重庆市</OPTION><OPTION VALUE=河北省>河北省</OPTION><OPTION VALUE=河南省>河南省</OPTION><OPTION VALUE=海南省>海南省</OPTION><OPTION VALUE=安徽省>安徽省</OPTION><OPTION VALUE=福建省>福建省</OPTION><OPTION VALUE=甘肃省>甘肃省</OPTION><OPTION VALUE=广东省>广东省</OPTION><OPTION VALUE=广西省>广西省</OPTION><OPTION VALUE=四川省>四川省</OPTION><OPTION VALUE=贵州省>贵州省</OPTION><OPTION VALUE=湖北省>湖北省</OPTION><OPTION VALUE=湖南省>湖南省</OPTION><OPTION VALUE=吉林省>吉林省</OPTION><OPTION VALUE=江苏省>江苏省</OPTION><OPTION VALUE=江西省>江西省</OPTION><OPTION VALUE=辽宁省>辽宁省</OPTION><OPTION VALUE=青海省>青海省</OPTION><OPTION VALUE=山东省>山东省</OPTION><OPTION VALUE=山西省>山西省</OPTION><OPTION VALUE=陕西省>陕西省</OPTION><OPTION VALUE=云南省>云南省</OPTION><OPTION VALUE=浙江省>浙江省</OPTION><OPTION VALUE=黑龙江省>黑龙江省</OPTION><OPTION VALUE=宁夏自治区>宁夏自治区</OPTION><OPTION VALUE=新疆自治区>新疆自治区</OPTION><OPTION VALUE=西藏自治区>西藏自治区</OPTION><OPTION VALUE=内蒙古自治区>内蒙古自治区</OPTION><OPTION VALUE=香港特别行政区>香港特别行政区</OPTION><OPTION VALUE=澳门特别行政区>澳门特别行政区</OPTION><OPTION VALUE=台湾省>台湾省</OPTION><OPTION VALUE=国外地区>国外地区</OPTION>
                                      </SELECT></td>
								      <td width="291" height="0"><font color=#ff0000>应聘者查询使用，一定要正确</font></td>
								  </tr>
									<tr>
									  <td height="30">单位所属行业：</td>
								      <td height="4" colspan="2"><SELECT SIZE=1 NAME=trade STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE="0" selected >请在以下列表中选择</OPTION>
<OPTION VALUE=计算机业>计算机业</OPTION><OPTION VALUE=电子电器、通讯设备>电子电器、通讯设备</OPTION><OPTION VALUE=科研设计、科技开发>科研设计、科技开发</OPTION><OPTION VALUE=机电设备、电力>机电设备、电力</OPTION><OPTION VALUE=仪器仪表、度量衡器>仪器仪表、度量衡器</OPTION><OPTION VALUE=机械制造及设备>机械制造及设备</OPTION><OPTION VALUE=各种车辆制造与销售>各种车辆制造与销售</OPTION><OPTION VALUE=动力、电力>动力、电力</OPTION><OPTION VALUE=化学化工、生物制药>化学化工、生物制药</OPTION><OPTION VALUE=五金矿产、金属制品>五金矿产、金属制品</OPTION><OPTION VALUE=纺织、服装>纺织、服装</OPTION><OPTION VALUE=农林牧副渔>农林牧副渔</OPTION><OPTION VALUE=轻工>轻工</OPTION><OPTION VALUE=房地产、建筑、装潢>房地产、建筑、装潢</OPTION><OPTION VALUE=造纸、印刷、包装>造纸、印刷、包装</OPTION><OPTION VALUE=木材、家具>木材、家具</OPTION><OPTION VALUE=广告、策划、设计>广告、策划、设计</OPTION><OPTION VALUE=新闻出版、广播电视>新闻出版、广播电视</OPTION><OPTION VALUE=信息咨询、人才交流>信息咨询、人才交流</OPTION><OPTION VALUE=金融、保险>金融、保险</OPTION><OPTION VALUE=交通运输>交通运输</OPTION><OPTION VALUE=邮政、电信>邮政、电信</OPTION><OPTION VALUE=综合性工商企业>综合性工商企业</OPTION><OPTION VALUE=市政、公用事业>市政、公用事业</OPTION><OPTION VALUE=教育事业>教育事业</OPTION><OPTION VALUE=医疗、卫生事业>医疗、卫生事业</OPTION><OPTION VALUE=文化、艺术>文化、艺术</OPTION><OPTION VALUE=文娱体育、办公用品>文娱体育、办公用品</OPTION><OPTION VALUE=日用生活服务>日用生活服务</OPTION><OPTION VALUE=商业服务>商业服务</OPTION><OPTION VALUE=物资供销>物资供销</OPTION><OPTION VALUE=饮食、旅游业>饮食、旅游业</OPTION><OPTION VALUE=粮油、副食>粮油、副食</OPTION><OPTION VALUE=其它>其它</OPTION>
                                      </SELECT></td>
								      <td width="291" height="0">&nbsp;</td>
								  </tr>
									<tr>
									  <td height="30">单位性质：</td>
								      <td height="4" colspan="2"><SELECT SIZE=1 NAME=cxz STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE="0" selected >请在以下列表中选择</OPTION>
<OPTION VALUE=行政机关 >行政机关</OPTION> 
<OPTION VALUE=社会团体 >社会团体</OPTION> 
<OPTION VALUE=事业单位 >事业单位</OPTION> 
<OPTION VALUE=国有企业 >国有企业</OPTION> 
<OPTION VALUE=三资企业 >三资企业</OPTION> 
<OPTION VALUE=股份企业 >股份企业</OPTION>
<OPTION VALUE=集体企业 >集体企业</OPTION>
<OPTION VALUE=乡镇企业 >乡镇企业</OPTION> 
<OPTION VALUE=私营企业 >私营企业</OPTION>
<OPTION VALUE=公益组织 >公益组织</OPTION>
<OPTION VALUE=其它性质 >其它性质</OPTION> 

                                      </SELECT></td>
								      <td width="291" height="0">&nbsp;</td>
								  </tr>
									<tr>
									  <td height="30" colspan="4"><table width="588" border="0" cellspacing="0">
                                        <tr>
                                          <td width="84">单位简介：</td>
                                          <td width="368"><textarea rows="8" name="jianj" cols="50" style="border:1px solid #000000; background-color: #FFfFFF; color: #000060; padding-left:4; padding-right:4; padding-top:1; padding-bottom:1"></textarea></td>
                                          <td width="130"><font color=#ff0000>300字以内</font></td>
                                        </tr>
                                      </table></td>
							      </tr>
									<tr>
										<td width="88" height="30">验 证 码：</td>
										<td width="33" height="30">
									  <input type="text" name="code" size="4" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
									  <td width="187" height="30"><%call getcode()%></td>
										<td width="291" height="30">点击验证码图片可刷新验证码。<font color=#FF0000>此项输入错误，将返回上页，所有内容需重输</font>（防止自动发贴机发广告）</td>
									</tr>
									<tr>
										<td height="20" colspan="4" bgcolor="#000000"><div align="center"><span class="STYLE13">所有项目必须正确填写！资料不实或乱填者，将作</span><strong><font color=ff0000>删除处理！！</font></strong></div></td>
									</tr>
									<tr>
									  <td width="88" height="63">&nbsp;</td>
									  <td width="33" height="63">&nbsp;</td>
								      <td width="187" height="63"><input type="submit" value="提交" name="B1"></td>
								      <td width="291" height="63">&nbsp;</td>
								  </tr>
						    </table>
							    <p><br> 
						       <font color=#0099FF>注册成功后，请登录进入“会员中心”继续完成你的详细资料录入和招聘信息发布！！</font></p>
							    <p><a href="cookie.asp" target="_blank"><strong>点这里检测你的浏览器<span class="STYLE15">是否支持</span>本站提供的服务？</strong></a></p>
						  </div>
						</form>
						</td>
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