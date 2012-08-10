
<!--#include file="info.asp"-->
<!--#include file="conn.asp"-->
<html>
<%
if Request.Cookies("id")="" or Request.Cookies("ac")="" or Request.Cookies("user")<>"1" then
response.write "<script language=JavaScript>" & chr(13) & "alert('登录超时请重新登录！');"&"window.location.href = 'index.asp'"&" </script>"
Response.End
end if
%>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css"  type="text/css">
<title><%=webname%> - 会员中心 - 基本资料设置</title>
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
                      <td height="86" width="237">　</td>
                      <td height="86" width="128"><img border="0" src="images/controltop1.gif" width="128" height="90"></td>
                      <td height="86" width="58">　</td>
                    </tr>
                    <tr>
                      <td width="705" colspan="4" valign="top">
                          <div align="center">
                            <table border="0" width="100%" cellspacing="0" cellpadding="0" id="table3" height="272">
                              <tr>
                                <td height="27" colspan="2"><p align="left"> &nbsp;<a href="control.asp">会员中心</a> → 基本资料设置 → 简历状态设置</td>
                              </tr>
                              <tr>
                                <td width="25%" valign="top"><!--#include file="in_menu.asp"-->                                </td>
                                <td width="75%" valign="top" align="center" style="border: 1px solid #000000"><table width="370" border="0" align="center" cellspacing="0">
                                  <tr>
                                    <td width="368"><%
