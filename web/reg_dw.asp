<!--#include file="info.asp"-->
<html>

<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=webname%> - �û�ע��</title>
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
						<td height="86" width="237">��</td>
						<td height="86" width="128">
						<img border="0" src="images/regtop1.gif"></td>
						<td height="86" width="58">��</td>
					</tr>
					<tr>
						<td width="705" colspan="4" valign="top">
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
		  if (document.form1.pwd.value!=document.form1.pwd1.value){
	      alert("�����������벻һ�£�");
		  document.form1.pwd.focus();
		  return false
		  } 
if (document.form1.question.value==""){
	      alert("�������������⣡")
		  document.form1.question.focus();
		  return false
		    }
if (document.form1.answer.value==""){
	      alert("����������𰸣�")
		  document.form1.answer.focus();
		  return false
		    }
if (document.form1.email.value==""){
	      alert("�������ʼ���")
		  document.form1.email.focus();
		  return false
		    }
          if (document.form1.user.value=="0"){
	      alert("��ѡ���Ա���");
		  document.form1.user.focus();
		  return false
		  }
		  if (document.form1.code.value==""){
	      alert("��������֤�룡")
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
										<b>����д������Ϣ��</b></td>
										<td width="291" height="0">��<span class="STYLE2">������Ŀ������ȷ��д��</span></td>
									</tr>
									<tr>
									  <td height="30" colspan="4"><img src="imagen/ddd.gif" width="16" height="16"><a href="cookie.asp" target="_blank"><strong>����������������<span class="STYLE15">�Ƿ�֧��</span>��վ�ṩ�ķ���</strong></a></td>
							      </tr>
									<tr>
										<td width="88" height="30">�� �� ����</td>
										<td height="30" colspan="2">
									  <input name="name" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="15"></td>
										<td width="291" height="30">
										��¼ʹ�ã�15���ַ���,ֻ������(a-z),(A-Z),(0-9)</td>
									</tr>
									<tr>
										<td width="88" height="30">��&nbsp;&nbsp;&nbsp; 
										�룺</td>
										<td height="30" colspan="2">
									  <input name="pwd" type="password" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="15"></td>
										<td width="291" height="30">��</td>
									</tr>
									<tr>
										<td width="88" height="30">����ȷ�ϣ�</td>
										<td height="30" colspan="2">
									  <input name="pwd1" type="password" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="15"></td>
										<td width="291" height="30">��</td>
									</tr>
									<tr>
										<td width="88" height="30">�������⣺</td>
									  <td height="30" colspan="2">
									  <input name="question" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="25"></td>
										<td width="291" height="30">�����������ʾ����</td>
									</tr>
									<tr>
										<td width="88" height="30">����𰸣�</td>
										<td height="30" colspan="2">
									  <input name="answer" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="25"></td>
										<td width="291" height="30">
										�����������ʾ����𰸣�����ȡ������</td>
									</tr>
									<tr>
										<td width="88" height="30">�����ʼ���</td>
										<td height="15" colspan="2">
									  <input name="email" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="50"></td>
										<td width="291" height="15"><font color=#ff0000>ӦƸ��������ϵʱʹ�ã�һ��Ҫ��ȷ</font></td>
									</tr>
									<tr>
									  <td width="88" height="26">��ϵ�绰��</td>
									  <td height="26" colspan="2"><input name="phone" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="13"></td>
								      <td width="291" height="26"><font color=#ff0000>ӦƸ��������ϵʱʹ�ã�ע����������޸�</font></td>
								  </tr>
									<tr>
										<td width="88" height="30">�û����</td>
										<td height="15" colspan="2">
											<select size="1" name="user">
											<option value="2">��ҵ�û�</option>
											</select></td> <% =user %>
										<td width="291" height="15">��</td>
									</tr>
									<tr>
									 <td height="30">��Ƹ��λ���ƣ�</td>
								      <td height="0" colspan="2"><input name="zpname" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="30" maxlength="20"></td>
								      <td width="291" height="0"><span class="STYLE5">20���ڣ�ע����ܸ��ģ�</span>ֻ�������ĺ���</td>
									</tr>
									<tr>
									  <td height="30">��λ���ڵ�����</td>
								      <td height="22" colspan="2"><SELECT SIZE=1 NAME=area STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION value="0" selected >���������б���ѡ��</OPTION>
<OPTION VALUE=������>������</OPTION><OPTION VALUE=�Ϻ���>�Ϻ���</OPTION><OPTION VALUE=�����>�����</OPTION><OPTION VALUE=������>������</OPTION><OPTION VALUE=�ӱ�ʡ>�ӱ�ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=�㶫ʡ>�㶫ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=�Ĵ�ʡ>�Ĵ�ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=�ຣʡ>�ຣʡ</OPTION><OPTION VALUE=ɽ��ʡ>ɽ��ʡ</OPTION><OPTION VALUE=ɽ��ʡ>ɽ��ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=�㽭ʡ>�㽭ʡ</OPTION><OPTION VALUE=������ʡ>������ʡ</OPTION><OPTION VALUE=����������>����������</OPTION><OPTION VALUE=�½�������>�½�������</OPTION><OPTION VALUE=����������>����������</OPTION><OPTION VALUE=���ɹ�������>���ɹ�������</OPTION><OPTION VALUE=����ر�������>����ر�������</OPTION><OPTION VALUE=�����ر�������>�����ر�������</OPTION><OPTION VALUE=̨��ʡ>̨��ʡ</OPTION><OPTION VALUE=�������>�������</OPTION>
                                      </SELECT></td>
								      <td width="291" height="0"><font color=#ff0000>ӦƸ�߲�ѯʹ�ã�һ��Ҫ��ȷ</font></td>
								  </tr>
									<tr>
									  <td height="30">��λ������ҵ��</td>
								      <td height="4" colspan="2"><SELECT SIZE=1 NAME=trade STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE="0" selected >���������б���ѡ��</OPTION>
<OPTION VALUE=�����ҵ>�����ҵ</OPTION><OPTION VALUE=���ӵ�����ͨѶ�豸>���ӵ�����ͨѶ�豸</OPTION><OPTION VALUE=������ơ��Ƽ�����>������ơ��Ƽ�����</OPTION><OPTION VALUE=�����豸������>�����豸������</OPTION><OPTION VALUE=�����Ǳ���������>�����Ǳ���������</OPTION><OPTION VALUE=��е���켰�豸>��е���켰�豸</OPTION><OPTION VALUE=���ֳ�������������>���ֳ�������������</OPTION><OPTION VALUE=����������>����������</OPTION><OPTION VALUE=��ѧ������������ҩ>��ѧ������������ҩ</OPTION><OPTION VALUE=�������������Ʒ>�������������Ʒ</OPTION><OPTION VALUE=��֯����װ>��֯����װ</OPTION><OPTION VALUE=ũ��������>ũ��������</OPTION><OPTION VALUE=�Ṥ>�Ṥ</OPTION><OPTION VALUE=���ز���������װ��>���ز���������װ��</OPTION><OPTION VALUE=��ֽ��ӡˢ����װ>��ֽ��ӡˢ����װ</OPTION><OPTION VALUE=ľ�ġ��Ҿ�>ľ�ġ��Ҿ�</OPTION><OPTION VALUE=��桢�߻������>��桢�߻������</OPTION><OPTION VALUE=���ų��桢�㲥����>���ų��桢�㲥����</OPTION><OPTION VALUE=��Ϣ��ѯ���˲Ž���>��Ϣ��ѯ���˲Ž���</OPTION><OPTION VALUE=���ڡ�����>���ڡ�����</OPTION><OPTION VALUE=��ͨ����>��ͨ����</OPTION><OPTION VALUE=����������>����������</OPTION><OPTION VALUE=�ۺ��Թ�����ҵ>�ۺ��Թ�����ҵ</OPTION><OPTION VALUE=������������ҵ>������������ҵ</OPTION><OPTION VALUE=������ҵ>������ҵ</OPTION><OPTION VALUE=ҽ�ơ�������ҵ>ҽ�ơ�������ҵ</OPTION><OPTION VALUE=�Ļ�������>�Ļ�������</OPTION><OPTION VALUE=�����������칫��Ʒ>�����������칫��Ʒ</OPTION><OPTION VALUE=�����������>�����������</OPTION><OPTION VALUE=��ҵ����>��ҵ����</OPTION><OPTION VALUE=���ʹ���>���ʹ���</OPTION><OPTION VALUE=��ʳ������ҵ>��ʳ������ҵ</OPTION><OPTION VALUE=���͡���ʳ>���͡���ʳ</OPTION><OPTION VALUE=����>����</OPTION>
                                      </SELECT></td>
								      <td width="291" height="0">&nbsp;</td>
								  </tr>
									<tr>
									  <td height="30">��λ���ʣ�</td>
								      <td height="4" colspan="2"><SELECT SIZE=1 NAME=cxz STYLE="border: 1px solid #000000; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFfFFF"> 
<OPTION VALUE="0" selected >���������б���ѡ��</OPTION>
<OPTION VALUE=�������� >��������</OPTION> 
<OPTION VALUE=������� >�������</OPTION> 
<OPTION VALUE=��ҵ��λ >��ҵ��λ</OPTION> 
<OPTION VALUE=������ҵ >������ҵ</OPTION> 
<OPTION VALUE=������ҵ >������ҵ</OPTION> 
<OPTION VALUE=�ɷ���ҵ >�ɷ���ҵ</OPTION>
<OPTION VALUE=������ҵ >������ҵ</OPTION>
<OPTION VALUE=������ҵ >������ҵ</OPTION> 
<OPTION VALUE=˽Ӫ��ҵ >˽Ӫ��ҵ</OPTION>
<OPTION VALUE=������֯ >������֯</OPTION>
<OPTION VALUE=�������� >��������</OPTION> 

                                      </SELECT></td>
								      <td width="291" height="0">&nbsp;</td>
								  </tr>
									<tr>
									  <td height="30" colspan="4"><table width="588" border="0" cellspacing="0">
                                        <tr>
                                          <td width="84">��λ��飺</td>
                                          <td width="368"><textarea rows="8" name="jianj" cols="50" style="border:1px solid #000000; background-color: #FFfFFF; color: #000060; padding-left:4; padding-right:4; padding-top:1; padding-bottom:1"></textarea></td>
                                          <td width="130"><font color=#ff0000>300������</font></td>
                                        </tr>
                                      </table></td>
							      </tr>
									<tr>
										<td width="88" height="30">�� ֤ �룺</td>
										<td width="33" height="30">
									  <input type="text" name="code" size="4" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
									  <td width="187" height="30"><%call getcode()%></td>
										<td width="291" height="30">�����֤��ͼƬ��ˢ����֤�롣<font color=#FF0000>����������󣬽�������ҳ����������������</font>����ֹ�Զ�����������棩</td>
									</tr>
									<tr>
										<td height="20" colspan="4" bgcolor="#000000"><div align="center"><span class="STYLE13">������Ŀ������ȷ��д�����ϲ�ʵ�������ߣ�����</span><strong><font color=ff0000>ɾ��������</font></strong></div></td>
									</tr>
									<tr>
									  <td width="88" height="63">&nbsp;</td>
									  <td width="33" height="63">&nbsp;</td>
								      <td width="187" height="63"><input type="submit" value="�ύ" name="B1"></td>
								      <td width="291" height="63">&nbsp;</td>
								  </tr>
						    </table>
							    <p><br> 
						       <font color=#0099FF>ע��ɹ������¼���롰��Ա���ġ�������������ϸ����¼�����Ƹ��Ϣ��������</font></p>
							    <p><a href="cookie.asp" target="_blank"><strong>����������������<span class="STYLE15">�Ƿ�֧��</span>��վ�ṩ�ķ���</strong></a></p>
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