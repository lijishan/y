
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
.STYLE2 {font-size: 12px}
.STYLE4 {color: #FF0000; font-weight: bold; }
.STYLE6 {
	font-size: 12pt;
	color: #0033CC;
}
.STYLE7 {font-size: 12px; color: #0033CC; }
.STYLE10 {font-size: 14px; color: #00659C; }
.STYLE11 {font-size: 14px; font-weight: bold; }
.STYLE12 {font-size: 14px; color: #FF0000; }
.STYLE13 {font-size: 14px; color: #FF0000; font-weight: bold; }
.STYLE9 {font-size: 14px; color: #006699; }
.STYLE14 {	font-size: 12pt;
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
                                <td width="75%" valign="top" align="center" style="border: 1px solid #000000"><%
sql="select name,gr_view from in_user where id="&clng(Request.Cookies("id"))
rs.open sql,conn,1,1
%>
                                    <p>个人会员 <font color=#ff0000><%=rs("name")%></font> 你好：</p>
                                    <p align="left" class="STYLE7">&nbsp;&nbsp;&nbsp;&nbsp;随着注册人数的增加，你的简历可能会被置后显示，这样被浏览到的机率会大大降低，从而求职成功率也会下降，本站特别为个人用户推出求职简历提升服务，你随时可提升你的简历显示位置【同时出现在本站首页“最新人才”和“人才信息”页面的顶部】，当你点击下面的提升简历按钮后，你的<span class="STYLE4">简历将会自动提升到最前面显示</span>。</p>
                                    <p align="centen" class="STYLE6">  
									<form method="POST" action="gotopdata_gr.asp">
									<input type="submit" value="提升简历" name="G1">
                                  </form>
									<span class="STYLE14">普通用户和VIP用户权限对比表</span>
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
                                        <td height="15"><div align="center" class="STYLE13">可以</div></td>
                                      </tr>
                                      <tr>
                                        <td height="30"><strong><span class="STYLE11">职位库容量</span></strong></td>
                                        <td height="30"><div align="center"><span class="STYLE9">2个</span></div></td>
                                        <td height="30"><div align="center"><span class="STYLE12"><strong>100</strong>个</span></div></td>
                                      </tr>
                                      <tr>
                                        <td height="30"><span class="STYLE11">个人照片功能</span></td>
                                        <td height="30"><div align="center" class="STYLE10">无</div></td>
                                        <td height="30"><div align="center" class="STYLE13">赠送使用</div></td>
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
                                        <td height="15"><div align="center"><span class="STYLE13">是</span></div></td>
                                      </tr>
                                      <tr>
                                        <td height="30" class="STYLE11">自主关闭个人简历</td>
                                        <td height="15"><div align="center" class="STYLE9">不可以</div></td>
                                        <td height="15"><div align="center" class="STYLE13">可以</div></td>
                                      </tr>
                                      <tr>
                                        <td height="30"><strong><span class="STYLE11">特殊标志</span></strong></td>
                                        <td height="30"><div align="center"><span class="STYLE9">无</span></div></td>
                                        <td height="30"><div align="center"><span class="STYLE13">有VIP字样</span></div></td>
                                      </tr>
                                      <tr>
                                        <td height="30"><span class="STYLE11">赠送独立推荐显示</span></td>
                                        <td height="30"><div align="center"><span class="STYLE10">无</span></div></td>
                                        <td height="30"><div align="center"><span class="STYLE13">有</span></div></td>
                                      </tr>
                                      <tr>
                                        <td height="30"><span class="STYLE11">享受本站优惠活动</span></td>
                                        <td><div align="center"><span class="STYLE10">否</span></div></td>
                                        <td height="15"><div align="center"><span class="STYLE13">是</span></div></td>
                                      </tr>
                                      <tr>
                                        <td height="30"><strong class="STYLE11">联系方式被查看</strong></td>
                                        <td><div align="center" class="STYLE10">注册后才能查看</div></td>
                                        <td height="0"><div align="center" class="STYLE13">不用注册，直接查看</div></td>
                                      </tr>
                                      <tr>
                                        <td height="30" class="STYLE11">自主注销账户</td>
                                        <td><div align="center" class="STYLE10">不可以</div></td>
                                        <td height="15"><div align="center" class="STYLE10">可以</div></td>
                                      </tr>
                                      <tr>
                                        <td height="30"><span class="STYLE11">求职效果</span></td>
                                        <td height="30"><div align="center"><span class="STYLE9">一般</span></div></td>
                                        <td height="30"><div align="center"><span class="STYLE13">非常好</span></div></td>
                                      </tr>
                                      <tr>
                                        <td height="30"><span class="STYLE11">支付费用</span></td>
                                        <td height="30"><div align="center"><span class="STYLE13">不需要</span></div></td>
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
          
		  
