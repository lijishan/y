<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="unhtml.asp"-->
<!--#include file="top_index.asp"-->
<title> <%=webname%></title>

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




<TABLE width=760 border=0 align="center" cellPadding=0 cellSpacing=3 bgColor=#ffc6bf>
  <TBODY>
    <TR>
      <td height="16"><TD vAlign=top bgColor=#ffffff><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
          <TR>
            <TD vAlign=top width=185><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                      <TR>
                        <TD width=5 height=26><IMG height=26 
                        src="imagen/web_01_03.gif" 
                        width=5></TD>
                        <TD width=19><IMG height=26 
                        src="imagen/web_01_04.gif" 
                        width=19></TD>
                        <TD 
                      background="imagen/web_01_05.gif"><TABLE cellSpacing=0 cellPadding=0 width="100%" 
border=0>
                          <TBODY>
                            <TR>
                              <TD colSpan=2 height=4></TD>
                            </TR>
                            <TR>
                              <TD width=6></TD>
                              <TD 
                    class=mune>��Ա��¼</TD>
                            </TR>
                          </TBODY>
                        </TABLE></TD>
                      </TR>
                    </TBODY>
                  </TABLE></TD>
                </TR>
                <TR>
                  <TD vAlign=top align=middle ><%
if Request.Cookies("ggval")<>"81528686528" then 
Response.Cookies("id")=""
Response.Cookies("ac")=""
Response.Cookies("user")="" 
end if 
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")="" then


