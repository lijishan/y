<!--#include file="header.asp"-->

<%
    dim array_news
%>

    <div class="grid_12" style="height:10px;"></div>
    <div class="grid_12" id="featured-articles">
        <div class="grid_4 alpha" id="slide">
            <div><img src="/images/editorimages/20120811-1.jpg"/></div>
            <div class="img-caption grid_4 alpha omega" align="center">�������������� �Ϸ���������</div>
        </div>
        <div class="grid_5 news-widget1" id="news">
            <div id="tabs1" class="news-widget1">
                <ul>
                    <li><a href="#tabs-1">��ҵ����</a></li>
                    <li><a href="#tabs-2">�˲Ž���</a></li>
                    <li><a href="#tabs-3">���粿��</a></li>
                </ul>
                <div id="tabs-1">
                    <ul>
                    <%
                        article_num = 10
                        class_id = 1001
                    %>
                    <!--#include file="index_info.asp"-->
                    <%
                    if (ubound(array_news) > 0) then
                        for i1=0 to ubound(array_news, 2)
                            id = array_news(0, i1)
                            title = array_news(1, i1)
                            pub_time = array_news(2, i1)
                            class_id = array_news(3, i1)
                        %>
                            <li class="news-item"><!--[<%=class_id%>]--><a target=_blank href="view.asp?what=article&id=<%=id%>"><%=title%></a>&nbsp;&nbsp;<span>[<%=pub_time%>]</span></li>
                    <%
                        next
                    %>
                            <li class="news-item"><span><a href="list.asp?class=<%=class_id%>">����&gt;&gt;</a></span></li>
                    <%
                    else
                    %>
                        <li class="news-item"> ������Ϣ </li>
                    <%
                    End if
                    %>
                    </ul>
                </div>
                <div id="tabs-2">
                    <ul>
                    <%
                        article_num = 10
                        class_id = 1002
                    %>
                    <!--#include file="index_info.asp"-->
                    <%
                    if (ubound(array_news) > 0) then
                        for i1=0 to ubound(array_news, 2)
                            id = array_news(0, i1)
                            title = array_news(1, i1)
                            pub_time = array_news(2, i1)
                            class_id = array_news(3, i1)
                        %>
                            <li class="news-item"><!--[<%=class_id%>]--><a target=_blank href="view.asp?what=article&id=<%=id%>"><%=title%></a>&nbsp;&nbsp;<span>[<%=pub_time%>]</span></li>
                    <%
                        next
                    %>
                            <li class="news-item"><span><a href="list.asp?class=<%=class_id%>">����&gt;&gt;</a></span></li>
                    <%
                    else
                    %>
                        <li class="news-item"> ������Ϣ </li>
                    <%
                    End if
                    %>
                    </ul>
                </div>
                <div id="tabs-3">
                    <ul>
                    <%
                        article_num = 10
                        class_id = 1010
                    %>
                    <!--#include file="index_info.asp"-->
                    <%
                    if (ubound(array_news) > 0) then
                        for i1=0 to ubound(array_news, 2)
                            id = array_news(0, i1)
                            title = array_news(1, i1)
                            pub_time = array_news(2, i1)
                            class_id = array_news(3, i1)
                        %>
                            <li class="news-item"><!--[<%=class_id%>]--><a target=_blank href="view.asp?what=article&id=<%=id%>"><%=title%></a>&nbsp;&nbsp;<span>[<%=pub_time%>]</span></li>
                    <%
                        next
                    %>
                            <li class="news-item"><span><a href="list.asp?class=<%=class_id%>">����&gt;&gt;</a></span></li>
                    <%
                    else
                    %>
                        <li class="news-item"> ������Ϣ </li>
                    <%
                    End if
                    %>
                    </ul>
                </div>
            </div>
        </div>
        <div class="grid_3 omega" id="info">
            <div class=" news-widget1 info-widget">
                <%
                    article_num = 10
                    class_id = 1009
                %>
                <h4 class="section-header header">������Ƹ�� <span><a href="list.asp?class=<%=class_id%>">����&gt;&gt;</a></span></h4>
                <ul>
                    <!--#include file="index_info.asp"-->
                    <%
                    if (ubound(array_news) > 0) then
                        for i1=0 to ubound(array_news, 2)
                            id = array_news(0, i1)
                            title = array_news(1, i1)
                            pub_time = array_news(2, i1)
                            class_id = array_news(3, i1)
                        %>
                            <li class="news-item"><!--[<%=class_id%>]--><a target=_blank href="view.asp?what=article&id=<%=id%>"><%=title%></a></li>
                    <%
                        next
                    else
                    %>
                        <li class="news-item"> ������Ϣ </li>
                    <%
                    End if
                    %>
                    </ul>
                </ul>
            </div>
        </div>
    </div>
    <div class="clear"></div>
    <div class="grid_12" style="height:10px;"></div>
    <div class="grid_12" style="overflow:hidden">
        <embed src="/images/adbanner.swf" quality="high" type="application/x-shockwave-flash" wmode="transparent" width="940" height="120" pluginspage="http://www.macromedia.com/go/getflashplayer" allowScriptAccess="always"></embed>
    </div>
    <div class="clear"></div>
    <div class="grid_12" style="height:10px;"></div>
    <div class="grid_12">
        <div class="grid_6 alpha" id="news3">
            <div class=" news-widget1 info-widget">
                <%
                    article_num = 10
                    class_id = 1030
                %>
                <h4 class="section-header header">���ݸſ�<span><a href="list.asp?class=<%=class_id%>">����&gt;&gt;</a></span></h4>
                <ul>
                    <!--#include file="index_info.asp"-->
                    <%
                    if (ubound(array_news) > 0) then
                        for i1=0 to ubound(array_news, 2)
                            id = array_news(0, i1)
                            title = array_news(1, i1)
                            pub_time = array_news(2, i1)
                            class_id = array_news(3, i1)
                        %>
                            <li class="news-item"><!--[<%=class_id%>]--><a target=_blank href="view.asp?what=article&id=<%=id%>"><%=title%></a>&nbsp;&nbsp;<span>[<%=pub_time%>]</span></li>
                    <%
                        next
                    else
                    %>
                        <li class="news-item"> ������Ϣ </li>
                    <%
                    End if
                    %>
                </ul>
            </div>
        </div>
        <div class="grid_6 omega" id="news4">
            <div class=" news-widget1 info-widget">
                <%
                   article_num = 10
                   class_id = 1031
                %>
                <h4 class="section-header header">��������<span><a href="list.asp?class=<%=class_id%>">����&gt;&gt;</a></span></h4>
                <ul>
                    <!--#include file="index_info.asp"-->
                    <%
                    if (ubound(array_news) > 0) then
                        for i1=0 to ubound(array_news, 2)
                            id = array_news(0, i1)
                            title = array_news(1, i1)
                            pub_time = array_news(2, i1)
                            class_id = array_news(3, i1)
                        %>
                            <li class="news-item"><!--[<%=class_id%>]--><a target=_blank href="view.asp?what=article&id=<%=id%>"><%=title%></a>&nbsp;&nbsp;<span>[<%=pub_time%>]</span></li>
                    <%
                        next
                    else
                    %>
                        <li class="news-item"> ������Ϣ </li>
                    <%
                    End if
                    %>
                </ul>
            </div>
        </div>
    </div>
    <div class="grid_12" style="height:10px;"></div>
    <div class="grid_12" style="overflow:hidden">
            <embed src="/images/adbanner.swf" quality="high" type="application/x-shockwave-flash" wmode="transparent" width="940" height="120" pluginspage="http://www.macromedia.com/go/getflashplayer" allowScriptAccess="always"></embed>
    </div>
    <div class="grid_12" style="height:10px;"></div>
    <!-- ��Ա���� -->
    <div class="grid_12" style="overflow:hidden">
            <!--��¼������-->
            <div class="grid_4 alpha" style="overflow:hidden">
                <div class="grid_4 alpha omega" style="overflow:hidden">
                    <div class="search_box" style="height:180px">
                        <h4 class="section-header header">��Ա��¼</h4>
                        <div>
                    <%
                        if Request.Cookies("ggval")<>"81528686528" then
                        Response.Cookies("id")=""
                        Response.Cookies("ac")=""
                        Response.Cookies("user")=""
                        end if
                        if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")="" then
                    %>
                        <form methond="post" action="/login.asp" onSubmit="return test()">
                            <div class="grid_1 alpha">&nbsp;&nbsp;�û���: </div>
                            <div class='grid_3 alpha omega'><input type='text' size='28' name='name'></div>
                            <div class='grid_1 alpha'>&nbsp;&nbsp;�� ��:</div>
                            <div class='grid_3 alpha omega'><input type='password' size='28' name='pwd'></div>
                            <div class='grid_1 alpha'>&nbsp;&nbsp;��֤��:</div>
                            <div class='grid_3 alpha omega'><input type='text' size='14' name='code'><%call getcode()%></div>
                            <div class='grid_1 alpha'>&nbsp;&nbsp;��Ա����</div>
                            <div class='grid_3  alpha omega'>
                                <select size="1" name="user">
									<option selected value="0">-��ѡ���Ա���-</option>
										<option value="1" selected>�����û�</option>
										<option value="2">��ҵ�û�</option>
									</select>
							</div>
                            <div class='grid_2 alpha omega' style="alignt:center">&nbsp;&nbsp;<input type='submit' size='10' value='��¼'></div>
                            <div class='grid_2 alpha omega' style="alignt:center">&nbsp;<input type='submit' size='10' value='��������'></div>
                        </form>
                    <%
                        else
                        sql="select id from message where ttype='"&Request.Cookies("user")&"' and tid="&Request.Cookies("id")&" and new=true"
                        rs.open sql,conn,1,1
                        msg_count = rs.recordCount
                        rs.close
                    %>
                            <div class="grid_3">
                                ��ӭ<%
                                        if Request.Cookies("user")="1" then response.write"�����û�"
                                        if Request.Cookies("user")="2" then response.write"��ҵ�û�"
                                    %>
                                <span style="font-weight:bold;color:red;"><%=Request.Cookies("name")%></span>
                            </div><br/><br/>
                            <div class="grid_3">
                                <ul>
                                    <li style='font-size:13pt;'><a href="control.asp">�����Ա����&gt;&gt;</a></li>
                                    <li style='font-size:13pt;'><a href="message.asp">��Ϣ����</a></b> (<font color="#FF0000"><%=msg_count%></font>������Ϣ)</li>
                                    <li>&nbsp;</li>
                                    <li style='font-size:13pt;'><a href="exit.asp">�˳���¼</a></li>
                                </ul>

                            </div>
                    <%
                        end if
                    %>
                        </div>
                    </div>
                </div>
                <div class="grid_4 alpha omega" style="height:10px;"></div>
                <div class="grid_4 alpha omega" style="overflow:hidden">
                    <div class="search_box"style="height:265px">
                        <h4 class="section-header header">ְλ����</h4>
