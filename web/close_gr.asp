
<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<html>
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"1" then
response.write "<script language=JavaScript>" & chr(13) & "alert('��¼��ʱ�����µ�¼��');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
%>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=webname%> - ��Ա���� - ������������</title>
<style type="text/css">
<!--
.STYLE1 {font-size: 14px}
.STYLE10 {font-size: 14px; color: #00659C; }
.STYLE11 {font-size: 14px; font-weight: bold; }
.STYLE12 {font-size: 14px; color: #FF0000; }
.STYLE6 {font-size: 14px; color: #FF0000; font-weight: bold; }
.STYLE9 {font-size: 14px; color: #006699; }
.STYLE13 {
	font-size: 12pt;
	font-weight: bold;
	color: #FF3399;
}
-->
</style>
</head>

<body>
<!--#include file="top_index.asp"-->
        <div align="center">
          <table border="0" width="760" cellspacing="0" cellpadding="0" id="table1" height="421">
            <tr>
              <td style="border-left: 1px solid #ffc6bf; border-right: 1px solid #ffc6bf; border-top: 1px solid #ffc6bf" width="760" valign="top" bgcolor="#FEFBF4"><div align="center">
                  <table border="0" width="705" cellspacing="0" cellpadding="0" id="table2" height="379">
                    <tr>
                      <td height="86" width="214"><img border="0" src="images/control.gif" width="282" height="90"></td>
                      <td height="86" width="237">��</td>
                      <td height="86" width="128"><img border="0" src="images/controltop1.gif" width="128" height="90"></td>
                      <td height="86" width="58">��</td>
                    </tr>
                    <tr>
                      <td width="705" colspan="4" valign="top">
                          <div align="center">
                            <table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="272">
                              <tr>
                                <td height="27" colspan="2"><p align="left"> &nbsp;<a href="control.asp">��Ա����</a> �� ������������ �� ����״̬����</td>
                              </tr>
                              <tr>
                                <td width="25%" valign="top"><!--#include file="in_menu.asp"-->                                </td>
                                <td width="75%" valign="top" align="center" style="border: 1px solid #000000"><table width="370" border="0" align="center" cellspacing="0">
                                  <tr>
                                    <td width="368"><%
sql="select name,gr_view from in_user where id="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
%>
                                        <p>���˻�Ա <font color=#ff0000><%=rs("name")%></font> ��ã�</p>
                                      <span class="STYLE1">�㵱ǰ����״̬��:</span>
                                        <% if rs("gr_view")="N" then 
		   Response.Write "<font color=#ff0000><strong>����״̬</strong></font>"
		    else
			 Response.Write "<font color=#ff0000><strong>�ر�״̬</strong></font>"
			 end if 
		 %></td>
                                  </tr>
                                  <tr>
                                    <td><hr></td>
                                  </tr>
                                  <tr>
                                    <td>�㽫����״̬Ϊ�������벻Ҫ���ã���</td>
                                  </tr>
                                  <tr>
                                    <td><div align="center">
                                        <form method="POST" action="gr_viewdata.asp">
                                          <INPUT TYPE="radio"<%if rs("gr_view") ="N" then Response.Write "checked"%> VALUE="N" NAME="gr_view">
                                          ����״̬
                                          <INPUT TYPE="radio" <%if rs("gr_view") ="Y" then Response.Write "checked"%> VALUE="Y" NAME="gr_view" >
                                          �ر�״̬ <br>
                                          <br>
                                          <input type="submit" value="ȷ������" name="G1">
                                        </form>
                                    </div></td>
                                  </tr>
                                  <tr>
                                    <td><p>˵����
                                       ����״̬Ϊ������״̬��ʱ����ļ���������ʾ��</br>
                                      ����״̬Ϊ���ر�״̬��ʱ����ļ�����ʱ����ʾ��</br>
                                      ����ʱ�ɸ��ļ�����ʾ״̬��VIP��Աר�У��� </p></td>
                                  </tr>
                                </table><br>
                                <span class="STYLE13">��ͨ�û���VIP�û�Ȩ�޶Աȱ�</span>                                    
                                  <table width="520" border="1" align="center" cellspacing="0" bordercolor="#006666">
                                    <tr>
                                      <td width="166" height="30"><div align="center"><strong><span class="STYLE11">����</span></strong></div></td>
                                      <td width="149" height="30"><div align="center"><span class="STYLE11">��ͨ�û�</span></div></td>
                                      <td width="191" height="30"><div align="center"><span class="STYLE11">VIP�û�</span></div></td>
                                    </tr>
                                    <tr>
                                      <td height="30"><strong><span class="STYLE11">��վ�ڶ���Ϣ</span></strong></td>
                                      <td height="15"><div align="center"><span class="STYLE9">3���������</span></div></td>
                                      <td height="15"><div align="center"><span class="STYLE12">���������ʹ��</span></div></td>
                                    </tr>
                                    <tr>
                                      <td height="30" class="STYLE11">��ʱ������������ǰλ��</td>
                                      <td height="15"><div align="center" class="STYLE10">������</div></td>
                                      <td height="15"><div align="center" class="STYLE6">����</div></td>
                                    </tr>
                                    <tr>
                                      <td height="30"><strong><span class="STYLE11">ְλ������</span></strong></td>
                                      <td height="30"><div align="center"><span class="STYLE9">2��</span></div></td>
                                      <td height="30"><div align="center"><span class="STYLE12"><strong>100</strong>��</span></div></td>
                                    </tr>
                                    <tr>
                                      <td height="30"><span class="STYLE11">������Ƭ����</span></td>
                                      <td height="30"><div align="center" class="STYLE10">��</div></td>
                                      <td height="30"><div align="center" class="STYLE6">����ʹ��</div></td>
                                    </tr>
                                    <tr>
                                      <td height="30"><strong><span class="STYLE11">һ��ְλ����</span></strong></td>
                                      <td height="30"><div align="center"><span class="STYLE9">��(ǰ̨ʹ��)</span></div></td>
                                      <td height="30"><div align="center"><span class="STYLE12">��(ǰ̨ʹ��)</span></div></td>
                                    </tr>
                                    <tr>
                                      <td height="30"><strong><span class="STYLE11">����ְλ����</span></strong></td>
                                      <td height="30"><div align="center"><span class="STYLE9">3���������</span></div></td>
                                      <td height="30"><div align="center"><span class="STYLE12">���������ʹ��</span></div></td>
                                    </tr>
                                    <tr>
                                      <td height="30"><strong><span class="STYLE11">��������ʱ������ʾ</span></strong></td>
                                      <td height="15"><div align="center"><span class="STYLE9">��</span></div></td>
                                      <td height="15"><div align="center"><span class="STYLE6">��</span></div></td>
                                    </tr>
                                    <tr>
                                      <td height="30" class="STYLE11">�����رո��˼���</td>
                                      <td height="15"><div align="center" class="STYLE9">������</div></td>
                                      <td height="15"><div align="center" class="STYLE6">����</div></td>
                                    </tr>
                                    <tr>
                                      <td height="30"><strong><span class="STYLE11">�����־</span></strong></td>
                                      <td height="30"><div align="center"><span class="STYLE9">��</span></div></td>
                                      <td height="30"><div align="center"><span class="STYLE6">��VIP����</span></div></td>
                                    </tr>
                                    <tr>
                                      <td height="30"><span class="STYLE11">���Ͷ����Ƽ���ʾ</span></td>
                                      <td height="30"><div align="center"><span class="STYLE10">��</span></div></td>
                                      <td height="30"><div align="center"><span class="STYLE6">��</span></div></td>
                                    </tr>
                                    <tr>
                                      <td height="30"><span class="STYLE11">���ܱ�վ�Żݻ</span></td>
                                      <td><div align="center"><span class="STYLE10">��</span></div></td>
                                      <td height="15"><div align="center"><span class="STYLE6">��</span></div></td>
                                    </tr>
                                    <tr>
                                      <td height="30"><strong class="STYLE11">��ϵ��ʽ���鿴</strong></td>
                                      <td><div align="center" class="STYLE10">ע�����ܲ鿴</div></td>
                                      <td height="0"><div align="center" class="STYLE6">����ע�ᣬֱ�Ӳ鿴</div></td>
                                    </tr>
                                    <tr>
                                      <td height="30" class="STYLE11">����ע���˻�</td>
                                      <td><div align="center" class="STYLE10">������</div></td>
                                      <td height="15"><div align="center" class="STYLE10">����</div></td>
                                    </tr>
                                    <tr>
                                      <td height="30"><span class="STYLE11">��ְЧ��</span></td>
                                      <td height="30"><div align="center"><span class="STYLE9">һ��</span></div></td>
                                      <td height="30"><div align="center"><span class="STYLE6">�ǳ���</span></div></td>
                                    </tr>
                                    <tr>
                                      <td height="30"><span class="STYLE11">֧������</span></td>
                                      <td height="30"><div align="center"><span class="STYLE6">����Ҫ</span></div></td>
                                      <td height="30"><div align="center" class="STYLE9">һ���Խ���50Ԫ����������</div></td>
                                    </tr>
                                  </table></td>
                              </tr>
                            </table>
                          </div>
                        <%'���%>
                      </td>
                    </tr>
                  </table>
              </div></td>
            </tr>
          </table>
        </div>
        <!--#include file="base.asp"-->
          
		  