%>
<style type="text/css">
<!--
.STYLE2 {color: #ffc6bf}
-->
</style>
<tr>
								<td height="100" bgcolor="#FEFBF4" style="border-bottom:1px solid #DBD3BD; border-left:1px solid #DBD3BD; border-right:1px solid #DBD3BD; ">
								<form method="POST" name="form1" action="login.asp" onSubmit="return test()">
									<table border="0" width="193" cellspacing="0" cellpadding="0" id="table4">
										<tr>
											<td height="30" width="56" align="center">
											�û�����</td>
											<td height="30" width="137" align="center">
											<input name="name" size="16" style="float: left"></td>
										</tr>
										<tr>
											<td height="30" width="56" align="center">
											��&nbsp; �룺</td>
											<td height="30" width="137" align="center">
											<input type="password" name="pwd" size="16" style="float: left"></td>
										</tr>
										<tr>
											<td height="30" width="56" align="center">
											��֤�룺</td>
											<td height="30" width="137" align="center">
											<input name="code" size="4" style="float: left; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px"><%call getcode()%></td>
										</tr>
										<tr>
											<td height="30" width="56" align="center">
											��&nbsp; �ͣ�</td>
											<td height="30" width="137" align="center">
											<p align="left">
											<select size="1" name="user">
											<option selected value="0">-��ѡ���Ա���											</option>
											<option value="1">�����û�</option>
											<option value="2">��ҵ�û�</option>
											</select></td>
										</tr>
										<tr>
										  <td height="30" width="193" align="center" colspan="2">
											<INPUT type=image src=images/dl.gif alt="��¼" name="dl">&nbsp;
											<a href="search_pwd1.asp"><img border="0" src="images/pass.gif" alt="��������" width="77" height="21"></a></td>
										</tr>
								  </form>
<tr>
											<td height="30" width="193" align="center" colspan="2">
											<a href="register.asp">
											<img border="0" src="images/reg.gif" alt="���û�ע��" width="193" height="61"></a></td>
</tr>
			  </table>				  </td>
								
							<%
							
							else
							%>
		  <tr>
								<td height="100" bgcolor="#FEFBF4" style="border-bottom:1px solid #DBD3BD; border-left:1px solid #DBD3BD; border-right:1px solid #DBD3BD; ">
														<div align="center">
									<table border="0" width="193" cellspacing="0" cellpadding="0" id="table7" height="128">
										<tr>
											<td height="61" width="193" colspan="3">&nbsp;&nbsp;&nbsp; ��ӭ<%
											if Request.Cookies("user")="1" then response.write"�����û�"
											if Request.Cookies("user")="2" then response.write"��ҵ�û�"
											
											%><font color="#FF0000"><%=Request.Cookies("ac")%></font>���롾�ܲ�528����˲���Ƹ����,��������������Ĳ�����</td>
										</tr>
										<tr>
											<td height="40" width="25" align="right">
											<img border="0" src="images/menu.gif" width="10" height="10"></td>
											<td height="40" width="6" align="right">��</td>
											<td height="40" width="162">
											<a href="control.asp"><b><font color=#ff0000>�����Ա����</font></b></a></td>
										</tr>
										<tr>
											<td height="40" width="25" align="right">
											<img border="0" src="images/menu.gif" width="10" height="10"></td>
											<td height="40" width="6" align="right">��</td>
											<td height="40" width="162">
											<b>
											<%
											sql="select id from message where ttype='"&Request.Cookies("user")&"' and tid="&Request.Cookies("id")&" and new=true"
											
											
											rs.open sql,conn,1,1
											%>
											<a href="message.asp">��Ϣ����</a></b> (<font color="#FF0000"><%=rs.recordcount%></font>������Ϣ)</td>
										<%
										if rs.recordcount<>0 then response.write "<embed src=newpm.swf loop=false hidden=true autostart=true width=0 height=0 name=foobar mastersound=mastersound></embed>"
										rs.close
										%>
										</tr>
										<tr>
											<td height="40" width="25" align="right">
											<img border="0" src="images/menu.gif" width="10" height="10"></td>
											<td height="40" width="6" align="right">��</td>
											<td height="40" width="162">
											<b>
											<a href="exit.asp">�˳���½</a></b></td>
										</tr>
									</table>
								</div>
						
						<%
							end if
							%>   </TD>
          </TR>
                <TR>
                  <TD width=5 height=5><IMG height=5 
                  src="imagen/web_01_28.gif" 
              width=5></TD>
                </TR>
        </TBODY>
            </TABLE></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=1 bgColor=#ffc6bf></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD vAlign=top><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD vAlign=top><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                      <TR>
                        <TD width=19><IMG height=26 
                        src="imagen/web_01_04.gif" 
                        width=19></TD>
                        <TD width="100%" 
                      background="imagen/web_01_05.gif"><TABLE cellSpacing=0 cellPadding=0 width="100%" 
border=0>
                          <TBODY>
                            <TR>
                              <TD width=200><TABLE cellSpacing=0 cellPadding=0 width="100%" 
                              border=0>
                                <TBODY>
                                  <TR>
                                    <TD colSpan=2 height=4></TD>
                                  </TR>
                                  <TR>
                                    <TD class=mune>&nbsp;&nbsp;ְλ/�˲���������</TD>
                                  </TR>
                                </TBODY>
                              </TABLE></TD>
                              <TD align=right>&nbsp;</TD>
                              <TD width=19>&nbsp;</TD>
                            </TR>
                          </TBODY>
                        </TABLE></TD>
                      </TR>
                      <TR>
                        <TD colSpan=2 height=10></TD>
                      </TR>
                      <TR vAlign=top align=middle>
                        <TD align=middle colSpan=2><table border="0" width="100%" cellspacing="0" cellpadding="0" height="25" id="table11">
							<form method="POST" action="search.asp" TARGET="_blank">
								<tr>
										<td height="30">
										<p align="left"> 
<SELECT SIZE=1 NAME=gzdd STYLE="border-style: solid; border-width: 1; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF"> 
<OPTION value="0">��ѡ����ʡ��</OPTION>
<OPTION VALUE=������>������</OPTION><OPTION VALUE=�Ϻ���>�Ϻ���</OPTION><OPTION VALUE=�����>�����</OPTION><OPTION VALUE=������>������</OPTION><OPTION VALUE=�ӱ�ʡ>�ӱ�ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=������>������</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=�㶫ʡ>�㶫ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=�Ĵ�ʡ>�Ĵ�ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=�ຣʡ>�ຣʡ</OPTION><OPTION VALUE=ɽ��ʡ>ɽ��ʡ</OPTION><OPTION VALUE=ɽ��ʡ>ɽ��ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=����ʡ>����ʡ</OPTION><OPTION VALUE=�㽭ʡ>�㽭ʡ</OPTION><OPTION VALUE=������ʡ>������ʡ</OPTION><OPTION VALUE=����������>����������</OPTION><OPTION VALUE=�½�������>�½�������</OPTION><OPTION VALUE=����������>����������</OPTION><OPTION VALUE=���ɹ�������>���ɹ�������</OPTION><OPTION VALUE=����ر�������>����ر�������</OPTION><OPTION VALUE=�����ر�������>�����ر�������</OPTION><OPTION VALUE=̨��ʡ>̨��ʡ</OPTION><OPTION VALUE=�������>�������</OPTION>
</SELECT></td>
							  </tr>
									<tr>
										<td height="30">
										<p align="left"> 
												<SELECT SIZE="1" NAME="job" STYLE="border: 1px solid #333333; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1; background-color: #FFFFFF">
<OPTION VALUE="0">::��ѡ��ְλ���::</OPTION>
<OPTION VALUE=��Ӫ/������>��Ӫ/������</OPTION><OPTION VALUE=������>������</OPTION><OPTION VALUE=����/ҵ����>����/ҵ����</OPTION><OPTION VALUE=�г���>�г���</OPTION><OPTION VALUE=�����>�����</OPTION><OPTION VALUE=�ͻ�������>�ͻ�������</OPTION><OPTION VALUE=����/������>����/������</OPTION><OPTION VALUE=IT����/�����רҵ��Ա>IT����/�����רҵ��Ա</OPTION><OPTION VALUE=��ְ��>��ְ��</OPTION><OPTION VALUE=��ҵ/������>��ҵ/������</OPTION><OPTION VALUE=����/������>����/������</OPTION><OPTION VALUE=����ҽ��/���ݱ�����>����ҽ��/���ݱ�����</OPTION><OPTION VALUE=ʳƷ������/����/��������>ʳƷ������/����/��������</OPTION><OPTION VALUE=����/ͨѶ��רҵ��Ա>����/ͨѶ��רҵ��Ա</OPTION><OPTION VALUE=��еרҵ��Ա>��еרҵ��Ա</OPTION><OPTION VALUE=���ز�/����רҵ��Ա>���ز�/����רҵ��Ա</OPTION><OPTION VALUE=����/����רҵ��Ա>����/����רҵ��Ա</OPTION><OPTION VALUE=�Ľ�����/����רҵ��Ա>�Ľ�����/����רҵ��Ա</OPTION><OPTION VALUE=����ҵרҵ��Ա>����ҵרҵ��Ա</OPTION><OPTION VALUE=����רҵ��Ա>����רҵ��Ա</OPTION>
</SELECT></td>
									</tr>
									<tr>
										<td height="30">  
<input onFocus="this.value=''" type="text" name="what" size="20" style="padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" value="������ְλ�ؼ���"></td>
									</tr>
									<tr>
										<td height="30">  
<SELECT ID=create_date NAME=date size="1"> 
<option selected value="����">��ѡ�񷢲�ʱ��</option>
<OPTION VALUE="����">����</OPTION> <OPTION VALUE="7">һ������</OPTION> 
<OPTION VALUE="30">һ������</OPTION> <OPTION VALUE="183">��������</OPTION>
<OPTION VALUE="365">һ����</OPTION> </SELECT></td>
									</tr>
									<tr>
										<td height="30">
										<% if Request.Cookies("user")="1" then %>
										<input type="radio" value="1" checked name="class">ְλ&nbsp;&nbsp;&nbsp; 
										<input type="radio" name="class" value="2">�˲�</td>
										<%else%>
										<input type="radio" value="1"  name="class">ְλ&nbsp;&nbsp;&nbsp; 
										<input type="radio" checked name="class" value="2">�˲�</td>
										<%end if %>
									</tr>
									<tr>
										<td height="30">
										<p align="left">
										<% if Request.Cookies("id")<>"" or Request.Cookies("ac")<>"" or Request.Cookies("user")<>"" then %>
										<input border="0" src="images/s2.gif" name="I1" width="53" height="20" type="image">&nbsp;&nbsp;&nbsp;&nbsp;
										<a href="super_search.asp">
										<img border="0" src="images/s1.gif" width="79" height="20"></a>
										<%else
response.write "<font color=#FF0000>��¼��ſ�����</font>"
end if %><br>&nbsp;&nbsp; &nbsp;&nbsp; <A  href="law.asp?id=4&what=��������" 
                              target=_blank><strong><font color=#ff0000>����</font> ����ָ�� <font color=#ff0000>����</font></strong></A></td>
									</tr>
							</form>
								</table></TD>
                      </TR>
                    </TBODY>
                  </TABLE></TD>
                  <TD vAlign=top width=134><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                      <TR>
                        <TD 
                      background="imagen/web_01_05.gif" 
                      colSpan=3 height=26>&nbsp;</TD>
                      </TR>
                      <TR>
                        <TD vAlign=top colSpan=2 rowSpan=5><IMG 
                        src="imagen/city_line.gif" 
                        width=2 border=0></TD>
                        <TD height=10></TD>
                      </TR>
                      <TR vAlign=top align=middle>
                        <TD><table width="200" align="center" cellspacing="0"style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf">
                        <tr>
                          <td width="196" align="center"  bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; ">��ְ����</td>
                        </tr>
                        <tr>
                          <table border="0" width="100%" cellspacing="0" cellpadding="0" id="table9" height="23">
<%
sql="select top "&index1&" id,title,addtime from article where class=1 order by id desc"
rs.open sql,conn,1,1
if rs.eof or rs.bof then
%>
											<tr>
												<td align="center" colspan="2">�������ţ�
												��</td>
											</tr>
<%
rs.close
else
for i1=1 to index1
title=rs("title")
if len(title)>13 then title=left(title,12)&"..."
%>
											<tr>
												<td width="9%" align="center" height="23">
												<p align="center">
												<img border="0" src="images/new2.gif"></td>
												<td height="23" width="91%"><a  target="_blank" href="show_article.asp?id=<%=rs("id")%>">
								<%=title%></a></td>
											</tr>
<%
rs.movenext
if rs.eof then exit for
next
rs.close
end if
%>			
						  </table>
                        </tr>
                      </table></TD>
                      </TR>
                      <TR>
                        <TD height=14></TD>
                      </TR>
                      <TR vAlign=top align=middle>
                        <TD height=10><TABLE cellSpacing=0 cellPadding=0 width="98%" 
                          border=0>
                          <TBODY>
                            <TR>
                              
                                                            <TD width="46%"><TABLE cellSpacing=0 cellPadding=0 width="85%" 
                          border=0>
                                <TBODY>
                                 
                                </TBODY>
                              </TABLE></TD>
                            </TR>
                          </TBODY>
                        </TABLE></TD>
                      </TR>
                    </TBODY>
                  </TABLE></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=4 bgColor=#ffc6bf></TD>
            <TD width=1 bgColor=#ffffff></TD>
            <TD width=183 vAlign=top bgcolor="#FFFFFF"><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width=19><IMG height=26 
                  src="imagen/web_01_04.gif" 
                width=19></TD>
                  <TD width="100%" 
                background="imagen/web_01_05.gif"><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                      <TR>
                        <TD colSpan=2 height=4></TD>
                      </TR>
                      <TR>
                        <TD width=6></TD>
                        <TD class=mune>��վ����</TD>
                      </TR>
                    </TBODY>
                  </TABLE></TD>
                  <TD width=5><IMG height=26 
                  src="imagen/web_01_17.gif" 
              width=5></TD>
                </TR>
              </TBODY>
            </TABLE> <% sql="select notice from notice where id=1"
				rs.open sql,conn,1,1
				%>  <marquee ONMOUSEOVER="this.stop()" ONMOUSEOUT="this.start()" width="140" height="200" direction="up" scrolldelay="60" scrollamount="1">
                                          <% =unHtml(rs("notice")) %>
              </marquee>
	  <% rs.close %></TD>
    </TR>  
  </TBODY>
</TABLE>
</TD>
</TABLE>
<!--#include file="ad_syad1.asp"--><TABLE width=760 border=0 align="center" cellPadding=0 cellSpacing=0 style="border-right: 2px solid #ffc6bf">
  <TBODY>
    <TR>
      <TD width="500" rowspan="2" vAlign=top><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
          <TR>
            <TD width=3 rowSpan=3><IMG height=140 
            src="imagen/yqzp_imgaes_01.gif" width=3></TD>
            <TD width="496" height=3 bgColor=#ffc6bf></TD>
            <TD width=0 rowSpan=3><IMG height=140 
            src="imagen/yqzp_imgaes_01.gif" 
        width=3></TD>
          </TR>
          <TR>
            <TD height="143" vAlign=top>
                  <TABLE cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                      <TR>
                        <TD width=5><IMG height=26 
                  src="imagen/web_01_03.gif" 
width=5></TD>
                        <TD width=19><IMG height=26 
                  src="imagen/web_01_04.gif" 
                width=19></TD>
                        <TD vAlign=top width="460" 
                background="imagen/web_01_05.gif"><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                            <TBODY>
                              <TR>
                                <TD><TABLE cellSpacing=0 cellPadding=0 width="100%" 
border=0>
                                    <TBODY>
                                      <TR>
                                        <TD colSpan=2 height=4></TD>
                                      </TR>
                                      <TR>
                                        <TD width=6></TD>
                                        <TD class=mune> ����ע����ҵ</TD>
                                      </TR>
                                    </TBODY>
                                </TABLE></TD>
                                <TD align=right width=258><img src="images/zz.gif" width="14" height="9"><a href="zpdw.asp" target="_blank">�������¼�����ҵ</a><img src="images/new.gif" width="33" height="16"></TD>
                              </TR>
                            </TBODY>
                        </TABLE></TD>
                        <TD width=14 background="imagen/web_01_05.gif">&nbsp;</TD>
                      </TR>
                      <TR vAlign=top align=middle>
                        <TD colSpan=4>
                          <%
sql="select top "&index2&" en_user.name,en_user.rdate,en_user.area,en_user.id from en_user where name<>'' order by en_user.id desc"
rs.open sql,conn,1,1
%>
                            <a href="zpdw.asp"></a>
                          <%for ii=1 to index2 %>
						  <div align="left"><font color=#ff0000>��</font>&nbsp;&nbsp;<a target =_blank href="company.asp?id=<%=rs("id")%>" class="STYLE11"><%=rs("name")%></a> ��<%=rs("area")%>��
                          <%a=instr(rs("rdate"),chr(32))-1 
								    response.write Mid(rs("rdate"),1,a)
								 									%>
                                                  <%
rs.movenext
if rs.eof then exit for
next
rs.close
%> </div>                        </TD>
                      </TR>
                      <TR>
                        <TD colSpan=4 height=5><TABLE cellSpacing=0 cellPadding=0 width="96%" border=0>
                            <TBODY>
                              <TR>
                                <TD><IMG height=5 
                        src="imagen/yqzp_imgaes_02.gif" 
                        width=5></TD>
                                <TD align=right><IMG height=5 
                        src="imagen/yqzp_imgaes_03.gif" 
                        width=5></TD>
                              </TR>
                            </TBODY>
                        </TABLE></TD>
                      </TR>
                    </TBODY>
              </TABLE>              </TD>
          </TR>
        </TBODY>
      </TABLE></TD>
      <TD width=2 rowspan="2"></TD>
      <TD width=19><IMG height=26 
                  src="imagen/web_01_04.gif" 
                width=19></TD>
      <TD width=186 background="imagen/web_01_05.gif">&nbsp;ί����Ƹ</TD>
      <TD width=51 background="imagen/web_01_05.gif">&nbsp;<a href="consign.asp" target="_blank">����</a></TD>
    </TR>
    <TR>
      <TD colspan="3"><table border="0" width="96%" cellspacing="0" cellpadding="0" id="table16" height="25">
<%
sql="select top "&index6&" id,jtzw,edus,sexs from consigns  order by addtime desc"
rs.open sql,conn,1,1
if rs.eof or rs.bof then
           response.write "������Ϣ��"
           rs.close
           else
           for i1=1 to index6
%>
												<tr>
													<td width="25" height="18">
													  <p align="center" style="color: #FF0000; font-size: 14px">Ƹ</td>
													<td height="20">
													<a title ="<%=rs("jtzw")%>" target =_blank href="show_consign.asp?id=<%=rs("id")%>">
													<%=rs("jtzw")%></a>  �Ա�:<%=rs("sexs")%> ѧ��:<%=rs("edus")%></td>
												</tr>
<%
rs.movenext
if rs.eof then exit for
next
rs.close
end if
%>			
											
											</table></TD>
    </TR>
  </TBODY>
</TABLE>
<!--#include file="ad_syad2.asp"-->
<TABLE width=760 border=0 align="center" cellPadding=0 cellSpacing=0>
  <TBODY>
    <TR>
      <TD vAlign=top><TABLE cellSpacing=0 cellPadding=0 width=760 border=0>
        <TBODY>
          <TR>
            <TD vAlign=top><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width=8 height=26><IMG height=26 
                  src="imagen/list_l_u.gif" width=8></TD>
                  <TD width=18><IMG height=26 
                  src="imagen/list_l_but.gif" 
                width=18></TD>
                  <TD width="100%" 
                background="imagen/list_l_line.gif"><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                      <TR>
                        <TD colSpan=2 height=4></TD>
                      </TR>
                      <TR>
                        <TD width=6></TD>
                        <TD class=mune>������Ƹְλ/�˲���Ϣ</TD>
                      </TR>
                    </TBODY>
                  </TABLE></TD>
                  <TD width=2><IMG height=26 
                  src="imagen/list_l_u_r.gif" 
                width=2></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
            <TD width=4></TD>
            <TD vAlign=top width=187><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width=2 height=26><IMG height=26 
                  src="imagen/list_l_l02.gif" 
                width=2></TD>
                  <TD width=18><IMG height=26 
                  src="imagen/list_l_but02.gif" 
                  width=18></TD>
                  <TD width="100%" 
                background="imagen/list_l_line.gif"><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                      <TR>
                        <TD colSpan=2 height=4></TD>
                      </TR>
                      <TR>
                        <TD width=6></TD>
                        <TD class=mune>��ְָ��</TD>
                      </TR>
                    </TBODY>
                  </TABLE></TD>
                  <TD width=8><IMG height=26 
                  src="imagen/list_l_u02.gif" 
                width=8></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
          </TR>
        </TBODY>
      </TABLE></TD>
    </TR>
    <TR>
      <TD vAlign=top><TABLE width=760 border=0 align="left" cellPadding=0 cellSpacing=0>
        <TBODY>
          <TR>
            <TD width=1 bgColor=#fcc7c7></TD>
            <TD width="555" align=middle vAlign=top><TABLE cellSpacing=0 cellPadding=0 width=544 border=0>
              <TBODY>
                <TR>
                  <TD vAlign=top><%
sql="select top "&index3&" job.id,job.enid,job.jtzw,job.hka,job.city,job.addtime,en_user.vip from job,en_user where job.enid=en_user.id and en_user.lock=false order by job.addtime desc"
rs.open sql,conn,1,1
if rs.recordcount=0 then
rs.close
response.write "��ʱû���Ƽ�ְҵ��" 
else
%>
                                <img src="images/job1.gif" width="544" height="40" border="0" usemap="#Map">
                                <table border="0" width="544" cellspacing="0" cellpadding="0" id="table12" height="49">
                                  <tr>
                                    <td height="25" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="146" align="center"><p><b>��Ƹְλ</b></td>
                                    <td height="25" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="205" align="center"><p><b>��&nbsp; ˾</b></td>
                                    <td height="25" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="101" align="center"><b>��&nbsp; ��</b></td>
                                    <td height="25" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="92" align="center"><b>��&nbsp; ��</b></td>
                                  </tr>
                                  <%
set rs2=server.createobject("adodb.recordset")
for ii=1 to index3
sql2="select id,name from en_user where id="&rs("enid")
rs2.open sql2,conn,1,1
%>
                                  <tr>
                                    <td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="146" height="25" align="center" background="images/bg1.gif"><a target =_blank  href="job.asp?id=<%=rs("id")%>">
									<% if (date()-rs("addtime"))<=3 then	%>					
										 <font color=#990099><%=rs("jtzw")%></font></a>
										<% end if %>
										<% if (date()-rs("addtime"))>3 then%>	 <%=rs("jtzw")%></a><% end if %></td>
                                    <td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="205" height="25" align="center" background="images/bg1.gif"><a  target =_blank href="company.asp?id=<%=rs2("id")%>">��<%=rs2("name")%>��</a>
                                        <%if rs("vip")=true then response.write "<font color='#FF0000'>VIP</font>"%></td>
                                    <td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="101" height="25" align="center" background="images/bg1.gif"><p align="center"><%=rs("hka")%>��<%=rs("city")%></td>
                                    <td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="92" height="25" align="center" background="images/bg1.gif"><%
										if (date()-rs("addtime"))<=10 then 
								a=instr(rs("addtime"),chr(32))-1
								response.write "<font color =#FF0000>" 
								response.write Mid(rs("addtime"),6,a-4) 
								response.write "<img  alt='���¼�����Ƹְλ' src=images/hot.gif>"
								end if 
								if (date()-rs("addtime"))>10 then 
								 a=instr(rs("addtime"),chr(32))-1
								response.write Mid(rs("addtime"),1,a)								 
								end if 
							
								%>                                    </td>
                                  </tr>
                                  <%
rs.movenext
if rs.eof then exit for
rs2.close
next
rs.close
%>
                                </table>
                              <%
end if
%></TD>
                </TR>
                <TR>
                  <TD height=5></TD>
                </TR>
              </TBODY>
            </TABLE><%
sql="select top "&index4&" id,name,job1,gzdd,edu,sex,rdate,zhuanyen1,gzcs from in_user where lock=false and name<>''  order by rdate desc"
rs.open sql,conn,1,1
if rs.recordcount=0 then
rs.close
response.write "��ʱû��ע���û���" 
else
%>
            <a href="http://www.ms0833.cn/"><img src="images/ms.jpg" alt="üɽ�������Ϣ����" width="550" height="75" border="0"></a>								<br><img src="images/person.gif" width="544" height="40" border="0" usemap="#Map2">
								<table border="0" width="544" cellspacing="0" cellpadding="0" id="table12" height="49">
									<tr>
										<td height="25" bgcolor="#DAE3DA" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="75" align="center">
										<p>
										<b>��&nbsp; ��</b></td>
										<td height="25" bgcolor="#DAE3DA" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="54" align="center">
										<p>
										<b>�� ��</b></td>
										<td height="25" bgcolor="#DAE3DA" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="62" align="center">
										<b>ѧ ��</b></td>
										<td height="25" bgcolor="#DAE3DA" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="159" align="center">
										<b>רҵ</b></td>
										<td height="25" bgcolor="#DAE3DA" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="101" align="center"><strong>ϣ����������</strong></td>
										<td height="25" bgcolor="#DAE3DA" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="93" align="center">
										<b>��&nbsp; ��</b></td>
									</tr>
<%
for ii=1 to index4
%>	
								<tr>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="75" height="25" align="center" background="images/bg1.gif"><a  target =_blank href="person.asp?id=<%=rs("id")%>"><%=rs("name")%></a></td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="54" height="25" align="center" background="images/bg1.gif">
										[<%=rs("sex")%>]</td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="62" height="25" align="center" background="images/bg1.gif">
										[<%=rs("edu")%>]</td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="159" height="25" align="center" background="images/bg1.gif"><%=rs("zhuanyen1")%></td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="101" height="25" align="center" background="images/bg1.gif"><%=rs("gzdd")%>&nbsp;<%=rs("gzcs")%></td>
										<td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="93" height="25" align="center" background="images/bg1.gif"><%
								if (date()-rs("rdate"))<=10 then 										
								a=instr(rs("rdate"),chr(32))-1
								response.write "<font color =#FF0000>" 
								response.write Mid(rs("rdate"),6,a-4)
								response.write "<img  alt='���¼�����˲�' src=images/new.gif>"
								end if 										
								if (date()-rs("rdate"))>10 then 		
								a=instr(rs("rdate"),chr(32))-1
								response.write Mid(rs("rdate"),1,a)
								end if 
								%></td>
								  </tr>
<%
rs.movenext
if rs.eof then exit for
next
rs.close
%>
								</table>
<%
end if
%></TD>
            <TD width=1 bgColor=#fcc7c7></TD>
            <TD width=5></TD>
            <TD width=1 bgColor=#fcc7c7></TD>
            <TD vAlign=top align=middle width=196><TABLE cellSpacing=0 cellPadding=0 width="95%" align=center 
border=0>
              <TBODY>
                <TR>
                  <TD height=10></TD>
                </TR>
                <TR>
                  <TD vAlign=top><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                      <TR>
                        <TD width=177 height=68 rowSpan=2><IMG 
                        style="MARGIN-LEFT: 0px; MARGIN-RIGHT: 4px" height=52 
                        src="imagen/qjzd_img.gif" 
                        width=58 align=left border=1><B>ר�⣺ְҵ�滮</B><BR>
                              ���ǲ��Ƿ������������ҹ��������ǲ��Ǿ��ô˿����ְ����·������ǧ��ǰ;��ã�����ǲ��Ƕ�������ԥ����������</TD>
                      </TR>
                    </TBODY>
                  </TABLE></TD>
                </TR>
                <TR>
                  <TD height=17></TD>
                </TR>
                <TR>
                  <TD><TABLE cellSpacing=1 cellPadding=0 width="100%" border=0>
                    <TBODY>
                      <TR bgColor=#fddddd height=25>
                        <TD width="48%" align=middle><a href="article2.asp" target="_blank" class="mune" style="color: #FF0000">��ְ����</a></TD>
                        <TD width="47%" align=middle><a href="article1.asp" target="_blank" class="mune" style="color: #FF0000">ְ������</a></TD>
                        <TD width="5%" align=middle>&nbsp;</TD>
                      </TR>
                      <TR bgColor=#fddddd height=25>
                        <TD align=middle><a href="article1.asp" target="_blank" class="mune" style="color: #FF0000; font-weight: bold"></a><a href="qzjq1.html" target="_blank" class="mune" style="color: #FF0000">ְ��ר��</a></TD>
                        <TD align=middle><a href="bbs/" target="_blank" class="mune" style="color: #FF0000; font-weight: bold">ְ����̳</a><a href="article1.asp" target="_blank" class="mune" style="color: #FF0000; font-weight: bold"></a></TD>
                        <TD>&nbsp;</TD>
                      </TR>
                    </TBODY>
                  </TABLE></TD>
                </TR>
                <TR>
                  <TD height=17></TD>
                </TR>
                <TR>
                  <TD><table border="0" width="100%" cellspacing="0" cellpadding="0" id="table9" height="23">
<%
sql="select top "&index5&" id,title,addtime from article where class=2 order by id desc"
rs.open sql,conn,1,1
if rs.eof or rs.bof then
%>
											<tr>
												<td align="center" colspan="2">�������ţ�
												��</td>
											</tr>
<%
rs.close
else
for i1=1 to index5
title=rs("title")
if len(title)>14 then title=left(title,12)&"..."
%>
											<tr>
												<td width="9%" align="center" height="23">
												  <p align="center" style="font-weight: bold; color: #FF0000">��</td>
												<td height="23" width="91%"><a  target="_blank" href="show_article.asp?id=<%=rs("id")%>">
								<%=title%></a></td>
											</tr>
<%
rs.movenext
if rs.eof then exit for
next
rs.close
end if
%>			
										</table></TD>
                </TR>
                <TR>
                  <TD height=5></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
            <TD width=1 bgColor=#fcc7c7></TD>
          </TR>
          <TR>
            <TD colSpan=3><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width=8 height=7><IMG height=7 
                  src="imagen/list_l_d01.gif" 
                width=8></TD>
                  <TD width="100%" 
                background="imagen/list_l_d_line.gif" 
                height=7></TD>
                  <TD width=2><IMG height=7 
                  src="imagen/list_l_d_r.gif" 
                width=2></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
            <TD></TD>
            <TD colSpan=3><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD width=2 height=7><IMG height=7 
                  src="imagen/list_l_d_d02.gif" 
                width=2></TD>
                  <TD width="100%" 
                background="imagen/list_l_d_line.gif" 
                height=7></TD>
                  <TD width=8><IMG height=7 
                  src="imagen/list_l_d02.gif" 
                width=8></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
          </TR>
        </TBODY>
      </TABLE></TD>
    </TR>
  </TBODY>
</TABLE>
<table width="757" border="0" align="center" cellspacing="0" style="border-left: 2px solid #ffc6bf; border-right: 2px solid #ffc6bf">
  <tr>
    <td height="30" background="imagen/web_01_05.gif" bgcolor="#FFE3C6"><span class="STYLE3"><img src="images/blue_point.gif" width="16" height="16"><span class="STYLE20"><span class="STYLE19"> ��������-&gt;����������ӦƸ��ְλ���˲����ͣ��磺��������ע����ʦ��ƽ����ơ�����רҵ��Ӧ������ȣ�</span><strong>��</strong></span></span></td>
  </tr>
  <tr>
    <td height="105"><div align="center">
    <table width="200" border="1" cellspacing="0" bordercolor="#FF6666">
            <tr>
              <td><iframe id="baiduframe" marginwidth="0" marginheight="0" scrolling="no"
  framespacing="0" vspace="0" hspace="0" frameborder="0" width="750" height="90" 
  src="http://unstat.baidu.com/bdun.bsc?tn=ggang6_pg&cv=1&cid=1009000&csid=243&bgcr=ffffff&ftcr=000000&urlcr=0000ff&tbsz=500&sropls=1,2,3,4,5,6&kwgp=0">
</iframe>

 </td>
            </tr>
        </table>
    ���������ؼ��֣�<a href="http://www.baidu.com/s?wd=����&bar=&cl=3&tn=ggang6_pg" target="_blank">����</a> <a href="http://www.baidu.com/s?wd=mp3&bar=&cl=3&tn=ggang6_pg" target="_blank">mp3</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=��Ϸ" target="_blank">��Ϸ</a> <a href="http://www.baidu.com/s?wd=��Ӱ&bar=&cl=3&tn=ggang6_pg" target="_blank">��Ӱ</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=���ܿ�����" target="_blank">���ܿ�����</a> <a href="http://www.baidu.com/s?wd=Ѹ��&bar=&cl=3&tn=ggang6_pg" target="_blank">Ѹ��</a> <a href="http://www.baidu.com/s?wd=������&bar=&cl=3&tn=ggang6_pg" target="_blank">������</a> <a href="http://www.bhttp://www.baidu.com/s?tn=ggang6_pg&word=�����⴫" target="_blank">�����⴫</a> <a href="http://www.baidu.com/s?wd=������&bar=&cl=3&tn=ggang6_pg" target="_blank">������</a> <a href="http://www.baidu.com/s?wd=�ܽ���&bar=&cl=3&tn=ggang6_pg" target="_blank">�ܽ���</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&word=�ʹ�" target="_blank">�ʹ�</a> <a href="http://www.baidu.com/s?wd=�����&bar=&cl=3&tn=ggang6_pg" target="_blank">�����</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&word=��������д��" target="_blank">��������д��</a> <a href="http://www.baidu.com/s?wd=ͼƬ&bar=&cl=3&tn=ggang6_pg" target="_blank">ͼƬ</a> </div></td>
  </tr>
</table>
<table width="760" border="0" align="center" cellspacing="0"style="border-left: 2px solid #ffc6bf; border-right: 2px solid #ffc6bf">
  <tr>
    <td width="553"><div align="right"><a href="http://www.ggkjcn.com/ls" target="_blank"><img src="images/lsxz1.gif" alt="��ѵ�裬�ֻ�����ͼƬ����" width="553" height="56" border="0"></a></div></td>
    <td width="200"><div align="left"><a href="http://www.ggkjcn.com/ls" target="_blank"><img src="images/ltxz.gif" alt="��ѵ�裬�ֻ�����ͼƬ����" width="200" height="56" border="0"></a></div></td>
  </tr>
</table><!--#include file="syzpgr.asp"--> <%
set rs2=nothing
set rs=nothing
set conn=nothing
%>
<!--#include file="base_index.asp"-->
<map name="Map"><area shape="rect" coords="430,7,515,31" href="grqz.asp" target="_blank">
</map>
<map name="Map2"><area shape="rect" coords="422,4,513,30" href="qyzp.asp" target="_blank">
</map>