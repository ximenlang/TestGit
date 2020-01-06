<%@page import="exercise.Send"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <%
            Send send = new Send();
            String PostData = "account=18911158601&password=123456&mobile=18911158601&content="+java.net.URLEncoder.encode("您的订单编码：4557。如需帮助请联系客服。","utf-8");
            //out.println(PostData);
            String ret = Send.SMS(PostData, "http://sms.106jiekou.com/utf8/sms.aspx");
            out.println("向祖喜"+ret);
            //请自己反序列化返回的字符串并实现自己的逻辑
        %>

        </h1>
    </body>
</html>