sql="select name,gr_view from in_user where id="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
%>
                                        <p>个人会员 <font color=#ff0000><%=rs("name")%></font> 你好：</p>
                                      <span class="STYLE1">你当前简历状态是:</span>
                                        <% if rs("gr_view")="N" then 
		   Response.Write "<font color=#ff0000><strong>开启状态</strong></font>"
		    else
			 Response.Write "<font color=#ff0000><strong>关闭状态</strong></font>"
			 end if 
		 %></td>
                                  </tr>
                                  <tr>
                                    <td><hr></td>
                                  </tr>
                                  <tr>
                                    <td>你将更改状态为（不变请不要设置）：</td>
                                  </tr>
                                  <tr>
                                    <td><div align="center">
                                        <form method="POST" action="gr_viewdata.asp">
                                          <INPUT TYPE="radio"<%if rs("gr_view") ="N" then Response.Write "checked"%> VALUE="N" NAME="gr_view">
                                          开启状态
                                          <INPUT TYPE="radio" <%if rs("gr_view") ="Y" then Response.Write "checked"%> VALUE="Y" NAME="gr_view" >
                                          关闭状态 <br>
                                          <br>
                                          <input type="submit" value="确定更改" name="G1">
                                        </form>
                                    </div></td>
                                  </tr>
                                  <tr>
                                    <td><p>说明：
                                       简历状态为“开启状态”时，你的简历正常显示；</br>
                                      简历状态为“关闭状态”时，你的简历暂时不显示；</br>
                                      你随时可更改简历显示状态（VIP会员专有）。 </p></td>
                                  </tr>
                                </table><br>
                                <span class="STYLE13">普通用户和VIP用户权限对比表</span>                                    
                                  <table width="520" border="1" align="center" cellspacing="0" bordercolor="#006666">
                                    <tr>
                                      <td width="166" height="30"><div align="center"><strong><span class="STYLE11">功能</span></strong></div></td>
                                      <td width="149" height="30"><div align="center"><span class="STYLE11">普通用户</span></div></td>
                                      <td width="191" height="30"><div align="center"><span class="STYLE11">VIP用户</span></div></td>
                                    </tr>
                                    <tr>
                                      <td height="30"><strong><span class="STYLE11">发站内短消息</span></strong></td>
                                      <td height="15"><div align="center"><span class="STYLE9">3天免费体验</span></div></td>
                                      <td height="15"><div align="center"><span class="STYLE12">无限期免费使用</span></div></td>
                                    </tr>
                                    <tr>
                                      <td height="30" class="STYLE11">随时提升简历到最前位置</td>
                                      <td height="15"><div align="center" class="STYLE10">不可以</div></td>
                                      <td height="15"><div align="center" class="STYLE6">可以</div></td>
                                    </tr>
                                    <tr>
                                      <td height="30"><strong><span class="STYLE11">职位库容量</span></strong></td>
                                      <td height="30"><div align="center"><span class="STYLE9">2个</span></div></td>
                                      <td height="30"><div align="center"><span class="STYLE12"><strong>100</strong>个</span></div></td>
                                    </tr>
                                    <tr>
                                      <td height="30"><span class="STYLE11">个人照片功能</span></td>
                                      <td height="30"><div align="center" class="STYLE10">无</div></td>
                                      <td height="30"><div align="center" class="STYLE6">赠送使用</div></td>
                                    </tr>
                                    <tr>
                                      <td height="30"><strong><span class="STYLE11">一般职位搜索</span></strong></td>
                                      <td height="30"><div align="center"><span class="STYLE9">有(前台使用)</span></div></td>
                                      <td height="30"><div align="center"><span class="STYLE12">有(前台使用)</span></div></td>
                                    </tr>
                                    <tr>
                                      <td height="30"><strong><span class="STYLE11">超级职位搜索</span></strong></td>
                                      <td height="30"><div align="center"><span class="STYLE9">3天免费体验</span></div></td>
                                      <td height="30"><div align="center"><span class="STYLE12">无限期免费使用</span></div></td>
                                    </tr>
                                    <tr>
                                      <td height="30"><strong><span class="STYLE11">简历搜索时优先显示</span></strong></td>
                                      <td height="15"><div align="center"><span class="STYLE9">否</span></div></td>
                                      <td height="15"><div align="center"><span class="STYLE6">是</span></div></td>
                                    </tr>
                                    <tr>
                                      <td height="30" class="STYLE11">自主关闭个人简历</td>
                                      <td height="15"><div align="center" class="STYLE9">不可以</div></td>
                                      <td height="15"><div align="center" class="STYLE6">可以</div></td>
                                    </tr>
                                    <tr>
                                      <td height="30"><strong><span class="STYLE11">特殊标志</span></strong></td>
                                      <td height="30"><div align="center"><span class="STYLE9">无</span></div></td>
                                      <td height="30"><div align="center"><span class="STYLE6">有VIP字样</span></div></td>
                                    </tr>
                                    <tr>
                                      <td height="30"><span class="STYLE11">赠送独立推荐显示</span></td>
                                      <td height="30"><div align="center"><span class="STYLE10">无</span></div></td>
                                      <td height="30"><div align="center"><span class="STYLE6">有</span></div></td>
                                    </tr>
                                    <tr>
                                      <td height="30"><span class="STYLE11">享受本站优惠活动</span></td>
                                      <td><div align="center"><span class="STYLE10">否</span></div></td>
                                      <td height="15"><div align="center"><span class="STYLE6">是</span></div></td>
                                    </tr>
                                    <tr>
                                      <td height="30"><strong class="STYLE11">联系方式被查看</strong></td>
                                      <td><div align="center" class="STYLE10">注册后才能查看</div></td>
                                      <td height="0"><div align="center" class="STYLE6">不用注册，直接查看</div></td>
                                    </tr>
                                    <tr>
                                      <td height="30" class="STYLE11">自主注销账户</td>
                                      <td><div align="center" class="STYLE10">不可以</div></td>
                                      <td height="15"><div align="center" class="STYLE10">可以</div></td>
                                    </tr>
                                    <tr>
                                      <td height="30"><span class="STYLE11">求职效果</span></td>
                                      <td height="30"><div align="center"><span class="STYLE9">一般</span></div></td>
                                      <td height="30"><div align="center"><span class="STYLE6">非常好</span></div></td>
                                    </tr>
                                    <tr>
                                      <td height="30"><span class="STYLE11">支付费用</span></td>
                                      <td height="30"><div align="center"><span class="STYLE6">不需要</span></div></td>
                                      <td height="30"><div align="center" class="STYLE9">一次性交费50元，终身享受</div></td>
                                    </tr>
                                  </table></td>
                              </tr>
                            </table>
                          </div>
                        <%'表格%>
                      </td>
                    </tr>
                  </table>
              </div></td>
            </tr>
          </table>
        </div>
        <!--#include file="base.asp"-->
          
		  
