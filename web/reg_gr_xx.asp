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
.STYLE11 {	font-size: 14pt;
	font-weight: bold;
}
.STYLE13 {color: #FFFF00; font-weight: bold; }
.STYLE14 {	font-weight: bold;
	font-size: 14px;
}
.STYLE15 {
	font-size: 16pt;
	color: #FF0000;
}
.STYLE16 {	color: #FF00FF;
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

						<form name="form1" method="POST" action="regdata_xx.asp" onSubmit="return test()">
						  <div align="center">
								<table border="0" width="688" cellspacing="0" cellpadding="0" id="table3" height="969">
									<tr>
										<td height="20" colspan="5">
										<b>����д������Ϣ��</b>��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="STYLE2">������Ŀ������ȷ��д��</span><font color=ff0000>���ϲ�ʵ�������ߣ�����ɾ��������</font></td>
									</tr>
									<tr>
									  <td height="42" colspan="2"><span class="STYLE10">ע�᷽ʽѡ��</span></td>
								      <td height="21" colspan="3"><div align="left" class="STYLE11"><a href="reg_gr.asp">����ע��</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="reg_gr_xx.asp">��ϸע��[<span class="STYLE10">��</span>]</a> </div></td>
							      </tr>
									<tr>
									  <td height="35" colspan="5"><img src="imagen/ddd.gif" width="16" height="16"><a href="cookie.asp" target="_blank"><strong>����������������<span class="STYLE15">�Ƿ�֧��</span>��վ�ṩ�ķ���</strong></a></td>
							      </tr>
									<tr>
										<td width="110" height="20">�� �� ����</td>
									  <td height="20" colspan="4"><input name="name" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="15">
									   ��¼ʹ�ã�15���ַ���,ֻ������(a-z),(A-Z),(0-9)</td>
									</tr>
									<tr>
										<td width="110" height="20">��&nbsp;&nbsp;&nbsp;  
										�룺</td>
										<td height="20" colspan="2">
									  <input name="pwd" type="password" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="15"></td>
										<td height="20" colspan="2">��</td>
									</tr>
									<tr>
										<td width="110" height="20">����ȷ�ϣ�</td>
										<td height="20" colspan="2">
									  <input name="pwd1" type="password" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="15"></td>
										<td height="20" colspan="2">��</td>
									</tr>
									<tr>
										<td width="110" height="20">�������⣺</td>
										<td height="20" colspan="4">
									  <input name="question" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="25">									   
									  �����������ʾ���⣬����ȡ������</td>
									</tr>
									<tr>
										<td width="110" height="20">����𰸣�</td>
										<td height="20" colspan="4">
									  <input name="answer" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="25">
									  �����������ʾ����𰸣�����ȡ������</td>
									</tr>
									<tr>
										<td width="110" height="20">�����ʼ���</td>
										<td height="20" colspan="2">
									  <input name="email" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="50"> 
									  ��Ƹ����ϵʹ�ã�һ��Ҫ��ȷ�� </td>
										<td height="20" colspan="2">��</td>
									</tr>
									<tr>
									  <td width="110" height="20">��ϵ�绰��</td>
									  <td height="20" colspan="2"><input name="phone" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="13">  
									  ��Ƹ����ϵʹ�ã�һ��Ҫ��ȷ��</td>
								      <td height="20" colspan="2">&nbsp;</td>
								  </tr>
									<tr>
										<td width="110" height="20">�û����</td>
										<td height="20" colspan="2">
											<select size="1" name="user">																											                                            <option value="1">�����û�</option>
									  </select></td> <% =user %>
										<td height="20" colspan="2">��</td>
									</tr>
									<tr>
									 <td height="20">��ʵ������</td>
								      <td height="20" colspan="4"><input name="zpname" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="10">								        
								      <span class="STYLE6">ע����ܸ��ģ�</span>ֻ�������ĺ���</td>
							      </tr>
									<tr>
									  <td height="20">�Ա�</td>
									  <td height="20" colspan="2"><INPUT TYPE="radio" VALUE="��" NAME="sex">
									    ��
									    <INPUT TYPE="radio" NAME="sex" VALUE="Ů">
								      Ů </td>
								      <td height="20" colspan="2">&nbsp;</td>
								  </tr>
									<tr>
									  <td height="20">�������ڣ�</td>
								      <td height="20" colspan="4"><input name="bdate" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="20">								        
								      <font color="#FF0000">����ʽΪ1984-01-09��</font></td>
							      </tr>
									<tr>
									  <td height="20">��ߣ�</td>
								      <td height="20" colspan="4"><input name="shenggao" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="3">								        
								      <font color="#FF0000">����λcm��</font></td>
							      </tr>
									<tr>
									  <td height="20">���أ�</td>
								      <td height="20" colspan="4"><input name="tizhong" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="3">								        
								      <font color="#FF0000">����λKg��</font></td>
							      </tr>
									<tr>
									  <td height="20">ϣ������������</td>
								      <td height="20" colspan="2"><SELECT SIZE=1 NAME=gzdd STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF">
                                        <OPTION value="0" selected >���������б���ѡ��</OPTION>
                                        <OPTION VALUE=������>������</OPTION>
								        <OPTION VALUE=�Ϻ���>�Ϻ���</OPTION>
								        <OPTION VALUE=�����>�����</OPTION>
								        <OPTION VALUE=������>������</OPTION>
								        <OPTION VALUE=�ӱ�ʡ>�ӱ�ʡ</OPTION>
								        <OPTION VALUE=����ʡ>����ʡ</OPTION>
								        <OPTION VALUE=����ʡ>����ʡ</OPTION>
								        <OPTION VALUE=����ʡ>����ʡ</OPTION>
								        <OPTION VALUE=����ʡ>����ʡ</OPTION>
								        <OPTION VALUE=����ʡ>����ʡ</OPTION>
								        <OPTION VALUE=�㶫ʡ>�㶫ʡ</OPTION>
								        <OPTION VALUE=����ʡ>����ʡ</OPTION>
								        <OPTION VALUE=�Ĵ�ʡ>�Ĵ�ʡ</OPTION>
								        <OPTION VALUE=����ʡ>����ʡ</OPTION>
								        <OPTION VALUE=����ʡ>����ʡ</OPTION>
								        <OPTION VALUE=����ʡ>����ʡ</OPTION>
								        <OPTION VALUE=����ʡ>����ʡ</OPTION>
								        <OPTION VALUE=����ʡ>����ʡ</OPTION>
								        <OPTION VALUE=����ʡ>����ʡ</OPTION>
								        <OPTION VALUE=����ʡ>����ʡ</OPTION>
								        <OPTION VALUE=�ຣʡ>�ຣʡ</OPTION>
								        <OPTION VALUE=ɽ��ʡ>ɽ��ʡ</OPTION>
								        <OPTION VALUE=ɽ��ʡ>ɽ��ʡ</OPTION>
								        <OPTION VALUE=����ʡ>����ʡ</OPTION>
								        <OPTION VALUE=����ʡ>����ʡ</OPTION>
								        <OPTION VALUE=�㽭ʡ>�㽭ʡ</OPTION>
								        <OPTION VALUE=������ʡ>������ʡ</OPTION>
								        <OPTION VALUE=����������>����������</OPTION>
								        <OPTION VALUE=�½�������>�½�������</OPTION>
								        <OPTION VALUE=����������>����������</OPTION>
								        <OPTION VALUE=���ɹ�������>���ɹ�������</OPTION>
								        <OPTION VALUE=����ر�������>����ر�������</OPTION>
								        <OPTION VALUE=�����ر�������>�����ر�������</OPTION>
								        <OPTION VALUE=̨��ʡ>̨��ʡ</OPTION>
										<OPTION VALUE=�������>�������</OPTION>
                                      </SELECT></td>
								      <td height="20" colspan="2">&nbsp;</td>
								  </tr>
									<tr>
									  <td height="20">��ϣ���������У�</td>
								      <td height="20" colspan="4"><input name="gzcs" type="text" id="gzcs" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="8"> 
								        ��Ƹ����ѯ�����ã��磺����</td>
							      </tr>
									<tr>
									  <td height="20">������߽����̶�:</td>
								      <td height="20" colspan="2"><SELECT SIZE=1 NAME=edu STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
                                        <OPTION VALUE="0" selected >���������б���ѡ��</OPTION>
                                        <OPTION VALUE=Сѧ >Сѧ</OPTION>
										<OPTION VALUE=���� >����</OPTION>
                                        <OPTION VALUE=���� >����</OPTION>
                                        <OPTION VALUE=�м� >�м�</OPTION>
                                        <OPTION VALUE=��ר >��ר</OPTION>
                                        <OPTION VALUE=��ר >��ר</OPTION>
                                        <OPTION VALUE=���� >����</OPTION>
                                        <OPTION VALUE=˶ʿ >˶ʿ</OPTION>
                                        <OPTION VALUE=��ʿ >��ʿ</OPTION>
                                      </SELECT></td>
								      <td height="20" colspan="2">&nbsp;</td>
								  </tr>
									<tr>
									  <td height="20">��ҵԺУ��</td>
								      <td height="20" colspan="2"><input name="byyx" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="25"></td>
								      <td height="20" colspan="2">&nbsp;</td>
								  </tr>
									<tr>
									  <td height="20">��ѧרҵ���</td>
								      <td height="20" colspan="2"><SELECT NAME=zye STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1" size="1">
                                        <OPTION VALUE="0" selected >��ѡ������ѧ��רҵ</OPTION>
                                        <OPTION VALUE=��>��</OPTION>
								        <OPTION VALUE=�������>�������</OPTION>
								        <OPTION VALUE=������>������</OPTION>
								        <OPTION VALUE=��������>��������</OPTION>
								        <OPTION VALUE=��������>��������</OPTION>
								        <OPTION VALUE=��������>��������</OPTION>
								        <OPTION VALUE=����>����</OPTION>
								        <OPTION VALUE=��е������>��е������</OPTION>
								        <OPTION VALUE=�����Ǳ���>�����Ǳ���</OPTION>
								        <OPTION VALUE=�ȹ���>�ȹ���</OPTION>
								        <OPTION VALUE=�����Զ���>�����Զ���</OPTION>
								        <OPTION VALUE=���Ӽ���>���Ӽ���</OPTION>
								        <OPTION VALUE=��ҵ�Զ���>��ҵ�Զ���</OPTION>
								        <OPTION VALUE=ͨ����>ͨ����</OPTION>
								        <OPTION VALUE=������>������</OPTION>
								        <OPTION VALUE=������>������</OPTION>
								        <OPTION VALUE=�Ṥ/��ʳ/ʳƷ��>�Ṥ/��ʳ/ʳƷ��</OPTION>
								        <OPTION VALUE=��֯��>��֯��</OPTION>
								        <OPTION VALUE=������>������</OPTION>
								        <OPTION VALUE=ˮ����>ˮ����</OPTION>
								        <OPTION VALUE=�����>�����</OPTION>
								        <OPTION VALUE=������>������</OPTION>
								        <OPTION VALUE=ԭ������>ԭ������</OPTION>
								        <OPTION VALUE=Ӧ����Ƽ���ѧ��>Ӧ����Ƽ���ѧ��</OPTION>
								        <OPTION VALUE=������>������</OPTION>
								        <OPTION VALUE=��ҵ��>��ҵ��</OPTION>
								        <OPTION VALUE=ұ����>ұ����</OPTION>
								        <OPTION VALUE=������>������</OPTION>
								        <OPTION VALUE=������>������</OPTION>
								        <OPTION VALUE=�ƾ���>�ƾ���</OPTION>
								        <OPTION VALUE=������>������</OPTION>
								        <OPTION VALUE=�Ŀ���>�Ŀ���</OPTION>
								        <OPTION VALUE=�й�������ѧ>�й�������ѧ</OPTION>
								        <OPTION VALUE=������>������</OPTION>
								        <OPTION VALUE=��ʷ��>��ʷ��</OPTION>
								        <OPTION VALUE=������>������</OPTION>
								        <OPTION VALUE=��ѧ��>��ѧ��</OPTION>
								        <OPTION VALUE=ͼ���ѧ>ͼ���ѧ</OPTION>
								        <OPTION VALUE=�Ŀ�������רҵ>�Ŀ�������רҵ</OPTION>
								        <OPTION VALUE=�����>�����</OPTION>
								        <OPTION VALUE=��ѧ��>��ѧ��</OPTION>
								        <OPTION VALUE=����ѧ��>����ѧ��</OPTION>
								        <OPTION VALUE=��ѧ��>��ѧ��</OPTION>
								        <OPTION VALUE=��ѧ��>��ѧ��</OPTION>
								        <OPTION VALUE=��ѧ��>��ѧ��</OPTION>
								        <OPTION VALUE=����ѧ��>����ѧ��</OPTION>
								        <OPTION VALUE=����ѧ��>����ѧ��</OPTION>
								        <OPTION VALUE=����ѧ��>����ѧ��</OPTION>
								        <OPTION VALUE=���������רҵ>���������רҵ</OPTION>
								        <OPTION VALUE=ҽҩ��>ҽҩ��</OPTION>
								        <OPTION VALUE=ʦ��>ʦ��</OPTION>
								        <OPTION VALUE=ũ����>ũ����</OPTION>
								        <OPTION VALUE=�ֿ���>�ֿ���</OPTION>
								        <OPTION VALUE=������>������</OPTION>
								        <OPTION VALUE=����>����</OPTION>
								        <OPTION VALUE=������>������</OPTION>
								        <OPTION VALUE=����������>����������</OPTION>
								        <OPTION VALUE=��ҵ������>��ҵ������</OPTION>
								        <OPTION VALUE=Ϸ���赸��>Ϸ���赸��</OPTION>
								        <OPTION VALUE=��Ӱ����>��Ӱ����</OPTION>
								        <OPTION VALUE=������>������</OPTION>
                                      </SELECT></td>
								      <td height="20" colspan="2">&nbsp;</td>
								  </tr>
									<tr>
									  <td height="20">��ѧרҵ��</td>
								      <td height="20" colspan="2"><input name="zy" type="text" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" size="25" maxlength="25"></td>
								      <td height="20" colspan="2">&nbsp;</td>
								  </tr>
									<tr>
									  <td height="84">�ܽ�������ѵ������</td>
								      <td height="84" colspan="3"><TEXTAREA NAME="jyjl" COLS="50" ROWS="5" id="jyjl" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"></TEXTAREA></td>
								      <td width="189"><font color="#FF0000">400����</font><br>
								        X��X��X��X��X�� ѧУ����ѵ�������� רҵ����Ŀ����&nbsp; 
                                      ��ú���֤�顣</td>
								  </tr>
									<tr>
                                      <td height="88">��������������ר��</td>
									  <td height="88" colspan="3"><textarea name="kothertc" cols="50" rows="5" id="kothertc" style="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"></textarea></td>
									  <td height="88"><font color="#FF0000">200����</font><br>
����ϸ����д�������������˵�λ����˽��㡣</td>
								  </tr>
									<tr>
                                      <td height="88">������ϸ����������</td>
									  <td height="88" colspan="3"><textarea name="kgzjl" cols="50" rows="5" id="kgzjl" style="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"></textarea></td>
									  <td height="88"><font color="#FF0000">400����</font><br>
����Ӧ���ҵ��,����дʵϰ����ְ�������</td>
								  </tr>
									<tr>
                                      <td height="88">���Ҽ��/�ܽ᣺</td>
									  <td height="88" colspan="3"><textarea name="grzz" cols="50" rows="5" id="grzz" style="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"></textarea></td>
									  <td height="88"><font color="#FF0000">300����</font><br>
								      ����ҵ����ֵ��˽������������и�����ᣬ�������Ӹ��ԡ�����̬�ȼ�δ�����Ĺ滮�ȷ���</td>
								  </tr>
									<tr>
									  <td height="15">����ְҵĿ�꣺</td>
								      <td height="15" colspan="2"><TEXTAREA NAME="kmubiao" COLS="50" ROWS="5" id="kmubiao" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"></TEXTAREA></td>
								      <td height="15" colspan="2"><font color="#FF0000">100����</font><BR>
�磺Ѱ��ĳĳ���͵Ĺ�˾��ĳĳ��λ�ȡ���<FONT COLOR="#FF0000"></td>
								  </tr>
									
									<tr>
										<td width="110" height="30">�� ֤ �룺</td>
										<td width="62" height="30">
									  <input type="text" name="code" size="4" style="border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"></td>
									  <td height="30" colspan="2"><%call getcode()%>�����֤��ͼƬ��ˢ����֤�롣<font color=#FF0000>����������󣬽�������ҳ����������������</font>����ֹ�Զ�����������棩</td>
									</tr>
									<tr>
									  <td height="20" colspan="5" bgcolor="#000000"><div align="center"><span class="STYLE13">������Ŀ������ȷ��д�����ϲ�ʵ�������ߣ�����</span><strong><font color=ff0000>ɾ��������</font></strong></div></td>
							      </tr>
									<tr>
									  <td width="110" height="52">&nbsp;</td>
									  <td width="62" height="52">&nbsp;</td>
								      <td width="326" height="52"><input type="submit" value="�ύ" name="B1"></td>
								      <td height="52" colspan="2">&nbsp;</td>
								  </tr>
							</table>
							    <p class="STYLE6" >ע��ɹ�������롰��Ա���ġ�������������ϸ����¼��͸��˼�����������</p>
							    <p ><a href="cookie.asp" target="_blank"><strong>����������������<span class="STYLE15">�Ƿ�֧��</span>��վ�ṩ�ķ���</strong></a></p>
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