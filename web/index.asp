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
                    <div class="search_box">
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
                                    <li style='font-size:13pt;'><a href="exit.asp">�˳���½</a></li>
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
                    <div class="search_box">
                        <h4 class="section-header header">ְλ����</h4>
                    </div>
                </div>
            </div>
            <!-- ����ְλ -->
            <div class="grid_5" style="overflow:hidden">
            </div>
            <!-- �˲��Ƽ� -->
            <div class="grid_3 omega" style="overflow:hidden">
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