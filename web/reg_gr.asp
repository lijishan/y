<!--#include file="info.asp"-->
<html>

<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><%=webname%> - 用户注册</title>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
.STYLE2 {
	color: #0066FF;
	font-weight: bold;
}
.STYLE6 {color: #FF0000; font-weight: bold; }
.STYLE10 {
	color: #FF0000;
	font-size: 14pt;
	font-weight: bold;
}
.STYLE11 {
	font-size: 14pt;
	font-weight: bold;
}
.STYLE13 {color: #FFFF00; font-weight: bold; }
.STYLE14 {
	color: #FF0033;
	font-weight: bold;
	font-size: 12px;
}
.STYLE16 {	font-weight: bold;
	font-size: 14px;
}
.STYLE17 {
	font-size: 16pt;
	color: #FF0000;
}
.STYLE18 {
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
								<table border="0" width="688" cellspacing="0" cellpadding="0" id="table3" height="724">
									<tr>
										<td height="20" colspan="5">
										<b>√填写基本信息：</b>　&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2">所有项目必须正确填写！</span><font color=ff0000>资料不实或乱填者，将作删除处理！！</font></td>
									</tr>
									<tr>
									  <td height="42" colspan="2"><span class="STYLE10">注册方式选择</span></td>
								      <td height="21" colspan="2"><div align="left" class="STYLE11"><a href="#">快速注册</a>[<span class="STYLE10">√</span>]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="reg_gr_xx.asp">详细注册</a> </div></td>
								      <td width="29" height="21">&nbsp;</td>
								  </tr>
									<tr>
									  <td height="35" colspan="4"><img src="imagen/ddd.gif" width="16" height="16"><a href="cookie.asp" target="_blank"><strong>点这里检测你的浏览器<span class="STYLE17">是否支持</span>本站提供的服务？</strong></a></td>
								      <td width="29" height="21">&nbsp;</td>
								  </tr>
									<tr>
										<td width="105" height="25">用 户 名：</td>
									  <td height="25" colspan="4"><input name="name" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="15">
									   登录使用，15个字符内,只能输入(a-z),(A-Z),(0-9)</td>
									</tr>
									<tr>
										<td width="105" height="25">密&nbsp;&nbsp;&nbsp;  
										码：</td>
										<td height="25" colspan="2">
									  <input name="pwd" type="password" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="15"></td>
										<td height="25" colspan="2">　</td>
									</tr>
									<tr>
										<td width="105" height="25">密码确认：</td>
										<td height="25" colspan="2">
									  <input name="pwd1" type="password" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="15"></td>
										<td height="25" colspan="2">　</td>
									</tr>
									<tr>
										<td width="105" height="25">密码问题：</td>
										<td height="25" colspan="4">
									  <input name="question" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="20">									   
									  忘记密码的提示问题，用于取回密码</td>
									</tr>
									<tr>
										<td width="105" height="25">密码答案：</td>
										<td height="25" colspan="4">
									  <input name="answer" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="20">
									  忘记密码的提示问题答案，用于取回密码</td>
									</tr>
									<tr>
										<td width="105" height="25">电子邮件：</td>
										<td height="25" colspan="2">
									  <input name="email" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="50"> 
									  招聘方联系您所使用，一定要正确！ </td>
										<td height="25" colspan="2">　</td>
									</tr>
									<tr>
									  <td width="105" height="25">联系电话：</td>
									  <td height="25" colspan="2"><input name="phone" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="13">  
									  招聘方联系您所使用，一定要正确！</td>
								      <td height="25" colspan="2">&nbsp;</td>
								  </tr>
									<tr>
										<td width="105" height="25">用户类别：</td>
										<td height="25" colspan="2">
											<select size="1" name="user">																											                                            <option value="1">个人用户</option>
									  </select></td> <% =user %>
										<td height="25" colspan="2">　</td>
									</tr>
									<tr>
									 <td height="25">真实姓名：</td>
								      <td height="25" colspan="4"><input name="zpname" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="10">								        
								      <span class="STYLE6">注册后不能更改！</span>只能用中文汉字</td>
							      </tr>
									<tr>
									  <td height="25">性别：</td>
									  <td height="25" colspan="2"><INPUT TYPE="radio" VALUE="男" NAME="sex">
									    男
									    <INPUT TYPE="radio" NAME="sex" VALUE="女">
								      女 </td>
								      <td height="25" colspan="2">&nbsp;</td>
								  </tr>
									<tr>
									  <td height="25">出生日期：</td>
								      <td height="25" colspan="4"><input name="bdate" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="20">								        
								      <font color="#FF0000">（格式为1984-01-09）</font></td>
							      </tr>
									<tr>
									  <td height="25">身高：</td>
								      <td height="25" colspan="4"><input name="shenggao" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="3">								        
								      <font color="#FF0000">（单位cm）</font></td>
							      </tr>
									<tr>
									  <td height="25">体重：</td>
								      <td height="25" colspan="4"><input name="tizhong" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="3">								        
								      <font color="#FF0000">（单位Kg）</font></td>
							      </tr>
									<tr>
									  <td height="25">希望工作地区：</td>
								      <td height="25" colspan="2"><SELECT SIZE=1 NAME=gzdd STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF">
                                        <OPTION value="0" selected >请在以下列表中选择</OPTION>
                                        <OPTION VALUE=北京市>北京市</OPTION>
								        <OPTION VALUE=上海市>上海市</OPTION>
								        <OPTION VALUE=天津市>天津市</OPTION>
								        <OPTION VALUE=重庆市>重庆市</OPTION>
								        <OPTION VALUE=河北省>河北省</OPTION>
								        <OPTION VALUE=河南省>河南省</OPTION>
								        <OPTION VALUE=海南省>海南省</OPTION>
								        <OPTION VALUE=安徽省>安徽省</OPTION>
								        <OPTION VALUE=福建省>福建省</OPTION>
								        <OPTION VALUE=甘肃省>甘肃省</OPTION>
								        <OPTION VALUE=广东省>广东省</OPTION>
								        <OPTION VALUE=广西省>广西省</OPTION>
								        <OPTION VALUE=四川省>四川省</OPTION>
								        <OPTION VALUE=贵州省>贵州省</OPTION>
								        <OPTION VALUE=湖北省>湖北省</OPTION>
								        <OPTION VALUE=湖南省>湖南省</OPTION>
								        <OPTION VALUE=吉林省>吉林省</OPTION>
								        <OPTION VALUE=江苏省>江苏省</OPTION>
								        <OPTION VALUE=江西省>江西省</OPTION>
								        <OPTION VALUE=辽宁省>辽宁省</OPTION>
								        <OPTION VALUE=青海省>青海省</OPTION>
								        <OPTION VALUE=山东省>山东省</OPTION>
								        <OPTION VALUE=山西省>山西省</OPTION>
								        <OPTION VALUE=陕西省>陕西省</OPTION>
								        <OPTION VALUE=云南省>云南省</OPTION>
								        <OPTION VALUE=浙江省>浙江省</OPTION>
								        <OPTION VALUE=黑龙江省>黑龙江省</OPTION>
								        <OPTION VALUE=宁夏自治区>宁夏自治区</OPTION>
								        <OPTION VALUE=新疆自治区>新疆自治区</OPTION>
								        <OPTION VALUE=西藏自治区>西藏自治区</OPTION>
								        <OPTION VALUE=内蒙古自治区>内蒙古自治区</OPTION>
								        <OPTION VALUE=香港特别行政区>香港特别行政区</OPTION>
								        <OPTION VALUE=澳门特别行政区>澳门特别行政区</OPTION>
								        <OPTION VALUE=台湾省>台湾省</OPTION>
										<OPTION VALUE=国外地区>国外地区</OPTION>
                                      </SELECT></td>
								      <td height="25" colspan="2">&nbsp;</td>
								  </tr>
									<tr>
									  <td height="25">最希望工作城市：</td>
								      <td height="25" colspan="4"><input name="gzcs" type="text" id="gzcs" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="8"> 
								        招聘方查询条件用，如：北京</td>
							      </tr>
									<tr>
									  <td height="25">您的最高教育程度:</td>
								      <td height="25" colspan="2"><SELECT SIZE=1 NAME=edu STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
                                        <OPTION VALUE="0" selected >请在以下列表中选择</OPTION>
                                        <OPTION VALUE=小学 >小学</OPTION>
										<OPTION VALUE=初中 >初中</OPTION>
                                        <OPTION VALUE=高中 >高中</OPTION>
                                        <OPTION VALUE=中技 >中技</OPTION>
                                        <OPTION VALUE=中专 >中专</OPTION>
                                        <OPTION VALUE=大专 >大专</OPTION>
                                        <OPTION VALUE=本科 >本科</OPTION>
                                        <OPTION VALUE=硕士 >硕士</OPTION>
                                        <OPTION VALUE=博士 >博士</OPTION>
                                      </SELECT></td>
								      <td height="25" colspan="2">&nbsp;</td>
								  </tr>
									<tr>
									  <td height="25">毕业院校：</td>
								      <td height="25" colspan="2"><input name="byyx" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="25"></td>
								      <td height="25" colspan="2">&nbsp;</td>
								  </tr>
									<tr>
									  <td height="25">所学专业类别：</td>
								      <td height="25" colspan="2"><SELECT NAME=zye STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1" size="1">
                                        <OPTION VALUE="0" selected >请选择您所学的专业</OPTION>
                                        <OPTION VALUE=无>无</OPTION>
								        <OPTION VALUE=计算机类>计算机类</OPTION>
								        <OPTION VALUE=管理类>管理类</OPTION>
								        <OPTION VALUE=行政管理>行政管理</OPTION>
								        <OPTION VALUE=党政管理>党政管理</OPTION>
								        <OPTION VALUE=管理工程类>管理工程类</OPTION>
								        <OPTION VALUE=工科>工科</OPTION>
								        <OPTION VALUE=机械制造类>机械制造类</OPTION>
								        <OPTION VALUE=仪器仪表类>仪器仪表类</OPTION>
								        <OPTION VALUE=热工类>热工类</OPTION>
								        <OPTION VALUE=电气自动化>电气自动化</OPTION>
								        <OPTION VALUE=电子技术>电子技术</OPTION>
								        <OPTION VALUE=工业自动化>工业自动化</OPTION>
								        <OPTION VALUE=通信类>通信类</OPTION>
								        <OPTION VALUE=土建类>土建类</OPTION>
								        <OPTION VALUE=化工类>化工类</OPTION>
								        <OPTION VALUE=轻工/粮食/食品类>轻工/粮食/食品类</OPTION>
								        <OPTION VALUE=纺织类>纺织类</OPTION>
								        <OPTION VALUE=运输类>运输类</OPTION>
								        <OPTION VALUE=水利类>水利类</OPTION>
								        <OPTION VALUE=测绘类>测绘类</OPTION>
								        <OPTION VALUE=环境类>环境类</OPTION>
								        <OPTION VALUE=原子能类>原子能类</OPTION>
								        <OPTION VALUE=应用理科及力学类>应用理科及力学类</OPTION>
								        <OPTION VALUE=地质类>地质类</OPTION>
								        <OPTION VALUE=矿业类>矿业类</OPTION>
								        <OPTION VALUE=冶金类>冶金类</OPTION>
								        <OPTION VALUE=材料类>材料类</OPTION>
								        <OPTION VALUE=军工类>军工类</OPTION>
								        <OPTION VALUE=财经类>财经类</OPTION>
								        <OPTION VALUE=政法类>政法类</OPTION>
								        <OPTION VALUE=文科类>文科类</OPTION>
								        <OPTION VALUE=中国语言文学>中国语言文学</OPTION>
								        <OPTION VALUE=外语类>外语类</OPTION>
								        <OPTION VALUE=历史类>历史类</OPTION>
								        <OPTION VALUE=政治类>政治类</OPTION>
								        <OPTION VALUE=哲学类>哲学类</OPTION>
								        <OPTION VALUE=图书馆学>图书馆学</OPTION>
								        <OPTION VALUE=文科类其他专业>文科类其他专业</OPTION>
								        <OPTION VALUE=理科类>理科类</OPTION>
								        <OPTION VALUE=数学类>数学类</OPTION>
								        <OPTION VALUE=物理学类>物理学类</OPTION>
								        <OPTION VALUE=化学类>化学类</OPTION>
								        <OPTION VALUE=力学类>力学类</OPTION>
								        <OPTION VALUE=地学类>地学类</OPTION>
								        <OPTION VALUE=天文学类>天文学类</OPTION>
								        <OPTION VALUE=海洋学类>海洋学类</OPTION>
								        <OPTION VALUE=生物学类>生物学类</OPTION>
								        <OPTION VALUE=理科类其他专业>理科类其他专业</OPTION>
								        <OPTION VALUE=医药类>医药类</OPTION>
								        <OPTION VALUE=师范>师范</OPTION>
								        <OPTION VALUE=农科类>农科类</OPTION>
								        <OPTION VALUE=林科类>林科类</OPTION>
								        <OPTION VALUE=体育类>体育类</OPTION>
								        <OPTION VALUE=艺术>艺术</OPTION>
								        <OPTION VALUE=音乐类>音乐类</OPTION>
								        <OPTION VALUE=工艺美术类>工艺美术类</OPTION>
								        <OPTION VALUE=工业美术类>工业美术类</OPTION>
								        <OPTION VALUE=戏剧舞蹈类>戏剧舞蹈类</OPTION>
								        <OPTION VALUE=电影电视>电影电视</OPTION>
								        <OPTION VALUE=技工类>技工类</OPTION>
                                      </SELECT></td>
								      <td height="25" colspan="2">&nbsp;</td>
								  </tr>
									<tr>
									  <td height="25">所学专业：</td>
								      <td height="25" colspan="2"><input name="zy" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="25"></td>
								      <td height="25" colspan="2">&nbsp;</td>
								  </tr>
									<tr>
									  <td height="15">您的职业目标：</td>
								      <td height="15" colspan="2"><TEXTAREA NAME="kmubiao" COLS="50" ROWS="5" id="kmubiao" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"></TEXTAREA></td>
								      <td height="15" colspan="2"><font color="#FF0000">100字内</font><BR>
如：寻求某某类型的公司，某某岗位等……<FONT COLOR="#FF0000"></td>
								  </tr>
									
									<tr>
										<td width="105" height="30">验 证 码：</td>
										<td width="43" height="30">
									  <input type="text" name="code" size="4" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
									  <td height="30" colspan="2"><%call getcode()%>点击验证码图片可刷新验证码。<font color=#FF0000>此项输入错误，将返回上页，所有内容需重输</font>（防止自动发贴机发广告）</td>
									</tr>
									<tr>
										<td height="20" colspan="5" bgcolor="#000000"><div align="center"><span class="STYLE13">所有项目必须正确填写！资料不实或乱填者，将作</span><strong><font color=ff0000>删除处理！！</font></strong></div></td>
									</tr>
									<tr>
									  <td width="105" height="60">&nbsp;</td>
									  <td width="43" height="60">&nbsp;</td>
								      <td width="419" height="60"><input type="submit" value="提交" name="B1"></td>
								      <td height="60" colspan="2">&nbsp;</td>
								  </tr>
							</table>
							    <p class="STYLE14" >注册成功后，请进入“会员中心”继续完成你的详细资料录入和个人简历发布！！</p>
							    <p ><a href="cookie.asp" target="_blank"><strong>点这里检测你的浏览器<span class="STYLE17">是否支持</span>本站提供的服务？</strong></a></p>
							    <p>&nbsp;</p>
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