<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="unhtml.asp"-->
<html>
<%
if not(isnumeric(request("id"))) then
response.redirect "nodata.html"
rs.close
end if
sql="select ac,ltime,id,name,code,bdate,sex,guoji,shenggao,tizhong,minzu,marry,hka,hkb,edu,zye,zhuanyen1,zyes,zhuanyen2,school,bydate,zzmm,zcheng,jyjl,rctype,language,lanlevel,languages,lanlevels,pthua,computer,kgzjl,gznum,kothertc,kmubiao,email,jobtype,job,job1,job2,job3,job4,job5,gzdd,gzcs,gzcs1,yuex,grzz,address,posts,phone,shouji,oicq,web,pic,clicks,lock,picdays,picdate,vip,rdate,morepic,rz,gr_view from in_user where id="&clng(request("id"))
rs.open sql,conn,1,1
if rs.eof or rs.bof then
           response.redirect "nodata.html"
           rs.close
end if 
if rs("lock")=true then
rs.close
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('���û��ѱ�����Ա������');"&"window.location.href = 'index.asp'"&" </script>"
response.end
end if
if rs("gr_view")="Y" then
tname=rs("name")
rs.close
set rs=nothing
set conn=nothing
response.write "<script language=JavaScript>" & chr(13) & "alert('"&tname&"  �ĸ��˼����ѱ�"&tname&"����Ϊ���أ�ϵͳ��ʱ����ʾ��');"&"JavaScript:window.close();"&" </script>"
response.end
end if
sql1="update in_user set clicks="&rs("clicks")+1&" where id="&rs("id")
set rs1=server.createobject("adodb.recordset")
rs1.open sql1,conn,1,1
set rs1=nothing
%>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=rs("name")&"���˼���"%> =<%=webname%></title>
<style type="text/css">
<!--
.STYLE1 {color: #006633}
.STYLE4 {color: #999999}
.STYLE6 {color: #0066CC}
.STYLE8 {color: #FF0000}
.STYLE9 {color: #0066FF}
-->
</style>
<!--#include file="top_index.asp"-->
</head>

<body>

<table border="0" width="76%" cellspacing="0" cellpadding="0" id="table3" height="50">
  <tr>
    <td><br><p align="center"><font size="5"color=#ff0000><strong><%=rs("name")%>���˼���</strong> </font><br><%if rs("rz")=true  then  
							  response.write "<a href=rz.html target='blank'><font color=#ff0000>����֤��Ա��</font></a>"
							  else
							  response.write "<a href=rz.html target='blank'><font color=#0033FF>�����֤��Ա��</font></a>"
							  end if %>
				<%if rs("vip")=true  then  
							  response.write "<a href=rz.html target='blank'><font color=#ff0000>��VIP��֤��Ա��</font></a>"
							  end if %>			<br>������<%
	a=instr(rs("rdate"),chr(32))-1
	response.write Mid(rs("rdate"),1,a) %>&nbsp;(����<font color="#FF3900"><%=rs("clicks")+1%></font>��)</td>
  </tr>
</table>
<table border="1" width="651" cellspacing="0" cellpadding="0" bordercolor="#ffc6bf" id="table2" style="border-collapse: collapse">
  <tr>
    <td height="30" background="imagen/web_01_05.gif" width="649" colspan="5"><p align="left">&nbsp; <b>���˻�����Ϣ</b></td>
  </tr>
  <tr>
    <td height="30" width="105" align="center" bgcolor="#FEFBF4"><p align="center">��&nbsp;&nbsp;&nbsp; ����</td>
    <td height="30" width="217"> ��<%=rs("name")%></td>
    <td height="30" width="106" align="center" bgcolor="#FEFBF4"> ��&nbsp;&nbsp;&nbsp; ��</td>
    <td height="30" width="95"> ��<%=rs("sex")%></td>
    <td height="150" width="118" rowspan="5"><p align="center"> <img border="0" src="
						<%if rs("pic")<>"" and  not(isnull(rs("picdate")))then 
						       if  date()-rs("picdate")<rs("picdays")then
						          response.write rs("pic")						         				  
						    else
							 response.write "images/nopic1.gif"
					     	end if 						
						 else	
						
						if rs("sex")="��" then 
					     	response.write "images/nopic_man.jpg"
							else 
							response.write "images/nopic_woman.jpg"
							end if 
						end if
						
						%>" width="120" height="150"></td>
  </tr>
  <tr>
    <td height="30" width="105" align="center" bgcolor="#FEFBF4"> �������ڣ�</td>
    <td height="30" width="217"> ��<%=rs("bdate")%></td>
    <td height="30" width="106" align="center" bgcolor="#FEFBF4"> ��&nbsp;&nbsp;&nbsp; �壺</td>
    <td height="30" width="95"> ��
        <%if isnull(rs("minzu")) then 
						  response.write"����"
						  else
						response.write rs("minzu")
						end if 
						%></td>
  </tr>
  <tr>
    <td height="30" width="105" align="center" bgcolor="#FEFBF4"> ��&nbsp;&nbsp;&nbsp; ����</td>
    <td height="30" width="217"> ��
        <%if isnull(rs("hka")) then 
						  response.write"�й�-"+rs("hkb")
						  else
						response.write rs("guoji")+"&nbsp;"+rs("hka")
						end if 
						%></td>
    <td height="30" width="106" align="center" bgcolor="#FEFBF4"> ��&nbsp;&nbsp;&nbsp; �ߣ�</td>
    <td height="30" width="95"> ��<%=rs("shenggao")%>cm</td>
  </tr>
  <tr>
    <td height="30" width="105" align="center" bgcolor="#FEFBF4"> ����״����</td>
    <td height="30" width="217"> ��
        <%if isnull(rs("marry")) then 
						  response.write"δ��"
						  else
						response.write rs("marry")
						end if 
						%>
    </td>
    <td height="30" width="106" align="center" bgcolor="#FEFBF4"> ��&nbsp;&nbsp;&nbsp; �أ�</td>
    <td height="30" width="95"> ��<%=rs("tizhong")%>kg</td>
  </tr>
  <tr>
    <td height="30" width="105" align="center" bgcolor="#FEFBF4"> ������ò��</td>
    <td height="30" width="217"> ��
        <%if isnull(rs("zzmm")) then 
						  response.write"Ⱥ��"
						  else
						response.write rs("zzmm")
						end if 
						%></td>
    <td height="30" width="106" align="center" bgcolor="#FEFBF4"> ѧ��������</td>
    <td height="30" width="95"> ��<%=rs("edu")%></td>
  </tr>
  <tr>
    <td height="30" width="105" align="center" bgcolor="#FEFBF4"> ��ҵʱ�䣺</td>
    <td height="30" width="217"> ��
        <%if isnull(rs("bydate")) then 
						  response.write"����"
						  else
						response.write rs("bydate")
						end if 
						%>
    </td>
    <td height="30" width="106" align="center" bgcolor="#FEFBF4"> ��ҵԺУ��</td>
    <td height="30" width="205" colspan="2"> ��<%=rs("school")%></td>
  </tr>
  <tr>
    <td height="30" width="105" align="center" bgcolor="#FEFBF4"> �� �� ֤��</td>
    <td height="30" width="217">
	<%	if isnull(rs("code")) or rs("code")="" then  						
						response.write "&nbsp;&nbsp;��ʱδ��д���֤����"
						else
						response.write "&nbsp;&nbsp;"&left(rs("code"),3)&"*********"&right(rs("code"),6)
						end if %></td>
										</td>
    <td height="30" width="106" align="center" bgcolor="#FEFBF4"> ר����ҵ��</td>
    <td height="30" width="205" colspan="2"> ��<%=rs("zye")+"&nbsp;"+rs("zhuanyen1")%></td>
  </tr>
  <tr>
    <td height="30" width="105" align="center" bgcolor="#FEFBF4"> ����ְ�ƣ�</td>
    <td height="30" width="217"> ��
        <%if isnull(rs("zcheng")) then 
						  response.write"����"
						  else
						response.write rs("zcheng")
						end if 
						%></td>
    <td height="30" width="106" align="center" bgcolor="#FEFBF4"> �ڶ�רҵ��</td>
    <td height="30" width="205" colspan="2"> ��
        <%if isnull(rs("zhuanyen2"))  or rs("zhuanyen2")="" then 
						  response.write "��"
						  else
						response.write rs("zyes")+"->"+rs("zhuanyen2")
						end if 
						%>
      �� 
    </td>
  </tr>
  <tr>
    <td height="30" width="105" align="center" bgcolor="#FEFBF4"> ��ס�ص㣺</td>
    <td height="30" width="217"> ��<%=rs("hkb")%></td>
    <td height="30" width="106" align="center" bgcolor="#FEFBF4">�Ƽ�ָ����</td>
    <td height="30" width="205" colspan="2"> ��
        <%if rs("pic")<>"" and rs("picdate")<>"" then
						  response.write "<font color=#ff0000>������</font>"	
						  else 
						   if rs("pic")<>"" then
						   response.write "<font color=#ff0000'>�����</font>"
						   else 						    
						   if rs("job1")<>"" then
						   response.write "<font color=#ff0000'>����</font>"		
						    else
						    response.write "<font color=#ff0000'>���</font>"	
						  end if 
						  end if 
						  end if 				   			  
			
						  
						  %>
      <span class="STYLE4">(���5��)</span></td>
  </tr>
</table>
<table border="1" width="651" cellspacing="0" cellpadding="0" bordercolor="#ffc6bf" id="table4" style="border-collapse: collapse">
  <tr>
    <td height="30" background="imagen/web_01_05.gif" width="649" colspan="4"><p align="left">&nbsp; <strong class="bbbb">��ְ����</strong></td>
  </tr>
  <tr>
    <td height="30" width="100" align="center" bgcolor="#FEFBF4"><p align="center">ӦƸְλ���ͣ�</td>
    <td height="30" width="205"> ��
        <%if isnull(rs("job")) then 
						  response.write rs("zhuanyen1") +"��"
						  else
						response.write rs("job")
						end if 
						%></td>
    <td height="30" width="100" align="center" bgcolor="#FEFBF4"> ��ְ���ͣ�</td>
    <td height="30" width="205"> ��
      <%if isnull(rs("jobtype")) or rs("jobtype")="���߼��" then
						response.write "ȫְ���߼�ְ"
						else
						response.write rs("jobtype")
						end if
						%></td>
  </tr>
  <tr>
    <td height="30" width="100" align="center" bgcolor="#FEFBF4"> ��нҪ��</td>
    <td height="30" width="205"> ��
        <%
						if rs("yuex")<>"" then
						response.write rs("yuex")+"Ԫ(RMB)"
						else
						response.write "����"
						end if
						%></td>
    <td height="30" width="100" align="center" bgcolor="#FEFBF4"> ����ְλһ��</td>
    <td height="30" width="205"> ��
        <%if isnull(rs("job1")) then 
						  response.write rs("zhuanyen1")
						  else
						response.write rs("job1")
						end if 
						%></td>
  </tr>
  <tr>
    <td height="30" width="100" align="center" bgcolor="#FEFBF4"> ����ְλ����</td>
    <td height="30" width="205"> ��
        <%if isnull(rs("job2")) or rs("job2")="" then 
						  response.write "��"
						  else
						response.write rs("job2")
						end if 
						%>
    </td>
    <td height="30" width="100" align="center" bgcolor="#FEFBF4"> ����ְλ����</td>
    <td height="30" width="205"> ��
        <%if isnull(rs("job3")) or rs("job3")="" then 
						  response.write "��"
						  else
						response.write rs("job3")
						end if 
						%></td>
  </tr>
  <tr>
    <td height="30" width="100" align="center" bgcolor="#FEFBF4"> ����ְλ�ģ�</td>
    <td height="30" width="205"> ��
        <%if isnull(rs("job4")) or rs("job4")="" then 
						  response.write "��"
						  else
						response.write rs("job4")
						end if 
						%></td>
    <td height="30" width="100" align="center" bgcolor="#FEFBF4"> ����ְλ�壺</td>
    <td height="30" width="205"> ��
        <%if isnull(rs("job5"))  or rs("job5")="" then 
						  response.write "��"
						  else
						response.write rs("job5")
						end if 
						%></td>
  </tr>
  <tr>
    <td height="30" width="100" align="center" bgcolor="#FEFBF4"> ϣ������������</td>
    <td height="30" width="205"> ��
        
						<%=rs("gzdd")%>&nbsp;<%=rs("gzcs")%>
	</td>
    <td height="30" width="100" align="center" bgcolor="#FEFBF4"> ��������������</td>
    <td height="30" width="205"> ��
        <%if isnull(rs("gzcs1"))  or rs("gzcs1")="" then 
						  response.write "��"
						  else
						response.write rs("gzcs1")
						end if 
						%></td>
  </tr>
</table>
<table border="1" width="651" cellspacing="0" cellpadding="0" bordercolor="#ffc6bf" id="table5" style="border-collapse: collapse">
  <tr>
    <td height="30" background="imagen/web_01_05.gif" width="649" colspan="4"><p align="left">&nbsp; <font color="#ffffff"><b> <font color="#000000">��ع����������س�</font></b></font></td>
  </tr>
  <tr>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"><p align="center">�˲����ͣ�</td>
    <td height="30" width="205"> ��
        <%if isnull(rs("rctype")) then 
						  response.write "��ͨ��ְ"
						  else
						response.write rs("rctype")
						end if 
						%>
      �� 
    </td>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> ��ع���ʱ�䣺</td>
    <td height="30" width="205"> ��
        <%if isnull(rs("gznum")) then 
						  response.write "��"
						  else
						response.write rs("gznum")+"��"
						end if 
						%></td>
  </tr>
  <tr>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> �������֣�</td>
    <td height="30" width="205"> ��
        <%if isnull(rs("language")) then 
						  response.write "Ӣ��"
						  else
						response.write rs("language")
						end if 
						%>
      ���� 
    </td>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> ����ˮƽ��</td>
    <td height="30" width="205"> ��
        <%if isnull(rs("lanlevel")) then 
						  response.write "һ��"
						  else
						response.write rs("lanlevel")
						end if 
						%>
      ���� 
    </td>
  </tr>
  <tr>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> �����������֣�</td>
    <td height="30" width="205"> ��
        <%if isnull(rs("languages")) then 
						  response.write "��"
						  else
						response.write rs("languages")
						end if 
						%>
      �� 
    </td>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> ��������ˮƽ��</td>
    <td height="30" width="205"> ��
        <%if isnull(rs("lanlevels")) then 
						  response.write "��"
						  else
						response.write rs("lanlevels")
						end if 
						%></td>
  </tr>
  <tr>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> ��ͨ��ˮƽ��</td>
    <td height="30" width="205"> ��
        <%if isnull(rs("pthua")) then 
						  response.write "һ��"
						  else
						response.write rs("pthua")
						end if 
						%></td>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> �����������</td>
    <td height="30" width="205"> ��
        <%if isnull(rs("computer")) then 
						  response.write "һ��"
						  else
						response.write rs("computer")
						end if 
						%></td>
  </tr>
</table>
<table border="1" width="651" cellspacing="0" cellpadding="0" bordercolor="#ffc6bf" id="table6" style="border-collapse: collapse" height="147">
  <tr>
    <td height="30" background="imagen/web_01_05.gif"><p align="left">&nbsp; <strong>����/��ѵ����</strong></td>
  </tr>
  <tr>
    <td height="118"><div align="center">
      <table border="0" width="600" cellspacing="0" cellpadding="0" id="table12">
        <tr>
          <td><%if isnull(rs("jyjl")) then 
						  response.write"����/��ѵ���� ����������д������... ..."
						  else
						response.write unhtml(rs("jyjl"))
						end if 
						%></td>
        </tr>
      </table>
    </div></td>
  </tr>
</table>
<table border="1" width="651" cellspacing="0" cellpadding="0" bordercolor="#ffc6bf" id="table7" style="border-collapse: collapse">
  <tr>
    <td height="30" background="imagen/web_01_05.gif"><p align="left">&nbsp; <strong>��������</strong></td>
  </tr>
  <tr>
    <td height="118"><div align="center">
      <table border="0" width="600" cellspacing="0" cellpadding="0" id="table13" height="23">
        <tr>
          <td><%if isnull(rs("kgzjl")) then 
						  response.write"����������������������д������... ..."
						  else
						response.write unhtml(rs("kgzjl"))
						end if 
						%></td>
        </tr>
      </table>
    </div></td>
  </tr>
</table>
<table border="1" width="651" cellspacing="0" cellpadding="0" bordercolor="#ffc6bf" id="table8" style="border-collapse: collapse">
  <tr>
    <td height="30" background="imagen/web_01_05.gif"><p align="left"><strong>&nbsp; ��������</strong></td>
  </tr>
  <tr>
    <td height="118"><div align="center">
      <table border="0" width="600" cellspacing="0" cellpadding="0" id="table14" height="23">
        <tr>
          <td><%if isnull(rs("kothertc")) then 
						  response.write"�������ܴ�������������д������... ..."
						  else
						response.write unhtml(rs("kothertc"))
						end if 
						%></td>
        </tr>
      </table>
    </div></td>
  </tr>
</table>
<table border="1" width="651" cellspacing="0" cellpadding="0" bordercolor="#ffc6bf" id="table9" style="border-collapse: collapse">
  <tr>
    <td height="30" background="imagen/web_01_05.gif"><p align="left">&nbsp; <b>ְҵĿ��</b></td>
  </tr>
  <tr>
    <td height="118"><div align="center">
      <table border="0" width="600" cellspacing="0" cellpadding="0" id="table15" height="23">
        <tr>
          <td><%=unhtml(rs("kmubiao"))%></td>
        </tr>
      </table>
    </div></td>
  </tr>
</table>
<table border="1" width="651" cellspacing="0" cellpadding="0" bordercolor="#ffc6bf" id="table10" style="border-collapse: collapse">
  <tr>
    <td height="30" background="imagen/web_01_05.gif"><p align="left">&nbsp; <strong>���ҽ���</strong></td>
  </tr>
  <tr>
    <td height="59"><div align="center">
      <table border="0" width="600" cellspacing="0" cellpadding="0" id="table16" height="23">
        <tr>
          <td><%if isnull(rs("grzz")) then 
						  response.write"���ҽ�������������д������... ..."
						  else
						response.write unhtml(rs("grzz"))
						end if 
						%></td>
        </tr>
      </table>
    </div></td>
  </tr>
  <tr>
    <td height="29" background="imagen/web_01_05.gif">&nbsp;<strong>���˷��չʾ����Ʒ��֤��ͼƬչʾ��</strong></td>
  </tr>
  <tr>
    <td height="155" >
	
	<% if rs("morepic")<>"" and  not(isnull(rs("picdate")))then 
						       if  date()-rs("picdate")<rs("picdays")then
						          response.write rs("morepic")	
						 else	
						response.write "<div align='center'><img src='images/nozz.gif' /></div>"
							end if
							else	
						response.write "<div align='center'> ��ʱû��ͼƬ����... ...</div>"
					
						end if 
						%>
	</td>
  </tr>
</table>
<table border="1" width="651" cellspacing="0" cellpadding="0" bordercolor="#ffc6bf" id="table11" style="border-collapse: collapse" height="145">
  <tr>
    <td height="30" background="imagen/web_01_05.gif" colspan="4"><p align="left">&nbsp; <b><font color="#000000">��ϵ��ʽ</font></b></td>
  </tr>
  <%								
					if Request.Cookies("user")<>"2" and Request.Cookies("ac")<>rs("ac")  then
					%>
  <tr>
    <td height="100%" align="center" colspan="4">
<br><div align="right">��<a href="index_bak.asp">��½</a>��鿴&nbsp;&nbsp;&nbsp;&nbsp;</div>
</td>
  </tr>
  <%if rs ("vip")=true then%>
<tr>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"><p align="center">ͨѶ��ַ��</td>
    <td height="30" width="277"> ��<%if isnull(rs("address")) or rs("address")="" then 
						  response.write"�й�"+rs("hkb")
						  else
						response.write rs("address")
						end if 
						%></td>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> �������룺</td>
    <td height="30" width="150"> ��<%=rs("posts")%></td>
  </tr>
  <tr>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> ��ϵ�绰��</td>
    <td height="30" width="277">��<%if isnull(rs("phone")) then 
						  response.write"��ʹ��վ�ڶ���������ϵ��лл��"
						  else
						response.write rs("phone")
						end if 
						%>��</td>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> �ƶ��绰��</td>
    <td height="30" width="150"> ��<%=rs("shouji")%></td>
  </tr>
  <tr>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> �������䣺</td>
    <td height="30" width="277">&nbsp;&nbsp;<a href="mailto:<%=rs("email")%>"><%=rs("email")%></a></td>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> ������վ��</td>
    <td height="30" width="150">&nbsp;&nbsp;
        <%if rs("web")<>"" then response.write "<a target='_blank' href='"&rs("web")&"'>"&rs("web")&"</a>"%></td>
  </tr>
  <tr>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> OICQ��</td>
    <td width="277" height="0"> ��<%=rs("oicq")%></td>
    <td width="100" height="0" align="center" bgcolor="#FEFBF4"> �û����ͣ�</td>
    <td width="150" height="0"> ��<span style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0"> 
         <%if rs("vip")=true then response.write"VIP �û�"%>
    	 <%if rs("vip")=false then response.write"��ͨ�û�"%>
    </span></td>
  </tr>
  <tr>
    <td height="15" colspan="4" align="center" bgcolor="#FEFBF4"><span class="STYLE6"><span class="STYLE8">��ҵ�û�����ʹ�á�<span class="STYLE9">������Ƹ��Ϣ</span>������վ�ڶ��ţ�����ְ��ȷ����һ������ϵ��ʽ����</span></span></td>
  </tr>
  <% end if %>
  <%
					else
					%>
  <tr>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"><p align="center">ͨѶ��ַ��</td>
    <td height="30" width="277"> ��<%if isnull(rs("address")) or rs("address")="" then 
						  response.write"�й�"+rs("hkb")
						  else
						response.write rs("address")
						end if 
						%></td>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> �������룺</td>
    <td height="30" width="150"> ��<%=rs("posts")%></td>
  </tr>
  <tr>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> ��ϵ�绰��</td>
    <td height="30" width="277">��<%if isnull(rs("phone")) then 
						  response.write"��ʹ��վ�ڶ���������ϵ��лл��"
						  else
						response.write rs("phone")
						end if 
						%>��</td>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> �ƶ��绰��</td>
    <td height="30" width="150"> ��<%=rs("shouji")%></td>
  </tr>
  <tr>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> �������䣺</td>
    <td height="30" width="277">&nbsp;&nbsp;<a href="mailto:<%=rs("email")%>"><%=rs("email")%></a></td>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> ������վ��</td>
    <td height="30" width="150">&nbsp;&nbsp;
        <%if rs("web")<>"" then response.write "<a target='_blank' href='"&rs("web")&"'>"&rs("web")&"</a>"%></td>
  </tr>
  <tr>
    <td height="30" width="100" bgcolor="#FEFBF4" align="center"> OICQ��</td>
    <td width="277" height="0"> ��<%=rs("oicq")%></td>
    <td width="100" height="0" align="center" bgcolor="#FEFBF4"> �û����ͣ�</td>
    <td width="150" height="0"> ��<span style="border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-width: 1px; border-bottom: 1px solid #C0C0C0"> 
         <%if rs("vip")=true then response.write"VIP �û�"%>
    	 <%if rs("vip")=false then response.write"��ͨ�û�"%>
    </span></td>
  </tr>
  <tr>
    <td height="15" colspan="4" align="center" bgcolor="#FEFBF4"><span class="STYLE6"><span class="STYLE8">��ҵ�û�����ʹ�á�<span class="STYLE9">������Ƹ��Ϣ</span>������վ�ڶ��ţ�����ְ��ȷ����һ������ϵ��ʽ����</span></span></td>
  </tr>
  
  <%
					end if
					%>
</table>
<table width="650" border="1" cellspacing="0" bordercolor="#ffc6bf">
  <tr>
    <td><div align="center">
      <%
				if Request.Cookies("user")="2" or Request.Cookies("ac")=rs("ac") then
				%>
      <table border="0" width="87%" cellspacing="0" cellpadding="0" id="table17" height="55">
        <tr>
          <td align="center"><a href="add_endepot.asp?inid=<%=rs("id")%>"> <img border="0" src="images/person_m1.gif" width="124" height="22"></a></td>
          <td align="center"><a href="JavaScript:openScript('sendmessage.asp?tid=<%=rs("id")%>&ttype=1',450,300)"><img border="0" src="images/person_m2.gif" width="124" height="22"></a> </td>
          <td align="center"><A HREF="JavaScript:window.print();"><img border="0" src="images/person_m3.gif" width="124" height="22"></A></td>
          <td align="center"><A HREF="JavaScript:window.close();"><img border="0" src="images/person_m4.gif" width="124" height="22"></A></td>
        </tr>
      </table>
      <%
				end if
				%>
    </div></td>
  </tr>
</table>
<div align="center"><span class="STYLE8"><strong>����ְλ/�˲�����(��������������������ؼ��֣��磺�����רҵ����ơ������˲š��������ز�����ʦ����˾�������Ե�)��</strong></span><br>
<iframe id="baiduframe" marginwidth="0" marginheight="0" scrolling="no"
  framespacing="0" vspace="0" hspace="0" frameborder="0" width="750" height="90" 
  src="http://unstat.baidu.com/bdun.bsc?tn=ggang6_pg&cv=1&cid=1009000&csid=243&bgcr=ffffff&ftcr=000000&urlcr=0000ff&tbsz=500&sropls=1,2,3,4,5,6&kwgp=0">
</iframe></div>

          ���������ؼ��֣�<a href="http://www.baidu.com/s?wd=����&bar=&cl=3&tn=ggang6_pg" target="_blank">����</a> <a href="http://www.baidu.com/s?wd=mp3&bar=&cl=3&tn=ggang6_pg" target="_blank">mp3</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&ct=&lm=&z=&rn=&word=��Ϸ" target="_blank">��Ϸ</a> <a href="http://www.baidu.com/s?wd=��Ӱ&bar=&cl=3&tn=ggang6_pg" target="_blank">��Ӱ</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&ct=&lm=&z=&rn=&word=���ܿ�����" target="_blank">���ܿ�����</a> <a href="http://www.baidu.com/s?wd=Ѹ��&bar=&cl=3&tn=ggang6_pg" target="_blank">Ѹ��</a> <a href="http://www.baidu.com/s?wd=������&bar=&cl=3&tn=ggang6_pg" target="_blank">������</a> <a href="http://www.bhttp://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=�����⴫" target="_blank">�����⴫</a> <a href="http://www.baidu.com/s?wd=������&bar=&cl=3&tn=ggang6_pg" target="_blank">������</a> <a href="http://www.baidu.com/s?wd=�ܽ���&bar=&cl=3&tn=ggang6_pg" target="_blank">�ܽ���</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=�ʹ�" target="_blank">�ʹ�</a> <a href="http://www.baidu.com/s?wd=�����&bar=&cl=3&tn=ggang6_pg" target="_blank">�����</a> <a href="http://www.baidu.com/s?tn=ggang6_pg&ct=&lm=&z=&rn=&word=��������д��" target="_blank">��������д��</a> <a href="http://www.baidu.com/s?wd=ͼƬ&bar=&cl=3&tn=ggang6_pg" target="_blank">ͼƬ</a>
          <table width="760" border="0" align="center" cellspacing="0">
            <tr>
              <td width="750" height="25" bordercolor="#FFFFFF" background="imagen/web_01_05.gif"><div align="center"> <img src="images/jtou.gif">
                      <script language="JavaScript" src="PostAd.js" type="text/javascript"></script>
              </div></td>
            </tr>
          </table>
</div>
<%
rs.close
set rs=nothing
set conn=nothing
%>
<!--#include file="base2.asp"-->
</body>

</html>