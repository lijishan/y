<!--#include file="info_index.asp"-->
<!--#include file="conn.asp"-->
<html>

<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title>免费在线求职、免费招聘、企业招聘、人才求职-国港免费招聘网=找工作学生就业信息,四川凉山西昌人才招聘网,北京上海人才天津重庆人才云南贵州广东辽宁,全中国人才招聘</title>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 18px;
	font-weight: bold;
	color: #FF0000;
}
.STYLE2 {
	font-size: 18px;
	font-weight: bold;
}
.STYLE3 {
	color: #FF0000;
	font-weight: bold;
}
.STYLE4 {
	color: #006633;
	font-size: 16px;
}
.STYLE5 {
	color: #FF0099;
	font-size: 18px;
}
.STYLE6 {font-size: 24px;
	color: #006666;
	font-weight: bold;
}
.STYLE7 {color: #FF0033}
body {
	background-image: url(imagen/logbg.gif);
}
-->
</style>
</head>

<body>

  <p>
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
		  if (document.form1.code.value==""){
	      alert("请输入验证码！");
		  document.form1.code.focus();
		  return false
		  } 
		   if (document.form1.user.value=="0"){
	      alert("请选择会员类别！");
		  document.form1.user.focus();
		  return false
		  }
		  return true
  }
  function reset_form()
  {
   document.form1.name.value="";
   document.form1.pwd.value="";
   document.form1.user.value="";
   document.form1.name.focus;
  }
  </script>
  <strong><br>
  <span class="STYLE4">您已<span class="STYLE5">成功注册</span>成本站企业用户<br>请您重新登录继续完成你的企业信息录入！</span></strong><br>
  <br>
  <span class="STYLE6">本站承诺：终身赠送职位空间[<span class="STYLE7">1个</span>]，提供永久性免费基本功能服务！</span></p>
  <p><span class="STYLE1">企业用户快速登录窗口</span></p>
  <table width="390" border="1" align="center" cellspacing="0" bordercolor="#FF0000" bgcolor="#FFE7E7">
                                  <tr>
                                    <td height="211"><form method="POST" name="form1" action="login_dw.asp" onSubmit="return test()">
									<table border="0" width="193" cellspacing="0" cellpadding="0" id="table4">
										<tr>
											<td height="30" width="167" align="center">
											用户名：</td>
											<td height="30" width="213" align="center">
										  <input name="name" size="16" style="float: left"></td>
										</tr>
										<tr>
											<td height="30" width="167" align="center">
											密&nbsp; 码：</td>
											<td height="30" width="213" align="center">
										  <input type="password" name="pwd" size="16" style="float: left"></td>
										</tr>
										<tr>
											<td height="30" width="167" align="center">
											验证码：</td>
											<td height="30" width="213" align="center">
										  <input name="code" size="4" style="float: left; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"><%call getcode()%></td>
										</tr>
										<tr>
											<td height="30" width="167" align="center">
											类&nbsp; 型：</td>
											<td height="30" width="213" align="center">
											<p align="left">
											<select size="1" name="user">
											
											<option value="2">企业用户</option>
										  </select></td>
										</tr>
										<tr>
											<td height="30" align="center" colspan="2">
											<INPUT type=image src=images/dl.gif name="dl">&nbsp;
										  <a href="search_pwd1.asp"><img border="0" src="images/pass.gif" width="77" height="21"></a></td>
										</tr>
								  </form></td>
                                  </tr>
</table><br>
					
<span class="STYLE3">提示：只有全部输入你的企业资料，求职方才能在自己的搜索窗口中使用条件搜索找到你的资料！！</span><br>
（如按工作地区、职位、专业... ...。）
<p><a href="exit.asp" class="STYLE2">返回首页</a></p>
<p align="left">你们的服务要收费吗？<br>
&nbsp;&nbsp;本招聘网所有基本服务免费，对任何企业和个人均不收取任何费用！<br>
&nbsp;&nbsp;也许有朋友会说：骗人，网站没有经济来源，怎么能持续的提供优质的服务？我们坦白的告诉大家：本站创立的初衷就是帮助广大求职者和招聘方成功的找到理想的工作/人才。的确，没有任何经济来源，本站不能正常维护下去，但明确的告诉大家，本站的经济来源不是来源于广大的招聘方和求职者，而是来源于众多支持我们事业的广告方和部分诚心支持本站的用户朋友！在这里，本站也感谢各位朋友，用你的举手之劳，点击查阅相关的广告信息，就是对我们网站持续发展的最大支持！！</p>
</body>

</html>