<!--������ʼ-->
<table>
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
end if %></td>
									</tr>
							</form>
								</table></TD>
                      </TR>
</table>

<!--���������-->
                    </div>
                </div>
            </div>
            <!-- ����ְλ -->
            <div class="grid_5" style="overflow:hidden">
                <div class="info-widget " style="height:458px">
                    <h4 class="section-header header">����ְλ<span><a href="grqz1.asp">����&gt;&gt;</a></span></h4>
                    <!--#include file="ad_syad1.asp"-->
                </div>
            </div>
            <!-- �˲��Ƽ� -->
            <div class="grid_3 omega" style="overflow:hidden">
                <div class="search_box" style="height:458px">
                    <h4 class="section-header header">�˲��Ƽ�</h4>
<%
sql="select top "&index4&" id,name,job1,gzdd,edu,sex,rdate,zhuanyen1,gzcs from in_user where lock=false and name<>''  order by rdate desc"
rs.open sql,conn,1,1
if rs.recordcount=0 then
    rs.close
    response.write "��ʱû��ע���û���"
else
%>
    <%
    for ii=1 to index4
    %>
    <li class='news-item'>
        <a target =_blank href="person.asp?id=<%=rs("id")%>"><strong><%=rs("name")%></strong></a>
        [<%=rs("sex")%>]
        [<%=rs("edu")%>]
        <%=rs("zhuanyen1")%>
        <%=rs("gzdd")%>&nbsp;<%=rs("gzcs")%>
    </li>
    <%
    rs.movenext
    if rs.eof then exit for
    next
    rs.close
