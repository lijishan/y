<style type="text/css">
<!--
.STYLE4 {color: #FF0000}
-->
</style>

<table width="760" align="center" cellspacing="0"style="border-left: 2px solid #ffc6bf; border-right: 2px solid #ffc6bf">
  <tr>
    <td height="25" colspan="5" align="center" bgcolor="#efefef" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; "><MARQUEE onmousemove=this.stop() onmouseout=this.start()  scrollAmount=2>
				    <img src="imagen/ddd.gif" width="16" height="16" /><font color=#ff0000><strong>����Ԥ����</strong>�绰0312-7573476��֤ʵΪ�������ŵ绰����վ��ɾ���䷢���������Ϣ������������绰�������Ϣ�����ּ�ʱ�ٱ���</font>��д���н����š����н顢��˾ֱƸ�ȡ��ġ���˾��95%����֤���н飬��Ҫ����๫˾�����κ���ʽ�ķ��ã�<font color=#009966> ��վ����֤��Ա���͡�VIP��֤��Ա���������ǽ����˹���˵ģ����ҷ���ʹ�ô�����Ϣ������ҵ/������֤��ȫ��ѣ�ѯQQ��451079368���绰��13981528686��</font>
    </MARQUEE></td>
  </tr>
  <tr>
    <td colspan="5" align="center" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; "><%
sql="select top 5 job.id,job.enid,job.jtzw,job.hka,job.city,job.addtime,job.sexs,job.edus,vip,en_user.vip from job,en_user where job.enid=en_user.id and en_user.lock=false and en_user.vip=true order by job.addtime desc"
rs.open sql,conn,1,1
if rs.recordcount=0 then
rs.close
response.write "��ʱû���Ƽ�ְҵ��" 
else
%>
      <table border="0" width="748" cellspacing="0" cellpadding="0" id="table12" height="53">
                                  <tr>
                                    <td width="149" height="25" align="center" background="images/bgc.gif" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; "><p><b>�Ƽ���Ƹְλ</b></td>
                                    <td width="237" height="25" align="center" background="images/bgc.gif" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; "><p><b>�� Ƹ �� ˾</b></td>
                                    <td width="148" height="25" align="center" background="images/bgc.gif" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; "><b>�� �� ��&nbsp; ��</b></td>
                                    <td width="92" height="25" align="center" background="images/bgc.gif" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; "><strong>�Ա�Ҫ��</strong></td>
                                    <td width="122" align="center" background="images/bgc.gif" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; "><strong><strong>ѧ��Ҫ��</strong></strong></td>
                                  </tr>
                                  <%
set rs2=server.createobject("adodb.recordset")
for ii=1 to 5
sql2="select * from en_user where id="&rs("enid")
rs2.open sql2,conn,1,1
%>
                                  <tr>
                                    <td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="149" height="25" align="center" background="images/bg1.gif"><a target =_blank  href="job.asp?id=<%=rs("id")%>">
									<%=rs("jtzw")%></td>
                                    <td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="237" height="25" align="center" background="images/bg1.gif"><a  target =_blank href="company.asp?id=<%=rs2("id")%>">��<%=rs2("name")%>��</a>
                                        </td>
                                    <td style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; " width="148" height="25" align="center" background="images/bg1.gif"><p align="center"><%=rs("hka")%>��<%=rs("city")%></td>
                                    <td width="92" height="25" align="center" background="images/bg1.gif" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; "><%=rs("sexs")%>                                    </td>
                                    <td width="122" height="25" align="center" background="images/bg1.gif" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; "><%=rs("edus")%></td>
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
%></td>
  </tr>
  
  <tr>
    <td width="118" height="20" align="center" background="images/bgc.gif" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; ">&nbsp;</td>
    <td width="169" height="20" align="center" background="images/bgc.gif" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; ">&nbsp;</td>
    <td width="261" height="20" align="center" background="images/bgc.gif" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; ">&nbsp;</td>
    <td width="200" height="20" colspan="2" align="center" background="images/bgc.gif" bgcolor="#FEEBD5" style="border-left-width: 1px; border-right-width: 1px; border-top-width: 1px; "><span class="STYLE4">��</span><a href="grqz1.asp">�����Ƽ�ְλ</a><span class="STYLE4">��</span></td>
  </tr>
</table>
<table width="762" border="1" align="center" cellspacing="0"style="border-left: 2px solid #ffc6bf; border-right: 2px solid #ffc6bf">
    <tr>
    <td colspan="3"></td>
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3"><div align="center"><script type='text/javascript'>
var __sogou_ad = new Array();
__sogou_ad["pid"]  = 'ggang6';
__sogou_ad["fmt"]  = 'h_728_90'
__sogou_ad["iw"]   = '728';
__sogou_ad["ih"]   = '90';
__sogou_ad["charset"]   = 'gb2312';
__sogou_ad["c_bo"] = 'FFFFFF';
__sogou_ad["c_bg"] = 'FFFFFF';
__sogou_ad["c_li"] = 'FF0000';
__sogou_ad["c_te"] = '003779';
__sogou_ad["c_bt"] = '000000';
__sogou_ad["sv"] = '0';
</script>
<script language='JavaScript' type='text/javascript' src='http://images.sohu.com/cs/jsfile/js/cpc.js'></script>
</div></td>
  </tr>
  
  <tr>
    <td width="566"><div align="center"><a href="http://www.ggkjcn.com" target="_blank"><img src="images/topad.gif" width="468" height="60" border="0" /></a></div></td>
    <td colspan="2"><div align="left"><a href="clicks1.asp" target="_blank"><img    
      src="imagen/l200-0h6omfse41.gif" width="185"      border="0" /></a></div></td>
  </tr>
  <tr>
    <td colspan="2"><div align="center"><a href="http://www.ggkjcn.com" target="_blank"><img src="images/topad.gif" width="468" height="60" border="0" /></a></div></td>
    <td width="185"><div align="center"><a href="clicks1.asp" target="_blank"><img src="imagen/l23-g1453lk0r3.gif" width="185"   border="0" /></a></div></td>
  </tr>
</table>
