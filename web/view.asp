<!--#include file="header.asp"-->
	<%
	m = request("what")
	Select case m
	    case "article"
	%>
	    <!--#include file="show_article.asp"-->
	<%
	    case else
	%>
	    <!--#include file="home.asp"-->
	<%
	End Select
	%>

    <!--#include file="footer.asp"-->
</div>
    <!--#include file="footer_hide_ad.asp"-->
</body></html>