end if
%>

                </div>
            </div>
    </div>
    <div class="grid_12" style="height:10px;"></div>
    <!--������Ƹ -->
    <div class="grid_12">
        <div class="grid_9 alpha">
            <div class='info-widget search_box' style="height:200px">
                <h4 class="section-header header" style='margin-bottom:0px;'>������Ƹ</h4>
                <!--#include file="ad_syad2.asp"-->
            </div>
        </div>
        <div class="grid_3 omega">
            <div class='info-widget' style="height:200px">
                <h4 class="section-header header">ί����Ƹ<span>����&gt;&gt;</span></h4>
                <ul style='margin-left:5px;'>
                <%
                sql="select top "&index6&" id,jtzw,edus,sexs from consigns  order by addtime desc"
                rs.open sql,conn,1,1
                if rs.eof or rs.bof then
                           response.write "<li>������Ϣ��</li>"
                           rs.close
                           else
                           for i1=1 to index6
                %>
                <li><span style="color:red;font-weight:bold;height:15px;font-size:14pt;">Ƹ</span><a title ="<%=rs("jtzw")%>" target =_blank href="show_consign.asp?id=<%=rs("id")%>">
                <%=rs("jtzw")%></a>  �Ա�:<%=rs("sexs")%> ѧ��:<%=rs("edus")%></li>
                <%
                rs.movenext
                if rs.eof then exit for
                next
                rs.close
                end if
                %>
                </ul>
            </div>
        </div>
    </div>
    <div class="grid_12" style="height:10px;"></div>
    <!--������Ƹ -->
    <div class="grid_12">
        <div class="grid_12 alpha omega info-widget" style="min-height:200px">
            <h4 class="section-header header">������Ƹ</h4>
            <ul>
                          <%
sql="select top "&index2&" en_user.name,en_user.rdate,en_user.area,en_user.id from en_user where name<>'' order by en_user.id desc"
rs.open sql,conn,1,1
%>
                          <%for ii=1 to index2 %>
						  <li class="news-item"><a target =_blank title=" ��<%=rs("area")%>��" href="company.asp?id=<%=rs("id")%>" class="STYLE11"><%=rs("name")%>��<%=rs("area")%>��</a></li>
                                                  <%
rs.movenext
if rs.eof then exit for
next
rs.close
%>
            </ul>
        </div>
    </div>

    <script>
            $(function() {
                $( "#tabs1" ).tabs({
                    event: "mouseover"
                });
            });
    </script>
    <!--#include file="footer.asp"-->
</div>
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
    <!--#include file="footer_hide_ad.asp"-->
</body></html>