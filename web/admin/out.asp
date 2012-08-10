<%
session("login")=""
session("id")=""
session("ac")=""
session("user")=""
session("vip")=""
session("name")=""
session("FJfkda32KL")=""
Response.Cookies("login_pic")=""
Response.Cookies("login")=""
response.write "<script language=JavaScript>" & chr(13) & "alert('您已经成功退出管理状态！');"&"window.location.href = '../'"&" </script>"
%>