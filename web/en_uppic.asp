<!--#include file="conn_uppic.asp"-->
<html>
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"2" then
response.write "<script language=JavaScript>" & chr(13) & "alert('����δ��½���¼��ʱ�������µ�¼���������');" & "history.back()" & "</script>" 
Response.End
end if
%>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title>��Ա���� - ������������ - �ϴ���ҵӪҵ֤��</title>
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
						<td height="86" width="237">��</td>
						<td height="86" width="128">
						<img border="0" src="images/controltop1.gif" width="128" height="90"></td>
						<td height="86" width="58">��</td>
					</tr>
					<tr>
					  <td width="705" colspan="4" valign="top">
						<div align="center">
							<table border="0" width="98%" cellspacing="0" cellpadding="0" id="table3" height="272">
								<tr>
									<td height="27" colspan="2">
									<p align="left">
									&nbsp;��Ա���� �� �ϴ���ҵ����֤��</td>
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
	msgbox "�ļ�·��������������д��"
	form1_onsubmit=false
	exit function
else
    if Lcase(right(document.form1.file.value,3)) <>"jpg" and Lcase(right(document.form1.file.value,3))<>"gif" then 
     msgbox "ͼƬ���ʹ���ͼƬ����ӦΪGIF��JPG��ʽ��"
	 form1_onsubmit=false
	 exit function
	 else
	 document.form1.action="uppic/save_dw.asp?id="&document.form1.id.value
	 end if
 end if 
end function
</script>
      <form  name="form1" method="post"  action="uppic/save_dw.asp"  enctype="multipart/form-data" onSubmit="form1_Onsubmit()">
       
            <p><font color="#666699"><b>ͼƬλ��:
              <input type="file" name="file" value="" size="35">	
		</b></font></p>
        <p><font color="#666699"><b>
          <input type="hidden" name="id"  size="10" value=<%=request("id")%>>��
        </b></font><font color="#666699"><b>&nbsp;</b></font><font color="#666699"><b>&nbsp;&nbsp;&nbsp;
        <input type="submit" name="Submit" value="�ϴ�">
	
        <input type="reset" name="reset" value="����"> 
        </b></font>
        <br>
        </p>
      </form>    </td>
  </tr>
</table>
<div align="center">
    <font color="#FF0000" size="1">��ҵ֤��ͼƬֻ����JPG��GIF��ʽ����СΪ30K�ڣ�<br>���Ч����400����*300���ߣ�������ϵ������Ѵ���ͼƬ��</font></div></td>
								</tr>
								<tr>
								  <td valign="top" align="center" style="border: 1px solid #000000">
                                    <p align="left">
                                      <% 
id=request("id")
sql="select num from imgdata where id="&id
rs.open sql,conn,1,1
if rs.recordcount<>0 then
response.write "<div align='center'><font color=#ff0000>�㵱ǰ�ϴ���֤��ͼƬԤ��(����鿴��ͼ)��</font><br><a href=uppic/kkk1.asp?id="&rs("num")&" target='_blank'><img border='0' src=uppic/kkk.asp?id="
response.write rs("num")
response.write" width=300 height=250 /></a></div><br><a onClick=""{if(confirm('�˲�����ɾ��ԭ��Ƭ��ɾ����ʹ�ϴ�ͬһͼƬ������ˣ�������')){return true;}return false;}"" href=""uppic/delpic_dw.asp?id="
response.write rs("num")
response.write """ >��ɾ������Ƭ��</a>"
else
response.write "<div align='center'><font color=#ff0000>�㻹û���ϴ���ҵ��Ӫ֤�գ���</font></div>"
end if 
rs.close
%>
	                                  <br>
	</p>
                                    <p align="left">˵����<br>
                                      &nbsp;&nbsp;1����վ��ҵ��Ӫ֤��ֻ����������λӪҵִ�յȺϷ�֤����ͼƬ�ļ�������ͬע��ʱ����һ�£��� </br>&nbsp;&nbsp;2����վ��ҵ��Ӫ֤����Ҫ������վ��˺󣬲����������ҵ����/��Ƹ��Ϣ��������ʾ��                                      </br>&nbsp;&nbsp;3���������ͼƬʱ����վ��Ҫ��ˣ����ǰ��ľ�Ӫ֤�ղ���������ʾ���������뼰ʱ��ϵ������ˡ� </br>&nbsp;&nbsp;4����վVIP��Ա����1�������ʾʱ�䣬1�º�50Ԫ/����ȡ����ѡ���񣩣���ͨ��Ա��60Ԫ/����ȡ����ѡ���񣩡��շ�����Ϊ3�£���������Ҫ��ʾ3���£���֧��3�µķ�����á� </br>&nbsp;&nbsp;5���û�ͼƬ�����ڻ��ϴ�1�º���δ������ʾʹ�ã�ϵͳ���Զ�ɾ���ϴ���ͼƬ�� </br>&nbsp;&nbsp;6���û��ϴ�ͼƬ������������������Ҫ������ϵ���ǣ�������Ѱ����ϴ���</p></td>
							  </tr>
							</table>
						</div>
						<div align="center">
						  <%'���%>
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