<!--#include file="info_index.asp"-->
<!--#include file="conn.asp"-->
<html>

<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title>���������ְ�������Ƹ����ҵ��Ƹ���˲���ְ-���������Ƹ��=�ҹ���ѧ����ҵ��Ϣ,�Ĵ���ɽ�����˲���Ƹ��,�����Ϻ��˲���������˲����Ϲ��ݹ㶫����,ȫ�й��˲���Ƹ</title>
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
	      alert("�������û�����")
		  document.form1.name.focus();
		  return false
		    }
	  if (document.form1.pwd.value==""){
	      alert("���������룡");
		  document.form1.pwd.focus();
		  return false
		  } 
		  if (document.form1.code.value==""){
	      alert("��������֤�룡");
		  document.form1.code.focus();
		  return false
		  } 
		   if (document.form1.user.value=="0"){
	      alert("��ѡ���Ա���");
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
  <span class="STYLE4">����<span class="STYLE5">�ɹ�ע��</span>�ɱ�վ��ҵ�û�<br>�������µ�¼������������ҵ��Ϣ¼�룡</span></strong><br>
  <br>
  <span class="STYLE6">��վ��ŵ����������ְλ�ռ�[<span class="STYLE7">1��</span>]���ṩ��������ѻ������ܷ���</span></p>
  <p><span class="STYLE1">��ҵ�û����ٵ�¼����</span></p>
  <table width="390" border="1" align="center" cellspacing="0" bordercolor="#FF0000" bgcolor="#FFE7E7">
                                  <tr>
                                    <td height="211"><form method="POST" name="form1" action="login_dw.asp" onSubmit="return test()">
									<table border="0" width="193" cellspacing="0" cellpadding="0" id="table4">
										<tr>
											<td height="30" width="167" align="center">
											�û�����</td>
											<td height="30" width="213" align="center">
										  <input name="name" size="16" style="float: left"></td>
										</tr>
										<tr>
											<td height="30" width="167" align="center">
											��&nbsp; �룺</td>
											<td height="30" width="213" align="center">
										  <input type="password" name="pwd" size="16" style="float: left"></td>
										</tr>
										<tr>
											<td height="30" width="167" align="center">
											��֤�룺</td>
											<td height="30" width="213" align="center">
										  <input name="code" size="4" style="float: left; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"><%call getcode()%></td>
										</tr>
										<tr>
											<td height="30" width="167" align="center">
											��&nbsp; �ͣ�</td>
											<td height="30" width="213" align="center">
											<p align="left">
											<select size="1" name="user">
											
											<option value="2">��ҵ�û�</option>
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
					
<span class="STYLE3">��ʾ��ֻ��ȫ�����������ҵ���ϣ���ְ���������Լ�������������ʹ�����������ҵ�������ϣ���</span><br>
���簴����������ְλ��רҵ... ...����
<p><a href="exit.asp" class="STYLE2">������ҳ</a></p>
<p align="left">���ǵķ���Ҫ�շ���<br>
&nbsp;&nbsp;����Ƹ�����л���������ѣ����κ���ҵ�͸��˾�����ȡ�κη��ã�<br>
&nbsp;&nbsp;Ҳ�������ѻ�˵��ƭ�ˣ���վû�о�����Դ����ô�ܳ������ṩ���ʵķ�������̹�׵ĸ��ߴ�ң���վ�����ĳ��Ծ��ǰ��������ְ�ߺ���Ƹ���ɹ����ҵ�����Ĺ���/�˲š���ȷ��û���κξ�����Դ����վ��������ά����ȥ������ȷ�ĸ��ߴ�ң���վ�ľ�����Դ������Դ�ڹ�����Ƹ������ְ�ߣ�������Դ���ڶ�֧��������ҵ�Ĺ�淽�Ͳ��ֳ���֧�ֱ�վ���û����ѣ��������վҲ��л��λ���ѣ�����ľ���֮�ͣ����������صĹ����Ϣ�����Ƕ�������վ������չ�����֧�֣���</p>
</body>

</html>