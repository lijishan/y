function showmenu33(sid)
{
eval("submenu" + sid + ".style.display=\"none\";");
}
var online= new Array();
if (!document.layers)
document.write('<div id="divStayTopLeft" style="position:absolute">');
document.write('<LAYER id=divStayTopLeft name="divStayTopLeft" left="1" top="10" width="10" height="101"><TABLE id=submenu111 cellSpacing=0 cellPadding=0 width=- border=0><TBODY><TR><TD width=110 colspan="2"><IMG  height=23  src="images/qq/top1.gif"  width=73 border=0><IMG style="CURSOR: hand" onclick=showmenu33(111)  height=23 alt=点击关闭  src="images/qq/top2.gif"  width=37 border=0><IMG height=32  src="images/qq/top3.gif"  width=109 border=0></TD></TR><TR><TD vAlign=center align=middle  background=images/qq/middle.gif><table border="0" width="100%" cellspacing="0" cellpadding="0" id="table1"><tr><td align="center"><IMG src="images/qq/8_online.gif"  border=0><span style="font-size: 9pt"> </span> </td><td align="center" width="74"><p align="left"><A  href="http://wpa.qq.com/msgrd?V=1&Uin=451079368&Site="在线咨询"&Menu=no" title="在线即时交谈" target=blank><font color="#006699" style="font-size: 9pt">在线咨询</font></a></td></tr></table></TD><TD vAlign=center align=middle background=images/qq/middle.gif></TD></TR><TR><TD vAlign=center align=middle background=images/qq/middle.gif></TD></TR><TR><TD width=110 colspan="2"><IMG height=31 src="images/qq/bottom.gif"  width=110 border=0></TD></TR></TBODY></TABLE></LAYER>');
var verticalpos="fromtop"
if (!document.layers)
document.write("</div>")
function JSFX_FloatTopDiv()
{
	var startX =5,
	startY = 50;
	var ns = (navigator.appName.indexOf("Netscape") != -1);
	var d = document;
	function ml(id)
	{
		var el=d.getElementById?d.getElementById(id):d.all?d.all[id]:d.layers[id];
		if(d.layers)el.style=el;
		el.sP=function(x,y){this.style.left=x;this.style.top=y;};
		el.x = startX;
		if (verticalpos=="fromtop")
		el.y = startY;
		else{
		el.y = ns ? pageYOffset + innerHeight : document.body.scrollTop + document.body.clientHeight;
		el.y -= startY;
		}
		return el;
	}
	window.stayTopLeft=function()
	{
		if (verticalpos=="fromtop"){
		var pY = ns ? pageYOffset : document.body.scrollTop;
		ftlObj.y += (pY + startY - ftlObj.y)/8;
		}
		else{
		var pY = ns ? pageYOffset + innerHeight : document.body.scrollTop + document.body.clientHeight;
		ftlObj.y += (pY - startY - ftlObj.y)/8;
		}
		ftlObj.sP(ftlObj.x, ftlObj.y);
		setTimeout("stayTopLeft()", 10);
	}
	ftlObj = ml("divStayTopLeft");
	stayTopLeft();
}
JSFX_FloatTopDiv();




